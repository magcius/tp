lbl_802AEB34:
/* 802AEB34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AEB38  7C 08 02 A6 */	mflr r0
/* 802AEB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AEB40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AEB44  7C 7F 1B 79 */	or. r31, r3, r3
/* 802AEB48  41 82 00 10 */	beq lbl_802AEB58
/* 802AEB4C  7C 80 07 35 */	extsh. r0, r4
/* 802AEB50  40 81 00 08 */	ble lbl_802AEB58
/* 802AEB54  48 02 01 E9 */	bl __dl__FPv
lbl_802AEB58:
/* 802AEB58  7F E3 FB 78 */	mr r3, r31
/* 802AEB5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AEB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AEB64  7C 08 03 A6 */	mtlr r0
/* 802AEB68  38 21 00 10 */	addi r1, r1, 0x10
/* 802AEB6C  4E 80 00 20 */	blr 