.include "macros.inc"

.section .text, "ax" # 802aab94


.global Z2SoundStarter
Z2SoundStarter:
/* 802AAB94 002A7AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AAB98 002A7AD8  7C 08 02 A6 */	mflr r0
/* 802AAB9C 002A7ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AABA0 002A7AE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AABA4 002A7AE4  93 C1 00 08 */	stw r30, 8(r1)
/* 802AABA8 002A7AE8  7C 7E 1B 78 */	mr r30, r3
/* 802AABAC 002A7AEC  7C 9F 23 78 */	mr r31, r4
/* 802AABB0 002A7AF0  4B FF 83 BD */	bl JAISoundStarter
/* 802AABB4 002A7AF4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802AABB8 002A7AF8  41 82 00 14 */	beq lbl_802AABCC
/* 802AABBC 002A7AFC  34 7E 00 04 */	addic. r3, r30, 4
/* 802AABC0 002A7B00  41 82 00 08 */	beq lbl_802AABC8
/* 802AABC4 002A7B04  38 63 FF FC */	addi r3, r3, -4
lbl_802AABC8:
/* 802AABC8 002A7B08  90 6D 85 F4 */	stw r3, lbl_80450B74-_SDA_BASE_(r13)
lbl_802AABCC:
/* 802AABCC 002A7B0C  3C 60 80 3D */	lis r3, lbl_803C9D80@ha
/* 802AABD0 002A7B10  38 03 9D 80 */	addi r0, r3, lbl_803C9D80@l
/* 802AABD4 002A7B14  90 1E 00 00 */	stw r0, 0(r30)
/* 802AABD8 002A7B18  7F C3 F3 78 */	mr r3, r30
/* 802AABDC 002A7B1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AABE0 002A7B20  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AABE4 002A7B24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AABE8 002A7B28  7C 08 03 A6 */	mtlr r0
/* 802AABEC 002A7B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 802AABF0 002A7B30  4E 80 00 20 */	blr 
/* 802AABF4 002A7B34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AABF8 002A7B38  7C 08 02 A6 */	mflr r0
/* 802AABFC 002A7B3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AAC00 002A7B40  80 04 00 00 */	lwz r0, 0(r4)
/* 802AAC04 002A7B44  90 01 00 08 */	stw r0, 8(r1)
/* 802AAC08 002A7B48  38 81 00 08 */	addi r4, r1, 8
/* 802AAC0C 002A7B4C  38 E0 00 00 */	li r7, 0
/* 802AAC10 002A7B50  C0 22 BE 58 */	lfs f1, lbl_80455858-_SDA2_BASE_(r2)
/* 802AAC14 002A7B54  C0 42 BE 5C */	lfs f2, lbl_8045585C-_SDA2_BASE_(r2)
/* 802AAC18 002A7B58  FC 60 10 90 */	fmr f3, f2
/* 802AAC1C 002A7B5C  C0 82 BE 60 */	lfs f4, lbl_80455860-_SDA2_BASE_(r2)
/* 802AAC20 002A7B60  FC A0 20 90 */	fmr f5, f4
/* 802AAC24 002A7B64  39 00 00 00 */	li r8, 0
/* 802AAC28 002A7B68  48 00 00 15 */	bl Z2SoundStarter_NS_startSound_X1_
/* 802AAC2C 002A7B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AAC30 002A7B70  7C 08 03 A6 */	mtlr r0
/* 802AAC34 002A7B74  38 21 00 10 */	addi r1, r1, 0x10
/* 802AAC38 002A7B78  4E 80 00 20 */	blr 

