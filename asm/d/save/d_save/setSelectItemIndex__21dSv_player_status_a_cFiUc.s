lbl_80032A48:
/* 80032A48  2C 04 00 04 */	cmpwi r4, 4
/* 80032A4C  4C 80 00 20 */	bgelr 
/* 80032A50  7C 63 22 14 */	add r3, r3, r4
/* 80032A54  98 A3 00 0B */	stb r5, 0xb(r3)
/* 80032A58  4E 80 00 20 */	blr 