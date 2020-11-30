.include "macros.inc"

.section .text, "ax" # 8009bbd8


.global dTres_c_NS_createWork
dTres_c_NS_createWork:
/* 8009BBD8 00098B18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009BBDC 00098B1C  7C 08 02 A6 */	mflr r0
/* 8009BBE0 00098B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009BBE4 00098B24  38 60 07 10 */	li r3, 0x710
/* 8009BBE8 00098B28  48 23 30 DD */	bl __nwa__FUl
/* 8009BBEC 00098B2C  38 80 00 00 */	li r4, 0
/* 8009BBF0 00098B30  38 A0 00 00 */	li r5, 0
/* 8009BBF4 00098B34  38 C0 00 1C */	li r6, 0x1c
/* 8009BBF8 00098B38  38 E0 00 40 */	li r7, 0x40
/* 8009BBFC 00098B3C  48 2C 63 19 */	bl func_80361F14
/* 8009BC00 00098B40  90 6D 8A 18 */	stw r3, lbl_80450F98-_SDA_BASE_(r13)
/* 8009BC04 00098B44  38 60 00 01 */	li r3, 1
/* 8009BC08 00098B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009BC0C 00098B4C  7C 08 03 A6 */	mtlr r0
/* 8009BC10 00098B50  38 21 00 10 */	addi r1, r1, 0x10
/* 8009BC14 00098B54  4E 80 00 20 */	blr 

.global dTres_c_NS_create
dTres_c_NS_create:
/* 8009BC18 00098B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009BC1C 00098B5C  7C 08 02 A6 */	mflr r0
/* 8009BC20 00098B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009BC24 00098B64  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 8009BC28 00098B68  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 8009BC2C 00098B6C  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8009BC30 00098B70  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8009BC34 00098B74  7D 89 03 A6 */	mtctr r12
/* 8009BC38 00098B78  4E 80 04 21 */	bctrl 
/* 8009BC3C 00098B7C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8009BC40 00098B80  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 8009BC44 00098B84  28 00 00 03 */	cmplwi r0, 3
/* 8009BC48 00098B88  41 82 00 08 */	beq lbl_8009BC50
/* 8009BC4C 00098B8C  48 00 00 21 */	bl dTres_c_NS_reset
lbl_8009BC50:
/* 8009BC50 00098B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009BC54 00098B94  7C 08 03 A6 */	mtlr r0
/* 8009BC58 00098B98  38 21 00 10 */	addi r1, r1, 0x10
/* 8009BC5C 00098B9C  4E 80 00 20 */	blr 

.global dTres_c_NS_remove
dTres_c_NS_remove:
/* 8009BC60 00098BA0  38 00 00 01 */	li r0, 1
/* 8009BC64 00098BA4  98 0D 81 00 */	stb r0, lbl_80450680-_SDA_BASE_(r13)
/* 8009BC68 00098BA8  4E 80 00 20 */	blr 

.global dTres_c_NS_reset
dTres_c_NS_reset:
/* 8009BC6C 00098BAC  88 0D 81 00 */	lbz r0, lbl_80450680-_SDA_BASE_(r13)
/* 8009BC70 00098BB0  28 00 00 00 */	cmplwi r0, 0
/* 8009BC74 00098BB4  4D 82 00 20 */	beqlr 
/* 8009BC78 00098BB8  38 A0 00 00 */	li r5, 0
/* 8009BC7C 00098BBC  B0 AD 8A 1C */	sth r5, lbl_80450F9C-_SDA_BASE_(r13)
/* 8009BC80 00098BC0  98 AD 81 00 */	stb r5, lbl_80450680-_SDA_BASE_(r13)
/* 8009BC84 00098BC4  7C A3 2B 78 */	mr r3, r5
/* 8009BC88 00098BC8  3C 80 80 42 */	lis r4, lbl_80425438@ha
/* 8009BC8C 00098BCC  38 84 54 38 */	addi r4, r4, lbl_80425438@l
/* 8009BC90 00098BD0  38 00 00 11 */	li r0, 0x11
/* 8009BC94 00098BD4  7C 09 03 A6 */	mtctr r0
lbl_8009BC98:
/* 8009BC98 00098BD8  7C C4 1A 14 */	add r6, r4, r3
/* 8009BC9C 00098BDC  90 A6 00 00 */	stw r5, 0(r6)
/* 8009BCA0 00098BE0  90 A6 00 04 */	stw r5, 4(r6)
/* 8009BCA4 00098BE4  98 A6 00 08 */	stb r5, 8(r6)
/* 8009BCA8 00098BE8  38 63 00 0C */	addi r3, r3, 0xc
/* 8009BCAC 00098BEC  42 00 FF EC */	bdnz lbl_8009BC98
/* 8009BCB0 00098BF0  4E 80 00 20 */	blr 

