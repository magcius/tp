lbl_804865B4:
/* 804865B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804865B8  7C 08 02 A6 */	mflr r0
/* 804865BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804865C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804865C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 804865C8  41 82 00 1C */	beq lbl_804865E4
/* 804865CC  3C A0 80 48 */	lis r5, __vt__8cM3dGSph@ha
/* 804865D0  38 05 74 8C */	addi r0, r5, __vt__8cM3dGSph@l
/* 804865D4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 804865D8  7C 80 07 35 */	extsh. r0, r4
/* 804865DC  40 81 00 08 */	ble lbl_804865E4
/* 804865E0  4B E4 87 5C */	b __dl__FPv
lbl_804865E4:
/* 804865E4  7F E3 FB 78 */	mr r3, r31
/* 804865E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804865EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804865F0  7C 08 03 A6 */	mtlr r0
/* 804865F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804865F8  4E 80 00 20 */	blr 