.global Z2SoundStarter_NS_startSound_X1_
Z2SoundStarter_NS_startSound_X1_:
/* 802AAC3C 002A7B7C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802AAC40 002A7B80  7C 08 02 A6 */	mflr r0
/* 802AAC44 002A7B84  90 01 00 94 */	stw r0, 0x94(r1)
/* 802AAC48 002A7B88  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 802AAC4C 002A7B8C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 802AAC50 002A7B90  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 802AAC54 002A7B94  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 802AAC58 002A7B98  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 802AAC5C 002A7B9C  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 802AAC60 002A7BA0  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 802AAC64 002A7BA4  F3 81 00 58 */	psq_st f28, 88(r1), 0, qr0
/* 802AAC68 002A7BA8  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 802AAC6C 002A7BAC  F3 61 00 48 */	psq_st f27, 72(r1), 0, qr0
/* 802AAC70 002A7BB0  39 61 00 40 */	addi r11, r1, 0x40
/* 802AAC74 002A7BB4  48 0B 75 5D */	bl func_803621D0
/* 802AAC78 002A7BB8  7C 7A 1B 78 */	mr r26, r3
/* 802AAC7C 002A7BBC  7C 9B 23 78 */	mr r27, r4
/* 802AAC80 002A7BC0  7C BC 2B 78 */	mr r28, r5
/* 802AAC84 002A7BC4  7C DD 33 78 */	mr r29, r6
/* 802AAC88 002A7BC8  7C FE 3B 78 */	mr r30, r7
/* 802AAC8C 002A7BCC  FF 60 08 90 */	fmr f27, f1
/* 802AAC90 002A7BD0  FF 80 10 90 */	fmr f28, f2
/* 802AAC94 002A7BD4  FF A0 18 90 */	fmr f29, f3
/* 802AAC98 002A7BD8  FF C0 20 90 */	fmr f30, f4
/* 802AAC9C 002A7BDC  FF E0 28 90 */	fmr f31, f5
/* 802AACA0 002A7BE0  7D 1F 43 78 */	mr r31, r8
/* 802AACA4 002A7BE4  28 1E 00 06 */	cmplwi r30, 6
/* 802AACA8 002A7BE8  40 82 00 68 */	bne lbl_802AAD10
/* 802AACAC 002A7BEC  80 9B 00 00 */	lwz r4, 0(r27)
/* 802AACB0 002A7BF0  3C 60 00 06 */	lis r3, 0x0006002C@ha
/* 802AACB4 002A7BF4  38 03 00 2C */	addi r0, r3, 0x0006002C@l
/* 802AACB8 002A7BF8  7C 04 00 00 */	cmpw r4, r0
/* 802AACBC 002A7BFC  41 82 00 38 */	beq lbl_802AACF4
/* 802AACC0 002A7C00  40 80 00 14 */	bge lbl_802AACD4
/* 802AACC4 002A7C04  38 03 00 2B */	addi r0, r3, 0x2b
/* 802AACC8 002A7C08  7C 04 00 00 */	cmpw r4, r0
/* 802AACCC 002A7C0C  40 80 00 18 */	bge lbl_802AACE4
/* 802AACD0 002A7C10  48 00 00 40 */	b lbl_802AAD10
lbl_802AACD4:
/* 802AACD4 002A7C14  38 03 00 2E */	addi r0, r3, 0x2e
/* 802AACD8 002A7C18  7C 04 00 00 */	cmpw r4, r0
/* 802AACDC 002A7C1C  40 80 00 34 */	bge lbl_802AAD10
/* 802AACE0 002A7C20  48 00 00 24 */	b lbl_802AAD04
lbl_802AACE4:
/* 802AACE4 002A7C24  38 03 00 2E */	addi r0, r3, 0x2e
/* 802AACE8 002A7C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AACEC 002A7C2C  90 1B 00 00 */	stw r0, 0(r27)
/* 802AACF0 002A7C30  48 00 00 20 */	b lbl_802AAD10
lbl_802AACF4:
/* 802AACF4 002A7C34  38 03 00 2F */	addi r0, r3, 0x2f
/* 802AACF8 002A7C38  90 01 00 10 */	stw r0, 0x10(r1)
/* 802AACFC 002A7C3C  90 1B 00 00 */	stw r0, 0(r27)
/* 802AAD00 002A7C40  48 00 00 10 */	b lbl_802AAD10
lbl_802AAD04:
/* 802AAD04 002A7C44  38 03 00 30 */	addi r0, r3, 0x30
/* 802AAD08 002A7C48  90 01 00 0C */	stw r0, 0xc(r1)
/* 802AAD0C 002A7C4C  90 1B 00 00 */	stw r0, 0(r27)
lbl_802AAD10:
/* 802AAD10 002A7C50  88 1B 00 01 */	lbz r0, 1(r27)
/* 802AAD14 002A7C54  28 00 00 00 */	cmplwi r0, 0
/* 802AAD18 002A7C58  41 82 00 88 */	beq lbl_802AADA0
/* 802AAD1C 002A7C5C  28 00 00 09 */	cmplwi r0, 9
/* 802AAD20 002A7C60  41 82 00 80 */	beq lbl_802AADA0
/* 802AAD24 002A7C64  80 6D 86 00 */	lwz r3, lbl_80450B80-_SDA_BASE_(r13)
/* 802AAD28 002A7C68  88 03 00 1E */	lbz r0, 0x1e(r3)
/* 802AAD2C 002A7C6C  28 00 00 00 */	cmplwi r0, 0
/* 802AAD30 002A7C70  41 82 00 0C */	beq lbl_802AAD3C
/* 802AAD34 002A7C74  C3 62 BE 5C */	lfs f27, lbl_8045585C-_SDA2_BASE_(r2)
/* 802AAD38 002A7C78  48 00 00 68 */	b lbl_802AADA0
lbl_802AAD3C:
/* 802AAD3C 002A7C7C  80 6D 85 FC */	lwz r3, lbl_80450B7C-_SDA_BASE_(r13)
/* 802AAD40 002A7C80  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 802AAD44 002A7C84  C0 42 BE 58 */	lfs f2, lbl_80455858-_SDA2_BASE_(r2)
/* 802AAD48 002A7C88  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802AAD4C 002A7C8C  7C 00 00 26 */	mfcr r0
/* 802AAD50 002A7C90  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
/* 802AAD54 002A7C94  C8 22 BE 68 */	lfd f1, lbl_80455868-_SDA2_BASE_(r2)
/* 802AAD58 002A7C98  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802AAD5C 002A7C9C  3C 00 43 30 */	lis r0, 0x4330
/* 802AAD60 002A7CA0  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AAD64 002A7CA4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802AAD68 002A7CA8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802AAD6C 002A7CAC  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 802AAD70 002A7CB0  41 82 00 0C */	beq lbl_802AAD7C
/* 802AAD74 002A7CB4  FF 60 00 90 */	fmr f27, f0
/* 802AAD78 002A7CB8  48 00 00 28 */	b lbl_802AADA0
lbl_802AAD7C:
/* 802AAD7C 002A7CBC  80 6D 85 BC */	lwz r3, lbl_80450B3C-_SDA_BASE_(r13)
/* 802AAD80 002A7CC0  48 01 E6 65 */	bl Z2EnvSeMgr_NS_getFogDensity
/* 802AAD84 002A7CC4  C0 02 BE 64 */	lfs f0, lbl_80455864-_SDA2_BASE_(r2)
/* 802AAD88 002A7CC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 802AAD8C 002A7CCC  EF 7B 00 2A */	fadds f27, f27, f0
/* 802AAD90 002A7CD0  C0 02 BE 5C */	lfs f0, lbl_8045585C-_SDA2_BASE_(r2)
/* 802AAD94 002A7CD4  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 802AAD98 002A7CD8  40 81 00 08 */	ble lbl_802AADA0
/* 802AAD9C 002A7CDC  FF 60 00 90 */	fmr f27, f0
lbl_802AADA0:
/* 802AADA0 002A7CE0  80 1B 00 00 */	lwz r0, 0(r27)
/* 802AADA4 002A7CE4  90 01 00 08 */	stw r0, 8(r1)
/* 802AADA8 002A7CE8  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 802AADAC 002A7CEC  38 81 00 08 */	addi r4, r1, 8
/* 802AADB0 002A7CF0  7F 85 E3 78 */	mr r5, r28
/* 802AADB4 002A7CF4  7F A6 EB 78 */	mr r6, r29
/* 802AADB8 002A7CF8  81 83 05 14 */	lwz r12, 0x514(r3)
/* 802AADBC 002A7CFC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AADC0 002A7D00  7D 89 03 A6 */	mtctr r12
/* 802AADC4 002A7D04  4E 80 04 21 */	bctrl 
/* 802AADC8 002A7D08  7C 7B 1B 78 */	mr r27, r3
/* 802AADCC 002A7D0C  80 1C 00 00 */	lwz r0, 0(r28)
/* 802AADD0 002A7D10  28 00 00 00 */	cmplwi r0, 0
/* 802AADD4 002A7D14  41 82 00 C4 */	beq lbl_802AAE98
/* 802AADD8 002A7D18  28 1E 00 00 */	cmplwi r30, 0
/* 802AADDC 002A7D1C  41 82 00 1C */	beq lbl_802AADF8
/* 802AADE0 002A7D20  7F 43 D3 78 */	mr r3, r26
/* 802AADE4 002A7D24  7F 84 E3 78 */	mr r4, r28
/* 802AADE8 002A7D28  38 A0 00 06 */	li r5, 6
/* 802AADEC 002A7D2C  57 C6 04 3E */	clrlwi r6, r30, 0x10
/* 802AADF0 002A7D30  38 E0 FF FF */	li r7, -1
/* 802AADF4 002A7D34  48 00 00 E9 */	bl Z2SoundStarter_NS_setPortData
lbl_802AADF8:
/* 802AADF8 002A7D38  C0 02 BE 58 */	lfs f0, lbl_80455858-_SDA2_BASE_(r2)
/* 802AADFC 002A7D3C  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 802AAE00 002A7D40  40 81 00 18 */	ble lbl_802AAE18
/* 802AAE04 002A7D44  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AAE08 002A7D48  38 63 00 48 */	addi r3, r3, 0x48
/* 802AAE0C 002A7D4C  FC 20 D8 90 */	fmr f1, f27
/* 802AAE10 002A7D50  7F E4 FB 78 */	mr r4, r31
/* 802AAE14 002A7D54  4B FF 80 51 */	bl JAISoundParamsMove_NS_moveFxMix
lbl_802AAE18:
/* 802AAE18 002A7D58  C0 02 BE 5C */	lfs f0, lbl_8045585C-_SDA2_BASE_(r2)
/* 802AAE1C 002A7D5C  FC 00 E0 00 */	fcmpu cr0, f0, f28
/* 802AAE20 002A7D60  41 82 00 18 */	beq lbl_802AAE38
/* 802AAE24 002A7D64  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AAE28 002A7D68  38 63 00 48 */	addi r3, r3, 0x48
/* 802AAE2C 002A7D6C  FC 20 E0 90 */	fmr f1, f28
/* 802AAE30 002A7D70  7F E4 FB 78 */	mr r4, r31
/* 802AAE34 002A7D74  4B FF 7F D9 */	bl JAISoundParamsMove_NS_movePitch
lbl_802AAE38:
/* 802AAE38 002A7D78  C0 02 BE 5C */	lfs f0, lbl_8045585C-_SDA2_BASE_(r2)
/* 802AAE3C 002A7D7C  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 802AAE40 002A7D80  41 82 00 18 */	beq lbl_802AAE58
/* 802AAE44 002A7D84  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AAE48 002A7D88  38 63 00 48 */	addi r3, r3, 0x48
/* 802AAE4C 002A7D8C  FC 20 E8 90 */	fmr f1, f29
/* 802AAE50 002A7D90  7F E4 FB 78 */	mr r4, r31
/* 802AAE54 002A7D94  4B FF 7F 61 */	bl JAISoundParamsMove_NS_moveVolume
lbl_802AAE58:
/* 802AAE58 002A7D98  C0 02 BE 60 */	lfs f0, lbl_80455860-_SDA2_BASE_(r2)
/* 802AAE5C 002A7D9C  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 802AAE60 002A7DA0  41 82 00 18 */	beq lbl_802AAE78
/* 802AAE64 002A7DA4  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AAE68 002A7DA8  38 63 00 48 */	addi r3, r3, 0x48
/* 802AAE6C 002A7DAC  FC 20 F0 90 */	fmr f1, f30
/* 802AAE70 002A7DB0  7F E4 FB 78 */	mr r4, r31
/* 802AAE74 002A7DB4  4B FF 80 49 */	bl JAISoundParamsMove_NS_movePan
lbl_802AAE78:
/* 802AAE78 002A7DB8  C0 02 BE 60 */	lfs f0, lbl_80455860-_SDA2_BASE_(r2)
/* 802AAE7C 002A7DBC  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 802AAE80 002A7DC0  41 82 00 18 */	beq lbl_802AAE98
/* 802AAE84 002A7DC4  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AAE88 002A7DC8  38 63 00 48 */	addi r3, r3, 0x48
/* 802AAE8C 002A7DCC  FC 20 F8 90 */	fmr f1, f31
/* 802AAE90 002A7DD0  7F E4 FB 78 */	mr r4, r31
/* 802AAE94 002A7DD4  4B FF 80 81 */	bl JAISoundParamsMove_NS_moveDolby
lbl_802AAE98:
/* 802AAE98 002A7DD8  7F 63 DB 78 */	mr r3, r27
/* 802AAE9C 002A7DDC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 802AAEA0 002A7DE0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 802AAEA4 002A7DE4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 802AAEA8 002A7DE8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 802AAEAC 002A7DEC  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 802AAEB0 002A7DF0  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 802AAEB4 002A7DF4  E3 81 00 58 */	psq_l f28, 88(r1), 0, qr0
/* 802AAEB8 002A7DF8  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 802AAEBC 002A7DFC  E3 61 00 48 */	psq_l f27, 72(r1), 0, qr0
/* 802AAEC0 002A7E00  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 802AAEC4 002A7E04  39 61 00 40 */	addi r11, r1, 0x40
/* 802AAEC8 002A7E08  48 0B 73 55 */	bl func_8036221C
/* 802AAECC 002A7E0C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802AAED0 002A7E10  7C 08 03 A6 */	mtlr r0
/* 802AAED4 002A7E14  38 21 00 90 */	addi r1, r1, 0x90
/* 802AAED8 002A7E18  4E 80 00 20 */	blr 

