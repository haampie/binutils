/* TUI display locator.

   Copyright 1998, 1999, 2000, 2001, 2002 Free Software Foundation,
   Inc.

   Contributed by Hewlett-Packard Company.

   This file is part of GDB.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.  */

/* FIXME: cagney/2002-02-28: The GDB coding standard indicates that
   "defs.h" should be included first.  Unfortunatly some systems
   (currently Debian GNU/Linux) include the <stdbool.h> via <curses.h>
   and they clash with "bfd.h"'s definiton of true/false.  The correct
   fix is to remove true/false from "bfd.h", however, until that
   happens, hack around it by including "config.h" and <curses.h>
   first.  */

#include "config.h"
#ifdef HAVE_NCURSES_H       
#include <ncurses.h>
#else
#ifdef HAVE_CURSES_H
#include <curses.h>
#endif
#endif

#include "defs.h"
#include "symtab.h"
#include "breakpoint.h"
#include "frame.h"
#include "command.h"
#include "top.h"

#include "tui.h"
#include "tuiData.h"
#include "tuiStack.h"
#include "tuiGeneralWin.h"
#include "tuiSource.h"
#include "tuiSourceWin.h"
#include "tui-file.h"


/* Get a printable name for the function at the address.
   The symbol name is demangled if demangling is turned on.
   Returns a pointer to a static area holding the result.  */
static char* tui_get_function_from_frame (struct frame_info *fi);

/* Set the filename portion of the locator.  */
static void tui_set_locator_filename (const char *filename);

/* Update the locator, with the provided arguments.  */
static void tui_set_locator_info (const char *filename, const char *procname,
                                  int lineno, CORE_ADDR addr,
                                  TuiLocatorElementPtr element);

static void tui_update_command (char *, int);

/* Function to set the content of the locator.  */
static void tuiSetLocatorContent (struct frame_info *frameInfo);

/* Get a printable name for the function at the address.
   The symbol name is demangled if demangling is turned on.
   Returns a pointer to a static area holding the result.  */
static char*
tui_get_function_from_frame (struct frame_info *fi)
{
  static char name[256];
  struct ui_file *stream = tui_sfileopen (256);
  char *p;

  print_address_symbolic (fi->pc, stream, demangle, "");
  p = tui_file_get_strbuf (stream);

  /* Use simple heuristics to isolate the function name.  The symbol can
     be demangled and we can have function parameters.  Remove them because
     the status line is too short to display them.  */
  if (*p == '<')
    p++;
  strncpy (name, p, sizeof (name));
  p = strchr (name, '(');
  if (!p)
    p = strchr (name, '>');
  if (p)
    *p = 0;
  p = strchr (name, '+');
  if (p)
    *p = 0;
  ui_file_delete (stream);
  return name;
}

/*
   ** tuiShowLocatorContent()
 */
void
tuiShowLocatorContent (void)
{
  char *string;
  TuiGenWinInfoPtr locator;

  locator = locatorWinInfoPtr ();

  if (m_genWinPtrNotNull (locator) && locator->handle != (WINDOW *) NULL)
    {
      string = displayableWinContentAt (locator, 0);
      if (string != (char *) NULL)
	{
	  wmove (locator->handle, 0, 0);
	  wstandout (locator->handle);
	  waddstr (locator->handle, string);
          wclrtoeol (locator->handle);
	  wstandend (locator->handle);
	  tuiRefreshWin (locator);
	  wmove (locator->handle, 0, 0);
	  if (string != nullStr ())
	    tuiFree (string);
	  locator->contentInUse = TRUE;
	}
    }

  return;
}				/* tuiShowLocatorContent */

/* Set the filename portion of the locator.  */
static void
tui_set_locator_filename (const char *filename)
{
  TuiGenWinInfoPtr locator = locatorWinInfoPtr ();
  TuiLocatorElementPtr element;

  if (locator->content[0] == (Opaque) NULL)
    tuiSetLocatorContent ((struct frame_info *) NULL);

  element = &((TuiWinElementPtr) locator->content[0])->whichElement.locator;
  element->fileName[0] = 0;
  strcat_to_buf (element->fileName, MAX_LOCATOR_ELEMENT_LEN, filename);
}

/* Update the locator, with the provided arguments.  */
static void
tui_set_locator_info (const char *filename, const char *procname, int lineno,
                      CORE_ADDR addr, TuiLocatorElementPtr element)
{
  element->procName[0] = (char) 0;
  strcat_to_buf (element->procName, MAX_LOCATOR_ELEMENT_LEN, procname);
  element->lineNo = lineno;
  element->addr = addr;
  tui_set_locator_filename (filename);
}


/* Update only the filename portion of the locator.  */
void
tuiUpdateLocatorFilename (const char *filename)
{
  tui_set_locator_filename (filename);
  tuiShowLocatorContent ();
}

/*
   ** tuiUpdateLocatorInfoFromFrame().
   **        Function to update the locator, with the information extracted from frameInfo
 */
