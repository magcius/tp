lbl_80C0433C:
/* 80C0433C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04340  7C 08 02 A6 */	mflr r0
/* 80C04344  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04348  2C 04 00 00 */	cmpwi r4, 0
/* 80C0434C  41 82 00 10 */	beq lbl_80C0435C
/* 80C04350  38 80 00 11 */	li r4, 0x11
/* 80C04354  C0 23 0A 94 */	lfs f1, 0xa94(r3)
/* 80C04358  4B FF D0 59 */	bl setBaseAnm__11daObj_GrA_cFif
lbl_80C0435C:
/* 80C0435C  38 60 00 01 */	li r3, 1
/* 80C04360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04364  7C 08 03 A6 */	mtlr r0
/* 80C04368  38 21 00 10 */	addi r1, r1, 0x10
/* 80C0436C  4E 80 00 20 */	blr 