.global Z2SoundStarter_NS_setPortData
Z2SoundStarter_NS_setPortData:
/* 802AAEDC 002A7E1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AAEE0 002A7E20  7C 08 02 A6 */	mflr r0
/* 802AAEE4 002A7E24  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AAEE8 002A7E28  39 61 00 20 */	addi r11, r1, 0x20
/* 802AAEEC 002A7E2C  48 0B 72 F1 */	bl func_803621DC
/* 802AAEF0 002A7E30  7C BD 2B 78 */	mr r29, r5
/* 802AAEF4 002A7E34  7C DE 33 78 */	mr r30, r6
/* 802AAEF8 002A7E38  7C FF 3B 78 */	mr r31, r7
/* 802AAEFC 002A7E3C  28 04 00 00 */	cmplwi r4, 0
/* 802AAF00 002A7E40  41 82 00 5C */	beq lbl_802AAF5C
/* 802AAF04 002A7E44  80 64 00 00 */	lwz r3, 0(r4)
/* 802AAF08 002A7E48  28 03 00 00 */	cmplwi r3, 0
/* 802AAF0C 002A7E4C  41 82 00 50 */	beq lbl_802AAF5C
/* 802AAF10 002A7E50  81 83 00 00 */	lwz r12, 0(r3)
/* 802AAF14 002A7E54  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802AAF18 002A7E58  7D 89 03 A6 */	mtctr r12
/* 802AAF1C 002A7E5C  4E 80 04 21 */	bctrl 
/* 802AAF20 002A7E60  7C 65 1B 78 */	mr r5, r3
/* 802AAF24 002A7E64  7F E4 07 74 */	extsb r4, r31
/* 802AAF28 002A7E68  2C 04 FF FF */	cmpwi r4, -1
/* 802AAF2C 002A7E6C  41 82 00 20 */	beq lbl_802AAF4C
/* 802AAF30 002A7E70  54 80 10 3A */	slwi r0, r4, 2
/* 802AAF34 002A7E74  7F E5 02 14 */	add r31, r5, r0
/* 802AAF38 002A7E78  80 1F 01 30 */	lwz r0, 0x130(r31)
/* 802AAF3C 002A7E7C  28 00 00 00 */	cmplwi r0, 0
/* 802AAF40 002A7E80  40 82 00 08 */	bne lbl_802AAF48
/* 802AAF44 002A7E84  4B FE 6C ED */	bl JASTrack_NS_openChild
lbl_802AAF48:
/* 802AAF48 002A7E88  80 BF 01 30 */	lwz r5, 0x130(r31)
lbl_802AAF4C:
/* 802AAF4C 002A7E8C  7C A3 2B 78 */	mr r3, r5
/* 802AAF50 002A7E90  7F A4 EB 78 */	mr r4, r29
/* 802AAF54 002A7E94  7F C5 F3 78 */	mr r5, r30
/* 802AAF58 002A7E98  4B FE 79 C1 */	bl JASTrack_NS_writePort
lbl_802AAF5C:
/* 802AAF5C 002A7E9C  39 61 00 20 */	addi r11, r1, 0x20
/* 802AAF60 002A7EA0  48 0B 72 C9 */	bl func_80362228
/* 802AAF64 002A7EA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AAF68 002A7EA8  7C 08 03 A6 */	mtlr r0
/* 802AAF6C 002A7EAC  38 21 00 20 */	addi r1, r1, 0x20
/* 802AAF70 002A7EB0  4E 80 00 20 */	blr 

