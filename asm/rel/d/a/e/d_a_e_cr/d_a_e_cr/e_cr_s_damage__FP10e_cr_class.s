lbl_80698A5C:
/* 80698A5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80698A60  7C 08 02 A6 */	mflr r0
/* 80698A64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80698A68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80698A6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80698A70  7C 7E 1B 78 */	mr r30, r3
/* 80698A74  3C 80 80 6A */	lis r4, lit_3788@ha
/* 80698A78  3B E4 9C B0 */	addi r31, r4, lit_3788@l
/* 80698A7C  A8 03 06 68 */	lha r0, 0x668(r3)
/* 80698A80  2C 00 00 01 */	cmpwi r0, 1
/* 80698A84  41 82 00 48 */	beq lbl_80698ACC
/* 80698A88  40 80 00 10 */	bge lbl_80698A98
/* 80698A8C  2C 00 00 00 */	cmpwi r0, 0
/* 80698A90  40 80 00 14 */	bge lbl_80698AA4
/* 80698A94  48 00 00 C4 */	b lbl_80698B58
lbl_80698A98:
/* 80698A98  2C 00 00 03 */	cmpwi r0, 3
/* 80698A9C  40 80 00 BC */	bge lbl_80698B58
/* 80698AA0  48 00 00 A0 */	b lbl_80698B40
lbl_80698AA4:
/* 80698AA4  38 80 00 04 */	li r4, 4
/* 80698AA8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80698AAC  38 A0 00 00 */	li r5, 0
/* 80698AB0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80698AB4  4B FF F5 91 */	bl anm_init__FP10e_cr_classifUcf
/* 80698AB8  38 00 00 01 */	li r0, 1
/* 80698ABC  B0 1E 06 68 */	sth r0, 0x668(r30)
/* 80698AC0  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80698AC4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80698AC8  48 00 00 90 */	b lbl_80698B58
lbl_80698ACC:
/* 80698ACC  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80698AD0  38 80 00 01 */	li r4, 1
/* 80698AD4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80698AD8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80698ADC  40 82 00 18 */	bne lbl_80698AF4
/* 80698AE0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80698AE4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80698AE8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80698AEC  41 82 00 08 */	beq lbl_80698AF4
/* 80698AF0  38 80 00 00 */	li r4, 0
lbl_80698AF4:
/* 80698AF4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80698AF8  41 82 00 60 */	beq lbl_80698B58
/* 80698AFC  7F C3 F3 78 */	mr r3, r30
/* 80698B00  38 80 00 05 */	li r4, 5
/* 80698B04  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80698B08  38 A0 00 02 */	li r5, 2
/* 80698B0C  FC 40 08 90 */	fmr f2, f1
/* 80698B10  4B FF F5 35 */	bl anm_init__FP10e_cr_classifUcf
/* 80698B14  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80698B18  4B BC EE 3C */	b cM_rndF__Ff
/* 80698B1C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80698B20  EC 00 08 2A */	fadds f0, f0, f1
/* 80698B24  FC 00 00 1E */	fctiwz f0, f0
/* 80698B28  D8 01 00 08 */	stfd f0, 8(r1)
/* 80698B2C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80698B30  B0 1E 06 84 */	sth r0, 0x684(r30)
/* 80698B34  38 00 00 02 */	li r0, 2
/* 80698B38  B0 1E 06 68 */	sth r0, 0x668(r30)
/* 80698B3C  48 00 00 1C */	b lbl_80698B58
lbl_80698B40:
/* 80698B40  A8 1E 06 84 */	lha r0, 0x684(r30)
/* 80698B44  2C 00 00 00 */	cmpwi r0, 0
/* 80698B48  40 82 00 10 */	bne lbl_80698B58
/* 80698B4C  38 00 00 00 */	li r0, 0
/* 80698B50  B0 1E 06 66 */	sth r0, 0x666(r30)
/* 80698B54  B0 1E 06 68 */	sth r0, 0x668(r30)
lbl_80698B58:
/* 80698B58  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80698B5C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80698B60  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80698B64  4B BD 6F 1C */	b cLib_addCalc0__FPfff
/* 80698B68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80698B6C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80698B70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80698B74  7C 08 03 A6 */	mtlr r0
/* 80698B78  38 21 00 20 */	addi r1, r1, 0x20
/* 80698B7C  4E 80 00 20 */	blr 