lbl_80B2FC84:
/* 80B2FC84  38 80 00 00 */	li r4, 0
/* 80B2FC88  B0 83 00 00 */	sth r4, 0(r3)
/* 80B2FC8C  38 00 00 01 */	li r0, 1
/* 80B2FC90  B0 03 00 02 */	sth r0, 2(r3)
/* 80B2FC94  90 83 00 04 */	stw r4, 4(r3)
/* 80B2FC98  4E 80 00 20 */	blr 