.global Z2SoundStarter_NS_getPortData
Z2SoundStarter_NS_getPortData:
/* 802AAF74 002A7EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AAF78 002A7EB8  7C 08 02 A6 */	mflr r0
/* 802AAF7C 002A7EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AAF80 002A7EC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AAF84 002A7EC4  7C BF 2B 78 */	mr r31, r5
/* 802AAF88 002A7EC8  28 04 00 00 */	cmplwi r4, 0
/* 802AAF8C 002A7ECC  41 82 00 4C */	beq lbl_802AAFD8
/* 802AAF90 002A7ED0  80 64 00 00 */	lwz r3, 0(r4)
/* 802AAF94 002A7ED4  28 03 00 00 */	cmplwi r3, 0
/* 802AAF98 002A7ED8  41 82 00 40 */	beq lbl_802AAFD8
/* 802AAF9C 002A7EDC  7C C4 07 74 */	extsb r4, r6
/* 802AAFA0 002A7EE0  2C 04 FF FF */	cmpwi r4, -1
/* 802AAFA4 002A7EE4  40 82 00 18 */	bne lbl_802AAFBC
/* 802AAFA8 002A7EE8  81 83 00 00 */	lwz r12, 0(r3)
/* 802AAFAC 002A7EEC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802AAFB0 002A7EF0  7D 89 03 A6 */	mtctr r12
/* 802AAFB4 002A7EF4  4E 80 04 21 */	bctrl 
/* 802AAFB8 002A7EF8  48 00 00 14 */	b lbl_802AAFCC
lbl_802AAFBC:
/* 802AAFBC 002A7EFC  81 83 00 00 */	lwz r12, 0(r3)
/* 802AAFC0 002A7F00  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802AAFC4 002A7F04  7D 89 03 A6 */	mtctr r12
/* 802AAFC8 002A7F08  4E 80 04 21 */	bctrl 
lbl_802AAFCC:
/* 802AAFCC 002A7F0C  7F E4 FB 78 */	mr r4, r31
/* 802AAFD0 002A7F10  4B FE 79 AD */	bl JASTrack_NS_readPort
/* 802AAFD4 002A7F14  48 00 00 08 */	b lbl_802AAFDC
lbl_802AAFD8:
/* 802AAFD8 002A7F18  38 60 00 00 */	li r3, 0
lbl_802AAFDC:
/* 802AAFDC 002A7F1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AAFE0 002A7F20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AAFE4 002A7F24  7C 08 03 A6 */	mtlr r0
/* 802AAFE8 002A7F28  38 21 00 10 */	addi r1, r1, 0x10
/* 802AAFEC 002A7F2C  4E 80 00 20 */	blr 
/* 802AAFF0 002A7F30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AAFF4 002A7F34  7C 08 02 A6 */	mflr r0
/* 802AAFF8 002A7F38  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AAFFC 002A7F3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB000 002A7F40  93 C1 00 08 */	stw r30, 8(r1)
/* 802AB004 002A7F44  7C 7E 1B 79 */	or. r30, r3, r3
/* 802AB008 002A7F48  7C 9F 23 78 */	mr r31, r4
/* 802AB00C 002A7F4C  41 82 00 54 */	beq lbl_802AB060
/* 802AB010 002A7F50  3C 60 80 3D */	lis r3, lbl_803C9D80@ha
/* 802AB014 002A7F54  38 03 9D 80 */	addi r0, r3, lbl_803C9D80@l
/* 802AB018 002A7F58  90 1E 00 00 */	stw r0, 0(r30)
/* 802AB01C 002A7F5C  34 1E 00 04 */	addic. r0, r30, 4
/* 802AB020 002A7F60  41 82 00 24 */	beq lbl_802AB044
/* 802AB024 002A7F64  34 7E 00 04 */	addic. r3, r30, 4
/* 802AB028 002A7F68  41 82 00 08 */	beq lbl_802AB030
/* 802AB02C 002A7F6C  38 63 FF FC */	addi r3, r3, -4
lbl_802AB030:
/* 802AB030 002A7F70  80 0D 85 F4 */	lwz r0, lbl_80450B74-_SDA_BASE_(r13)
/* 802AB034 002A7F74  7C 00 18 40 */	cmplw r0, r3
/* 802AB038 002A7F78  40 82 00 0C */	bne lbl_802AB044
/* 802AB03C 002A7F7C  38 00 00 00 */	li r0, 0
/* 802AB040 002A7F80  90 0D 85 F4 */	stw r0, lbl_80450B74-_SDA_BASE_(r13)
lbl_802AB044:
/* 802AB044 002A7F84  7F C3 F3 78 */	mr r3, r30
/* 802AB048 002A7F88  38 80 00 00 */	li r4, 0
/* 802AB04C 002A7F8C  4B FF 7F 3D */	bl JAISoundStarter_NS_dtor
/* 802AB050 002A7F90  7F E0 07 35 */	extsh. r0, r31
/* 802AB054 002A7F94  40 81 00 0C */	ble lbl_802AB060
/* 802AB058 002A7F98  7F C3 F3 78 */	mr r3, r30
/* 802AB05C 002A7F9C  48 02 3C E1 */	bl __dl
lbl_802AB060:
/* 802AB060 002A7FA0  7F C3 F3 78 */	mr r3, r30
/* 802AB064 002A7FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB068 002A7FA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AB06C 002A7FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB070 002A7FB0  7C 08 03 A6 */	mtlr r0
/* 802AB074 002A7FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB078 002A7FB8  4E 80 00 20 */	blr 
