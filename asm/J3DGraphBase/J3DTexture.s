.include "macros.inc"

.section .text, "ax" # 8031204c


.global J3DTexture_NS_loadGX
J3DTexture_NS_loadGX:
/* 8031204C 0030EF8C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80312050 0030EF90  7C 08 02 A6 */	mflr r0
/* 80312054 0030EF94  90 01 00 64 */	stw r0, 0x64(r1)
/* 80312058 0030EF98  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8031205C 0030EF9C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80312060 0030EFA0  7C BE 2B 78 */	mr r30, r5
/* 80312064 0030EFA4  80 63 00 04 */	lwz r3, 4(r3)
/* 80312068 0030EFA8  54 80 2A F4 */	rlwinm r0, r4, 5, 0xb, 0x1a
/* 8031206C 0030EFAC  7F E3 02 14 */	add r31, r3, r0
/* 80312070 0030EFB0  88 1F 00 08 */	lbz r0, 8(r31)
/* 80312074 0030EFB4  28 00 00 00 */	cmplwi r0, 0
/* 80312078 0030EFB8  40 82 00 30 */	bne lbl_803120A8
/* 8031207C 0030EFBC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80312080 0030EFC0  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80312084 0030EFC4  7C 9F 02 14 */	add r4, r31, r0
/* 80312088 0030EFC8  A0 BF 00 02 */	lhz r5, 2(r31)
/* 8031208C 0030EFCC  A0 DF 00 04 */	lhz r6, 4(r31)
/* 80312090 0030EFD0  88 FF 00 00 */	lbz r7, 0(r31)
/* 80312094 0030EFD4  89 1F 00 06 */	lbz r8, 6(r31)
/* 80312098 0030EFD8  89 3F 00 07 */	lbz r9, 7(r31)
/* 8031209C 0030EFDC  89 5F 00 10 */	lbz r10, 0x10(r31)
/* 803120A0 0030EFE0  48 04 BD A1 */	bl GXInitTexObj
/* 803120A4 0030EFE4  48 00 00 54 */	b lbl_803120F8
lbl_803120A8:
/* 803120A8 0030EFE8  93 C1 00 08 */	stw r30, 8(r1)
/* 803120AC 0030EFEC  38 61 00 1C */	addi r3, r1, 0x1c
/* 803120B0 0030EFF0  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 803120B4 0030EFF4  7C 9F 02 14 */	add r4, r31, r0
/* 803120B8 0030EFF8  A0 BF 00 02 */	lhz r5, 2(r31)
/* 803120BC 0030EFFC  A0 DF 00 04 */	lhz r6, 4(r31)
/* 803120C0 0030F000  88 FF 00 00 */	lbz r7, 0(r31)
/* 803120C4 0030F004  89 1F 00 06 */	lbz r8, 6(r31)
/* 803120C8 0030F008  89 3F 00 07 */	lbz r9, 7(r31)
/* 803120CC 0030F00C  89 5F 00 10 */	lbz r10, 0x10(r31)
/* 803120D0 0030F010  48 04 BF BD */	bl GXInitTexObjCI
/* 803120D4 0030F014  38 61 00 10 */	addi r3, r1, 0x10
/* 803120D8 0030F018  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803120DC 0030F01C  7C 9F 02 14 */	add r4, r31, r0
/* 803120E0 0030F020  88 BF 00 09 */	lbz r5, 9(r31)
/* 803120E4 0030F024  A0 DF 00 0A */	lhz r6, 0xa(r31)
/* 803120E8 0030F028  48 04 C3 81 */	bl GXInitTlutObj
/* 803120EC 0030F02C  38 61 00 10 */	addi r3, r1, 0x10
/* 803120F0 0030F030  7F C4 F3 78 */	mr r4, r30
/* 803120F4 0030F034  48 04 C3 AD */	bl GXLoadTlut
lbl_803120F8:
/* 803120F8 0030F038  38 61 00 1C */	addi r3, r1, 0x1c
/* 803120FC 0030F03C  88 9F 00 14 */	lbz r4, 0x14(r31)
/* 80312100 0030F040  88 BF 00 15 */	lbz r5, 0x15(r31)
/* 80312104 0030F044  C0 42 C9 88 */	lfs f2, lbl_80456388-_SDA2_BASE_(r2)
/* 80312108 0030F048  88 1F 00 16 */	lbz r0, 0x16(r31)
/* 8031210C 0030F04C  7C 00 07 74 */	extsb r0, r0
/* 80312110 0030F050  C8 82 C9 90 */	lfd f4, lbl_80456390-_SDA2_BASE_(r2)
/* 80312114 0030F054  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80312118 0030F058  90 01 00 44 */	stw r0, 0x44(r1)
/* 8031211C 0030F05C  3C C0 43 30 */	lis r6, 0x4330
/* 80312120 0030F060  90 C1 00 40 */	stw r6, 0x40(r1)
/* 80312124 0030F064  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80312128 0030F068  EC 00 20 28 */	fsubs f0, f0, f4
/* 8031212C 0030F06C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80312130 0030F070  88 1F 00 17 */	lbz r0, 0x17(r31)
/* 80312134 0030F074  7C 00 07 74 */	extsb r0, r0
/* 80312138 0030F078  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8031213C 0030F07C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80312140 0030F080  90 C1 00 48 */	stw r6, 0x48(r1)
/* 80312144 0030F084  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80312148 0030F088  EC 00 20 28 */	fsubs f0, f0, f4
/* 8031214C 0030F08C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80312150 0030F090  C0 62 C9 8C */	lfs f3, lbl_8045638C-_SDA2_BASE_(r2)
/* 80312154 0030F094  A8 1F 00 1A */	lha r0, 0x1a(r31)
/* 80312158 0030F098  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8031215C 0030F09C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80312160 0030F0A0  90 C1 00 50 */	stw r6, 0x50(r1)
/* 80312164 0030F0A4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80312168 0030F0A8  EC 00 20 28 */	fsubs f0, f0, f4
/* 8031216C 0030F0AC  EC 63 00 32 */	fmuls f3, f3, f0
/* 80312170 0030F0B0  88 DF 00 12 */	lbz r6, 0x12(r31)
/* 80312174 0030F0B4  88 FF 00 11 */	lbz r7, 0x11(r31)
/* 80312178 0030F0B8  89 1F 00 13 */	lbz r8, 0x13(r31)
/* 8031217C 0030F0BC  48 04 BF 59 */	bl GXInitTexObjLOD
/* 80312180 0030F0C0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80312184 0030F0C4  7F C4 F3 78 */	mr r4, r30
/* 80312188 0030F0C8  48 04 C2 8D */	bl GXLoadTexObj
/* 8031218C 0030F0CC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80312190 0030F0D0  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80312194 0030F0D4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80312198 0030F0D8  7C 08 03 A6 */	mtlr r0
/* 8031219C 0030F0DC  38 21 00 60 */	addi r1, r1, 0x60
/* 803121A0 0030F0E0  4E 80 00 20 */	blr 

