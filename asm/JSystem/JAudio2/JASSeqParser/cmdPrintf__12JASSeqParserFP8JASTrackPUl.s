lbl_8029526C:
/* 8029526C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80295270  7C 08 02 A6 */	mflr r0
/* 80295274  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80295278  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8029527C  48 0C CF 51 */	bl _savegpr_25
/* 80295280  7C 7D 1B 78 */	mr r29, r3
/* 80295284  7C 9E 23 78 */	mr r30, r4
/* 80295288  3B E0 00 00 */	li r31, 0
/* 8029528C  38 80 00 00 */	li r4, 0
/* 80295290  38 61 00 1C */	addi r3, r1, 0x1c
/* 80295294  48 00 01 40 */	b lbl_802953D4
lbl_80295298:
/* 80295298  80 BE 00 04 */	lwz r5, 4(r30)
/* 8029529C  38 05 00 01 */	addi r0, r5, 1
/* 802952A0  90 1E 00 04 */	stw r0, 4(r30)
/* 802952A4  88 05 00 00 */	lbz r0, 0(r5)
/* 802952A8  7C 03 21 AE */	stbx r0, r3, r4
/* 802952AC  7C A3 20 AE */	lbzx r5, r3, r4
/* 802952B0  7C A0 07 75 */	extsb. r0, r5
/* 802952B4  41 82 01 28 */	beq lbl_802953DC
/* 802952B8  7C A0 07 74 */	extsb r0, r5
/* 802952BC  2C 00 00 5C */	cmpwi r0, 0x5c
/* 802952C0  40 82 00 40 */	bne lbl_80295300
/* 802952C4  80 BE 00 04 */	lwz r5, 4(r30)
/* 802952C8  38 05 00 01 */	addi r0, r5, 1
/* 802952CC  90 1E 00 04 */	stw r0, 4(r30)
/* 802952D0  88 05 00 00 */	lbz r0, 0(r5)
/* 802952D4  7C 03 21 AE */	stbx r0, r3, r4
/* 802952D8  7C A3 20 AE */	lbzx r5, r3, r4
/* 802952DC  7C A0 07 75 */	extsb. r0, r5
/* 802952E0  41 82 00 FC */	beq lbl_802953DC
/* 802952E4  7C A0 07 74 */	extsb r0, r5
/* 802952E8  2C 00 00 6E */	cmpwi r0, 0x6e
/* 802952EC  41 82 00 08 */	beq lbl_802952F4
/* 802952F0  48 00 00 E0 */	b lbl_802953D0
lbl_802952F4:
/* 802952F4  38 00 00 0D */	li r0, 0xd
/* 802952F8  7C 03 21 AE */	stbx r0, r3, r4
/* 802952FC  48 00 00 D4 */	b lbl_802953D0
lbl_80295300:
/* 80295300  2C 00 00 25 */	cmpwi r0, 0x25
/* 80295304  40 82 00 CC */	bne lbl_802953D0
/* 80295308  80 BE 00 04 */	lwz r5, 4(r30)
/* 8029530C  38 05 00 01 */	addi r0, r5, 1
/* 80295310  90 1E 00 04 */	stw r0, 4(r30)
/* 80295314  88 05 00 00 */	lbz r0, 0(r5)
/* 80295318  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8029531C  38 84 00 01 */	addi r4, r4, 1
/* 80295320  7C 06 21 AE */	stbx r0, r6, r4
/* 80295324  7C A6 20 AE */	lbzx r5, r6, r4
/* 80295328  7C A0 07 75 */	extsb. r0, r5
/* 8029532C  41 82 00 B0 */	beq lbl_802953DC
/* 80295330  7C A0 07 74 */	extsb r0, r5
/* 80295334  2C 00 00 72 */	cmpwi r0, 0x72
/* 80295338  41 82 00 68 */	beq lbl_802953A0
/* 8029533C  40 80 00 1C */	bge lbl_80295358
/* 80295340  2C 00 00 64 */	cmpwi r0, 0x64
/* 80295344  41 82 00 2C */	beq lbl_80295370
/* 80295348  40 80 00 84 */	bge lbl_802953CC
/* 8029534C  2C 00 00 52 */	cmpwi r0, 0x52
/* 80295350  41 82 00 68 */	beq lbl_802953B8
/* 80295354  48 00 00 78 */	b lbl_802953CC
lbl_80295358:
/* 80295358  2C 00 00 78 */	cmpwi r0, 0x78
/* 8029535C  41 82 00 24 */	beq lbl_80295380
/* 80295360  40 80 00 6C */	bge lbl_802953CC
/* 80295364  2C 00 00 74 */	cmpwi r0, 0x74
/* 80295368  40 80 00 64 */	bge lbl_802953CC
/* 8029536C  48 00 00 24 */	b lbl_80295390
lbl_80295370:
/* 80295370  38 00 00 00 */	li r0, 0
/* 80295374  38 A1 00 08 */	addi r5, r1, 8
/* 80295378  7C 05 F9 AE */	stbx r0, r5, r31
/* 8029537C  48 00 00 50 */	b lbl_802953CC
lbl_80295380:
/* 80295380  38 00 00 01 */	li r0, 1
/* 80295384  38 A1 00 08 */	addi r5, r1, 8
/* 80295388  7C 05 F9 AE */	stbx r0, r5, r31
/* 8029538C  48 00 00 40 */	b lbl_802953CC
lbl_80295390:
/* 80295390  38 00 00 02 */	li r0, 2
/* 80295394  38 A1 00 08 */	addi r5, r1, 8
/* 80295398  7C 05 F9 AE */	stbx r0, r5, r31
/* 8029539C  48 00 00 30 */	b lbl_802953CC
lbl_802953A0:
/* 802953A0  38 00 00 03 */	li r0, 3
/* 802953A4  38 A1 00 08 */	addi r5, r1, 8
/* 802953A8  7C 05 F9 AE */	stbx r0, r5, r31
/* 802953AC  38 00 00 64 */	li r0, 0x64
/* 802953B0  7C 06 21 AE */	stbx r0, r6, r4
/* 802953B4  48 00 00 18 */	b lbl_802953CC
lbl_802953B8:
/* 802953B8  38 00 00 04 */	li r0, 4
/* 802953BC  38 A1 00 08 */	addi r5, r1, 8
/* 802953C0  7C 05 F9 AE */	stbx r0, r5, r31
/* 802953C4  38 00 00 78 */	li r0, 0x78
/* 802953C8  7C 06 21 AE */	stbx r0, r6, r4
lbl_802953CC:
/* 802953CC  3B FF 00 01 */	addi r31, r31, 1
lbl_802953D0:
/* 802953D0  38 84 00 01 */	addi r4, r4, 1
lbl_802953D4:
/* 802953D4  28 04 00 80 */	cmplwi r4, 0x80
/* 802953D8  41 80 FE C0 */	blt lbl_80295298
lbl_802953DC:
/* 802953DC  3B 20 00 00 */	li r25, 0
/* 802953E0  7F 3B CB 78 */	mr r27, r25
/* 802953E4  3B 41 00 0C */	addi r26, r1, 0xc
/* 802953E8  3B 81 00 08 */	addi r28, r1, 8
/* 802953EC  48 00 00 6C */	b lbl_80295458
lbl_802953F0:
/* 802953F0  80 7E 00 04 */	lwz r3, 4(r30)
/* 802953F4  38 03 00 01 */	addi r0, r3, 1
/* 802953F8  90 1E 00 04 */	stw r0, 4(r30)
/* 802953FC  88 03 00 00 */	lbz r0, 0(r3)
/* 80295400  7C 1A D9 2E */	stwx r0, r26, r27
/* 80295404  88 1C 00 00 */	lbz r0, 0(r28)
/* 80295408  2C 00 00 02 */	cmpwi r0, 2
/* 8029540C  41 82 00 14 */	beq lbl_80295420
/* 80295410  41 80 00 3C */	blt lbl_8029544C
/* 80295414  2C 00 00 05 */	cmpwi r0, 5
/* 80295418  40 80 00 34 */	bge lbl_8029544C
/* 8029541C  48 00 00 18 */	b lbl_80295434
lbl_80295420:
/* 80295420  80 7E 00 00 */	lwz r3, 0(r30)
/* 80295424  7C 1A D8 2E */	lwzx r0, r26, r27
/* 80295428  7C 03 02 14 */	add r0, r3, r0
/* 8029542C  7C 1A D9 2E */	stwx r0, r26, r27
/* 80295430  48 00 00 1C */	b lbl_8029544C
lbl_80295434:
/* 80295434  7F A3 EB 78 */	mr r3, r29
/* 80295438  7F C4 F3 78 */	mr r4, r30
/* 8029543C  7C 1A D8 2E */	lwzx r0, r26, r27
/* 80295440  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80295444  4B FF EB 85 */	bl readReg__12JASSeqParserCFP8JASTrackUl
/* 80295448  7C 7A D9 2E */	stwx r3, r26, r27
lbl_8029544C:
/* 8029544C  3B 39 00 01 */	addi r25, r25, 1
/* 80295450  3B 9C 00 01 */	addi r28, r28, 1
/* 80295454  3B 7B 00 04 */	addi r27, r27, 4
lbl_80295458:
/* 80295458  7C 19 F8 40 */	cmplw r25, r31
/* 8029545C  41 80 FF 94 */	blt lbl_802953F0
/* 80295460  38 61 00 1C */	addi r3, r1, 0x1c
/* 80295464  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80295468  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8029546C  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80295470  80 E1 00 18 */	lwz r7, 0x18(r1)
/* 80295474  4C C6 31 82 */	crclr 6
/* 80295478  4B FF BA ED */	bl JASReport__FPCce
/* 8029547C  38 60 00 00 */	li r3, 0
/* 80295480  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80295484  48 0C CD 95 */	bl _restgpr_25
/* 80295488  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8029548C  7C 08 03 A6 */	mtlr r0
/* 80295490  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80295494  4E 80 00 20 */	blr 