/* 80033494 000303D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80033498 000303D8  7C 08 02 A6 */	mflr r0
/* 8003349C 000303DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800334A0 000303E0  39 61 00 20 */	addi r11, r1, 0x20
/* 800334A4 000303E4  48 32 ED 39 */	bl _savegpr_29
/* 800334A8 000303E8  3B A0 00 00 */	li r29, 0
/* 800334AC 000303EC  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 800334B0 000303F0  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 800334B4 000303F4  3B E3 00 9C */	addi r31, r3, 0x9c
lbl_800334B8:
/* 800334B8 000303F8  7F E3 FB 78 */	mr r3, r31
/* 800334BC 000303FC  38 1D 00 0B */	addi r0, r29, 0xb
/* 800334C0 00030400  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 800334C4 00030404  7F C4 F3 78 */	mr r4, r30
/* 800334C8 00030408  38 A0 00 01 */	li r5, 1
/* 800334CC 0003040C  4B FF FB 65 */	bl getItem__17dSv_player_item_cCFib
/* 800334D0 00030410  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800334D4 00030414  28 00 00 FF */	cmplwi r0, 0xff
/* 800334D8 00030418  40 82 00 18 */	bne lbl_800334F0
/* 800334DC 0003041C  7F E3 FB 78 */	mr r3, r31
/* 800334E0 00030420  7F C4 F3 78 */	mr r4, r30
/* 800334E4 00030424  38 A0 00 60 */	li r5, 0x60
/* 800334E8 00030428  4B FF FA D1 */	bl setItem__17dSv_player_item_cFiUc
/* 800334EC 0003042C  48 00 00 10 */	b lbl_800334FC
lbl_800334F0:
/* 800334F0 00030430  3B BD 00 01 */	addi r29, r29, 1
/* 800334F4 00030434  2C 1D 00 04 */	cmpwi r29, 4
/* 800334F8 00030438  41 80 FF C0 */	blt lbl_800334B8
lbl_800334FC:
/* 800334FC 0003043C  39 61 00 20 */	addi r11, r1, 0x20
/* 80033500 00030440  48 32 ED 29 */	bl _restgpr_29
/* 80033504 00030444  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80033508 00030448  7C 08 03 A6 */	mtlr r0
/* 8003350C 0003044C  38 21 00 20 */	addi r1, r1, 0x20
/* 80033510 00030450  4E 80 00 20 */	blr