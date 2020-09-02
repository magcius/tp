.include "macros.inc"

.section .text, "ax" # 80020f30


.global fpcDtTg_IsEmpty
fpcDtTg_IsEmpty:
/* 80020F30 0001DE70  3C 60 80 3A */	lis r3, lbl_803A39A0@ha
/* 80020F34 0001DE74  38 63 39 A0 */	addi r3, r3, lbl_803A39A0@l
/* 80020F38 0001DE78  80 03 00 08 */	lwz r0, 8(r3)
/* 80020F3C 0001DE7C  7C 00 00 34 */	cntlzw r0, r0
/* 80020F40 0001DE80  54 03 D9 7E */	srwi r3, r0, 5
/* 80020F44 0001DE84  4E 80 00 20 */	blr 

.global fpcDtTg_ToDeleteQ
fpcDtTg_ToDeleteQ:
/* 80020F48 0001DE88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020F4C 0001DE8C  7C 08 02 A6 */	mflr r0
/* 80020F50 0001DE90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020F54 0001DE94  7C 64 1B 78 */	mr r4, r3
/* 80020F58 0001DE98  38 00 00 01 */	li r0, 1
/* 80020F5C 0001DE9C  B0 03 00 18 */	sth r0, 0x18(r3)
/* 80020F60 0001DEA0  3C 60 80 3A */	lis r3, lbl_803A39A0@ha
/* 80020F64 0001DEA4  38 63 39 A0 */	addi r3, r3, lbl_803A39A0@l
/* 80020F68 0001DEA8  48 24 5A 7D */	bl cTg_Addition
/* 80020F6C 0001DEAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020F70 0001DEB0  7C 08 03 A6 */	mtlr r0
/* 80020F74 0001DEB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80020F78 0001DEB8  4E 80 00 20 */	blr 

.global fpcDtTg_DeleteQTo
fpcDtTg_DeleteQTo:
/* 80020F7C 0001DEBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020F80 0001DEC0  7C 08 02 A6 */	mflr r0
/* 80020F84 0001DEC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020F88 0001DEC8  48 24 5A 1D */	bl cTg_SingleCut
/* 80020F8C 0001DECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020F90 0001DED0  7C 08 03 A6 */	mtlr r0
/* 80020F94 0001DED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80020F98 0001DED8  4E 80 00 20 */	blr 
.global fpcDtTg_Do
fpcDtTg_Do:
/* 80020F9C 0001DEDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020FA0 0001DEE0  7C 08 02 A6 */	mflr r0
/* 80020FA4 0001DEE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020FA8 0001DEE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80020FAC 0001DEEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80020FB0 0001DEF0  7C 7E 1B 78 */	mr r30, r3
/* 80020FB4 0001DEF4  7C 9F 23 78 */	mr r31, r4
/* 80020FB8 0001DEF8  A8 83 00 18 */	lha r4, 0x18(r3)
/* 80020FBC 0001DEFC  2C 04 00 00 */	cmpwi r4, 0
/* 80020FC0 0001DF00  41 81 00 38 */	bgt lbl_80020FF8
/* 80020FC4 0001DF04  4B FF FF B9 */	bl fpcDtTg_DeleteQTo
/* 80020FC8 0001DF08  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80020FCC 0001DF0C  7F EC FB 78 */	mr r12, r31
/* 80020FD0 0001DF10  7D 89 03 A6 */	mtctr r12
/* 80020FD4 0001DF14  4E 80 04 21 */	bctrl 
/* 80020FD8 0001DF18  2C 03 00 00 */	cmpwi r3, 0
/* 80020FDC 0001DF1C  40 82 00 14 */	bne lbl_80020FF0
/* 80020FE0 0001DF20  7F C3 F3 78 */	mr r3, r30
/* 80020FE4 0001DF24  4B FF FF 65 */	bl fpcDtTg_ToDeleteQ
/* 80020FE8 0001DF28  38 60 00 00 */	li r3, 0
/* 80020FEC 0001DF2C  48 00 00 18 */	b lbl_80021004
lbl_80020FF0:
/* 80020FF0 0001DF30  38 60 00 01 */	li r3, 1
/* 80020FF4 0001DF34  48 00 00 10 */	b lbl_80021004
lbl_80020FF8:
/* 80020FF8 0001DF38  38 04 FF FF */	addi r0, r4, -1
/* 80020FFC 0001DF3C  B0 1E 00 18 */	sth r0, 0x18(r30)
/* 80021000 0001DF40  38 60 00 00 */	li r3, 0
lbl_80021004:
/* 80021004 0001DF44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80021008 0001DF48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002100C 0001DF4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021010 0001DF50  7C 08 03 A6 */	mtlr r0
/* 80021014 0001DF54  38 21 00 10 */	addi r1, r1, 0x10
/* 80021018 0001DF58  4E 80 00 20 */	blr 

.global fpcDtTg_Init
fpcDtTg_Init:
/* 8002101C 0001DF5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021020 0001DF60  7C 08 02 A6 */	mflr r0
/* 80021024 0001DF64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021028 0001DF68  48 24 5A 0D */	bl cTg_Create
/* 8002102C 0001DF6C  38 60 00 01 */	li r3, 1
/* 80021030 0001DF70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021034 0001DF74  7C 08 03 A6 */	mtlr r0
/* 80021038 0001DF78  38 21 00 10 */	addi r1, r1, 0x10
/* 8002103C 0001DF7C  4E 80 00 20 */	blr 
