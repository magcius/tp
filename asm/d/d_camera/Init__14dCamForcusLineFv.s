lbl_801824C8:
/* 801824C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801824CC  38 80 00 00 */	li r4, 0
/* 801824D0  98 83 00 49 */	stb r4, 0x49(r3)
/* 801824D4  38 00 00 01 */	li r0, 1
/* 801824D8  98 03 00 48 */	stb r0, 0x48(r3)
/* 801824DC  C0 42 9E D8 */	lfs f2, lit_15478(r2)
/* 801824E0  D0 41 00 08 */	stfs f2, 8(r1)
/* 801824E4  C0 02 9F 24 */	lfs f0, lit_17979(r2)
/* 801824E8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801824EC  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 801824F0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801824F4  D0 43 00 38 */	stfs f2, 0x38(r3)
/* 801824F8  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 801824FC  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 80182500  38 00 00 FF */	li r0, 0xff
/* 80182504  98 03 00 44 */	stb r0, 0x44(r3)
/* 80182508  98 03 00 45 */	stb r0, 0x45(r3)
/* 8018250C  98 03 00 46 */	stb r0, 0x46(r3)
/* 80182510  38 00 00 60 */	li r0, 0x60
/* 80182514  98 03 00 47 */	stb r0, 0x47(r3)
/* 80182518  38 00 00 64 */	li r0, 0x64
/* 8018251C  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80182520  90 03 00 50 */	stw r0, 0x50(r3)
/* 80182524  90 03 00 54 */	stw r0, 0x54(r3)
/* 80182528  38 00 00 50 */	li r0, 0x50
/* 8018252C  B0 03 00 58 */	sth r0, 0x58(r3)
/* 80182530  B0 83 00 5A */	sth r4, 0x5a(r3)
/* 80182534  38 00 00 04 */	li r0, 4
/* 80182538  B0 03 00 5C */	sth r0, 0x5c(r3)
/* 8018253C  B0 03 00 5E */	sth r0, 0x5e(r3)
/* 80182540  C0 02 9D E8 */	lfs f0, lit_10581(r2)
/* 80182544  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 80182548  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 8018254C  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 80182550  C0 02 9C B8 */	lfs f0, lit_5662(r2)
/* 80182554  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 80182558  38 21 00 20 */	addi r1, r1, 0x20
/* 8018255C  4E 80 00 20 */	blr 