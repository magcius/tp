lbl_80156248:
/* 80156248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015624C  7C 08 02 A6 */	mflr r0
/* 80156250  90 01 00 14 */	stw r0, 0x14(r1)
/* 80156254  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80156258  7C 9F 23 78 */	mr r31, r4
/* 8015625C  2C 04 00 01 */	cmpwi r4, 1
/* 80156260  41 82 00 6C */	beq lbl_801562CC
/* 80156264  40 80 00 10 */	bge lbl_80156274
/* 80156268  2C 04 00 00 */	cmpwi r4, 0
/* 8015626C  40 80 00 1C */	bge lbl_80156288
/* 80156270  48 00 00 E4 */	b lbl_80156354
lbl_80156274:
/* 80156274  2C 04 00 07 */	cmpwi r4, 7
/* 80156278  40 80 00 DC */	bge lbl_80156354
/* 8015627C  2C 04 00 04 */	cmpwi r4, 4
/* 80156280  40 80 00 08 */	bge lbl_80156288
/* 80156284  48 00 00 8C */	b lbl_80156310
lbl_80156288:
/* 80156288  2C 05 00 06 */	cmpwi r5, 6
/* 8015628C  40 80 00 1C */	bge lbl_801562A8
/* 80156290  2C 05 00 01 */	cmpwi r5, 1
/* 80156294  41 82 00 20 */	beq lbl_801562B4
/* 80156298  41 80 00 C4 */	blt lbl_8015635C
/* 8015629C  2C 05 00 04 */	cmpwi r5, 4
/* 801562A0  40 80 00 24 */	bge lbl_801562C4
/* 801562A4  48 00 00 18 */	b lbl_801562BC
lbl_801562A8:
/* 801562A8  2C 05 00 08 */	cmpwi r5, 8
/* 801562AC  41 82 00 08 */	beq lbl_801562B4
/* 801562B0  48 00 00 AC */	b lbl_8015635C
lbl_801562B4:
/* 801562B4  3B E0 00 06 */	li r31, 6
/* 801562B8  48 00 00 A4 */	b lbl_8015635C
lbl_801562BC:
/* 801562BC  3B E0 00 05 */	li r31, 5
/* 801562C0  48 00 00 9C */	b lbl_8015635C
lbl_801562C4:
/* 801562C4  3B E0 00 04 */	li r31, 4
/* 801562C8  48 00 00 94 */	b lbl_8015635C
lbl_801562CC:
/* 801562CC  2C 05 00 06 */	cmpwi r5, 6
/* 801562D0  40 80 00 1C */	bge lbl_801562EC
/* 801562D4  2C 05 00 01 */	cmpwi r5, 1
/* 801562D8  41 82 00 20 */	beq lbl_801562F8
/* 801562DC  41 80 00 80 */	blt lbl_8015635C
/* 801562E0  2C 05 00 04 */	cmpwi r5, 4
/* 801562E4  40 80 00 24 */	bge lbl_80156308
/* 801562E8  48 00 00 18 */	b lbl_80156300
lbl_801562EC:
/* 801562EC  2C 05 00 08 */	cmpwi r5, 8
/* 801562F0  41 82 00 08 */	beq lbl_801562F8
/* 801562F4  48 00 00 68 */	b lbl_8015635C
lbl_801562F8:
/* 801562F8  3B E0 00 06 */	li r31, 6
/* 801562FC  48 00 00 60 */	b lbl_8015635C
lbl_80156300:
/* 80156300  3B E0 00 05 */	li r31, 5
/* 80156304  48 00 00 58 */	b lbl_8015635C
lbl_80156308:
/* 80156308  3B E0 00 04 */	li r31, 4
/* 8015630C  48 00 00 50 */	b lbl_8015635C
lbl_80156310:
/* 80156310  2C 05 00 06 */	cmpwi r5, 6
/* 80156314  40 80 00 1C */	bge lbl_80156330
/* 80156318  2C 05 00 01 */	cmpwi r5, 1
/* 8015631C  41 82 00 20 */	beq lbl_8015633C
/* 80156320  41 80 00 3C */	blt lbl_8015635C
/* 80156324  2C 05 00 04 */	cmpwi r5, 4
/* 80156328  40 80 00 24 */	bge lbl_8015634C
/* 8015632C  48 00 00 18 */	b lbl_80156344
lbl_80156330:
/* 80156330  2C 05 00 08 */	cmpwi r5, 8
/* 80156334  41 82 00 08 */	beq lbl_8015633C
/* 80156338  48 00 00 24 */	b lbl_8015635C
lbl_8015633C:
/* 8015633C  3B E0 00 09 */	li r31, 9
/* 80156340  48 00 00 1C */	b lbl_8015635C
lbl_80156344:
/* 80156344  3B E0 00 08 */	li r31, 8
/* 80156348  48 00 00 14 */	b lbl_8015635C
lbl_8015634C:
/* 8015634C  3B E0 00 07 */	li r31, 7
/* 80156350  48 00 00 0C */	b lbl_8015635C
lbl_80156354:
/* 80156354  38 60 00 00 */	li r3, 0
/* 80156358  48 00 00 5C */	b lbl_801563B4
lbl_8015635C:
/* 8015635C  4B FF FE CD */	bl isM___9daNpcCd_cFv
/* 80156360  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80156364  41 82 00 20 */	beq lbl_80156384
/* 80156368  57 E0 18 38 */	slwi r0, r31, 3
/* 8015636C  3C 60 80 39 */	lis r3, l_bckTbl_M@ha
/* 80156370  38 83 2D 78 */	addi r4, r3, l_bckTbl_M@l
/* 80156374  7C 64 00 2E */	lwzx r3, r4, r0
/* 80156378  7C 84 02 14 */	add r4, r4, r0
/* 8015637C  80 84 00 04 */	lwz r4, 4(r4)
/* 80156380  48 00 00 1C */	b lbl_8015639C
lbl_80156384:
/* 80156384  57 E0 18 38 */	slwi r0, r31, 3
/* 80156388  3C 60 80 39 */	lis r3, l_bckTbl_W@ha
/* 8015638C  38 83 2D C8 */	addi r4, r3, l_bckTbl_W@l
/* 80156390  7C 64 00 2E */	lwzx r3, r4, r0
/* 80156394  7C 84 02 14 */	add r4, r4, r0
/* 80156398  80 84 00 04 */	lwz r4, 4(r4)
lbl_8015639C:
/* 8015639C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 801563A0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 801563A4  3C A5 00 02 */	addis r5, r5, 2
/* 801563A8  38 C0 00 80 */	li r6, 0x80
/* 801563AC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 801563B0  4B EE 5F 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_801563B4:
/* 801563B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801563B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801563BC  7C 08 03 A6 */	mtlr r0
/* 801563C0  38 21 00 10 */	addi r1, r1, 0x10
/* 801563C4  4E 80 00 20 */	blr 