lbl_800497E8:
/* 800497E8  88 04 00 00 */	lbz r0, 0(r4)
/* 800497EC  28 00 00 0F */	cmplwi r0, 0xf
/* 800497F0  4C 80 00 20 */	bgelr 
/* 800497F4  80 A3 00 00 */	lwz r5, 0(r3)
/* 800497F8  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 800497FC  41 82 00 10 */	beq lbl_8004980C
/* 80049800  38 00 00 00 */	li r0, 0
/* 80049804  98 04 00 00 */	stb r0, 0(r4)
/* 80049808  48 00 00 64 */	b lbl_8004986C
lbl_8004980C:
/* 8004980C  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 80049810  41 82 00 10 */	beq lbl_80049820
/* 80049814  38 00 00 01 */	li r0, 1
/* 80049818  98 04 00 00 */	stb r0, 0(r4)
/* 8004981C  48 00 00 50 */	b lbl_8004986C
lbl_80049820:
/* 80049820  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 80049824  41 82 00 10 */	beq lbl_80049834
/* 80049828  38 00 00 02 */	li r0, 2
/* 8004982C  98 04 00 00 */	stb r0, 0(r4)
/* 80049830  48 00 00 3C */	b lbl_8004986C
lbl_80049834:
/* 80049834  54 A0 07 39 */	rlwinm. r0, r5, 0, 0x1c, 0x1c
/* 80049838  41 82 00 10 */	beq lbl_80049848
/* 8004983C  38 00 00 03 */	li r0, 3
/* 80049840  98 04 00 00 */	stb r0, 0(r4)
/* 80049844  48 00 00 28 */	b lbl_8004986C
lbl_80049848:
/* 80049848  54 A0 04 63 */	rlwinm. r0, r5, 0, 0x11, 0x11
/* 8004984C  41 82 00 10 */	beq lbl_8004985C
/* 80049850  38 00 00 04 */	li r0, 4
/* 80049854  98 04 00 00 */	stb r0, 0(r4)
/* 80049858  48 00 00 14 */	b lbl_8004986C
lbl_8004985C:
/* 8004985C  54 A0 04 21 */	rlwinm. r0, r5, 0, 0x10, 0x10
/* 80049860  41 82 00 0C */	beq lbl_8004986C
/* 80049864  38 00 00 05 */	li r0, 5
/* 80049868  98 04 00 00 */	stb r0, 0(r4)
lbl_8004986C:
/* 8004986C  80 03 00 00 */	lwz r0, 0(r3)
/* 80049870  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80049874  41 82 00 80 */	beq lbl_800498F4
/* 80049878  88 04 00 00 */	lbz r0, 0(r4)
/* 8004987C  2C 00 00 03 */	cmpwi r0, 3
/* 80049880  41 82 00 54 */	beq lbl_800498D4
/* 80049884  40 80 00 1C */	bge lbl_800498A0
/* 80049888  2C 00 00 01 */	cmpwi r0, 1
/* 8004988C  41 82 00 30 */	beq lbl_800498BC
/* 80049890  40 80 00 38 */	bge lbl_800498C8
/* 80049894  2C 00 00 00 */	cmpwi r0, 0
/* 80049898  40 80 00 18 */	bge lbl_800498B0
/* 8004989C  48 00 00 58 */	b lbl_800498F4
lbl_800498A0:
/* 800498A0  2C 00 00 05 */	cmpwi r0, 5
/* 800498A4  41 82 00 48 */	beq lbl_800498EC
/* 800498A8  40 80 00 4C */	bge lbl_800498F4
/* 800498AC  48 00 00 34 */	b lbl_800498E0
lbl_800498B0:
/* 800498B0  38 00 00 08 */	li r0, 8
/* 800498B4  98 04 00 00 */	stb r0, 0(r4)
/* 800498B8  48 00 00 3C */	b lbl_800498F4
lbl_800498BC:
/* 800498BC  38 00 00 09 */	li r0, 9
/* 800498C0  98 04 00 00 */	stb r0, 0(r4)
/* 800498C4  48 00 00 30 */	b lbl_800498F4
lbl_800498C8:
/* 800498C8  38 00 00 0A */	li r0, 0xa
/* 800498CC  98 04 00 00 */	stb r0, 0(r4)
/* 800498D0  48 00 00 24 */	b lbl_800498F4
lbl_800498D4:
/* 800498D4  38 00 00 0B */	li r0, 0xb
/* 800498D8  98 04 00 00 */	stb r0, 0(r4)
/* 800498DC  48 00 00 18 */	b lbl_800498F4
lbl_800498E0:
/* 800498E0  38 00 00 06 */	li r0, 6
/* 800498E4  98 04 00 00 */	stb r0, 0(r4)
/* 800498E8  48 00 00 0C */	b lbl_800498F4
lbl_800498EC:
/* 800498EC  38 00 00 07 */	li r0, 7
/* 800498F0  98 04 00 00 */	stb r0, 0(r4)
lbl_800498F4:
/* 800498F4  80 63 00 00 */	lwz r3, 0(r3)
/* 800498F8  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 800498FC  41 82 00 10 */	beq lbl_8004990C
/* 80049900  38 00 00 0D */	li r0, 0xd
/* 80049904  98 04 00 00 */	stb r0, 0(r4)
/* 80049908  4E 80 00 20 */	blr 
lbl_8004990C:
/* 8004990C  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 80049910  41 82 00 10 */	beq lbl_80049920
/* 80049914  38 00 00 0C */	li r0, 0xc
/* 80049918  98 04 00 00 */	stb r0, 0(r4)
/* 8004991C  4E 80 00 20 */	blr 
lbl_80049920:
/* 80049920  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 80049924  4D 82 00 20 */	beqlr 
/* 80049928  38 00 00 0E */	li r0, 0xe
/* 8004992C  98 04 00 00 */	stb r0, 0(r4)
/* 80049930  4E 80 00 20 */	blr 