.global dTres_c_NS_addData
dTres_c_NS_addData:
/* 8009BCB4 00098BF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009BCB8 00098BF8  7C 08 02 A6 */	mflr r0
/* 8009BCBC 00098BFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009BCC0 00098C00  39 61 00 20 */	addi r11, r1, 0x20
/* 8009BCC4 00098C04  48 2C 65 0D */	bl _savegpr_26
/* 8009BCC8 00098C08  7C 7B 1B 78 */	mr r27, r3
/* 8009BCCC 00098C0C  7C 9C 23 78 */	mr r28, r4
/* 8009BCD0 00098C10  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 8009BCD4 00098C14  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 8009BCD8 00098C18  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8009BCDC 00098C1C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8009BCE0 00098C20  7D 89 03 A6 */	mtctr r12
/* 8009BCE4 00098C24  4E 80 04 21 */	bctrl 
/* 8009BCE8 00098C28  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8009BCEC 00098C2C  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 8009BCF0 00098C30  28 00 00 03 */	cmplwi r0, 3
/* 8009BCF4 00098C34  41 82 01 1C */	beq lbl_8009BE10
/* 8009BCF8 00098C38  4B FF FF 75 */	bl dTres_c_NS_reset
/* 8009BCFC 00098C3C  83 FB 00 04 */	lwz r31, 4(r27)
/* 8009BD00 00098C40  80 6D 8A 18 */	lwz r3, lbl_80450F98-_SDA_BASE_(r13)
/* 8009BD04 00098C44  A0 0D 8A 1C */	lhz r0, lbl_80450F9C-_SDA_BASE_(r13)
/* 8009BD08 00098C48  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 8009BD0C 00098C4C  7F C3 02 14 */	add r30, r3, r0
/* 8009BD10 00098C50  3B A0 00 00 */	li r29, 0
/* 8009BD14 00098C54  3C 60 80 42 */	lis r3, lbl_80425438@ha
/* 8009BD18 00098C58  3B 43 54 38 */	addi r26, r3, lbl_80425438@l
/* 8009BD1C 00098C5C  48 00 00 E8 */	b lbl_8009BE04
lbl_8009BD20:
/* 8009BD20 00098C60  88 1F 00 00 */	lbz r0, 0(r31)
/* 8009BD24 00098C64  98 1E 00 00 */	stb r0, 0(r30)
/* 8009BD28 00098C68  88 1F 00 01 */	lbz r0, 1(r31)
/* 8009BD2C 00098C6C  98 1E 00 01 */	stb r0, 1(r30)
/* 8009BD30 00098C70  88 1F 00 02 */	lbz r0, 2(r31)
/* 8009BD34 00098C74  98 1E 00 02 */	stb r0, 2(r30)
/* 8009BD38 00098C78  88 1F 00 03 */	lbz r0, 3(r31)
/* 8009BD3C 00098C7C  98 1E 00 03 */	stb r0, 3(r30)
/* 8009BD40 00098C80  80 7F 00 04 */	lwz r3, 4(r31)
/* 8009BD44 00098C84  80 1F 00 08 */	lwz r0, 8(r31)
/* 8009BD48 00098C88  90 7E 00 04 */	stw r3, 4(r30)
/* 8009BD4C 00098C8C  90 1E 00 08 */	stw r0, 8(r30)
/* 8009BD50 00098C90  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8009BD54 00098C94  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8009BD58 00098C98  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8009BD5C 00098C9C  98 1E 00 10 */	stb r0, 0x10(r30)
/* 8009BD60 00098CA0  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 8009BD64 00098CA4  98 1E 00 11 */	stb r0, 0x11(r30)
/* 8009BD68 00098CA8  88 1F 00 12 */	lbz r0, 0x12(r31)
/* 8009BD6C 00098CAC  98 1E 00 12 */	stb r0, 0x12(r30)
/* 8009BD70 00098CB0  88 1F 00 13 */	lbz r0, 0x13(r31)
/* 8009BD74 00098CB4  98 1E 00 13 */	stb r0, 0x13(r30)
/* 8009BD78 00098CB8  9B 9E 00 01 */	stb r28, 1(r30)
/* 8009BD7C 00098CBC  38 00 00 00 */	li r0, 0
/* 8009BD80 00098CC0  98 1E 00 02 */	stb r0, 2(r30)
/* 8009BD84 00098CC4  88 7E 00 11 */	lbz r3, 0x11(r30)
/* 8009BD88 00098CC8  48 00 07 29 */	bl dTres_c_NS_getTypeToTypeGroupNo
/* 8009BD8C 00098CCC  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8009BD90 00098CD0  38 00 00 00 */	li r0, 0
/* 8009BD94 00098CD4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8009BD98 00098CD8  98 7E 00 18 */	stb r3, 0x18(r30)
/* 8009BD9C 00098CDC  1C 04 00 0C */	mulli r0, r4, 0xc
/* 8009BDA0 00098CE0  7C 9A 02 14 */	add r4, r26, r0
/* 8009BDA4 00098CE4  80 04 00 00 */	lwz r0, 0(r4)
/* 8009BDA8 00098CE8  28 00 00 00 */	cmplwi r0, 0
/* 8009BDAC 00098CEC  40 82 00 08 */	bne lbl_8009BDB4
/* 8009BDB0 00098CF0  93 C4 00 00 */	stw r30, 0(r4)
lbl_8009BDB4:
/* 8009BDB4 00098CF4  80 64 00 04 */	lwz r3, 4(r4)
/* 8009BDB8 00098CF8  28 03 00 00 */	cmplwi r3, 0
/* 8009BDBC 00098CFC  41 82 00 08 */	beq lbl_8009BDC4
/* 8009BDC0 00098D00  93 C3 00 14 */	stw r30, 0x14(r3)
lbl_8009BDC4:
/* 8009BDC4 00098D04  93 C4 00 04 */	stw r30, 4(r4)
/* 8009BDC8 00098D08  88 64 00 08 */	lbz r3, 8(r4)
/* 8009BDCC 00098D0C  38 03 00 01 */	addi r0, r3, 1
/* 8009BDD0 00098D10  98 04 00 08 */	stb r0, 8(r4)
/* 8009BDD4 00098D14  88 1E 00 11 */	lbz r0, 0x11(r30)
/* 8009BDD8 00098D18  2C 00 00 FF */	cmpwi r0, 0xff
/* 8009BDDC 00098D1C  41 82 00 08 */	beq lbl_8009BDE4
/* 8009BDE0 00098D20  48 00 00 0C */	b lbl_8009BDEC
lbl_8009BDE4:
/* 8009BDE4 00098D24  7F C3 F3 78 */	mr r3, r30
/* 8009BDE8 00098D28  48 00 00 41 */	bl dTres_c_NS_checkTreasureBox
lbl_8009BDEC:
/* 8009BDEC 00098D2C  A0 6D 8A 1C */	lhz r3, lbl_80450F9C-_SDA_BASE_(r13)
/* 8009BDF0 00098D30  38 03 00 01 */	addi r0, r3, 1
/* 8009BDF4 00098D34  B0 0D 8A 1C */	sth r0, lbl_80450F9C-_SDA_BASE_(r13)
/* 8009BDF8 00098D38  3B BD 00 01 */	addi r29, r29, 1
/* 8009BDFC 00098D3C  3B FF 00 14 */	addi r31, r31, 0x14
/* 8009BE00 00098D40  3B DE 00 1C */	addi r30, r30, 0x1c
lbl_8009BE04:
/* 8009BE04 00098D44  80 1B 00 00 */	lwz r0, 0(r27)
/* 8009BE08 00098D48  7C 1D 00 00 */	cmpw r29, r0
/* 8009BE0C 00098D4C  41 80 FF 14 */	blt lbl_8009BD20
lbl_8009BE10:
/* 8009BE10 00098D50  39 61 00 20 */	addi r11, r1, 0x20
/* 8009BE14 00098D54  48 2C 64 09 */	bl _restgpr_26
/* 8009BE18 00098D58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009BE1C 00098D5C  7C 08 03 A6 */	mtlr r0
/* 8009BE20 00098D60  38 21 00 20 */	addi r1, r1, 0x20
/* 8009BE24 00098D64  4E 80 00 20 */	blr 

