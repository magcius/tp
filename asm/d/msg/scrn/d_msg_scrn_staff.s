.include "macros.inc"

.section .text, "ax" # 80246b34


.global dMsgScrnStaff_c
dMsgScrnStaff_c:
/* 80246B34 00243A74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80246B38 00243A78  7C 08 02 A6 */	mflr r0
/* 80246B3C 00243A7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80246B40 00243A80  39 61 00 20 */	addi r11, r1, 0x20
/* 80246B44 00243A84  48 11 B6 8D */	bl _savegpr_26
/* 80246B48 00243A88  7C 7E 1B 78 */	mr r30, r3
/* 80246B4C 00243A8C  4B FF 55 91 */	bl dMsgScrnBase_c
/* 80246B50 00243A90  3C 60 80 3C */	lis r3, lbl_803C1370@ha
/* 80246B54 00243A94  38 03 13 70 */	addi r0, r3, lbl_803C1370@l
/* 80246B58 00243A98  90 1E 00 00 */	stw r0, 0(r30)
/* 80246B5C 00243A9C  7F C3 F3 78 */	mr r3, r30
/* 80246B60 00243AA0  4B FF 56 0D */	bl dMsgScrnBase_c_NS_init
/* 80246B64 00243AA4  C0 02 B2 F8 */	lfs f0, lbl_80454CF8-_SDA2_BASE_(r2)
/* 80246B68 00243AA8  D0 1E 00 D0 */	stfs f0, 0xd0(r30)
/* 80246B6C 00243AAC  D0 1E 00 CC */	stfs f0, 0xcc(r30)
/* 80246B70 00243AB0  38 60 01 18 */	li r3, 0x118
/* 80246B74 00243AB4  48 08 80 D9 */	bl __nw__FUl
/* 80246B78 00243AB8  7C 60 1B 79 */	or. r0, r3, r3
/* 80246B7C 00243ABC  41 82 00 0C */	beq lbl_80246B88
/* 80246B80 00243AC0  48 0B 19 19 */	bl J2DScreen
/* 80246B84 00243AC4  7C 60 1B 78 */	mr r0, r3
lbl_80246B88:
/* 80246B88 00243AC8  90 1E 00 04 */	stw r0, 4(r30)
/* 80246B8C 00243ACC  80 7E 00 04 */	lwz r3, 4(r30)
/* 80246B90 00243AD0  3C 80 80 3A */	lis r4, lbl_80399B98@ha
/* 80246B94 00243AD4  38 84 9B 98 */	addi r4, r4, lbl_80399B98@l
/* 80246B98 00243AD8  3C A0 00 02 */	lis r5, 2
/* 80246B9C 00243ADC  3C C0 80 40 */	lis r6, lbl_804061C0@ha
/* 80246BA0 00243AE0  38 C6 61 C0 */	addi r6, r6, lbl_804061C0@l
/* 80246BA4 00243AE4  80 C6 5C 84 */	lwz r6, 0x5c84(r6)
/* 80246BA8 00243AE8  48 0B 1A A1 */	bl J2DScreen_NS_setPriority
/* 80246BAC 00243AEC  80 7E 00 04 */	lwz r3, 4(r30)
/* 80246BB0 00243AF0  48 00 E5 39 */	bl dPaneClass_showNullPane
/* 80246BB4 00243AF4  38 60 00 6C */	li r3, 0x6c
/* 80246BB8 00243AF8  48 08 80 95 */	bl __nw__FUl
/* 80246BBC 00243AFC  7C 60 1B 79 */	or. r0, r3, r3
/* 80246BC0 00243B00  41 82 00 24 */	beq lbl_80246BE4
/* 80246BC4 00243B04  80 9E 00 04 */	lwz r4, 4(r30)
/* 80246BC8 00243B08  3C A0 52 4F */	lis r5, 0x524F4F54@ha
/* 80246BCC 00243B0C  38 C5 4F 54 */	addi r6, r5, 0x524F4F54@l
/* 80246BD0 00243B10  38 A0 00 00 */	li r5, 0
/* 80246BD4 00243B14  38 E0 00 02 */	li r7, 2
/* 80246BD8 00243B18  39 00 00 00 */	li r8, 0
/* 80246BDC 00243B1C  48 00 CD A9 */	bl CPaneMgr_X1_
/* 80246BE0 00243B20  7C 60 1B 78 */	mr r0, r3
lbl_80246BE4:
/* 80246BE4 00243B24  90 1E 00 08 */	stw r0, 8(r30)
/* 80246BE8 00243B28  80 7E 00 04 */	lwz r3, 4(r30)
/* 80246BEC 00243B2C  3C 80 66 74 */	lis r4, 0x66745F6E@ha
/* 80246BF0 00243B30  38 C4 5F 6E */	addi r6, r4, 0x66745F6E@l
/* 80246BF4 00243B34  38 A0 6C 65 */	li r5, 0x6c65
/* 80246BF8 00243B38  81 83 00 00 */	lwz r12, 0(r3)
/* 80246BFC 00243B3C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80246C00 00243B40  7D 89 03 A6 */	mtctr r12
/* 80246C04 00243B44  4E 80 04 21 */	bctrl 
/* 80246C08 00243B48  38 00 00 00 */	li r0, 0
/* 80246C0C 00243B4C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80246C10 00243B50  80 7E 00 04 */	lwz r3, 4(r30)
/* 80246C14 00243B54  3C 80 68 74 */	lis r4, 0x68745F6E@ha
/* 80246C18 00243B58  38 C4 5F 6E */	addi r6, r4, 0x68745F6E@l
/* 80246C1C 00243B5C  3C 80 00 72 */	lis r4, 0x00726967@ha
/* 80246C20 00243B60  38 A4 69 67 */	addi r5, r4, 0x00726967@l
/* 80246C24 00243B64  81 83 00 00 */	lwz r12, 0(r3)
/* 80246C28 00243B68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80246C2C 00243B6C  7D 89 03 A6 */	mtctr r12
/* 80246C30 00243B70  4E 80 04 21 */	bctrl 
/* 80246C34 00243B74  3B 60 00 00 */	li r27, 0
/* 80246C38 00243B78  9B 63 00 B0 */	stb r27, 0xb0(r3)
/* 80246C3C 00243B7C  3B E0 00 00 */	li r31, 0
/* 80246C40 00243B80  3B A0 00 00 */	li r29, 0
/* 80246C44 00243B84  3C 60 80 3A */	lis r3, lbl_80399B98@ha
/* 80246C48 00243B88  3B 83 9B 98 */	addi r28, r3, lbl_80399B98@l
lbl_80246C4C:
/* 80246C4C 00243B8C  38 60 00 6C */	li r3, 0x6c
/* 80246C50 00243B90  48 08 7F FD */	bl __nw__FUl
/* 80246C54 00243B94  7C 64 1B 79 */	or. r4, r3, r3
/* 80246C58 00243B98  41 82 00 2C */	beq lbl_80246C84
/* 80246C5C 00243B9C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80246C60 00243BA0  3C A0 80 3C */	lis r5, lbl_803C1340@ha
/* 80246C64 00243BA4  38 05 13 40 */	addi r0, r5, lbl_803C1340@l
/* 80246C68 00243BA8  7C C0 DA 14 */	add r6, r0, r27
/* 80246C6C 00243BAC  80 A6 00 00 */	lwz r5, 0(r6)
/* 80246C70 00243BB0  80 C6 00 04 */	lwz r6, 4(r6)
/* 80246C74 00243BB4  38 E0 00 00 */	li r7, 0
/* 80246C78 00243BB8  39 00 00 00 */	li r8, 0
/* 80246C7C 00243BBC  48 00 CD 09 */	bl CPaneMgr_X1_
/* 80246C80 00243BC0  7C 64 1B 78 */	mr r4, r3
lbl_80246C84:
/* 80246C84 00243BC4  38 1D 00 0C */	addi r0, r29, 0xc
/* 80246C88 00243BC8  7C 9E 01 2E */	stwx r4, r30, r0
/* 80246C8C 00243BCC  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80246C90 00243BD0  83 43 00 04 */	lwz r26, 4(r3)
/* 80246C94 00243BD4  4B DC DD 5D */	bl mDoExt_getMesgFont
/* 80246C98 00243BD8  7C 64 1B 78 */	mr r4, r3
/* 80246C9C 00243BDC  7F 43 D3 78 */	mr r3, r26
/* 80246CA0 00243BE0  81 9A 00 00 */	lwz r12, 0(r26)
/* 80246CA4 00243BE4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80246CA8 00243BE8  7D 89 03 A6 */	mtctr r12
/* 80246CAC 00243BEC  4E 80 04 21 */	bctrl 
/* 80246CB0 00243BF0  38 1D 00 0C */	addi r0, r29, 0xc
/* 80246CB4 00243BF4  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80246CB8 00243BF8  80 63 00 04 */	lwz r3, 4(r3)
/* 80246CBC 00243BFC  38 80 02 00 */	li r4, 0x200
/* 80246CC0 00243C00  38 BC 00 15 */	addi r5, r28, 0x15
/* 80246CC4 00243C04  4C C6 31 82 */	crclr 6
/* 80246CC8 00243C08  48 0B 9A 85 */	bl J2DTextBox_NS_setString_X1_
/* 80246CCC 00243C0C  3B FF 00 01 */	addi r31, r31, 1
/* 80246CD0 00243C10  2C 1F 00 06 */	cmpwi r31, 6
/* 80246CD4 00243C14  3B BD 00 04 */	addi r29, r29, 4
/* 80246CD8 00243C18  3B 7B 00 08 */	addi r27, r27, 8
/* 80246CDC 00243C1C  41 80 FF 70 */	blt lbl_80246C4C
/* 80246CE0 00243C20  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80246CE4 00243C24  80 63 00 04 */	lwz r3, 4(r3)
/* 80246CE8 00243C28  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 80246CEC 00243C2C  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 80246CF0 00243C30  C0 03 01 20 */	lfs f0, 0x120(r3)
/* 80246CF4 00243C34  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 80246CF8 00243C38  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80246CFC 00243C3C  80 63 00 04 */	lwz r3, 4(r3)
/* 80246D00 00243C40  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80246D04 00243C44  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80246D08 00243C48  EC 01 00 28 */	fsubs f0, f1, f0
/* 80246D0C 00243C4C  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 80246D10 00243C50  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80246D14 00243C54  80 63 00 04 */	lwz r3, 4(r3)
/* 80246D18 00243C58  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80246D1C 00243C5C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80246D20 00243C60  EC 01 00 28 */	fsubs f0, f1, f0
/* 80246D24 00243C64  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 80246D28 00243C68  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80246D2C 00243C6C  80 63 00 04 */	lwz r3, 4(r3)
/* 80246D30 00243C70  C0 03 01 18 */	lfs f0, 0x118(r3)
/* 80246D34 00243C74  D0 1E 00 7C */	stfs f0, 0x7c(r30)
/* 80246D38 00243C78  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80246D3C 00243C7C  80 63 00 04 */	lwz r3, 4(r3)
/* 80246D40 00243C80  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 80246D44 00243C84  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 80246D48 00243C88  3B 40 00 00 */	li r26, 0
/* 80246D4C 00243C8C  3B E0 00 00 */	li r31, 0
lbl_80246D50:
/* 80246D50 00243C90  38 1F 00 0C */	addi r0, r31, 0xc
/* 80246D54 00243C94  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80246D58 00243C98  80 63 00 04 */	lwz r3, 4(r3)
/* 80246D5C 00243C9C  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80246D60 00243CA0  D0 03 01 18 */	stfs f0, 0x118(r3)
/* 80246D64 00243CA4  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80246D68 00243CA8  80 63 00 04 */	lwz r3, 4(r3)
/* 80246D6C 00243CAC  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80246D70 00243CB0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80246D74 00243CB4  EC 41 00 28 */	fsubs f2, f1, f0
/* 80246D78 00243CB8  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80246D7C 00243CBC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80246D80 00243CC0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80246D84 00243CC4  81 83 00 00 */	lwz r12, 0(r3)
/* 80246D88 00243CC8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80246D8C 00243CCC  7D 89 03 A6 */	mtctr r12
/* 80246D90 00243CD0  4E 80 04 21 */	bctrl 
/* 80246D94 00243CD4  3B 5A 00 01 */	addi r26, r26, 1
/* 80246D98 00243CD8  2C 1A 00 06 */	cmpwi r26, 6
/* 80246D9C 00243CDC  3B FF 00 04 */	addi r31, r31, 4
/* 80246DA0 00243CE0  41 80 FF B0 */	blt lbl_80246D50
/* 80246DA4 00243CE4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80246DA8 00243CE8  48 00 D5 41 */	bl CPaneMgr_NS_getGlobalPosX
/* 80246DAC 00243CEC  D0 3E 00 64 */	stfs f1, 0x64(r30)
/* 80246DB0 00243CF0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80246DB4 00243CF4  48 00 D5 B1 */	bl CPaneMgr_NS_getGlobalPosY
/* 80246DB8 00243CF8  D0 3E 00 68 */	stfs f1, 0x68(r30)
/* 80246DBC 00243CFC  7F C3 F3 78 */	mr r3, r30
/* 80246DC0 00243D00  39 61 00 20 */	addi r11, r1, 0x20
/* 80246DC4 00243D04  48 11 B4 59 */	bl _restgpr_26
/* 80246DC8 00243D08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80246DCC 00243D0C  7C 08 03 A6 */	mtlr r0
/* 80246DD0 00243D10  38 21 00 20 */	addi r1, r1, 0x20
/* 80246DD4 00243D14  4E 80 00 20 */	blr 
/* 80246DD8 00243D18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80246DDC 00243D1C  7C 08 02 A6 */	mflr r0
/* 80246DE0 00243D20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80246DE4 00243D24  39 61 00 20 */	addi r11, r1, 0x20
/* 80246DE8 00243D28  48 11 B3 E9 */	bl _savegpr_26
/* 80246DEC 00243D2C  7C 7A 1B 79 */	or. r26, r3, r3
/* 80246DF0 00243D30  7C 9B 23 78 */	mr r27, r4
/* 80246DF4 00243D34  41 82 00 D8 */	beq lbl_80246ECC
/* 80246DF8 00243D38  3C 60 80 3C */	lis r3, lbl_803C1370@ha
/* 80246DFC 00243D3C  38 03 13 70 */	addi r0, r3, lbl_803C1370@l
/* 80246E00 00243D40  90 1A 00 00 */	stw r0, 0(r26)
/* 80246E04 00243D44  80 7A 00 04 */	lwz r3, 4(r26)
/* 80246E08 00243D48  28 03 00 00 */	cmplwi r3, 0
/* 80246E0C 00243D4C  41 82 00 18 */	beq lbl_80246E24
/* 80246E10 00243D50  38 80 00 01 */	li r4, 1
/* 80246E14 00243D54  81 83 00 00 */	lwz r12, 0(r3)
/* 80246E18 00243D58  81 8C 00 08 */	lwz r12, 8(r12)
/* 80246E1C 00243D5C  7D 89 03 A6 */	mtctr r12
/* 80246E20 00243D60  4E 80 04 21 */	bctrl 
lbl_80246E24:
/* 80246E24 00243D64  38 00 00 00 */	li r0, 0
/* 80246E28 00243D68  90 1A 00 04 */	stw r0, 4(r26)
/* 80246E2C 00243D6C  80 7A 00 08 */	lwz r3, 8(r26)
/* 80246E30 00243D70  28 03 00 00 */	cmplwi r3, 0
/* 80246E34 00243D74  41 82 00 18 */	beq lbl_80246E4C
/* 80246E38 00243D78  38 80 00 01 */	li r4, 1
/* 80246E3C 00243D7C  81 83 00 00 */	lwz r12, 0(r3)
/* 80246E40 00243D80  81 8C 00 08 */	lwz r12, 8(r12)
/* 80246E44 00243D84  7D 89 03 A6 */	mtctr r12
/* 80246E48 00243D88  4E 80 04 21 */	bctrl 
lbl_80246E4C:
/* 80246E4C 00243D8C  3B C0 00 00 */	li r30, 0
/* 80246E50 00243D90  93 DA 00 08 */	stw r30, 8(r26)
/* 80246E54 00243D94  3B 80 00 00 */	li r28, 0
/* 80246E58 00243D98  7F DF F3 78 */	mr r31, r30
lbl_80246E5C:
/* 80246E5C 00243D9C  3B BF 00 0C */	addi r29, r31, 0xc
/* 80246E60 00243DA0  7C 7A E8 2E */	lwzx r3, r26, r29
/* 80246E64 00243DA4  28 03 00 00 */	cmplwi r3, 0
/* 80246E68 00243DA8  41 82 00 18 */	beq lbl_80246E80
/* 80246E6C 00243DAC  38 80 00 01 */	li r4, 1
/* 80246E70 00243DB0  81 83 00 00 */	lwz r12, 0(r3)
/* 80246E74 00243DB4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80246E78 00243DB8  7D 89 03 A6 */	mtctr r12
/* 80246E7C 00243DBC  4E 80 04 21 */	bctrl 
lbl_80246E80:
/* 80246E80 00243DC0  7F DA E9 2E */	stwx r30, r26, r29
/* 80246E84 00243DC4  3B 9C 00 01 */	addi r28, r28, 1
/* 80246E88 00243DC8  2C 1C 00 06 */	cmpwi r28, 6
/* 80246E8C 00243DCC  3B FF 00 04 */	addi r31, r31, 4
/* 80246E90 00243DD0  41 80 FF CC */	blt lbl_80246E5C
/* 80246E94 00243DD4  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80246E98 00243DD8  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80246E9C 00243DDC  80 63 5C 84 */	lwz r3, 0x5c84(r3)
/* 80246EA0 00243DE0  81 83 00 00 */	lwz r12, 0(r3)
/* 80246EA4 00243DE4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80246EA8 00243DE8  7D 89 03 A6 */	mtctr r12
/* 80246EAC 00243DEC  4E 80 04 21 */	bctrl 
/* 80246EB0 00243DF0  7F 43 D3 78 */	mr r3, r26
/* 80246EB4 00243DF4  38 80 00 00 */	li r4, 0
/* 80246EB8 00243DF8  4B FF 52 6D */	bl dMsgScrnBase_c_NS_dtor
/* 80246EBC 00243DFC  7F 60 07 35 */	extsh. r0, r27
/* 80246EC0 00243E00  40 81 00 0C */	ble lbl_80246ECC
/* 80246EC4 00243E04  7F 43 D3 78 */	mr r3, r26
/* 80246EC8 00243E08  48 08 7E 75 */	bl __dl__FPv
lbl_80246ECC:
/* 80246ECC 00243E0C  7F 43 D3 78 */	mr r3, r26
/* 80246ED0 00243E10  39 61 00 20 */	addi r11, r1, 0x20
/* 80246ED4 00243E14  48 11 B3 49 */	bl _restgpr_26
/* 80246ED8 00243E18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80246EDC 00243E1C  7C 08 03 A6 */	mtlr r0
/* 80246EE0 00243E20  38 21 00 20 */	addi r1, r1, 0x20
/* 80246EE4 00243E24  4E 80 00 20 */	blr 
/* 80246EE8 00243E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80246EEC 00243E2C  7C 08 02 A6 */	mflr r0
/* 80246EF0 00243E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80246EF4 00243E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80246EF8 00243E38  7C 7F 1B 78 */	mr r31, r3
/* 80246EFC 00243E3C  3C 60 80 43 */	lis r3, lbl_8043028C@ha
/* 80246F00 00243E40  38 83 02 8C */	addi r4, r3, lbl_8043028C@l
/* 80246F04 00243E44  C0 24 00 BC */	lfs f1, 0xbc(r4)
/* 80246F08 00243E48  80 7F 00 08 */	lwz r3, 8(r31)
/* 80246F0C 00243E4C  80 63 00 04 */	lwz r3, 4(r3)
/* 80246F10 00243E50  C0 04 00 90 */	lfs f0, 0x90(r4)
/* 80246F14 00243E54  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80246F18 00243E58  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80246F1C 00243E5C  81 83 00 00 */	lwz r12, 0(r3)
/* 80246F20 00243E60  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80246F24 00243E64  7D 89 03 A6 */	mtctr r12
/* 80246F28 00243E68  4E 80 04 21 */	bctrl 
/* 80246F2C 00243E6C  7F E3 FB 78 */	mr r3, r31
/* 80246F30 00243E70  4B FF 56 45 */	bl dMsgScrnBase_c_NS_isTalkNow
/* 80246F34 00243E74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80246F38 00243E78  41 82 00 1C */	beq lbl_80246F54
/* 80246F3C 00243E7C  7F E3 FB 78 */	mr r3, r31
/* 80246F40 00243E80  C0 22 B2 FC */	lfs f1, lbl_80454CFC-_SDA2_BASE_(r2)
/* 80246F44 00243E84  81 9F 00 00 */	lwz r12, 0(r31)
/* 80246F48 00243E88  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80246F4C 00243E8C  7D 89 03 A6 */	mtctr r12
/* 80246F50 00243E90  4E 80 04 21 */	bctrl 
lbl_80246F54:
/* 80246F54 00243E94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80246F58 00243E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80246F5C 00243E9C  7C 08 03 A6 */	mtlr r0
/* 80246F60 00243EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80246F64 00243EA4  4E 80 00 20 */	blr 
/* 80246F68 00243EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80246F6C 00243EAC  7C 08 02 A6 */	mflr r0
/* 80246F70 00243EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80246F74 00243EB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80246F78 00243EB8  7C 7F 1B 78 */	mr r31, r3
/* 80246F7C 00243EBC  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80246F80 00243EC0  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80246F84 00243EC4  80 63 5F 50 */	lwz r3, 0x5f50(r3)
/* 80246F88 00243EC8  81 83 00 00 */	lwz r12, 0(r3)
/* 80246F8C 00243ECC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80246F90 00243ED0  7D 89 03 A6 */	mtctr r12
/* 80246F94 00243ED4  4E 80 04 21 */	bctrl 
/* 80246F98 00243ED8  7F E3 FB 78 */	mr r3, r31
/* 80246F9C 00243EDC  C0 22 B2 F8 */	lfs f1, lbl_80454CF8-_SDA2_BASE_(r2)
/* 80246FA0 00243EE0  FC 40 08 90 */	fmr f2, f1
/* 80246FA4 00243EE4  C0 62 B2 FC */	lfs f3, lbl_80454CFC-_SDA2_BASE_(r2)
/* 80246FA8 00243EE8  4B FF 53 85 */	bl dMsgScrnBase_c_NS_drawOutFont
/* 80246FAC 00243EEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80246FB0 00243EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80246FB4 00243EF4  7C 08 03 A6 */	mtlr r0
/* 80246FB8 00243EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80246FBC 00243EFC  4E 80 00 20 */	blr 
/* 80246FC0 00243F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80246FC4 00243F04  7C 08 02 A6 */	mflr r0
/* 80246FC8 00243F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80246FCC 00243F0C  80 63 00 08 */	lwz r3, 8(r3)
/* 80246FD0 00243F10  48 00 E8 01 */	bl CPaneMgrAlpha_NS_setAlphaRate
/* 80246FD4 00243F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80246FD8 00243F18  7C 08 03 A6 */	mtlr r0
/* 80246FDC 00243F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80246FE0 00243F20  4E 80 00 20 */	blr 
/* 80246FE4 00243F24  4E 80 00 20 */	blr 
/* 80246FE8 00243F28  4E 80 00 20 */	blr 
/* 80246FEC 00243F2C  4E 80 00 20 */	blr 

