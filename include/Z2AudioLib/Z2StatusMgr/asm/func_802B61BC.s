/* 802B61BC 002B30FC  38 00 00 00 */	li r0, 0
/* 802B61C0 002B3100  88 63 00 2C */	lbz r3, 0x2c(r3)
/* 802B61C4 002B3104  28 03 00 02 */	cmplwi r3, 2
/* 802B61C8 002B3108  41 82 00 14 */	beq lbl_802B61DC
/* 802B61CC 002B310C  28 03 00 08 */	cmplwi r3, 8
/* 802B61D0 002B3110  41 82 00 0C */	beq lbl_802B61DC
/* 802B61D4 002B3114  28 03 00 09 */	cmplwi r3, 9
/* 802B61D8 002B3118  40 82 00 08 */	bne lbl_802B61E0
lbl_802B61DC:
/* 802B61DC 002B311C  38 00 00 01 */	li r0, 1
lbl_802B61E0:
/* 802B61E0 002B3120  7C 03 03 78 */	mr r3, r0
/* 802B61E4 002B3124  4E 80 00 20 */	blr 