static void
tuiUpdateLocatorInfoFromFrame (struct frame_info *frameInfo,
                               TuiLocatorElementPtr element)
{
  struct symtab_and_line symtabAndLine;

  /* now get the new info */
  symtabAndLine = find_pc_line (frameInfo->pc,
			   (frameInfo->next != (struct frame_info *) NULL &&
			    !frameInfo->next->signal_handler_caller &&
			    !frame_in_dummy (frameInfo->next)));
  if (symtabAndLine.symtab && symtabAndLine.symtab->filename)
    tui_set_locator_info (symtabAndLine.symtab->filename,
                          tui_get_function_from_frame (frameInfo),
                          symtabAndLine.line,
                          frameInfo->pc,
                          element);
  else
    tui_set_locator_info ((char *) NULL,
                          tui_get_function_from_frame (frameInfo),
                          0,
                          frameInfo->pc,
                          element);

  return;
}				/* tuiUpdateLocatorInfoFromFrame */


/* Function to set the content of the locator.  */
static void
tuiSetLocatorContent (struct frame_info *frameInfo)
{
  TuiGenWinInfoPtr locator = locatorWinInfoPtr ();
  TuiWinElementPtr element;
  struct symtab_and_line symtabAndLine;

  /* Allocate the element if necessary */
  if (locator->contentSize <= 0)
    {
      TuiWinContent contentPtr;

      if ((locator->content = (OpaquePtr) allocContent (1, locator->type)) == (OpaquePtr) NULL)
	error ("Unable to Allocate Memory to Display Location.");
      locator->contentSize = 1;
    }

  if (frameInfo != (struct frame_info *) NULL)
    tuiUpdateLocatorInfoFromFrame (frameInfo,
	   &((TuiWinElementPtr) locator->content[0])->whichElement.locator);
  else
    tui_set_locator_info ((char *) NULL,
                          (char *) NULL,
                          0,
                          (CORE_ADDR) 0,
	   &((TuiWinElementPtr) locator->content[0])->whichElement.locator);
  return;
}				/* tuiSetLocatorContent */

/*
   ** tuiShowFrameInfo().
   **        Function to print the frame inforrmation for the TUI.
 */
void
tuiShowFrameInfo (struct frame_info *fi)
{
  TuiWinInfoPtr winInfo;
  register int i;

  if (fi)
    {
      register int startLine, i;
      register struct symtab *s;
      CORE_ADDR low;
      TuiGenWinInfoPtr locator = locatorWinInfoPtr ();
      int sourceAlreadyDisplayed;


      s = find_pc_symtab (fi->pc);
      if (s == 0)
        return;

      startLine = 0;
      sourceAlreadyDisplayed = tuiSourceIsDisplayed (s->filename);
      tuiSetLocatorContent (fi);
      tuiShowLocatorContent ();
      for (i = 0; i < (sourceWindows ())->count; i++)
	{
	  TuiWhichElement *item;
	  winInfo = (TuiWinInfoPtr) (sourceWindows ())->list[i];

	  item = &((TuiWinElementPtr) locator->content[0])->whichElement;
	  if (winInfo == srcWin)
	    {
	      startLine = (item->locator.lineNo -
			   (winInfo->generic.viewportHeight / 2)) + 1;
	      if (startLine <= 0)
		startLine = 1;
	    }
	  else
	    {
	      if (find_pc_partial_function (fi->pc, (char **) NULL, &low, (CORE_ADDR) NULL) == 0)
		error ("No function contains program counter for selected frame.\n");
	      else
		low = tuiGetLowDisassemblyAddress (low, fi->pc);
	    }

	  if (winInfo == srcWin)
	    {
	      TuiLineOrAddress l;
	      l.lineNo = startLine;
	      if (!(sourceAlreadyDisplayed
		    && tuiLineIsDisplayed (item->locator.lineNo, winInfo, TRUE)))
		tuiUpdateSourceWindow (winInfo, s, l, TRUE);
	      else
		{
		  l.lineNo = item->locator.lineNo;
		  tuiSetIsExecPointAt (l, winInfo);
		}
	    }
	  else
	    {
	      if (winInfo == disassemWin)
		{
		  TuiLineOrAddress a;
		  a.addr = low;
		  if (!tuiAddrIsDisplayed (item->locator.addr, winInfo, TRUE))
		    tuiUpdateSourceWindow (winInfo, s, a, TRUE);
		  else
		    {
		      a.addr = item->locator.addr;
		      tuiSetIsExecPointAt (a, winInfo);
		    }
		}
	    }
	  tuiUpdateExecInfo (winInfo);
	}
    }
  else
    {
      tuiSetLocatorContent (fi);
      tuiShowLocatorContent ();
      for (i = 0; i < (sourceWindows ())->count; i++)
	{
	  winInfo = (TuiWinInfoPtr) (sourceWindows ())->list[i];
	  tuiClearSourceContent (winInfo, EMPTY_SOURCE_PROMPT);
	  tuiUpdateExecInfo (winInfo);
	}
    }

  return;
}				/* tuiShowFrameInfo */

/* Function to initialize gdb commands, for tui window stack manipulation.  */
void
_initialize_tuiStack (void)
{
  add_com ("update", class_tui, tui_update_command,
           "Update the source window and locator to display the current "
           "execution point.\n");
}

/* Command to update the display with the current execution point.  */
static void
tui_update_command (char *arg, int from_tty)
{
  char cmd[sizeof("frame 0")];

  strcpy (cmd, "frame 0");
  execute_command (cmd, from_tty);
}
