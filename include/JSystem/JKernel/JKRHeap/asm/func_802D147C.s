/* 802D147C 002CE3BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1480 002CE3C0  7C 08 02 A6 */	mflr r0
/* 802D1484 002CE3C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1488 002CE3C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D148C 002CE3CC  7C 7F 1B 78 */	mr r31, r3
/* 802D1490 002CE3D0  3C 60 80 3D */	lis r3, lbl_803CC0F0@ha
/* 802D1494 002CE3D4  38 03 C0 F0 */	addi r0, r3, lbl_803CC0F0@l
/* 802D1498 002CE3D8  90 1F 00 00 */	stw r0, 0(r31)
/* 802D149C 002CE3DC  7F E4 FB 78 */	mr r4, r31
/* 802D14A0 002CE3E0  38 64 00 08 */	addi r3, r4, 8
/* 802D14A4 002CE3E4  48 00 A9 59 */	bl __ct__10JSUPtrLinkFPv
/* 802D14A8 002CE3E8  7F E3 FB 78 */	mr r3, r31
/* 802D14AC 002CE3EC  4B FF D3 91 */	bl findFromRoot__7JKRHeapFPv
/* 802D14B0 002CE3F0  90 7F 00 04 */	stw r3, 4(r31)
/* 802D14B4 002CE3F4  80 7F 00 04 */	lwz r3, 4(r31)
/* 802D14B8 002CE3F8  28 03 00 00 */	cmplwi r3, 0
/* 802D14BC 002CE3FC  41 82 00 10 */	beq lbl_802D14CC
/* 802D14C0 002CE400  38 63 00 5C */	addi r3, r3, 0x5c
/* 802D14C4 002CE404  38 9F 00 08 */	addi r4, r31, 8
/* 802D14C8 002CE408  48 00 AA 85 */	bl append__10JSUPtrListFP10JSUPtrLink
lbl_802D14CC:
/* 802D14CC 002CE40C  7F E3 FB 78 */	mr r3, r31
/* 802D14D0 002CE410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D14D4 002CE414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D14D8 002CE418  7C 08 03 A6 */	mtlr r0
/* 802D14DC 002CE41C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D14E0 002CE420  4E 80 00 20 */	blr 