lbl_80316F24:
/* 80316F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80316F28  7C 08 02 A6 */	mflr r0
/* 80316F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80316F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80316F34  93 C1 00 08 */	stw r30, 8(r1)
/* 80316F38  7C 7E 1B 78 */	mr r30, r3
/* 80316F3C  7C 9F 23 78 */	mr r31, r4
/* 80316F40  80 03 00 48 */	lwz r0, 0x48(r3)
/* 80316F44  28 00 00 00 */	cmplwi r0, 0
/* 80316F48  40 82 00 54 */	bne lbl_80316F9C
/* 80316F4C  38 60 00 10 */	li r3, 0x10
/* 80316F50  4B FB 7C FD */	bl __nw__FUl
/* 80316F54  28 03 00 00 */	cmplwi r3, 0
/* 80316F58  41 82 00 18 */	beq lbl_80316F70
/* 80316F5C  38 00 00 00 */	li r0, 0
/* 80316F60  90 03 00 00 */	stw r0, 0(r3)
/* 80316F64  90 03 00 04 */	stw r0, 4(r3)
/* 80316F68  90 03 00 08 */	stw r0, 8(r3)
/* 80316F6C  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80316F70:
/* 80316F70  90 7E 00 48 */	stw r3, 0x48(r30)
/* 80316F74  80 7E 00 48 */	lwz r3, 0x48(r30)
/* 80316F78  28 03 00 00 */	cmplwi r3, 0
/* 80316F7C  40 82 00 0C */	bne lbl_80316F88
/* 80316F80  38 60 00 04 */	li r3, 4
/* 80316F84  48 00 00 1C */	b lbl_80316FA0
lbl_80316F88:
/* 80316F88  7F E4 FB 78 */	mr r4, r31
/* 80316F8C  4B FF B5 7D */	bl newSingleDisplayList__17J3DDisplayListObjFUl
/* 80316F90  2C 03 00 00 */	cmpwi r3, 0
/* 80316F94  41 82 00 08 */	beq lbl_80316F9C
/* 80316F98  48 00 00 08 */	b lbl_80316FA0
lbl_80316F9C:
/* 80316F9C  38 60 00 00 */	li r3, 0
lbl_80316FA0:
/* 80316FA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80316FA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80316FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80316FAC  7C 08 03 A6 */	mtlr r0
/* 80316FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80316FB4  4E 80 00 20 */	blr 