.global J3DTexture_NS_entryNum
J3DTexture_NS_entryNum:
/* 803121A4 0030F0E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803121A8 0030F0E8  7C 08 02 A6 */	mflr r0
/* 803121AC 0030F0EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803121B0 0030F0F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803121B4 0030F0F4  7C 7F 1B 78 */	mr r31, r3
/* 803121B8 0030F0F8  B0 83 00 00 */	sth r4, 0(r3)
/* 803121BC 0030F0FC  54 83 2A F4 */	rlwinm r3, r4, 5, 0xb, 0x1a
/* 803121C0 0030F100  4B FB CB 05 */	bl __nwa__FUl
/* 803121C4 0030F104  90 7F 00 04 */	stw r3, 4(r31)
/* 803121C8 0030F108  38 E0 00 00 */	li r7, 0
/* 803121CC 0030F10C  38 60 00 00 */	li r3, 0
/* 803121D0 0030F110  7C 66 1B 78 */	mr r6, r3
/* 803121D4 0030F114  7C 65 1B 78 */	mr r5, r3
/* 803121D8 0030F118  48 00 00 24 */	b lbl_803121FC
lbl_803121DC:
/* 803121DC 0030F11C  80 9F 00 04 */	lwz r4, 4(r31)
/* 803121E0 0030F120  38 03 00 0C */	addi r0, r3, 0xc
/* 803121E4 0030F124  7C C4 01 2E */	stwx r6, r4, r0
/* 803121E8 0030F128  80 9F 00 04 */	lwz r4, 4(r31)
/* 803121EC 0030F12C  38 03 00 1C */	addi r0, r3, 0x1c
/* 803121F0 0030F130  7C A4 01 2E */	stwx r5, r4, r0
/* 803121F4 0030F134  38 E7 00 01 */	addi r7, r7, 1
/* 803121F8 0030F138  38 63 00 20 */	addi r3, r3, 0x20
lbl_803121FC:
/* 803121FC 0030F13C  A0 1F 00 00 */	lhz r0, 0(r31)
/* 80312200 0030F140  7C 07 00 00 */	cmpw r7, r0
/* 80312204 0030F144  41 80 FF D8 */	blt lbl_803121DC
/* 80312208 0030F148  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031220C 0030F14C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80312210 0030F150  7C 08 03 A6 */	mtlr r0
/* 80312214 0030F154  38 21 00 10 */	addi r1, r1, 0x10
/* 80312218 0030F158  4E 80 00 20 */	blr 