.global dTres_c_NS_checkTreasureBox
dTres_c_NS_checkTreasureBox:
/* 8009BE28 00098D68  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8009BE2C 00098D6C  7C 08 02 A6 */	mflr r0
/* 8009BE30 00098D70  90 01 00 74 */	stw r0, 0x74(r1)
/* 8009BE34 00098D74  39 61 00 70 */	addi r11, r1, 0x70
/* 8009BE38 00098D78  48 2C 63 99 */	bl _savegpr_26
/* 8009BE3C 00098D7C  7C 7D 1B 78 */	mr r29, r3
/* 8009BE40 00098D80  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8009BE44 00098D84  28 00 00 FF */	cmplwi r0, 0xff
/* 8009BE48 00098D88  41 82 03 08 */	beq lbl_8009C150
/* 8009BE4C 00098D8C  88 7D 00 03 */	lbz r3, 3(r29)
/* 8009BE50 00098D90  28 03 00 FF */	cmplwi r3, 0xff
/* 8009BE54 00098D94  41 82 02 FC */	beq lbl_8009C150
/* 8009BE58 00098D98  38 80 FF FF */	li r4, -1
/* 8009BE5C 00098D9C  4B FB 59 91 */	bl dPath_GetRoomPath
/* 8009BE60 00098DA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8009BE64 00098DA4  41 82 02 EC */	beq lbl_8009C150
/* 8009BE68 00098DA8  88 1D 00 12 */	lbz r0, 0x12(r29)
/* 8009BE6C 00098DAC  28 00 00 00 */	cmplwi r0, 0
/* 8009BE70 00098DB0  40 82 02 80 */	bne lbl_8009C0F0
/* 8009BE74 00098DB4  3B 60 00 00 */	li r27, 0
/* 8009BE78 00098DB8  3B 40 00 00 */	li r26, 0
/* 8009BE7C 00098DBC  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 8009BE80 00098DC0  3B 83 61 C0 */	addi r28, r3, lbl_804061C0@l
/* 8009BE84 00098DC4  3B C0 00 01 */	li r30, 1
lbl_8009BE88:
/* 8009BE88 00098DC8  7F 83 E3 78 */	mr r3, r28
/* 8009BE8C 00098DCC  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 8009BE90 00098DD0  7C 80 D2 14 */	add r4, r0, r26
/* 8009BE94 00098DD4  88 BD 00 01 */	lbz r5, 1(r29)
/* 8009BE98 00098DD8  7C A5 07 74 */	extsb r5, r5
/* 8009BE9C 00098DDC  4B F9 94 C5 */	bl isSwitch__10dSv_info_cCFii
/* 8009BEA0 00098DE0  20 03 00 00 */	subfic r0, r3, 0
/* 8009BEA4 00098DE4  7C 60 01 10 */	subfe r3, r0, r0
/* 8009BEA8 00098DE8  7F C0 D0 30 */	slw r0, r30, r26
/* 8009BEAC 00098DEC  7C 00 18 38 */	and r0, r0, r3
/* 8009BEB0 00098DF0  7C 1B 02 14 */	add r0, r27, r0
/* 8009BEB4 00098DF4  7C 1B 07 34 */	extsh r27, r0
/* 8009BEB8 00098DF8  3B 5A 00 01 */	addi r26, r26, 1
/* 8009BEBC 00098DFC  2C 1A 00 04 */	cmpwi r26, 4
/* 8009BEC0 00098E00  41 80 FF C8 */	blt lbl_8009BE88
/* 8009BEC4 00098E04  7F 60 07 35 */	extsh. r0, r27
/* 8009BEC8 00098E08  41 82 01 FC */	beq lbl_8009C0C4
/* 8009BECC 00098E0C  C0 42 91 E8 */	lfs f2, lbl_80452BE8-_SDA2_BASE_(r2)
/* 8009BED0 00098E10  38 1B FF FF */	addi r0, r27, -1
/* 8009BED4 00098E14  1C 60 00 18 */	mulli r3, r0, 0x18
/* 8009BED8 00098E18  38 03 00 0C */	addi r0, r3, 0xc
/* 8009BEDC 00098E1C  C8 22 92 08 */	lfd f1, lbl_80452C08-_SDA2_BASE_(r2)
/* 8009BEE0 00098E20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8009BEE4 00098E24  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8009BEE8 00098E28  3C 00 43 30 */	lis r0, 0x4330
/* 8009BEEC 00098E2C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8009BEF0 00098E30  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8009BEF4 00098E34  EC 00 08 28 */	fsubs f0, f0, f1
/* 8009BEF8 00098E38  EC 02 00 32 */	fmuls f0, f2, f0
/* 8009BEFC 00098E3C  FC 00 00 1E */	fctiwz f0, f0
/* 8009BF00 00098E40  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8009BF04 00098E44  83 C1 00 54 */	lwz r30, 0x54(r1)
/* 8009BF08 00098E48  80 9F 00 08 */	lwz r4, 8(r31)
/* 8009BF0C 00098E4C  C0 84 00 04 */	lfs f4, 4(r4)
/* 8009BF10 00098E50  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8009BF14 00098E54  C0 04 00 08 */	lfs f0, 8(r4)
/* 8009BF18 00098E58  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8009BF1C 00098E5C  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 8009BF20 00098E60  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 8009BF24 00098E64  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8009BF28 00098E68  38 03 FF FF */	addi r0, r3, -1
/* 8009BF2C 00098E6C  54 03 20 36 */	slwi r3, r0, 4
/* 8009BF30 00098E70  38 63 00 04 */	addi r3, r3, 4
/* 8009BF34 00098E74  7C 64 1A 14 */	add r3, r4, r3
/* 8009BF38 00098E78  C0 43 00 00 */	lfs f2, 0(r3)
/* 8009BF3C 00098E7C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8009BF40 00098E80  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009BF44 00098E84  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8009BF48 00098E88  C0 23 00 08 */	lfs f1, 8(r3)
/* 8009BF4C 00098E8C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8009BF50 00098E90  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8009BF54 00098E94  C0 02 91 EC */	lfs f0, lbl_80452BEC-_SDA2_BASE_(r2)
/* 8009BF58 00098E98  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8009BF5C 00098E9C  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8009BF60 00098EA0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8009BF64 00098EA4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8009BF68 00098EA8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8009BF6C 00098EAC  38 61 00 0C */	addi r3, r1, 0xc
/* 8009BF70 00098EB0  38 81 00 18 */	addi r4, r1, 0x18
/* 8009BF74 00098EB4  48 2A B4 29 */	bl PSVECSquareDistance
/* 8009BF78 00098EB8  C0 02 91 EC */	lfs f0, lbl_80452BEC-_SDA2_BASE_(r2)
/* 8009BF7C 00098EBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009BF80 00098EC0  40 81 00 58 */	ble lbl_8009BFD8
/* 8009BF84 00098EC4  FC 00 08 34 */	frsqrte f0, f1
/* 8009BF88 00098EC8  C8 82 91 F0 */	lfd f4, lbl_80452BF0-_SDA2_BASE_(r2)
/* 8009BF8C 00098ECC  FC 44 00 32 */	fmul f2, f4, f0
/* 8009BF90 00098ED0  C8 62 91 F8 */	lfd f3, lbl_80452BF8-_SDA2_BASE_(r2)
/* 8009BF94 00098ED4  FC 00 00 32 */	fmul f0, f0, f0
/* 8009BF98 00098ED8  FC 01 00 32 */	fmul f0, f1, f0
/* 8009BF9C 00098EDC  FC 03 00 28 */	fsub f0, f3, f0
/* 8009BFA0 00098EE0  FC 02 00 32 */	fmul f0, f2, f0
/* 8009BFA4 00098EE4  FC 44 00 32 */	fmul f2, f4, f0
/* 8009BFA8 00098EE8  FC 00 00 32 */	fmul f0, f0, f0
/* 8009BFAC 00098EEC  FC 01 00 32 */	fmul f0, f1, f0
/* 8009BFB0 00098EF0  FC 03 00 28 */	fsub f0, f3, f0
/* 8009BFB4 00098EF4  FC 02 00 32 */	fmul f0, f2, f0
/* 8009BFB8 00098EF8  FC 44 00 32 */	fmul f2, f4, f0
/* 8009BFBC 00098EFC  FC 00 00 32 */	fmul f0, f0, f0
/* 8009BFC0 00098F00  FC 01 00 32 */	fmul f0, f1, f0
/* 8009BFC4 00098F04  FC 03 00 28 */	fsub f0, f3, f0
/* 8009BFC8 00098F08  FC 02 00 32 */	fmul f0, f2, f0
/* 8009BFCC 00098F0C  FC 21 00 32 */	fmul f1, f1, f0
/* 8009BFD0 00098F10  FC 20 08 18 */	frsp f1, f1
/* 8009BFD4 00098F14  48 00 00 88 */	b lbl_8009C05C
lbl_8009BFD8:
/* 8009BFD8 00098F18  C8 02 92 00 */	lfd f0, lbl_80452C00-_SDA2_BASE_(r2)
/* 8009BFDC 00098F1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009BFE0 00098F20  40 80 00 10 */	bge lbl_8009BFF0
/* 8009BFE4 00098F24  3C 60 80 45 */	lis r3, lbl_80450AE0@ha
/* 8009BFE8 00098F28  C0 23 0A E0 */	lfs f1, lbl_80450AE0@l(r3)
/* 8009BFEC 00098F2C  48 00 00 70 */	b lbl_8009C05C
lbl_8009BFF0:
/* 8009BFF0 00098F30  D0 21 00 08 */	stfs f1, 8(r1)
/* 8009BFF4 00098F34  80 81 00 08 */	lwz r4, 8(r1)
/* 8009BFF8 00098F38  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8009BFFC 00098F3C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8009C000 00098F40  7C 03 00 00 */	cmpw r3, r0
/* 8009C004 00098F44  41 82 00 14 */	beq lbl_8009C018
/* 8009C008 00098F48  40 80 00 40 */	bge lbl_8009C048
/* 8009C00C 00098F4C  2C 03 00 00 */	cmpwi r3, 0
/* 8009C010 00098F50  41 82 00 20 */	beq lbl_8009C030
/* 8009C014 00098F54  48 00 00 34 */	b lbl_8009C048
lbl_8009C018:
/* 8009C018 00098F58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8009C01C 00098F5C  41 82 00 0C */	beq lbl_8009C028
/* 8009C020 00098F60  38 00 00 01 */	li r0, 1
/* 8009C024 00098F64  48 00 00 28 */	b lbl_8009C04C
lbl_8009C028:
/* 8009C028 00098F68  38 00 00 02 */	li r0, 2
/* 8009C02C 00098F6C  48 00 00 20 */	b lbl_8009C04C
lbl_8009C030:
/* 8009C030 00098F70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8009C034 00098F74  41 82 00 0C */	beq lbl_8009C040
/* 8009C038 00098F78  38 00 00 05 */	li r0, 5
/* 8009C03C 00098F7C  48 00 00 10 */	b lbl_8009C04C
lbl_8009C040:
/* 8009C040 00098F80  38 00 00 03 */	li r0, 3
/* 8009C044 00098F84  48 00 00 08 */	b lbl_8009C04C
lbl_8009C048:
/* 8009C048 00098F88  38 00 00 04 */	li r0, 4
lbl_8009C04C:
/* 8009C04C 00098F8C  2C 00 00 01 */	cmpwi r0, 1
/* 8009C050 00098F90  40 82 00 0C */	bne lbl_8009C05C
/* 8009C054 00098F94  3C 60 80 45 */	lis r3, lbl_80450AE0@ha
/* 8009C058 00098F98  C0 23 0A E0 */	lfs f1, lbl_80450AE0@l(r3)
lbl_8009C05C:
/* 8009C05C 00098F9C  C0 02 91 EC */	lfs f0, lbl_80452BEC-_SDA2_BASE_(r2)
/* 8009C060 00098FA0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8009C064 00098FA4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8009C068 00098FA8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8009C06C 00098FAC  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 8009C070 00098FB0  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 8009C074 00098FB4  7F C4 F3 78 */	mr r4, r30
/* 8009C078 00098FB8  4B F7 03 65 */	bl mDoMtx_YrotS
/* 8009C07C 00098FBC  3C 60 80 3E */	lis r3, lbl_803DD470@ha
/* 8009C080 00098FC0  38 63 D4 70 */	addi r3, r3, lbl_803DD470@l
/* 8009C084 00098FC4  38 81 00 24 */	addi r4, r1, 0x24
/* 8009C088 00098FC8  7C 85 23 78 */	mr r5, r4
/* 8009C08C 00098FCC  48 2A AC E1 */	bl PSMTXMultVec
/* 8009C090 00098FD0  38 61 00 24 */	addi r3, r1, 0x24
/* 8009C094 00098FD4  38 81 00 3C */	addi r4, r1, 0x3c
/* 8009C098 00098FD8  7C 65 1B 78 */	mr r5, r3
/* 8009C09C 00098FDC  48 2A AF F5 */	bl PSVECAdd
/* 8009C0A0 00098FE0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8009C0A4 00098FE4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8009C0A8 00098FE8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8009C0AC 00098FEC  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8009C0B0 00098FF0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8009C0B4 00098FF4  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8009C0B8 00098FF8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8009C0BC 00098FFC  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8009C0C0 00099000  48 00 00 20 */	b lbl_8009C0E0
lbl_8009C0C4:
/* 8009C0C4 00099004  80 7F 00 08 */	lwz r3, 8(r31)
/* 8009C0C8 00099008  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009C0CC 0009900C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8009C0D0 00099010  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009C0D4 00099014  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8009C0D8 00099018  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8009C0DC 0009901C  D0 1D 00 0C */	stfs f0, 0xc(r29)
lbl_8009C0E0:
/* 8009C0E0 00099020  88 7D 00 01 */	lbz r3, 1(r29)
/* 8009C0E4 00099024  38 9D 00 04 */	addi r4, r29, 4
/* 8009C0E8 00099028  4B FA 2C 79 */	bl dMapInfo_n_NS_correctionOriginPos
/* 8009C0EC 0009902C  48 00 00 64 */	b lbl_8009C150
lbl_8009C0F0:
/* 8009C0F0 00099030  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 8009C0F4 00099034  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 8009C0F8 00099038  88 9D 00 10 */	lbz r4, 0x10(r29)
/* 8009C0FC 0009903C  88 BD 00 01 */	lbz r5, 1(r29)
/* 8009C100 00099040  7C A5 07 74 */	extsb r5, r5
/* 8009C104 00099044  4B F9 92 5D */	bl isSwitch__10dSv_info_cCFii
/* 8009C108 00099048  2C 03 00 00 */	cmpwi r3, 0
/* 8009C10C 0009904C  41 82 00 1C */	beq lbl_8009C128
/* 8009C110 00099050  80 9F 00 08 */	lwz r4, 8(r31)
/* 8009C114 00099054  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8009C118 00099058  38 03 FF FF */	addi r0, r3, -1
/* 8009C11C 0009905C  54 00 20 36 */	slwi r0, r0, 4
/* 8009C120 00099060  7C 64 02 14 */	add r3, r4, r0
/* 8009C124 00099064  48 00 00 08 */	b lbl_8009C12C
lbl_8009C128:
/* 8009C128 00099068  80 7F 00 08 */	lwz r3, 8(r31)
lbl_8009C12C:
/* 8009C12C 0009906C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009C130 00099070  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8009C134 00099074  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009C138 00099078  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8009C13C 0009907C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8009C140 00099080  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8009C144 00099084  88 7D 00 01 */	lbz r3, 1(r29)
/* 8009C148 00099088  38 9D 00 04 */	addi r4, r29, 4
/* 8009C14C 0009908C  4B FA 2C 15 */	bl dMapInfo_n_NS_correctionOriginPos
lbl_8009C150:
/* 8009C150 00099090  39 61 00 70 */	addi r11, r1, 0x70
/* 8009C154 00099094  48 2C 60 C9 */	bl _restgpr_26
/* 8009C158 00099098  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8009C15C 0009909C  7C 08 03 A6 */	mtlr r0
/* 8009C160 000990A0  38 21 00 70 */	addi r1, r1, 0x70
/* 8009C164 000990A4  4E 80 00 20 */	blr 
/* 8009C168 000990A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009C16C 000990AC  7C 08 02 A6 */	mflr r0
/* 8009C170 000990B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009C174 000990B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C178 000990B8  48 2C 60 61 */	bl _savegpr_28
/* 8009C17C 000990BC  7C 7D 1B 78 */	mr r29, r3
/* 8009C180 000990C0  7C 9C 23 78 */	mr r28, r4
/* 8009C184 000990C4  7C BF 2B 78 */	mr r31, r5
/* 8009C188 000990C8  48 00 01 D9 */	bl dTres_c_NS_getFirstData
/* 8009C18C 000990CC  3C 80 80 42 */	lis r4, lbl_80425438@ha
/* 8009C190 000990D0  38 84 54 38 */	addi r4, r4, lbl_80425438@l
/* 8009C194 000990D4  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8009C198 000990D8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8009C19C 000990DC  7C 84 02 14 */	add r4, r4, r0
/* 8009C1A0 000990E0  8B C4 00 08 */	lbz r30, 8(r4)
/* 8009C1A4 000990E4  3B A0 00 00 */	li r29, 0
/* 8009C1A8 000990E8  57 FF 06 3E */	clrlwi r31, r31, 0x18
/* 8009C1AC 000990EC  48 00 00 24 */	b lbl_8009C1D0
lbl_8009C1B0:
/* 8009C1B0 000990F0  88 03 00 00 */	lbz r0, 0(r3)
/* 8009C1B4 000990F4  7C 1C 00 00 */	cmpw r28, r0
/* 8009C1B8 000990F8  40 82 00 10 */	bne lbl_8009C1C8
/* 8009C1BC 000990FC  88 03 00 02 */	lbz r0, 2(r3)
/* 8009C1C0 00099100  7C 00 FB 78 */	or r0, r0, r31
/* 8009C1C4 00099104  98 03 00 02 */	stb r0, 2(r3)
lbl_8009C1C8:
/* 8009C1C8 00099108  48 00 01 D5 */	bl dTres_c_NS_getNextData
/* 8009C1CC 0009910C  3B BD 00 01 */	addi r29, r29, 1
lbl_8009C1D0:
/* 8009C1D0 00099110  7C 1D F0 00 */	cmpw r29, r30
/* 8009C1D4 00099114  41 80 FF DC */	blt lbl_8009C1B0
/* 8009C1D8 00099118  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C1DC 0009911C  48 2C 60 49 */	bl _restgpr_28
/* 8009C1E0 00099120  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009C1E4 00099124  7C 08 03 A6 */	mtlr r0
/* 8009C1E8 00099128  38 21 00 20 */	addi r1, r1, 0x20
/* 8009C1EC 0009912C  4E 80 00 20 */	blr 
/* 8009C1F0 00099130  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009C1F4 00099134  7C 08 02 A6 */	mflr r0
/* 8009C1F8 00099138  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009C1FC 0009913C  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C200 00099140  48 2C 5F D9 */	bl _savegpr_28
/* 8009C204 00099144  7C 7D 1B 78 */	mr r29, r3
/* 8009C208 00099148  7C 9C 23 78 */	mr r28, r4
/* 8009C20C 0009914C  7C BF 2B 78 */	mr r31, r5
/* 8009C210 00099150  48 00 01 51 */	bl dTres_c_NS_getFirstData
/* 8009C214 00099154  3C 80 80 42 */	lis r4, lbl_80425438@ha
/* 8009C218 00099158  38 84 54 38 */	addi r4, r4, lbl_80425438@l
/* 8009C21C 0009915C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8009C220 00099160  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8009C224 00099164  7C 84 02 14 */	add r4, r4, r0
/* 8009C228 00099168  8B C4 00 08 */	lbz r30, 8(r4)
/* 8009C22C 0009916C  3B A0 00 00 */	li r29, 0
/* 8009C230 00099170  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8009C234 00099174  7C 1F 00 F8 */	nor r31, r0, r0
/* 8009C238 00099178  48 00 00 24 */	b lbl_8009C25C
lbl_8009C23C:
/* 8009C23C 0009917C  88 03 00 00 */	lbz r0, 0(r3)
/* 8009C240 00099180  7C 1C 00 00 */	cmpw r28, r0
/* 8009C244 00099184  40 82 00 10 */	bne lbl_8009C254
/* 8009C248 00099188  88 03 00 02 */	lbz r0, 2(r3)
/* 8009C24C 0009918C  7C 00 F8 38 */	and r0, r0, r31
/* 8009C250 00099190  98 03 00 02 */	stb r0, 2(r3)
lbl_8009C254:
/* 8009C254 00099194  48 00 01 49 */	bl dTres_c_NS_getNextData
/* 8009C258 00099198  3B BD 00 01 */	addi r29, r29, 1
lbl_8009C25C:
/* 8009C25C 0009919C  7C 1D F0 00 */	cmpw r29, r30
/* 8009C260 000991A0  41 80 FF DC */	blt lbl_8009C23C
/* 8009C264 000991A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C268 000991A8  48 2C 5F BD */	bl _restgpr_28
/* 8009C26C 000991AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009C270 000991B0  7C 08 03 A6 */	mtlr r0
/* 8009C274 000991B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8009C278 000991B8  4E 80 00 20 */	blr 

