lbl_8099893C:
/* 8099893C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80998940  7C 08 02 A6 */	mflr r0
/* 80998944  90 01 00 14 */	stw r0, 0x14(r1)
/* 80998948  4B FF DF 89 */	bl Draw__14daNpc_clerkB_cFv
/* 8099894C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80998950  7C 08 03 A6 */	mtlr r0
/* 80998954  38 21 00 10 */	addi r1, r1, 0x10
/* 80998958  4E 80 00 20 */	blr 