/* This testcase is part of GDB, the GNU debugger.

   Copyright 2021-2022 Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>. */

	.text
	.globl func
func:
	.long 0x7c200176	/* brd r0,r1 */
	.long 0x7c2001b6	/* brh r0,r1 */
	.long 0x7c200136	/* brw r0,r1 */
	.long 0x7c2011b8	/* cfuged r0,r1,r2 */
	.long 0x7c201076	/* cntlzdm r0,r1,r2 */
	.long 0x7c201476	/* cnttzdm r0,r1,r2 */
	.long 0xff8007c4	/* dcffixqq f28,v0 */
	.long 0xfc01d7c4	/* dctfixqq v0,f26 */
	.long 0xf01f0ad0	/* lxvkq vs0,1 */
	.long 0xf01f82d0	/* lxvkq vs0,16 */
	.long 0xf01f8ad0	/* lxvkq vs0,17 */
	.long 0xf01f92d0	/* lxvkq vs0,18 */
	.long 0xf01f9ad0	/* lxvkq vs0,19 */
	.long 0xf01f12d0	/* lxvkq vs0,2 */
	.long 0xf01fa2d0	/* lxvkq vs0,20 */
	.long 0xf01faad0	/* lxvkq vs0,21 */
	.long 0xf01fb2d0	/* lxvkq vs0,22 */
	.long 0xf01fbad0	/* lxvkq vs0,23 */
	.long 0xf01fc2d0	/* lxvkq vs0,24 */
	.long 0xf01f1ad0	/* lxvkq vs0,3 */
	.long 0xf01f22d0	/* lxvkq vs0,4 */
	.long 0xf01f2ad0	/* lxvkq vs0,5 */
	.long 0xf01f32d0	/* lxvkq vs0,6 */
	.long 0xf01f3ad0	/* lxvkq vs0,7 */
	.long 0xf01f42d0	/* lxvkq vs0,8 */
	.long 0xf01f4ad0	/* lxvkq vs0,9 */
	.long 0x1a800000	/* lxvp vs20,0(0) */
	.long 0x1a800010	/* lxvp vs20,16(0) */
	.long 0x1a800020	/* lxvp vs20,32(0) */
	.long 0x7e800a9a	/* lxvpx vs20,0,r1 */
	.long 0x7c01101a	/* lxvrbx vs0,r1,r2 */
	.long 0x7c0110da	/* lxvrdx vs0,r1,r2 */
	.long 0x7c01105a	/* lxvrhx vs0,r1,r2 */
	.long 0x7c01109a	/* lxvrwx vs0,r1,r2 */
	.long 0x7f400066	/* mffprd r0,f26 */
	.long 0x7f600066	/* mffprd r0,f27 */
	.long 0x7f800066	/* mffprd r0,f28 */
	.long 0x7fa00066	/* mffprd r0,f29 */
	.long 0x7f400266	/* mfvsrld r0,vs26*/
	.long 0x7f600266	/* mfvsrld r0,vs27*/
	.long 0x7f800266	/* mfvsrld r0,vs28*/
	.long 0x7fa00266	/* mfvsrld r0,vs29 */
	.long 0x10000014	/* mtvsrbmi v0,0 */
	.long 0x10010015	/* mtvsrbmi v0,3 */
	.long 0x10030015	/* mtvsrbmi v0,7 */
	.long 0x10100e42	/* mtvsrbm v0,r1 */
	.long 0x10130e42	/* mtvsrdm v0,r1 */
	.long 0x10110e42	/* mtvsrhm v0,r1 */
	.long 0x10140e42	/* mtvsrqm v0,r1 */
	.long 0x10120e42	/* mtvsrwm v0,r1 */
	.long 0x60000000	/* nop */
	.quad 0x3801000006000000	/* paddi r0,r1,0 */
	.quad 0x3801000c06000000	/* paddi r0,r1,12 */
	.quad 0x3801003006000000	/* paddi r0,r1,48 */
	.quad 0x3801006206000000	/* paddi r0,r1,98 */
	.quad 0x7c2011787c201138	/* pdepd r0,r1,r2 */
	.quad 0x8801000006000000	/* plbz r0,0(r1) */
	.quad 0x8801001006000000	/* plbz r0,16(r1) */
	.quad 0x8801002006000000	/* plbz r0,32(r1) */
	.quad 0x8801004006000000	/* plbz r0,64(r1) */
	.quad 0x8801000806000000	/* plbz r0,8(r1) */
	.quad 0xe401000004000000	/* pld r0,0(r1) */
	.quad 0xe401001004000000	/* pld r0,16(r1) */
	.quad 0xe401002004000000	/* pld r0,32(r1) */
	.quad 0xe401004004000000	/* pld r0,64(r1) */
	.quad 0xe401000804000000	/* pld r0,8(r1) */
	.quad 0xcb80000006000000	/* plfd f28,0(0) */
	.quad 0xcb80001006000000	/* plfd f28,16(0) */
	.quad 0xcb80002006000000	/* plfd f28,32(0) */
	.quad 0xcb80000406000000	/* plfd f28,4(0) */
	.quad 0xcb80004006000000	/* plfd f28,64(0) */
	.quad 0xcb80000806000000	/* plfd f28,8(0) */
	.quad 0xc380000006000000	/* plfs f28,0(0) */
	.quad 0xc380001006000000	/* plfs f28,16(0) */
	.quad 0xc380002006000000	/* plfs f28,32(0) */
	.quad 0xc380000406000000	/* plfs f28,4(0) */
	.quad 0xc380004006000000	/* plfs f28,64(0) */
	.quad 0xc380000806000000	/* plfs f28,8(0) */
	.quad 0xa801000006000000	/* plha r0,0(r1) */
	.quad 0xa801001006000000	/* plha r0,16(r1) */
	.quad 0xa801002006000000	/* plha r0,32(r1) */
	.quad 0xa801004006000000	/* plha r0,64(r1) */
	.quad 0xa801000806000000	/* plha r0,8(r1) */
	.quad 0xa001000006000000	/* plhz r0,0(r1) */
	.quad 0xa001001006000000	/* plhz r0,16(r1) */
	.quad 0xa001002006000000	/* plhz r0,32(r1) */
	.quad 0xa001004006000000	/* plhz r0,64(r1) */
	.quad 0xa001000806000000	/* plhz r0,8(r1) */
	.quad 0xe340000004000000	/* plq r26,0(0) */
	.quad 0xe340001004000000	/* plq r26,16(0) */
	.quad 0xe340002004000000	/* plq r26,32(0) */
	.quad 0xe340003004000000	/* plq r26,48(0) */
	.quad 0xe340004004000000	/* plq r26,64(0) */
	.quad 0xe340000804000000	/* plq r26,8(0) */
	.quad 0xa401000004000000	/* plwa r0,0(r1) */
	.quad 0xa401001004000000	/* plwa r0,16(r1) */
	.quad 0xa401002004000000	/* plwa r0,32(r1) */
	.quad 0xa401004004000000	/* plwa r0,64(r1) */
	.quad 0xa401000804000000	/* plwa r0,8(r1) */
	.quad 0x8001000006000000	/* plwz r0,0(r1) */
	.quad 0x8001001006000000	/* plwz r0,16(r1) */
	.quad 0x8001002006000000	/* plwz r0,32(r1) */
	.quad 0x8001004006000000	/* plwz r0,64(r1) */
	.quad 0x8001000806000000	/* plwz r0,8(r1) */
	.quad 0xa801000004000000	/* plxsd v0,0(r1) */
	.quad 0xa801001004000000	/* plxsd v0,16(r1) */
	.quad 0xa801002004000000	/* plxsd v0,32(r1) */
	.quad 0xa801000404000000	/* plxsd v0,4(r1) */
	.quad 0xa801004004000000	/* plxsd v0,64(r1) */
	.quad 0xa801000804000000	/* plxsd v0,8(r1) */
	.quad 0xac01000004000000	/* plxssp v0,0(r1) */
	.quad 0xac01001004000000	/* plxssp v0,16(r1) */
	.quad 0xac01002004000000	/* plxssp v0,32(r1) */
	.quad 0xac01000404000000	/* plxssp v0,4(r1) */
	.quad 0xac01004004000000	/* plxssp v0,64(r1) */
	.quad 0xac01000804000000	/* plxssp v0,8(r1) */
	.quad 0xea80000004000000	/* plxvp vs20,0(0) */
	.quad 0xea80001004000000	/* plxvp vs20,16(0) */
	.quad 0xea80001804000000	/* plxvp vs20,24(0) */
	.quad 0xea80002004000000	/* plxvp vs20,32(0) */
	.quad 0xea80000804000000	/* plxvp vs20,8(0) */
	.quad 0xc801000004000000	/* plxv vs0,0(r1) */
	.quad 0xc801001004000000	/* plxv vs0,16(r1) */
	.quad 0xc801000404000000	/* plxv vs0,4(r1) */
	.quad 0xc801000804000000	/* plxv vs0,8(r1) */
	.quad 0xee00099807900000	/* pmxvbf16ger2 a4,vs0,vs1,0,0,0 */
	.quad 0xee00099807904000	/* pmxvbf16ger2 a4,vs0,vs1,0,0,1 */
	.quad 0xee0009980790000d	/* pmxvbf16ger2 a4,vs0,vs1,0,13,0 */
	.quad 0xee0009980790400d	/* pmxvbf16ger2 a4,vs0,vs1,0,13,1 */
	.quad 0xee000998079000b0	/* pmxvbf16ger2 a4,vs0,vs1,11,0,0 */
	.quad 0xee000998079040b0	/* pmxvbf16ger2 a4,vs0,vs1,11,0,1 */
	.quad 0xee000998079000bd	/* pmxvbf16ger2 a4,vs0,vs1,11,13,0 */
	.quad 0xee000998079040bd	/* pmxvbf16ger2 a4,vs0,vs1,11,13,1 */
	.quad 0xee000f9007900000	/* pmxvbf16ger2nn a4,vs0,vs1,0,0,0 */
	.quad 0xee000f9007904000	/* pmxvbf16ger2nn a4,vs0,vs1,0,0,1 */
	.quad 0xee000f900790000d	/* pmxvbf16ger2nn a4,vs0,vs1,0,13,0 */
	.quad 0xee000f900790400d	/* pmxvbf16ger2nn a4,vs0,vs1,0,13,1 */
	.quad 0xee000f90079000b0	/* pmxvbf16ger2nn a4,vs0,vs1,11,0,0 */
	.quad 0xee000f90079040b0	/* pmxvbf16ger2nn a4,vs0,vs1,11,0,1 */
	.quad 0xee000f90079000bd	/* pmxvbf16ger2nn a4,vs0,vs1,11,13,0 */
	.quad 0xee000f90079040bd	/* pmxvbf16ger2nn a4,vs0,vs1,11,13,1 */
	.quad 0xee000b9007900000	/* pmxvbf16ger2np a4,vs0,vs1,0,0,0 */
	.quad 0xee000b9007904000	/* pmxvbf16ger2np a4,vs0,vs1,0,0,1 */
	.quad 0xee000b900790000d	/* pmxvbf16ger2np a4,vs0,vs1,0,13,0 */
	.quad 0xee000b900790400d	/* pmxvbf16ger2np a4,vs0,vs1,0,13,1 */
	.quad 0xee000b90079000b0	/* pmxvbf16ger2np a4,vs0,vs1,11,0,0 */
	.quad 0xee000b90079040b0	/* pmxvbf16ger2np a4,vs0,vs1,11,0,1 */
	.quad 0xee000b90079000bd	/* pmxvbf16ger2np a4,vs0,vs1,11,13,0 */
	.quad 0xee000b90079040bd	/* pmxvbf16ger2np a4,vs0,vs1,11,13,1 */
	.quad 0xee000d9007900000	/* pmxvbf16ger2pn a4,vs0,vs1,0,0,0 */
	.quad 0xee000d9007904000	/* pmxvbf16ger2pn a4,vs0,vs1,0,0,1 */
	.quad 0xee000d900790000d	/* pmxvbf16ger2pn a4,vs0,vs1,0,13,0 */
	.quad 0xee000d900790400d	/* pmxvbf16ger2pn a4,vs0,vs1,0,13,1 */
	.quad 0xee000d90079000b0	/* pmxvbf16ger2pn a4,vs0,vs1,11,0,0 */
	.quad 0xee000d90079040b0	/* pmxvbf16ger2pn a4,vs0,vs1,11,0,1 */
	.quad 0xee000d90079000bd	/* pmxvbf16ger2pn a4,vs0,vs1,11,13,0 */
	.quad 0xee000d90079040bd	/* pmxvbf16ger2pn a4,vs0,vs1,11,13,1 */
	.quad 0xee00099007900000	/* pmxvbf16ger2pp a4,vs0,vs1,0,0,0 */
	.quad 0xee00099007904000	/* pmxvbf16ger2pp a4,vs0,vs1,0,0,1 */
	.quad 0xee0009900790000d	/* pmxvbf16ger2pp a4,vs0,vs1,0,13,0 */
	.quad 0xee0009900790400d	/* pmxvbf16ger2pp a4,vs0,vs1,0,13,1 */
	.quad 0xee000990079000b0	/* pmxvbf16ger2pp a4,vs0,vs1,11,0,0 */
	.quad 0xee000990079040b0	/* pmxvbf16ger2pp a4,vs0,vs1,11,0,1 */
	.quad 0xee000990079000bd	/* pmxvbf16ger2pp a4,vs0,vs1,11,13,0 */
	.quad 0xee000990079040bd	/* pmxvbf16ger2pp a4,vs0,vs1,11,13,1 */
	.quad 0xee00089807900000	/* pmxvf16ger2 a4,vs0,vs1,0,0,0 */
	.quad 0xee00089807904000	/* pmxvf16ger2 a4,vs0,vs1,0,0,1 */
	.quad 0xee0008980790000d	/* pmxvf16ger2 a4,vs0,vs1,0,13,0 */
	.quad 0xee0008980790400d	/* pmxvf16ger2 a4,vs0,vs1,0,13,1 */
	.quad 0xee000898079000b0	/* pmxvf16ger2 a4,vs0,vs1,11,0,0 */
	.quad 0xee000898079040b0	/* pmxvf16ger2 a4,vs0,vs1,11,0,1 */
	.quad 0xee000898079000bd	/* pmxvf16ger2 a4,vs0,vs1,11,13,0 */
	.quad 0xee000898079040bd	/* pmxvf16ger2 a4,vs0,vs1,11,13,1 */
	.quad 0xee000e9007900000	/* pmxvf16ger2nn a4,vs0,vs1,0,0,0 */
	.quad 0xee000e9007904000	/* pmxvf16ger2nn a4,vs0,vs1,0,0,1 */
	.quad 0xee000e900790000d	/* pmxvf16ger2nn a4,vs0,vs1,0,13,0 */
	.quad 0xee000e900790400d	/* pmxvf16ger2nn a4,vs0,vs1,0,13,1 */
	.quad 0xee000e90079000b0	/* pmxvf16ger2nn a4,vs0,vs1,11,0,0 */
	.quad 0xee000e90079040b0	/* pmxvf16ger2nn a4,vs0,vs1,11,0,1 */
	.quad 0xee000e90079000bd	/* pmxvf16ger2nn a4,vs0,vs1,11,13,0 */
	.quad 0xee000e90079040bd	/* pmxvf16ger2nn a4,vs0,vs1,11,13,1 */
	.quad 0xee000a9007900000	/* pmxvf16ger2np a4,vs0,vs1,0,0,0 */
	.quad 0xee000a9007904000	/* pmxvf16ger2np a4,vs0,vs1,0,0,1 */
	.quad 0xee000a900790000d	/* pmxvf16ger2np a4,vs0,vs1,0,13,0 */
	.quad 0xee000a900790400d	/* pmxvf16ger2np a4,vs0,vs1,0,13,1 */
	.quad 0xee000a90079000b0	/* pmxvf16ger2np a4,vs0,vs1,11,0,0 */
	.quad 0xee000a90079040b0	/* pmxvf16ger2np a4,vs0,vs1,11,0,1 */
	.quad 0xee000a90079000bd	/* pmxvf16ger2np a4,vs0,vs1,11,13,0 */
	.quad 0xee000a90079040bd	/* pmxvf16ger2np a4,vs0,vs1,11,13,1 */
	.quad 0xee000c9007900000	/* pmxvf16ger2pn a4,vs0,vs1,0,0,0 */
	.quad 0xee000c9007904000	/* pmxvf16ger2pn a4,vs0,vs1,0,0,1 */
	.quad 0xee000c900790000d	/* pmxvf16ger2pn a4,vs0,vs1,0,13,0 */
	.quad 0xee000c900790400d	/* pmxvf16ger2pn a4,vs0,vs1,0,13,1 */
	.quad 0xee000c90079000b0	/* pmxvf16ger2pn a4,vs0,vs1,11,0,0 */
	.quad 0xee000c90079040b0	/* pmxvf16ger2pn a4,vs0,vs1,11,0,1 */
	.quad 0xee000c90079000bd	/* pmxvf16ger2pn a4,vs0,vs1,11,13,0 */
	.quad 0xee000c90079040bd	/* pmxvf16ger2pn a4,vs0,vs1,11,13,1 */
	.quad 0xee00089007900000	/* pmxvf16ger2pp a4,vs0,vs1,0,0,0 */
	.quad 0xee00089007904000	/* pmxvf16ger2pp a4,vs0,vs1,0,0,1 */
	.quad 0xee0008900790000d	/* pmxvf16ger2pp a4,vs0,vs1,0,13,0 */
	.quad 0xee0008900790400d	/* pmxvf16ger2pp a4,vs0,vs1,0,13,1 */
	.quad 0xee000890079000b0	/* pmxvf16ger2pp a4,vs0,vs1,11,0,0 */
	.quad 0xee000890079040b0	/* pmxvf16ger2pp a4,vs0,vs1,11,0,1 */
	.quad 0xee000890079000bd	/* pmxvf16ger2pp a4,vs0,vs1,11,13,0 */
	.quad 0xee000890079040bd	/* pmxvf16ger2pp a4,vs0,vs1,11,13,1 */
	.quad 0xee0008d807900000	/* pmxvf32ger a4,vs0,vs1,0,0 */
	.quad 0xee0008d80790000d	/* pmxvf32ger a4,vs0,vs1,0,13 */
	.quad 0xee0008d8079000b0	/* pmxvf32ger a4,vs0,vs1,11,0 */
	.quad 0xee0008d8079000bd	/* pmxvf32ger a4,vs0,vs1,11,13 */
	.quad 0xee000ed007900000	/* pmxvf32gernn a4,vs0,vs1,0,0 */
	.quad 0xee000ed00790000d	/* pmxvf32gernn a4,vs0,vs1,0,13 */
	.quad 0xee000ed0079000b0	/* pmxvf32gernn a4,vs0,vs1,11,0 */
	.quad 0xee000ed0079000bd	/* pmxvf32gernn a4,vs0,vs1,11,13 */
	.quad 0xee000ad007900000	/* pmxvf32gernp a4,vs0,vs1,0,0 */
	.quad 0xee000ad00790000d	/* pmxvf32gernp a4,vs0,vs1,0,13 */
	.quad 0xee000ad0079000b0	/* pmxvf32gernp a4,vs0,vs1,11,0 */
	.quad 0xee000ad0079000bd	/* pmxvf32gernp a4,vs0,vs1,11,13 */
	.quad 0xee000cd007900000	/* pmxvf32gerpn a4,vs0,vs1,0,0 */
	.quad 0xee000cd00790000d	/* pmxvf32gerpn a4,vs0,vs1,0,13 */
	.quad 0xee000cd0079000b0	/* pmxvf32gerpn a4,vs0,vs1,11,0 */
	.quad 0xee000cd0079000bd	/* pmxvf32gerpn a4,vs0,vs1,11,13 */
	.quad 0xee0008d007900000	/* pmxvf32gerpp a4,vs0,vs1,0,0 */
	.quad 0xee0008d00790000d	/* pmxvf32gerpp a4,vs0,vs1,0,13 */
	.quad 0xee0008d0079000b0	/* pmxvf32gerpp a4,vs0,vs1,11,0 */
	.quad 0xee0008d0079000bd	/* pmxvf32gerpp a4,vs0,vs1,11,13 */
	.quad 0xee1601d807900000	/* pmxvf64ger a4,vs22,vs0,0,0 */
	.quad 0xee1601d807900004	/* pmxvf64ger a4,vs22,vs0,0,1 */
	.quad 0xee1601d8079000b0	/* pmxvf64ger a4,vs22,vs0,11,0 */
	.quad 0xee1601d8079000b4	/* pmxvf64ger a4,vs22,vs0,11,1 */
	.quad 0xee1607d007900000	/* pmxvf64gernn a4,vs22,vs0,0,0 */
	.quad 0xee1607d007900004	/* pmxvf64gernn a4,vs22,vs0,0,1 */
	.quad 0xee1607d0079000b0	/* pmxvf64gernn a4,vs22,vs0,11,0 */
	.quad 0xee1607d0079000b4	/* pmxvf64gernn a4,vs22,vs0,11,1 */
	.quad 0xee1603d007900000	/* pmxvf64gernp a4,vs22,vs0,0,0 */
	.quad 0xee1603d007900004	/* pmxvf64gernp a4,vs22,vs0,0,1 */
	.quad 0xee1603d0079000b0	/* pmxvf64gernp a4,vs22,vs0,11,0 */
	.quad 0xee1603d0079000b4	/* pmxvf64gernp a4,vs22,vs0,11,1 */
	.quad 0xee1605d007900000	/* pmxvf64gerpn a4,vs22,vs0,0,0 */
	.quad 0xee1605d007900004	/* pmxvf64gerpn a4,vs22,vs0,0,1 */
	.quad 0xee1605d0079000b0	/* pmxvf64gerpn a4,vs22,vs0,11,0 */
	.quad 0xee1605d0079000b4	/* pmxvf64gerpn a4,vs22,vs0,11,1 */
	.quad 0xee1601d007900000	/* pmxvf64gerpp a4,vs22,vs0,0,0 */
	.quad 0xee1601d007900004	/* pmxvf64gerpp a4,vs22,vs0,0,1 */
	.quad 0xee1601d0079000b0	/* pmxvf64gerpp a4,vs22,vs0,11,0 */
	.quad 0xee1601d0079000b4	/* pmxvf64gerpp a4,vs22,vs0,11,1 */
	.quad 0xee000a5807900000	/* pmxvi16ger2 a4,vs0,vs1,0,0,0 */
	.quad 0xee000a5807904000	/* pmxvi16ger2 a4,vs0,vs1,0,0,1 */
	.quad 0xee000a580790000d	/* pmxvi16ger2 a4,vs0,vs1,0,13,0 */
	.quad 0xee000a580790400d	/* pmxvi16ger2 a4,vs0,vs1,0,13,1 */
	.quad 0xee000a58079000b0	/* pmxvi16ger2 a4,vs0,vs1,11,0,0 */
	.quad 0xee000a58079040b0	/* pmxvi16ger2 a4,vs0,vs1,11,0,1 */
	.quad 0xee000a58079000bd	/* pmxvi16ger2 a4,vs0,vs1,11,13,0 */
	.quad 0xee000a58079040bd	/* pmxvi16ger2 a4,vs0,vs1,11,13,1 */
	.quad 0xee000b5807900000	/* pmxvi16ger2pp a4,vs0,vs1,0,0,0 */
	.quad 0xee000b5807904000	/* pmxvi16ger2pp a4,vs0,vs1,0,0,1 */
	.quad 0xee000b580790000d	/* pmxvi16ger2pp a4,vs0,vs1,0,13,0 */
	.quad 0xee000b580790400d	/* pmxvi16ger2pp a4,vs0,vs1,0,13,1 */
	.quad 0xee000b58079000b0	/* pmxvi16ger2pp a4,vs0,vs1,11,0,0 */
	.quad 0xee000b58079040b0	/* pmxvi16ger2pp a4,vs0,vs1,11,0,1 */
	.quad 0xee000b58079000bd	/* pmxvi16ger2pp a4,vs0,vs1,11,13,0 */
	.quad 0xee000b58079040bd	/* pmxvi16ger2pp a4,vs0,vs1,11,13,1 */
	.quad 0xee00095807900000	/* pmxvi16ger2s a4,vs0,vs1,0,0,0 */
	.quad 0xee00095807904000	/* pmxvi16ger2s a4,vs0,vs1,0,0,1 */
	.quad 0xee0009580790000d	/* pmxvi16ger2s a4,vs0,vs1,0,13,0 */
	.quad 0xee0009580790400d	/* pmxvi16ger2s a4,vs0,vs1,0,13,1 */
	.quad 0xee000958079000b0	/* pmxvi16ger2s a4,vs0,vs1,11,0,0 */
	.quad 0xee000958079040b0	/* pmxvi16ger2s a4,vs0,vs1,11,0,1 */
	.quad 0xee000958079000bd	/* pmxvi16ger2s a4,vs0,vs1,11,13,0 */
	.quad 0xee000958079040bd	/* pmxvi16ger2s a4,vs0,vs1,11,13,1 */
	.quad 0xee00095007900000	/* pmxvi16ger2spp a4,vs0,vs1,0,0,0 */
	.quad 0xee00095007904000	/* pmxvi16ger2spp a4,vs0,vs1,0,0,1 */
	.quad 0xee0009500790000d	/* pmxvi16ger2spp a4,vs0,vs1,0,13,0 */
	.quad 0xee0009500790400d	/* pmxvi16ger2spp a4,vs0,vs1,0,13,1 */
	.quad 0xee000950079000b0	/* pmxvi16ger2spp a4,vs0,vs1,11,0,0 */
	.quad 0xee000950079040b0	/* pmxvi16ger2spp a4,vs0,vs1,11,0,1 */
	.quad 0xee000950079000bd	/* pmxvi16ger2spp a4,vs0,vs1,11,13,0 */
	.quad 0xee000950079040bd	/* pmxvi16ger2spp a4,vs0,vs1,11,13,1 */
	.quad 0xee00091807900000	/* pmxvi4ger8 a4,vs0,vs1,0,0,0 */
	.quad 0xee00091807902d00	/* pmxvi4ger8 a4,vs0,vs1,0,0,45 */
	.quad 0xee00091807900001	/* pmxvi4ger8 a4,vs0,vs1,0,1,0 */
	.quad 0xee00091807902d01	/* pmxvi4ger8 a4,vs0,vs1,0,1,45 */
	.quad 0xee000918079000b0	/* pmxvi4ger8 a4,vs0,vs1,11,0,0 */
	.quad 0xee00091807902db0	/* pmxvi4ger8 a4,vs0,vs1,11,0,45 */
	.quad 0xee000918079000b1	/* pmxvi4ger8 a4,vs0,vs1,11,1,0 */
	.quad 0xee00091807902db1	/* pmxvi4ger8 a4,vs0,vs1,11,1,45 */
	.quad 0xee00091007900000	/* pmxvi4ger8pp a4,vs0,vs1,0,0,0 */
	.quad 0xee00091007902d00	/* pmxvi4ger8pp a4,vs0,vs1,0,0,45 */
	.quad 0xee00091007900001	/* pmxvi4ger8pp a4,vs0,vs1,0,1,0 */
	.quad 0xee00091007902d01	/* pmxvi4ger8pp a4,vs0,vs1,0,1,45 */
	.quad 0xee000910079000b0	/* pmxvi4ger8pp a4,vs0,vs1,11,0,0 */
	.quad 0xee00091007902db0	/* pmxvi4ger8pp a4,vs0,vs1,11,0,45 */
	.quad 0xee000910079000b1	/* pmxvi4ger8pp a4,vs0,vs1,11,1,0 */
	.quad 0xee00091007902db1	/* pmxvi4ger8pp a4,vs0,vs1,11,1,45 */
	.quad 0xee00081807900000	/* pmxvi8ger4 a4,vs0,vs1,0,0,0 */
	.quad 0xee00081807905000	/* pmxvi8ger4 a4,vs0,vs1,0,0,5 */
	.quad 0xee0008180790000d	/* pmxvi8ger4 a4,vs0,vs1,0,13,0 */
	.quad 0xee0008180790500d	/* pmxvi8ger4 a4,vs0,vs1,0,13,5 */
	.quad 0xee000818079000b0	/* pmxvi8ger4 a4,vs0,vs1,11,0,0 */
	.quad 0xee000818079050b0	/* pmxvi8ger4 a4,vs0,vs1,11,0,5 */
	.quad 0xee000818079000bd	/* pmxvi8ger4 a4,vs0,vs1,11,13,0 */
	.quad 0xee000818079050bd	/* pmxvi8ger4 a4,vs0,vs1,11,13,5 */
	.quad 0xee00081007900000	/* pmxvi8ger4pp a4,vs0,vs1,0,0,0 */
	.quad 0xee00081007905000	/* pmxvi8ger4pp a4,vs0,vs1,0,0,5 */
	.quad 0xee0008100790000d	/* pmxvi8ger4pp a4,vs0,vs1,0,13,0 */
	.quad 0xee0008100790500d	/* pmxvi8ger4pp a4,vs0,vs1,0,13,5 */
	.quad 0xee000810079000b0	/* pmxvi8ger4pp a4,vs0,vs1,11,0,0 */
	.quad 0xee000810079050b0	/* pmxvi8ger4pp a4,vs0,vs1,11,0,5 */
	.quad 0xee000810079000bd	/* pmxvi8ger4pp a4,vs0,vs1,11,13,0 */
	.quad 0xee000810079050bd	/* pmxvi8ger4pp a4,vs0,vs1,11,13,5 */
	.quad 0xee000b1807900000	/* pmxvi8ger4spp a4,vs0,vs1,0,0,0 */
	.quad 0xee000b1807905000	/* pmxvi8ger4spp a4,vs0,vs1,0,0,5 */
	.quad 0xee000b180790000d	/* pmxvi8ger4spp a4,vs0,vs1,0,13,0 */
	.quad 0xee000b180790500d	/* pmxvi8ger4spp a4,vs0,vs1,0,13,5 */
	.quad 0xee000b18079000b0	/* pmxvi8ger4spp a4,vs0,vs1,11,0,0 */
	.quad 0xee000b18079050b0	/* pmxvi8ger4spp a4,vs0,vs1,11,0,5 */
	.quad 0xee000b18079000bd	/* pmxvi8ger4spp a4,vs0,vs1,11,13,0 */
	.quad 0xee000b18079050bd	/* pmxvi8ger4spp a4,vs0,vs1,11,13,5 */
	.quad 0x9801000006000000	/* pstb r0,0(r1) */
	.quad 0x9801001006000000	/* pstb r0,16(r1) */
	.quad 0x9801002006000000	/* pstb r0,32(r1) */
	.quad 0x9801000806000000	/* pstb r0,8(r1) */
	.quad 0xf401000004000000	/* pstd r0,0(r1) */
	.quad 0xf401001004000000	/* pstd r0,16(r1) */
	.quad 0xf401002004000000	/* pstd r0,32(r1) */
	.quad 0xf401000804000000	/* pstd r0,8(r1) */
	.quad 0xdb40000006000000	/* pstfd f26,0(0) */
	.quad 0xdb40001006000000	/* pstfd f26,16(0) */
	.quad 0xdb40002006000000	/* pstfd f26,32(0) */
	.quad 0xdb40000406000000	/* pstfd f26,4(0) */
	.quad 0xdb40000806000000	/* pstfd f26,8(0) */
	.quad 0xd340000006000000	/* pstfs f26,0(0) */
	.quad 0xd340001006000000	/* pstfs f26,16(0) */
	.quad 0xd340002006000000	/* pstfs f26,32(0) */
	.quad 0xd340000406000000	/* pstfs f26,4(0) */
	.quad 0xd340000806000000	/* pstfs f26,8(0) */
	.quad 0xb001000006000000	/* psth r0,0(r1) */
	.quad 0xb001001006000000	/* psth r0,16(r1) */
	.quad 0xb001002006000000	/* psth r0,32(r1) */
	.quad 0xb001000806000000	/* psth r0,8(r1) */
	.quad 0xf300000004000000	/* pstq r24,0(0) */
	.quad 0xf300001004000000	/* pstq r24,16(0) */
	.quad 0xf300002004000000	/* pstq r24,32(0) */
	.quad 0xf300004004000000	/* pstq r24,64(0) */
	.quad 0xf300000804000000	/* pstq r24,8(0) */
	.quad 0x9001000006000000	/* pstw r0,0(r1) */
	.quad 0x9001001006000000	/* pstw r0,16(r1) */
	.quad 0x9001002006000000	/* pstw r0,32(r1) */
	.quad 0x9001000806000000	/* pstw r0,8(r1) */
	.quad 0xbac0000004000000	/* pstxsd v22,0(0) */
	.quad 0xbac0001004000000	/* pstxsd v22,16(0) */
	.quad 0xbac0002004000000	/* pstxsd v22,32(0) */
	.quad 0xbac0000404000000	/* pstxsd v22,4(0) */
	.quad 0xbac0004004000000	/* pstxsd v22,64(0) */
	.quad 0xbac0000804000000	/* pstxsd v22,8(0) */
	.quad 0xbec0000004000000	/* pstxssp v22,0(0) */
	.quad 0xbec0001004000000	/* pstxssp v22,16(0) */
	.quad 0xbec0002004000000	/* pstxssp v22,32(0) */
	.quad 0xbec0000404000000	/* pstxssp v22,4(0) */
	.quad 0xbec0004004000000	/* pstxssp v22,64(0) */
	.quad 0xbec0000804000000	/* pstxssp v22,8(0) */
	.quad 0xfa80000004000000	/* pstxvp vs20,0(0) */
	.quad 0xfa80001004000000	/* pstxvp vs20,16(0) */
	.quad 0xfa80002004000000	/* pstxvp vs20,32(0) */
	.quad 0xfa80003004000000	/* pstxvp vs20,48(0) */
	.quad 0xd801000004000000	/* pstxv vs0,0(r1) */
	.quad 0xd801001004000000	/* pstxv vs0,16(r1) */
	.quad 0xd801000404000000	/* pstxv vs0,4(r1) */
	.quad 0xd801000804000000	/* pstxv vs0,8(r1) */
	.long 0x7f470300	/* setbc r26,4*cr1+so */
	.long 0x7f480300	/* setbc r26,4*cr2+lt */
	.long 0x7f5f0300	/* setbc r26,4*cr7+so */
	.long 0x7f420300	/* setbc r26,eq */
	.long 0x7f410300	/* setbc r26,gt */
	.long 0x7f400300	/* setbc r26,lt */
	.long 0x7f430300	/* setbc r26,so */
	.long 0x7f470340	/* setbcr r26,4*cr1+so */
	.long 0x7f480340	/* setbcr r26,4*cr2+lt */
	.long 0x7f5f0340	/* setbcr r26,4*cr7+so */
	.long 0x7f470380	/* setnbc r26,4*cr1+so */
	.long 0x7f480380	/* setnbc r26,4*cr2+lt */
	.long 0x7f5f0380	/* setnbc r26,4*cr7+so */
	.long 0x7f420380	/* setnbc r26,eq */
	.long 0x7f410380	/* setnbc r26,gt */
	.long 0x7f400380	/* setnbc r26,lt */
	.long 0x7f430380	/* setnbc r26,so */
	.long 0x7f4703c0	/* setnbcr r26,4*cr1+so */
	.long 0x7f4803c0	/* setnbcr r26,4*cr2+lt */
	.long 0x7f5f03c0	/* setnbcr r26,4*cr7+so */
	.long 0x7f4003c0	/* setnbcr r26,lt */
	.long 0x7f4303c0	/* setnbcr r26,so */
	.long 0x1a800001	/* stxvp vs20,0(0) */
	.long 0x1a800011	/* stxvp vs20,16(0) */
	.long 0x1a800021	/* stxvp vs20,32(0) */
	.long 0x1a800031	/* stxvp vs20,48(0) */
	.long 0x7e800b9a	/* stxvpx vs20,0,r1 */
	.long 0x7c01111a	/* stxvrbx vs0,r1,r2 */
	.long 0x7c0111da	/* stxvrdx vs0,r1,r2 */
	.long 0x7c01115a	/* stxvrhx vs0,r1,r2 */
	.long 0x7c01119a	/* stxvrwx vs0,r1,r2 */
	.long 0x1001154d	/* vcfuged v0,v1,v2 */
	.long 0x1001118d	/* vclrlb v0,v1,r2 */
	.long 0x100111cd	/* vclrrb v0,v1,r2 */
	.long 0x10011784	/* vclzdm v0,v1,v2 */
	.long 0x100111c7	/* vcmpequq v0,v1,v2 */
	.long 0x10011387	/* vcmpgtsq v0,v1,v2 */
	.long 0x10011287	/* vcmpgtuq v0,v1,v2 */
	.long 0x11800941	/* vcmpsq cr3,v0,v1 */
	.long 0x11800901	/* vcmpuq cr3,v0,v1 */
	.long 0x10180e42	/* vcntmbb r0,v1,0 */
	.long 0x10190e42	/* vcntmbb r0,v1,1 */
	.long 0x101e0e42	/* vcntmbd r0,v1,0 */
	.long 0x101f0e42	/* vcntmbd r0,v1,1 */
	.long 0x101a0e42	/* vcntmbh r0,v1,0 */
	.long 0x101b0e42	/* vcntmbh r0,v1,1 */
	.long 0x101c0e42	/* vcntmbw r0,v1,0 */
	.long 0x101d0e42	/* vcntmbw r0,v1,1 */
	.long 0x100117c4	/* vctzdm v0,v1,v2 */
	.long 0x100113cb	/* vdivesd v0,v1,v2 */
	.long 0x1001130b	/* vdivesq v0,v1,v2 */
	.long 0x1001138b	/* vdivesw v0,v1,v2 */
	.long 0x100112cb	/* vdiveud v0,v1,v2 */
	.long 0x1001120b	/* vdiveuq v0,v1,v2 */
	.long 0x1001128b	/* vdiveuw v0,v1,v2 */
	.long 0x100111cb	/* vdivsd v0,v1,v2 */
	.long 0x1001110b	/* vdivsq v0,v1,v2 */
	.long 0x1001118b	/* vdivsw v0,v1,v2 */
	.long 0x100110cb	/* vdivud v0,v1,v2 */
	.long 0x1001100b	/* vdivuq v0,v1,v2 */
	.long 0x1001108b	/* vdivuw v0,v1,v2 */
	.long 0x10000e42	/* vexpandbm v0,v1 */
	.long 0x10030e42	/* vexpanddm v0,v1 */
	.long 0x10010e42	/* vexpandhm v0,v1 */
	.long 0x10040e42	/* vexpandqm v0,v1 */
	.long 0x10020e42	/* vexpandwm v0,v1 */
	.long 0x100110de	/* vextddvlx v0,v1,v2,r3 */
	.long 0x100110df	/* vextddvrx v0,v1,v2,r3 */
	.long 0x100110d8	/* vextdubvlx v0,v1,v2,r3 */
	.long 0x100110d9	/* vextdubvrx v0,v1,v2,r3 */
	.long 0x100110da	/* vextduhvlx v0,v1,v2,r3 */
	.long 0x100110db	/* vextduhvrx v0,v1,v2,r3 */
	.long 0x100110dc	/* vextduwvlx v0,v1,v2,r3 */
	.long 0x100110dd	/* vextduwvrx v0,v1,v2,r3 */
	.long 0x10080e42	/* vextractbm r0,v1 */
	.long 0x100b0e42	/* vextractdm r0,v1 */
	.long 0x10090e42	/* vextracthm r0,v1 */
	.long 0x100c0e42	/* vextractqm r0,v1 */
	.long 0x100a0e42	/* vextractwm r0,v1 */
	.long 0x101b0e02	/* vextsd2q v0,v1 */
	.long 0x10020ccc	/* vgnb r0,v1,2 */
	.long 0x10030ccc	/* vgnb r0,v1,3 */
	.long 0x10040ccc	/* vgnb r0,v1,4 */
	.long 0x10050ccc	/* vgnb r0,v1,5 */
	.long 0x10060ccc	/* vgnb r0,v1,6 */
	.long 0x10070ccc	/* vgnb r0,v1,7 */
	.long 0x1001120f	/* vinsblx v0,r1,r2 */
	.long 0x1001130f	/* vinsbrx v0,r1,r2 */
	.long 0x1001100f	/* vinsbvlx v0,r1,v2 */
	.long 0x1001110f	/* vinsbvrx v0,r1,v2 */
	.long 0x100112cf	/* vinsdlx v0,r1,r2 */
	.long 0x100113cf	/* vinsdrx v0,r1,r2 */
	.long 0x100309cf	/* vinsd v0,r1,3 */
	.long 0x100709cf	/* vinsd v0,r1,7 */
	.long 0x1001124f	/* vinshlx v0,r1,r2 */
	.long 0x1001134f	/* vinshrx v0,r1,r2 */
	.long 0x1001104f	/* vinshvlx v0,r1,v2 */
	.long 0x1001114f	/* vinshvrx v0,r1,v2 */
	.long 0x1001128f	/* vinswlx v0,r1,r2 */
	.long 0x1001138f	/* vinswrx v0,r1,r2 */
	.long 0x100308cf	/* vinsw v0,r1,3 */
	.long 0x100708cf	/* vinsw v0,r1,7 */
	.long 0x1001108f	/* vinswvlx v0,r1,v2 */
	.long 0x1001118f	/* vinswvrx v0,r1,v2 */
	.long 0x100117cb	/* vmodsd v0,v1,v2 */
	.long 0x1001170b	/* vmodsq v0,v1,v2 */
	.long 0x1001178b	/* vmodsw v0,v1,v2 */
	.long 0x100116cb	/* vmodud v0,v1,v2 */
	.long 0x1001160b	/* vmoduq v0,v1,v2 */
	.long 0x1001168b	/* vmoduw v0,v1,v2 */
	.long 0x100110d7	/* vmsumcud v0,v1,v2,v3 */
	.long 0x100113c8	/* vmulesd v0,v1,v2 */
	.long 0x100112c8	/* vmuleud v0,v1,v2 */
	.long 0x100113c9	/* vmulhsd v0,v1,v2 */
	.long 0x10011389	/* vmulhsw v0,v1,v2 */
	.long 0x100112c9	/* vmulhud v0,v1,v2 */
	.long 0x10011289	/* vmulhuw v0,v1,v2 */
	.long 0x100111c9	/* vmulld v0,v1,v2 */
	.long 0x100111c8	/* vmulosd v0,v1,v2 */
	.long 0x100110c8	/* vmuloud v0,v1,v2 */
	.long 0x100115cd	/* vpdepd v0,v1,v2 */
	.long 0x1001158d	/* vpextd v0,v1,v2 */
	.long 0x10011045	/* vrlqmi v0,v1,v2 */
	.long 0x10011145	/* vrlqnm v0,v1,v2 */
	.long 0x10011005	/* vrlq v0,v1,v2 */
	.long 0x10011016	/* vsldbi v0,v1,v2,0 */
	.long 0x10011116	/* vsldbi v0,v1,v2,4 */
	.long 0x10011105	/* vslq v0,v1,v2 */
	.long 0x10011305	/* vsraq v0,v1,v2 */
	.long 0x10011216	/* vsrdbi v0,v1,v2,0 */
	.long 0x10011316	/* vsrdbi v0,v1,v2,4 */
	.long 0x10011205	/* vsrq v0,v1,v2 */
	.long 0x1000080d	/* vstribl v0,v1 */
	.long 0x10000c0d	/* vstribl. v0,v1 */
	.long 0x1001080d	/* vstribr v0,v1 */
	.long 0x10010c0d	/* vstribr. v0,v1 */
	.long 0x1002080d	/* vstrihl v0,v1 */
	.long 0x10020c0d	/* vstrihl. v0,v1 */
	.long 0x1003080d	/* vstrihr v0,v1 */
	.long 0x10030c0d	/* vstrihr. v0,v1 */
	.long 0xfc011088	/* xscmpeqqp v0,v1,v2 */
	.long 0xfc011188	/* xscmpgeqp v0,v1,v2 */
	.long 0xfc0111c8	/* xscmpgtqp v0,v1,v2 */
	.long 0xfc080e88	/* xscvqpsqz v0,v1 */
	.long 0xfc000e88	/* xscvqpuqz v0,v1 */
	.long 0xfc0b0e88	/* xscvsqqp v0,v1 */
	.long 0xfc030e88	/* xscvuqqp v0,v1 */
	.long 0xfc011548	/* xsmaxcqp v0,v1,v2 */
	.long 0xfc0115c8	/* xsmincqp v0,v1,v2 */
	.long 0xee000998	/* xvbf16ger2 a4,vs0,vs1 */
	.long 0xee000f90	/* xvbf16ger2nn a4,vs0,vs1 */
	.long 0xee000b90	/* xvbf16ger2np a4,vs0,vs1 */
	.long 0xee000d90	/* xvbf16ger2pn a4,vs0,vs1 */
	.long 0xee000990	/* xvbf16ger2pp a4,vs0,vs1 */
	.long 0xf0100f6c	/* xvcvbf16spn vs0,vs1 */
	.long 0xf0110f6c	/* xvcvspbf16 vs0,vs1 */
	.long 0xee000898	/* xvf16ger2 a4,vs0,vs1 */
	.long 0xee000e90	/* xvf16ger2nn a4,vs0,vs1 */
	.long 0xee000a90	/* xvf16ger2np a4,vs0,vs1 */
	.long 0xee000c90	/* xvf16ger2pn a4,vs0,vs1 */
	.long 0xee000890	/* xvf16ger2pp a4,vs0,vs1 */
	.long 0xee0008d8	/* xvf32ger a4,vs0,vs1 */
	.long 0xee000ed0	/* xvf32gernn a4,vs0,vs1 */
	.long 0xee000ad0	/* xvf32gernp a4,vs0,vs1 */
	.long 0xee000cd0	/* xvf32gerpn a4,vs0,vs1 */
	.long 0xee0008d0	/* xvf32gerpp a4,vs0,vs1 */
	.long 0xee1601d8	/* xvf64ger a4,vs22,vs0 */
	.long 0xee1607d0	/* xvf64gernn a4,vs22,vs0 */
	.long 0xee1603d0	/* xvf64gernp a4,vs22,vs0 */
	.long 0xee1605d0	/* xvf64gerpn a4,vs22,vs0 */
	.long 0xee1601d0	/* xvf64gerpp a4,vs22,vs0 */
	.long 0xee000a58	/* xvi16ger2 a4,vs0,vs1 */
	.long 0xee000b58	/* xvi16ger2pp a4,vs0,vs1 */
	.long 0xee000958	/* xvi16ger2s a4,vs0,vs1 */
	.long 0xee000950	/* xvi16ger2spp a4,vs0,vs1 */
	.long 0xee000918	/* xvi4ger8 a4,vs0,vs1 */
	.long 0xee000910	/* xvi4ger8pp a4,vs0,vs1 */
	.long 0xee000818	/* xvi8ger4 a4,vs0,vs1 */
	.long 0xee000810	/* xvi8ger4pp a4,vs0,vs1 */
	.long 0xee000b18	/* xvi8ger4spp a4,vs0,vs1 */
	.long 0xf182076c	/* xvtlsbb cr3,vs0 */
	.quad 0x840110c005000000	/* xxblendvb vs0,vs1,vs2,vs3 */
	.quad 0x840110f005000000	/* xxblendvd vs0,vs1,vs2,vs3 */
	.quad 0x840110d005000000	/* xxblendvh vs0,vs1,vs2,vs3 */
	.quad 0x840110e005000000	/* xxblendvw vs0,vs1,vs2,vs3 */
	.quad 0x880110d005000000	/* xxeval vs0,vs1,vs2,vs3,0 */
	.quad 0x880110d005000003	/* xxeval vs0,vs1,vs2,vs3,3 */
	.long 0xf0000f28	/* xxgenpcvbm vs0,v1,0 */
	.long 0xf0010f28	/* xxgenpcvbm vs0,v1,1 */
	.long 0xf0020f28	/* xxgenpcvbm vs0,v1,2 */
	.long 0xf0030f28	/* xxgenpcvbm vs0,v1,3 */
	.long 0xf0000f6a	/* xxgenpcvdm vs0,v1,0 */
	.long 0xf0010f6a	/* xxgenpcvdm vs0,v1,1 */
	.long 0xf0020f6a	/* xxgenpcvdm vs0,v1,2 */
	.long 0xf0030f6a	/* xxgenpcvdm vs0,v1,3 */
	.long 0xf0000f2a	/* xxgenpcvhm vs0,v1,0 */
	.long 0xf0010f2a	/* xxgenpcvhm vs0,v1,1 */
	.long 0xf0020f2a	/* xxgenpcvhm vs0,v1,2 */
	.long 0xf0030f2a	/* xxgenpcvhm vs0,v1,3 */
	.long 0xf0000f68	/* xxgenpcvwm vs0,v1,0 */
	.long 0xf0010f68	/* xxgenpcvwm vs0,v1,1 */
	.long 0xf0020f68	/* xxgenpcvwm vs0,v1,2 */
	.long 0xf0030f68	/* xxgenpcvwm vs0,v1,3 */
	.long 0x7e000162	/* xxmfacc a4 */
	.long 0x7e010162	/* xxmtacc a4 */
	.long 0x7e030162	/* xxsetaccz a4 */
	.quad 0x880110c005000000	/* xxpermx vs0,vs1,vs2,vs3,0 */
	.quad 0x880110c005000003	/* xxpermx vs0,vs1,vs2,vs3,3 */
	.quad 0x8000007f05000000	/* xxsplti32dx vs0,0,127 */
	.quad 0x8000000f05000000	/* xxsplti32dx vs0,0,15 */
	.quad 0x8000a5a50500a5a5	/* xxsplti32dx vs0,0,2779096485 */
	.quad 0x8000000305000000	/* xxsplti32dx vs0,0,3 */
	.quad 0x8000001f05000000	/* xxsplti32dx vs0,0,31 */
	.quad 0x8000800005000000	/* xxsplti32dx vs0,0,32768 */
	.quad 0x8000ffff0500ffff	/* xxsplti32dx vs0,0,4294967295 */
	.quad 0x8000003f05000000	/* xxsplti32dx vs0,0,63 */
	.quad 0x800003e705000001	/* xxsplti32dx vs0,0,66535 */
	.quad 0x8000000705000000	/* xxsplti32dx vs0,0,7 */
	.quad 0x8002007f05000000	/* xxsplti32dx vs0,1,127 */
	.quad 0x8002000f05000000	/* xxsplti32dx vs0,1,15 */
	.quad 0x8002a5a50500a5a5	/* xxsplti32dx vs0,1,2779096485 */
	.quad 0x8002000305000000	/* xxsplti32dx vs0,1,3 */
	.quad 0x8002001f05000000	/* xxsplti32dx vs0,1,31 */
	.quad 0x8002800005000000	/* xxsplti32dx vs0,1,32768 */
	.quad 0x8002ffff0500ffff	/* xxsplti32dx vs0,1,4294967295 */
	.quad 0x8002003f05000000	/* xxsplti32dx vs0,1,63 */
	.quad 0x800203e705000001	/* xxsplti32dx vs0,1,66535 */
	.quad 0x8002000705000000	/* xxsplti32dx vs0,1,7 */
	.quad 0x8004000005000000	/* xxspltidp vs0,0 */
	.quad 0x8004000005000080	/* xxspltidp vs0,8388608 */
	.quad 0x8004000105000080	/* xxspltidp vs0,8388609 */
	.quad 0x8004234505000083	/* xxspltidp vs0,8594245 */
	.quad 0x8004ffff050000ff	/* xxspltidp vs0,16777215 */
	.quad 0x8004000005003200	/* xxspltidp vs0,838860800 */
	.quad 0x8004000005007f80	/* xxspltidp vs0,2139095040 */
	.quad 0x8004000105007f80	/* xxspltidp vs0,2139095041 */
	.quad 0x8004234505007f83	/* xxspltidp vs0,2139300677 */
	.quad 0x8004ffff05007fff	/* xxspltidp vs0,2147483647 */
	.quad 0x8004000005008000	/* xxspltidp vs0,2147483648 */
	.quad 0x8004000005008080	/* xxspltidp vs0,2155872256 */
	.quad 0x8004000105008080	/* xxspltidp vs0,2155872257 */
	.quad 0x8004234505008083	/* xxspltidp vs0,2156077893 */
	.quad 0x8004ffff050080ff	/* xxspltidp vs0,2164260863 */
	.quad 0x800400000500ff80	/* xxspltidp vs0,4286578688 */
	.quad 0x800400010500ff80	/* xxspltidp vs0,4286578689 */
	.quad 0x800423450500ff83	/* xxspltidp vs0,4286784325 */
	.quad 0x8004ffff0500ffff	/* xxspltidp vs0,4294967295 */
	.quad 0x8006000005000000	/* xxspltiw vs0,0 */
	.quad 0x8006000105000000	/* xxspltiw vs0,0 */
	.quad 0x8006000305000000	/* xxspltiw vs0,3 */
	.quad 0x8006000805000000	/* xxspltiw vs0,8 */