.global dTres_c_NS_getBossIconFloorNo
dTres_c_NS_getBossIconFloorNo:
/* 8009C27C 000991BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009C280 000991C0  7C 08 02 A6 */	mflr r0
/* 8009C284 000991C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009C288 000991C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C28C 000991CC  48 2C 5F 4D */	bl _savegpr_28
/* 8009C290 000991D0  7C 7C 1B 79 */	or. r28, r3, r3
/* 8009C294 000991D4  40 82 00 0C */	bne lbl_8009C2A0
/* 8009C298 000991D8  38 60 00 00 */	li r3, 0
/* 8009C29C 000991DC  48 00 00 AC */	b lbl_8009C348
lbl_8009C2A0:
/* 8009C2A0 000991E0  3B A0 00 00 */	li r29, 0
/* 8009C2A4 000991E4  38 00 00 00 */	li r0, 0
/* 8009C2A8 000991E8  90 1C 00 00 */	stw r0, 0(r28)
/* 8009C2AC 000991EC  38 60 00 03 */	li r3, 3
/* 8009C2B0 000991F0  48 00 00 B1 */	bl dTres_c_NS_getFirstData
/* 8009C2B4 000991F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8009C2B8 000991F8  41 82 00 8C */	beq lbl_8009C344
/* 8009C2BC 000991FC  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 8009C2C0 00099200  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 8009C2C4 00099204  3B C3 09 58 */	addi r30, r3, 0x958
/* 8009C2C8 00099208  7F C3 F3 78 */	mr r3, r30
/* 8009C2CC 0009920C  38 80 00 01 */	li r4, 1
/* 8009C2D0 00099210  4B F9 86 65 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8009C2D4 00099214  2C 03 00 00 */	cmpwi r3, 0
/* 8009C2D8 00099218  41 82 00 6C */	beq lbl_8009C344
/* 8009C2DC 0009921C  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8009C2E0 00099220  28 00 00 FF */	cmplwi r0, 0xff
/* 8009C2E4 00099224  41 82 00 2C */	beq lbl_8009C310
/* 8009C2E8 00099228  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8009C2EC 0009922C  28 04 00 FF */	cmplwi r4, 0xff
/* 8009C2F0 00099230  41 82 00 54 */	beq lbl_8009C344
/* 8009C2F4 00099234  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 8009C2F8 00099238  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 8009C2FC 0009923C  88 1F 00 01 */	lbz r0, 1(r31)
/* 8009C300 00099240  7C 05 07 74 */	extsb r5, r0
/* 8009C304 00099244  4B F9 90 5D */	bl isSwitch__10dSv_info_cCFii
/* 8009C308 00099248  2C 03 00 00 */	cmpwi r3, 0
/* 8009C30C 0009924C  41 82 00 38 */	beq lbl_8009C344
lbl_8009C310:
/* 8009C310 00099250  7F C3 F3 78 */	mr r3, r30
/* 8009C314 00099254  38 80 00 03 */	li r4, 3
/* 8009C318 00099258  4B F9 86 1D */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8009C31C 0009925C  2C 03 00 00 */	cmpwi r3, 0
/* 8009C320 00099260  40 82 00 24 */	bne lbl_8009C344
/* 8009C324 00099264  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8009C328 00099268  38 60 00 01 */	li r3, 1
/* 8009C32C 0009926C  88 1F 00 01 */	lbz r0, 1(r31)
/* 8009C330 00099270  7C 04 07 74 */	extsb r4, r0
/* 8009C334 00099274  4B FA 30 D9 */	bl dMapInfo_c_NS_calcFloorNo
/* 8009C338 00099278  7C 60 07 74 */	extsb r0, r3
/* 8009C33C 0009927C  90 1C 00 00 */	stw r0, 0(r28)
/* 8009C340 00099280  3B A0 00 01 */	li r29, 1
lbl_8009C344:
/* 8009C344 00099284  7F A3 EB 78 */	mr r3, r29
lbl_8009C348:
/* 8009C348 00099288  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C34C 0009928C  48 2C 5E D9 */	bl _restgpr_28
/* 8009C350 00099290  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009C354 00099294  7C 08 03 A6 */	mtlr r0
/* 8009C358 00099298  38 21 00 20 */	addi r1, r1, 0x20
/* 8009C35C 0009929C  4E 80 00 20 */	blr 