.global J3DTexture_NS_addResTIMG
J3DTexture_NS_addResTIMG:
/* 8031221C 0030F15C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80312220 0030F160  7C 08 02 A6 */	mflr r0
/* 80312224 0030F164  90 01 00 24 */	stw r0, 0x24(r1)
/* 80312228 0030F168  39 61 00 20 */	addi r11, r1, 0x20
/* 8031222C 0030F16C  48 04 FF AD */	bl _savegpr_28
/* 80312230 0030F170  7C 7C 1B 78 */	mr r28, r3
/* 80312234 0030F174  7C BD 2B 78 */	mr r29, r5
/* 80312238 0030F178  54 80 04 3F */	clrlwi. r0, r4, 0x10
/* 8031223C 0030F17C  41 82 02 34 */	beq lbl_80312470
/* 80312240 0030F180  A0 1C 00 00 */	lhz r0, 0(r28)
/* 80312244 0030F184  7C 1F 03 78 */	mr r31, r0
/* 80312248 0030F188  83 DC 00 04 */	lwz r30, 4(r28)
/* 8031224C 0030F18C  7C 00 22 14 */	add r0, r0, r4
/* 80312250 0030F190  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80312254 0030F194  4B FF FF 51 */	bl J3DTexture_NS_entryNum
/* 80312258 0030F198  38 A0 00 00 */	li r5, 0
/* 8031225C 0030F19C  57 E6 04 3E */	clrlwi r6, r31, 0x10
/* 80312260 0030F1A0  48 00 00 F8 */	b lbl_80312358
lbl_80312264:
/* 80312264 0030F1A4  80 7C 00 04 */	lwz r3, 4(r28)
/* 80312268 0030F1A8  54 A0 2A F4 */	rlwinm r0, r5, 5, 0xb, 0x1a
/* 8031226C 0030F1AC  7C 63 02 14 */	add r3, r3, r0
/* 80312270 0030F1B0  7C 9E 02 14 */	add r4, r30, r0
/* 80312274 0030F1B4  88 E4 00 00 */	lbz r7, 0(r4)
/* 80312278 0030F1B8  98 E3 00 00 */	stb r7, 0(r3)
/* 8031227C 0030F1BC  88 E4 00 01 */	lbz r7, 1(r4)
/* 80312280 0030F1C0  98 E3 00 01 */	stb r7, 1(r3)
/* 80312284 0030F1C4  A0 E4 00 02 */	lhz r7, 2(r4)
/* 80312288 0030F1C8  B0 E3 00 02 */	sth r7, 2(r3)
/* 8031228C 0030F1CC  A0 E4 00 04 */	lhz r7, 4(r4)
/* 80312290 0030F1D0  B0 E3 00 04 */	sth r7, 4(r3)
/* 80312294 0030F1D4  88 E4 00 06 */	lbz r7, 6(r4)
/* 80312298 0030F1D8  98 E3 00 06 */	stb r7, 6(r3)
/* 8031229C 0030F1DC  88 E4 00 07 */	lbz r7, 7(r4)
/* 803122A0 0030F1E0  98 E3 00 07 */	stb r7, 7(r3)
/* 803122A4 0030F1E4  88 E4 00 08 */	lbz r7, 8(r4)
/* 803122A8 0030F1E8  98 E3 00 08 */	stb r7, 8(r3)
/* 803122AC 0030F1EC  88 E4 00 09 */	lbz r7, 9(r4)
/* 803122B0 0030F1F0  98 E3 00 09 */	stb r7, 9(r3)
/* 803122B4 0030F1F4  A0 E4 00 0A */	lhz r7, 0xa(r4)
/* 803122B8 0030F1F8  B0 E3 00 0A */	sth r7, 0xa(r3)
/* 803122BC 0030F1FC  80 E4 00 0C */	lwz r7, 0xc(r4)
/* 803122C0 0030F200  90 E3 00 0C */	stw r7, 0xc(r3)
/* 803122C4 0030F204  88 E4 00 10 */	lbz r7, 0x10(r4)
/* 803122C8 0030F208  98 E3 00 10 */	stb r7, 0x10(r3)
/* 803122CC 0030F20C  88 E4 00 11 */	lbz r7, 0x11(r4)
/* 803122D0 0030F210  98 E3 00 11 */	stb r7, 0x11(r3)
/* 803122D4 0030F214  88 E4 00 12 */	lbz r7, 0x12(r4)
/* 803122D8 0030F218  98 E3 00 12 */	stb r7, 0x12(r3)
/* 803122DC 0030F21C  88 E4 00 13 */	lbz r7, 0x13(r4)
/* 803122E0 0030F220  98 E3 00 13 */	stb r7, 0x13(r3)
/* 803122E4 0030F224  88 E4 00 14 */	lbz r7, 0x14(r4)
/* 803122E8 0030F228  98 E3 00 14 */	stb r7, 0x14(r3)
/* 803122EC 0030F22C  88 E4 00 15 */	lbz r7, 0x15(r4)
/* 803122F0 0030F230  98 E3 00 15 */	stb r7, 0x15(r3)
/* 803122F4 0030F234  88 E4 00 16 */	lbz r7, 0x16(r4)
/* 803122F8 0030F238  98 E3 00 16 */	stb r7, 0x16(r3)
/* 803122FC 0030F23C  88 E4 00 17 */	lbz r7, 0x17(r4)
/* 80312300 0030F240  98 E3 00 17 */	stb r7, 0x17(r3)
/* 80312304 0030F244  88 E4 00 18 */	lbz r7, 0x18(r4)
/* 80312308 0030F248  98 E3 00 18 */	stb r7, 0x18(r3)
/* 8031230C 0030F24C  88 E4 00 19 */	lbz r7, 0x19(r4)
/* 80312310 0030F250  98 E3 00 19 */	stb r7, 0x19(r3)
/* 80312314 0030F254  A8 E4 00 1A */	lha r7, 0x1a(r4)
/* 80312318 0030F258  B0 E3 00 1A */	sth r7, 0x1a(r3)
/* 8031231C 0030F25C  80 E4 00 1C */	lwz r7, 0x1c(r4)
/* 80312320 0030F260  90 E3 00 1C */	stw r7, 0x1c(r3)
/* 80312324 0030F264  80 7C 00 04 */	lwz r3, 4(r28)
/* 80312328 0030F268  7C E3 02 14 */	add r7, r3, r0
/* 8031232C 0030F26C  80 67 00 1C */	lwz r3, 0x1c(r7)
/* 80312330 0030F270  7C 64 1A 14 */	add r3, r4, r3
/* 80312334 0030F274  7C 67 18 50 */	subf r3, r7, r3
/* 80312338 0030F278  90 67 00 1C */	stw r3, 0x1c(r7)
/* 8031233C 0030F27C  80 7C 00 04 */	lwz r3, 4(r28)
/* 80312340 0030F280  7C 63 02 14 */	add r3, r3, r0
/* 80312344 0030F284  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80312348 0030F288  7C 04 02 14 */	add r0, r4, r0
/* 8031234C 0030F28C  7C 03 00 50 */	subf r0, r3, r0
/* 80312350 0030F290  90 03 00 0C */	stw r0, 0xc(r3)
/* 80312354 0030F294  38 A5 00 01 */	addi r5, r5, 1
lbl_80312358:
/* 80312358 0030F298  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 8031235C 0030F29C  7C 00 30 40 */	cmplw r0, r6
/* 80312360 0030F2A0  41 80 FF 04 */	blt lbl_80312264
/* 80312364 0030F2A4  7F E4 FB 78 */	mr r4, r31
/* 80312368 0030F2A8  48 00 00 F8 */	b lbl_80312460
lbl_8031236C:
/* 8031236C 0030F2AC  80 7C 00 04 */	lwz r3, 4(r28)
/* 80312370 0030F2B0  54 80 2A F4 */	rlwinm r0, r4, 5, 0xb, 0x1a
/* 80312374 0030F2B4  7C C3 02 14 */	add r6, r3, r0
/* 80312378 0030F2B8  7C 7D 02 14 */	add r3, r29, r0
/* 8031237C 0030F2BC  88 A3 00 00 */	lbz r5, 0(r3)
/* 80312380 0030F2C0  98 A6 00 00 */	stb r5, 0(r6)
/* 80312384 0030F2C4  88 A3 00 01 */	lbz r5, 1(r3)
/* 80312388 0030F2C8  98 A6 00 01 */	stb r5, 1(r6)
/* 8031238C 0030F2CC  A0 A3 00 02 */	lhz r5, 2(r3)
/* 80312390 0030F2D0  B0 A6 00 02 */	sth r5, 2(r6)
/* 80312394 0030F2D4  A0 A3 00 04 */	lhz r5, 4(r3)
/* 80312398 0030F2D8  B0 A6 00 04 */	sth r5, 4(r6)
/* 8031239C 0030F2DC  88 A3 00 06 */	lbz r5, 6(r3)
/* 803123A0 0030F2E0  98 A6 00 06 */	stb r5, 6(r6)
/* 803123A4 0030F2E4  88 A3 00 07 */	lbz r5, 7(r3)
/* 803123A8 0030F2E8  98 A6 00 07 */	stb r5, 7(r6)
/* 803123AC 0030F2EC  88 A3 00 08 */	lbz r5, 8(r3)
/* 803123B0 0030F2F0  98 A6 00 08 */	stb r5, 8(r6)
/* 803123B4 0030F2F4  88 A3 00 09 */	lbz r5, 9(r3)
/* 803123B8 0030F2F8  98 A6 00 09 */	stb r5, 9(r6)
/* 803123BC 0030F2FC  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 803123C0 0030F300  B0 A6 00 0A */	sth r5, 0xa(r6)
/* 803123C4 0030F304  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 803123C8 0030F308  90 A6 00 0C */	stw r5, 0xc(r6)
/* 803123CC 0030F30C  88 A3 00 10 */	lbz r5, 0x10(r3)
/* 803123D0 0030F310  98 A6 00 10 */	stb r5, 0x10(r6)
/* 803123D4 0030F314  88 A3 00 11 */	lbz r5, 0x11(r3)
/* 803123D8 0030F318  98 A6 00 11 */	stb r5, 0x11(r6)
/* 803123DC 0030F31C  88 A3 00 12 */	lbz r5, 0x12(r3)
/* 803123E0 0030F320  98 A6 00 12 */	stb r5, 0x12(r6)
/* 803123E4 0030F324  88 A3 00 13 */	lbz r5, 0x13(r3)
/* 803123E8 0030F328  98 A6 00 13 */	stb r5, 0x13(r6)
/* 803123EC 0030F32C  88 A3 00 14 */	lbz r5, 0x14(r3)
/* 803123F0 0030F330  98 A6 00 14 */	stb r5, 0x14(r6)
/* 803123F4 0030F334  88 A3 00 15 */	lbz r5, 0x15(r3)
/* 803123F8 0030F338  98 A6 00 15 */	stb r5, 0x15(r6)
/* 803123FC 0030F33C  88 A3 00 16 */	lbz r5, 0x16(r3)
/* 80312400 0030F340  98 A6 00 16 */	stb r5, 0x16(r6)
/* 80312404 0030F344  88 A3 00 17 */	lbz r5, 0x17(r3)
/* 80312408 0030F348  98 A6 00 17 */	stb r5, 0x17(r6)
/* 8031240C 0030F34C  88 A3 00 18 */	lbz r5, 0x18(r3)
/* 80312410 0030F350  98 A6 00 18 */	stb r5, 0x18(r6)
/* 80312414 0030F354  88 A3 00 19 */	lbz r5, 0x19(r3)
/* 80312418 0030F358  98 A6 00 19 */	stb r5, 0x19(r6)
/* 8031241C 0030F35C  A8 A3 00 1A */	lha r5, 0x1a(r3)
/* 80312420 0030F360  B0 A6 00 1A */	sth r5, 0x1a(r6)
/* 80312424 0030F364  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 80312428 0030F368  90 A6 00 1C */	stw r5, 0x1c(r6)
/* 8031242C 0030F36C  80 BC 00 04 */	lwz r5, 4(r28)
/* 80312430 0030F370  7C C5 02 14 */	add r6, r5, r0
/* 80312434 0030F374  80 A6 00 1C */	lwz r5, 0x1c(r6)
/* 80312438 0030F378  7C A3 2A 14 */	add r5, r3, r5
/* 8031243C 0030F37C  7C A6 28 50 */	subf r5, r6, r5
/* 80312440 0030F380  90 A6 00 1C */	stw r5, 0x1c(r6)
/* 80312444 0030F384  80 BC 00 04 */	lwz r5, 4(r28)
/* 80312448 0030F388  7C A5 02 14 */	add r5, r5, r0
/* 8031244C 0030F38C  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80312450 0030F390  7C 03 02 14 */	add r0, r3, r0
/* 80312454 0030F394  7C 05 00 50 */	subf r0, r5, r0
/* 80312458 0030F398  90 05 00 0C */	stw r0, 0xc(r5)
/* 8031245C 0030F39C  38 84 00 01 */	addi r4, r4, 1
lbl_80312460:
/* 80312460 0030F3A0  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 80312464 0030F3A4  A0 1C 00 00 */	lhz r0, 0(r28)
/* 80312468 0030F3A8  7C 03 00 40 */	cmplw r3, r0
/* 8031246C 0030F3AC  41 80 FF 00 */	blt lbl_8031236C
lbl_80312470:
/* 80312470 0030F3B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80312474 0030F3B4  48 04 FD B1 */	bl _restgpr_28
/* 80312478 0030F3B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031247C 0030F3BC  7C 08 03 A6 */	mtlr r0
/* 80312480 0030F3C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80312484 0030F3C4  4E 80 00 20 */	blr 