.global dTres_c_NS_getFirstData
dTres_c_NS_getFirstData:
/* 8009C360 000992A0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009C364 000992A4  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8009C368 000992A8  3C 60 80 42 */	lis r3, lbl_80425438@ha
/* 8009C36C 000992AC  38 03 54 38 */	addi r0, r3, lbl_80425438@l
/* 8009C370 000992B0  7C 60 22 15 */	add. r3, r0, r4
/* 8009C374 000992B4  40 82 00 0C */	bne lbl_8009C380
/* 8009C378 000992B8  38 60 00 00 */	li r3, 0
/* 8009C37C 000992BC  4E 80 00 20 */	blr 
lbl_8009C380:
/* 8009C380 000992C0  88 03 00 08 */	lbz r0, 8(r3)
/* 8009C384 000992C4  2C 00 00 00 */	cmpwi r0, 0
/* 8009C388 000992C8  40 82 00 0C */	bne lbl_8009C394
/* 8009C38C 000992CC  38 60 00 00 */	li r3, 0
/* 8009C390 000992D0  4E 80 00 20 */	blr 
lbl_8009C394:
/* 8009C394 000992D4  80 63 00 00 */	lwz r3, 0(r3)
/* 8009C398 000992D8  4E 80 00 20 */	blr 

.global dTres_c_NS_getNextData
dTres_c_NS_getNextData:
/* 8009C39C 000992DC  28 03 00 00 */	cmplwi r3, 0
/* 8009C3A0 000992E0  40 82 00 0C */	bne lbl_8009C3AC
/* 8009C3A4 000992E4  38 60 00 00 */	li r3, 0
/* 8009C3A8 000992E8  4E 80 00 20 */	blr 
lbl_8009C3AC:
/* 8009C3AC 000992EC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8009C3B0 000992F0  4E 80 00 20 */	blr 

.global dTres_c_NS_getNextData_X1_
dTres_c_NS_getNextData_X1_:
/* 8009C3B4 000992F4  28 03 00 00 */	cmplwi r3, 0
/* 8009C3B8 000992F8  40 82 00 0C */	bne lbl_8009C3C4
/* 8009C3BC 000992FC  38 60 00 00 */	li r3, 0
/* 8009C3C0 00099300  4E 80 00 20 */	blr 
lbl_8009C3C4:
/* 8009C3C4 00099304  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8009C3C8 00099308  4E 80 00 20 */	blr 
/* 8009C3CC 0009930C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8009C3D0 00099310  7C 08 02 A6 */	mflr r0
/* 8009C3D4 00099314  90 01 00 34 */	stw r0, 0x34(r1)
/* 8009C3D8 00099318  39 61 00 30 */	addi r11, r1, 0x30
/* 8009C3DC 0009931C  48 2C 5D F9 */	bl _savegpr_27
/* 8009C3E0 00099320  7C 7B 1B 78 */	mr r27, r3
/* 8009C3E4 00099324  7C 9C 23 78 */	mr r28, r4
/* 8009C3E8 00099328  7C BD 2B 78 */	mr r29, r5
/* 8009C3EC 0009932C  7C DE 33 78 */	mr r30, r6
/* 8009C3F0 00099330  7F 83 E3 78 */	mr r3, r28
/* 8009C3F4 00099334  4B FF FF 6D */	bl dTres_c_NS_getFirstData
/* 8009C3F8 00099338  7C 7F 1B 78 */	mr r31, r3
/* 8009C3FC 0009933C  3C 60 80 42 */	lis r3, lbl_80425438@ha
/* 8009C400 00099340  38 63 54 38 */	addi r3, r3, lbl_80425438@l
/* 8009C404 00099344  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8009C408 00099348  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8009C40C 0009934C  7C 63 02 14 */	add r3, r3, r0
/* 8009C410 00099350  88 03 00 08 */	lbz r0, 8(r3)
/* 8009C414 00099354  7C 09 03 A6 */	mtctr r0
/* 8009C418 00099358  2C 00 00 00 */	cmpwi r0, 0
/* 8009C41C 0009935C  40 81 00 68 */	ble lbl_8009C484
lbl_8009C420:
/* 8009C420 00099360  88 1F 00 00 */	lbz r0, 0(r31)
/* 8009C424 00099364  7C 1B 00 00 */	cmpw r27, r0
/* 8009C428 00099368  40 82 00 54 */	bne lbl_8009C47C
/* 8009C42C 0009936C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8009C430 00099370  D0 01 00 08 */	stfs f0, 8(r1)
/* 8009C434 00099374  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8009C438 00099378  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8009C43C 0009937C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8009C440 00099380  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8009C444 00099384  2C 1E 00 00 */	cmpwi r30, 0
/* 8009C448 00099388  41 80 00 08 */	blt lbl_8009C450
/* 8009C44C 0009938C  9B DF 00 01 */	stb r30, 1(r31)
lbl_8009C450:
/* 8009C450 00099390  88 1F 00 01 */	lbz r0, 1(r31)
/* 8009C454 00099394  7C 03 07 74 */	extsb r3, r0
/* 8009C458 00099398  38 81 00 08 */	addi r4, r1, 8
/* 8009C45C 0009939C  4B FA 29 05 */	bl dMapInfo_n_NS_correctionOriginPos
/* 8009C460 000993A0  C0 01 00 08 */	lfs f0, 8(r1)
/* 8009C464 000993A4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8009C468 000993A8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8009C46C 000993AC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8009C470 000993B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8009C474 000993B4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8009C478 000993B8  48 00 00 0C */	b lbl_8009C484
lbl_8009C47C:
/* 8009C47C 000993BC  83 FF 00 14 */	lwz r31, 0x14(r31)
/* 8009C480 000993C0  42 00 FF A0 */	bdnz lbl_8009C420
lbl_8009C484:
/* 8009C484 000993C4  39 61 00 30 */	addi r11, r1, 0x30
/* 8009C488 000993C8  48 2C 5D 99 */	bl _restgpr_27
/* 8009C48C 000993CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8009C490 000993D0  7C 08 03 A6 */	mtlr r0
/* 8009C494 000993D4  38 21 00 30 */	addi r1, r1, 0x30
/* 8009C498 000993D8  4E 80 00 20 */	blr 

.global dTres_c_NS_getTypeGroupNoToType
dTres_c_NS_getTypeGroupNoToType:
/* 8009C49C 000993DC  54 60 0D FC */	rlwinm r0, r3, 1, 0x17, 0x1e
/* 8009C4A0 000993E0  3C 60 80 38 */	lis r3, lbl_8037B0D8@ha
/* 8009C4A4 000993E4  38 63 B0 D8 */	addi r3, r3, lbl_8037B0D8@l
/* 8009C4A8 000993E8  7C 63 00 AE */	lbzx r3, r3, r0
/* 8009C4AC 000993EC  4E 80 00 20 */	blr 

.global dTres_c_NS_getTypeToTypeGroupNo
dTres_c_NS_getTypeToTypeGroupNo:
/* 8009C4B0 000993F0  38 C0 00 11 */	li r6, 0x11
/* 8009C4B4 000993F4  38 80 00 00 */	li r4, 0
/* 8009C4B8 000993F8  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8009C4BC 000993FC  3C 60 80 38 */	lis r3, lbl_8037B0D8@ha
/* 8009C4C0 00099400  38 63 B0 D8 */	addi r3, r3, lbl_8037B0D8@l
/* 8009C4C4 00099404  38 00 00 11 */	li r0, 0x11
/* 8009C4C8 00099408  7C 09 03 A6 */	mtctr r0
lbl_8009C4CC:
/* 8009C4CC 0009940C  7C 03 20 AE */	lbzx r0, r3, r4
/* 8009C4D0 00099410  7C 05 00 40 */	cmplw r5, r0
/* 8009C4D4 00099414  40 82 00 18 */	bne lbl_8009C4EC
/* 8009C4D8 00099418  3C 60 80 38 */	lis r3, lbl_8037B0D8@ha
/* 8009C4DC 0009941C  38 03 B0 D8 */	addi r0, r3, lbl_8037B0D8@l
/* 8009C4E0 00099420  7C 60 22 14 */	add r3, r0, r4
/* 8009C4E4 00099424  88 C3 00 01 */	lbz r6, 1(r3)
/* 8009C4E8 00099428  48 00 00 0C */	b lbl_8009C4F4
lbl_8009C4EC:
/* 8009C4EC 0009942C  38 84 00 02 */	addi r4, r4, 2
/* 8009C4F0 00099430  42 00 FF DC */	bdnz lbl_8009C4CC
lbl_8009C4F4:
/* 8009C4F4 00099434  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 8009C4F8 00099438  4E 80 00 20 */	blr 
