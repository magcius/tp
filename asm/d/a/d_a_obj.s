.include "macros.inc"

.section .text, "ax" # 80037038


.global daObj_NS_eff_break_tsubo
daObj_NS_eff_break_tsubo:
/* 80037038 00033F78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8003703C 00033F7C  7C 08 02 A6 */	mflr r0
/* 80037040 00033F80  90 01 00 44 */	stw r0, 0x44(r1)
/* 80037044 00033F84  39 61 00 40 */	addi r11, r1, 0x40
/* 80037048 00033F88  48 32 B1 89 */	bl _savegpr_26
/* 8003704C 00033F8C  7C 7D 1B 78 */	mr r29, r3
/* 80037050 00033F90  7C 9E 23 78 */	mr r30, r4
/* 80037054 00033F94  7C BF 2B 78 */	mr r31, r5
/* 80037058 00033F98  3C 60 80 38 */	lis r3, lbl_803792A8@ha
/* 8003705C 00033F9C  38 63 92 A8 */	addi r3, r3, lbl_803792A8@l
/* 80037060 00033FA0  38 80 00 20 */	li r4, 0x20
/* 80037064 00033FA4  3C A0 80 40 */	lis r5, lbl_804061C0@ha
/* 80037068 00033FA8  38 A5 61 C0 */	addi r5, r5, lbl_804061C0@l
/* 8003706C 00033FAC  3F 45 00 02 */	addis r26, r5, 2
/* 80037070 00033FB0  3B 5A C2 F8 */	addi r26, r26, -15624
/* 80037074 00033FB4  7F 45 D3 78 */	mr r5, r26
/* 80037078 00033FB8  38 C0 00 80 */	li r6, 0x80
/* 8003707C 00033FBC  48 00 52 71 */	bl dRes_control_c_NS_getRes
/* 80037080 00033FC0  7C 7B 1B 78 */	mr r27, r3
/* 80037084 00033FC4  3C 60 80 38 */	lis r3, lbl_803792A8@ha
/* 80037088 00033FC8  38 63 92 A8 */	addi r3, r3, lbl_803792A8@l
/* 8003708C 00033FCC  38 80 00 42 */	li r4, 0x42
/* 80037090 00033FD0  7F 45 D3 78 */	mr r5, r26
/* 80037094 00033FD4  38 C0 00 80 */	li r6, 0x80
/* 80037098 00033FD8  48 00 52 55 */	bl dRes_control_c_NS_getRes
/* 8003709C 00033FDC  7C 7A 1B 78 */	mr r26, r3
/* 800370A0 00033FE0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 800370A4 00033FE4  7C 04 07 74 */	extsb r4, r0
/* 800370A8 00033FE8  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 800370AC 00033FEC  3B 83 61 C0 */	addi r28, r3, lbl_804061C0@l
/* 800370B0 00033FF0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 800370B4 00033FF4  38 0D 89 10 */	addi r0, r13, lbl_80450E90-_SDA_BASE_
/* 800370B8 00033FF8  90 01 00 08 */	stw r0, 8(r1)
/* 800370BC 00033FFC  90 81 00 0C */	stw r4, 0xc(r1)
/* 800370C0 00034000  38 00 00 00 */	li r0, 0
/* 800370C4 00034004  90 01 00 10 */	stw r0, 0x10(r1)
/* 800370C8 00034008  90 01 00 14 */	stw r0, 0x14(r1)
/* 800370CC 0003400C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800370D0 00034010  38 80 00 00 */	li r4, 0
/* 800370D4 00034014  38 A0 01 5C */	li r5, 0x15c
/* 800370D8 00034018  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 800370DC 0003401C  38 E0 00 00 */	li r7, 0
/* 800370E0 00034020  39 00 00 00 */	li r8, 0
/* 800370E4 00034024  39 20 00 00 */	li r9, 0
/* 800370E8 00034028  39 40 00 FF */	li r10, 0xff
/* 800370EC 0003402C  C0 22 83 98 */	lfs f1, lbl_80451D98-_SDA2_BASE_(r2)
/* 800370F0 00034030  48 01 59 A1 */	bl dPa_control_c_NS_set
/* 800370F4 00034034  7F 64 DB 78 */	mr r4, r27
/* 800370F8 00034038  38 BD 01 0C */	addi r5, r29, 0x10c
/* 800370FC 0003403C  38 C0 00 03 */	li r6, 3
/* 80037100 00034040  7F 47 D3 78 */	mr r7, r26
/* 80037104 00034044  39 00 00 00 */	li r8, 0
/* 80037108 00034048  57 E9 06 3E */	clrlwi r9, r31, 0x18
/* 8003710C 0003404C  48 01 3A F5 */	bl dPa_modelEcallBack_NS_setModel
/* 80037110 00034050  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80037114 00034054  7C 06 07 74 */	extsb r6, r0
/* 80037118 00034058  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8003711C 0003405C  57 E5 18 38 */	slwi r5, r31, 3
/* 80037120 00034060  3C 80 80 42 */	lis r4, lbl_80424794@ha
/* 80037124 00034064  38 04 47 94 */	addi r0, r4, lbl_80424794@l
/* 80037128 00034068  7C 00 2A 14 */	add r0, r0, r5
/* 8003712C 0003406C  90 01 00 08 */	stw r0, 8(r1)
/* 80037130 00034070  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80037134 00034074  38 00 00 00 */	li r0, 0
/* 80037138 00034078  90 01 00 10 */	stw r0, 0x10(r1)
/* 8003713C 0003407C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80037140 00034080  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80037144 00034084  38 80 00 00 */	li r4, 0
/* 80037148 00034088  38 A0 01 5D */	li r5, 0x15d
/* 8003714C 0003408C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80037150 00034090  38 E0 00 00 */	li r7, 0
/* 80037154 00034094  39 00 00 00 */	li r8, 0
/* 80037158 00034098  39 20 00 00 */	li r9, 0
/* 8003715C 0003409C  39 40 00 FF */	li r10, 0xff
/* 80037160 000340A0  C0 22 83 98 */	lfs f1, lbl_80451D98-_SDA2_BASE_(r2)
/* 80037164 000340A4  48 01 59 2D */	bl dPa_control_c_NS_set
/* 80037168 000340A8  39 61 00 40 */	addi r11, r1, 0x40
/* 8003716C 000340AC  48 32 B0 B1 */	bl _restgpr_26
/* 80037170 000340B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80037174 000340B4  7C 08 03 A6 */	mtlr r0
/* 80037178 000340B8  38 21 00 40 */	addi r1, r1, 0x40
/* 8003717C 000340BC  4E 80 00 20 */	blr 
/* 80037180 000340C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80037184 000340C4  7C 08 02 A6 */	mflr r0
/* 80037188 000340C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003718C 000340CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80037190 000340D0  7C 7F 1B 78 */	mr r31, r3
/* 80037194 000340D4  88 0D 88 70 */	lbz r0, lbl_80450DF0-_SDA_BASE_(r13)
/* 80037198 000340D8  7C 00 07 75 */	extsb. r0, r0
/* 8003719C 000340DC  40 82 00 34 */	bne lbl_800371D0
/* 800371A0 000340E0  C0 02 83 98 */	lfs f0, lbl_80451D98-_SDA2_BASE_(r2)
/* 800371A4 000340E4  3C 60 80 42 */	lis r3, lbl_804245F4@ha
/* 800371A8 000340E8  D4 03 45 F4 */	stfsu f0, lbl_804245F4@l(r3)
/* 800371AC 000340EC  D0 03 00 04 */	stfs f0, 4(r3)
/* 800371B0 000340F0  D0 03 00 08 */	stfs f0, 8(r3)
/* 800371B4 000340F4  3C 80 80 01 */	lis r4, cXyz_NS_dtor@ha
/* 800371B8 000340F8  38 84 91 84 */	addi r4, r4, cXyz_NS_dtor@l
/* 800371BC 000340FC  3C A0 80 42 */	lis r5, lbl_804245E8@ha
/* 800371C0 00034100  38 A5 45 E8 */	addi r5, r5, lbl_804245E8@l
/* 800371C4 00034104  48 32 AA 61 */	bl func_80361C24
/* 800371C8 00034108  38 00 00 01 */	li r0, 1
/* 800371CC 0003410C  98 0D 88 70 */	stb r0, lbl_80450DF0-_SDA_BASE_(r13)
lbl_800371D0:
/* 800371D0 00034110  3C 60 80 42 */	lis r3, lbl_804245F4@ha
/* 800371D4 00034114  C4 03 45 F4 */	lfsu f0, lbl_804245F4@l(r3)
/* 800371D8 00034118  D0 01 00 08 */	stfs f0, 8(r1)
/* 800371DC 0003411C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800371E0 00034120  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800371E4 00034124  C0 03 00 08 */	lfs f0, 8(r3)
/* 800371E8 00034128  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800371EC 0003412C  7F E3 FB 78 */	mr r3, r31
/* 800371F0 00034130  38 81 00 08 */	addi r4, r1, 8
/* 800371F4 00034134  38 A0 00 00 */	li r5, 0
/* 800371F8 00034138  4B FF FE 41 */	bl daObj_NS_eff_break_tsubo
/* 800371FC 0003413C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80037200 00034140  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80037204 00034144  7C 08 03 A6 */	mtlr r0
/* 80037208 00034148  38 21 00 20 */	addi r1, r1, 0x20
/* 8003720C 0003414C  4E 80 00 20 */	blr 
/* 80037210 00034150  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80037214 00034154  7C 08 02 A6 */	mflr r0
/* 80037218 00034158  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003721C 0003415C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80037220 00034160  7C 7F 1B 78 */	mr r31, r3
/* 80037224 00034164  88 0D 88 71 */	lbz r0, lbl_80450DF1-_SDA_BASE_(r13)
/* 80037228 00034168  7C 00 07 75 */	extsb. r0, r0
/* 8003722C 0003416C  40 82 00 34 */	bne lbl_80037260
/* 80037230 00034170  C0 02 83 98 */	lfs f0, lbl_80451D98-_SDA2_BASE_(r2)
/* 80037234 00034174  3C 60 80 42 */	lis r3, lbl_8042460C@ha
/* 80037238 00034178  D4 03 46 0C */	stfsu f0, lbl_8042460C@l(r3)
/* 8003723C 0003417C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80037240 00034180  D0 03 00 08 */	stfs f0, 8(r3)
/* 80037244 00034184  3C 80 80 01 */	lis r4, cXyz_NS_dtor@ha
/* 80037248 00034188  38 84 91 84 */	addi r4, r4, cXyz_NS_dtor@l
/* 8003724C 0003418C  3C A0 80 42 */	lis r5, lbl_80424600@ha
/* 80037250 00034190  38 A5 46 00 */	addi r5, r5, lbl_80424600@l
/* 80037254 00034194  48 32 A9 D1 */	bl func_80361C24
/* 80037258 00034198  38 00 00 01 */	li r0, 1
/* 8003725C 0003419C  98 0D 88 71 */	stb r0, lbl_80450DF1-_SDA_BASE_(r13)
lbl_80037260:
/* 80037260 000341A0  3C 60 80 42 */	lis r3, lbl_8042460C@ha
/* 80037264 000341A4  C4 03 46 0C */	lfsu f0, lbl_8042460C@l(r3)
/* 80037268 000341A8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8003726C 000341AC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80037270 000341B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80037274 000341B4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80037278 000341B8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8003727C 000341BC  7F E3 FB 78 */	mr r3, r31
/* 80037280 000341C0  38 81 00 08 */	addi r4, r1, 8
/* 80037284 000341C4  38 A0 00 01 */	li r5, 1
/* 80037288 000341C8  4B FF FD B1 */	bl daObj_NS_eff_break_tsubo
/* 8003728C 000341CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80037290 000341D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80037294 000341D4  7C 08 03 A6 */	mtlr r0
/* 80037298 000341D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8003729C 000341DC  4E 80 00 20 */	blr 
/* 800372A0 000341E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800372A4 000341E4  7C 08 02 A6 */	mflr r0
/* 800372A8 000341E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800372AC 000341EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800372B0 000341F0  7C 7F 1B 78 */	mr r31, r3
/* 800372B4 000341F4  88 0D 88 72 */	lbz r0, lbl_80450DF2-_SDA_BASE_(r13)
/* 800372B8 000341F8  7C 00 07 75 */	extsb. r0, r0
/* 800372BC 000341FC  40 82 00 34 */	bne lbl_800372F0
/* 800372C0 00034200  C0 02 83 98 */	lfs f0, lbl_80451D98-_SDA2_BASE_(r2)
/* 800372C4 00034204  3C 60 80 42 */	lis r3, lbl_80424624@ha
/* 800372C8 00034208  D4 03 46 24 */	stfsu f0, lbl_80424624@l(r3)
/* 800372CC 0003420C  D0 03 00 04 */	stfs f0, 4(r3)
/* 800372D0 00034210  D0 03 00 08 */	stfs f0, 8(r3)
/* 800372D4 00034214  3C 80 80 01 */	lis r4, cXyz_NS_dtor@ha
/* 800372D8 00034218  38 84 91 84 */	addi r4, r4, cXyz_NS_dtor@l
/* 800372DC 0003421C  3C A0 80 42 */	lis r5, lbl_80424618@ha
/* 800372E0 00034220  38 A5 46 18 */	addi r5, r5, lbl_80424618@l
/* 800372E4 00034224  48 32 A9 41 */	bl func_80361C24
/* 800372E8 00034228  38 00 00 01 */	li r0, 1
/* 800372EC 0003422C  98 0D 88 72 */	stb r0, lbl_80450DF2-_SDA_BASE_(r13)
lbl_800372F0:
/* 800372F0 00034230  3C 60 80 42 */	lis r3, lbl_80424624@ha
/* 800372F4 00034234  C4 03 46 24 */	lfsu f0, lbl_80424624@l(r3)
/* 800372F8 00034238  D0 01 00 08 */	stfs f0, 8(r1)
/* 800372FC 0003423C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80037300 00034240  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80037304 00034244  C0 03 00 08 */	lfs f0, 8(r3)
/* 80037308 00034248  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8003730C 0003424C  7F E3 FB 78 */	mr r3, r31
/* 80037310 00034250  38 81 00 08 */	addi r4, r1, 8
/* 80037314 00034254  38 A0 00 03 */	li r5, 3
/* 80037318 00034258  4B FF FD 21 */	bl daObj_NS_eff_break_tsubo
/* 8003731C 0003425C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80037320 00034260  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80037324 00034264  7C 08 03 A6 */	mtlr r0
/* 80037328 00034268  38 21 00 20 */	addi r1, r1, 0x20
/* 8003732C 0003426C  4E 80 00 20 */	blr 
/* 80037330 00034270  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80037334 00034274  7C 08 02 A6 */	mflr r0
/* 80037338 00034278  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003733C 0003427C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80037340 00034280  7C 7F 1B 78 */	mr r31, r3
/* 80037344 00034284  88 0D 88 73 */	lbz r0, lbl_80450DF3-_SDA_BASE_(r13)
/* 80037348 00034288  7C 00 07 75 */	extsb. r0, r0
/* 8003734C 0003428C  40 82 00 34 */	bne lbl_80037380
/* 80037350 00034290  C0 02 83 9C */	lfs f0, lbl_80451D9C-_SDA2_BASE_(r2)
/* 80037354 00034294  3C 60 80 42 */	lis r3, lbl_8042463C@ha
/* 80037358 00034298  D4 03 46 3C */	stfsu f0, lbl_8042463C@l(r3)
/* 8003735C 0003429C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80037360 000342A0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80037364 000342A4  3C 80 80 01 */	lis r4, cXyz_NS_dtor@ha
/* 80037368 000342A8  38 84 91 84 */	addi r4, r4, cXyz_NS_dtor@l
/* 8003736C 000342AC  3C A0 80 42 */	lis r5, lbl_80424630@ha
/* 80037370 000342B0  38 A5 46 30 */	addi r5, r5, lbl_80424630@l
/* 80037374 000342B4  48 32 A8 B1 */	bl func_80361C24
/* 80037378 000342B8  38 00 00 01 */	li r0, 1
/* 8003737C 000342BC  98 0D 88 73 */	stb r0, lbl_80450DF3-_SDA_BASE_(r13)
lbl_80037380:
/* 80037380 000342C0  3C 60 80 42 */	lis r3, lbl_8042463C@ha
/* 80037384 000342C4  C4 03 46 3C */	lfsu f0, lbl_8042463C@l(r3)
/* 80037388 000342C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8003738C 000342CC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80037390 000342D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80037394 000342D4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80037398 000342D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8003739C 000342DC  7F E3 FB 78 */	mr r3, r31
/* 800373A0 000342E0  38 81 00 08 */	addi r4, r1, 8
/* 800373A4 000342E4  38 A0 00 04 */	li r5, 4
/* 800373A8 000342E8  4B FF FC 91 */	bl daObj_NS_eff_break_tsubo
/* 800373AC 000342EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800373B0 000342F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800373B4 000342F4  7C 08 03 A6 */	mtlr r0
/* 800373B8 000342F8  38 21 00 20 */	addi r1, r1, 0x20
/* 800373BC 000342FC  4E 80 00 20 */	blr 
/* 800373C0 00034300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800373C4 00034304  7C 08 02 A6 */	mflr r0
/* 800373C8 00034308  90 01 00 14 */	stw r0, 0x14(r1)
/* 800373CC 0003430C  38 C0 00 00 */	li r6, 0
/* 800373D0 00034310  C0 62 83 A0 */	lfs f3, lbl_80451DA0-_SDA2_BASE_(r2)
/* 800373D4 00034314  FC 80 18 90 */	fmr f4, f3
/* 800373D8 00034318  38 E0 00 00 */	li r7, 0
/* 800373DC 0003431C  48 00 02 45 */	bl daObj_NS_posMoveF_grade
/* 800373E0 00034320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800373E4 00034324  7C 08 03 A6 */	mtlr r0
/* 800373E8 00034328  38 21 00 10 */	addi r1, r1, 0x10
/* 800373EC 0003432C  4E 80 00 20 */	blr 

.global daObj_NS__unnamed_d_a_obj_cpp__NS_posMoveF_resist_acc
daObj_NS__unnamed_d_a_obj_cpp__NS_posMoveF_resist_acc:
/* 800373F0 00034330  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800373F4 00034334  7C 08 02 A6 */	mflr r0
/* 800373F8 00034338  90 01 00 64 */	stw r0, 0x64(r1)
/* 800373FC 0003433C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80037400 00034340  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80037404 00034344  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80037408 00034348  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 8003740C 0003434C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80037410 00034350  7C 7F 1B 78 */	mr r31, r3
/* 80037414 00034354  FF C0 08 90 */	fmr f30, f1
/* 80037418 00034358  FF E0 10 90 */	fmr f31, f2
/* 8003741C 0003435C  38 61 00 08 */	addi r3, r1, 8
/* 80037420 00034360  38 84 04 F8 */	addi r4, r4, 0x4f8
/* 80037424 00034364  48 22 F7 11 */	bl cXyz_NS___mi
/* 80037428 00034368  C0 C1 00 08 */	lfs f6, 8(r1)
/* 8003742C 0003436C  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 80037430 00034370  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 80037434 00034374  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80037438 00034378  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 8003743C 0003437C  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 80037440 00034380  EC 66 07 B2 */	fmuls f3, f6, f30
/* 80037444 00034384  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80037448 00034388  EC 45 07 B2 */	fmuls f2, f5, f30
/* 8003744C 0003438C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80037450 00034390  EC 24 07 B2 */	fmuls f1, f4, f30
/* 80037454 00034394  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80037458 00034398  FC 00 32 10 */	fabs f0, f6
/* 8003745C 0003439C  FC 00 00 18 */	frsp f0, f0
/* 80037460 000343A0  EC 06 00 32 */	fmuls f0, f6, f0
/* 80037464 000343A4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80037468 000343A8  EC 03 00 2A */	fadds f0, f3, f0
/* 8003746C 000343AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80037470 000343B0  FC 00 2A 10 */	fabs f0, f5
/* 80037474 000343B4  FC 00 00 18 */	frsp f0, f0
/* 80037478 000343B8  EC 05 00 32 */	fmuls f0, f5, f0
/* 8003747C 000343BC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80037480 000343C0  EC 02 00 2A */	fadds f0, f2, f0
/* 80037484 000343C4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80037488 000343C8  FC 00 22 10 */	fabs f0, f4
/* 8003748C 000343CC  FC 00 00 18 */	frsp f0, f0
/* 80037490 000343D0  EC 04 00 32 */	fmuls f0, f4, f0
/* 80037494 000343D4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80037498 000343D8  EC 01 00 2A */	fadds f0, f1, f0
/* 8003749C 000343DC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800374A0 000343E0  38 61 00 14 */	addi r3, r1, 0x14
/* 800374A4 000343E4  7C 64 1B 78 */	mr r4, r3
/* 800374A8 000343E8  C0 22 83 A4 */	lfs f1, lbl_80451DA4-_SDA2_BASE_(r2)
/* 800374AC 000343EC  48 30 FC 2D */	bl PSVECScale
/* 800374B0 000343F0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800374B4 000343F4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 800374B8 000343F8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800374BC 000343FC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 800374C0 00034400  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800374C4 00034404  D0 1F 00 08 */	stfs f0, 8(r31)
/* 800374C8 00034408  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 800374CC 0003440C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800374D0 00034410  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 800374D4 00034414  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 800374D8 00034418  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800374DC 0003441C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800374E0 00034420  7C 08 03 A6 */	mtlr r0
/* 800374E4 00034424  38 21 00 60 */	addi r1, r1, 0x60
/* 800374E8 00034428  4E 80 00 20 */	blr 

.global daObj_NS__unnamed_d_a_obj_cpp__NS_posMoveF_grade_acc
daObj_NS__unnamed_d_a_obj_cpp__NS_posMoveF_grade_acc:
/* 800374EC 0003442C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800374F0 00034430  7C 08 02 A6 */	mflr r0
/* 800374F4 00034434  90 01 00 74 */	stw r0, 0x74(r1)
/* 800374F8 00034438  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 800374FC 0003443C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80037500 00034440  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80037504 00034444  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 80037508 00034448  39 61 00 50 */	addi r11, r1, 0x50
/* 8003750C 0003444C  48 32 AC D1 */	bl _savegpr_29
/* 80037510 00034450  7C 7D 1B 78 */	mr r29, r3
/* 80037514 00034454  7C 9E 23 78 */	mr r30, r4
/* 80037518 00034458  7C BF 2B 79 */	or. r31, r5, r5
/* 8003751C 0003445C  FF C0 08 90 */	fmr f30, f1
/* 80037520 00034460  FF E0 10 90 */	fmr f31, f2
/* 80037524 00034464  3C 60 80 43 */	lis r3, lbl_80430CF4@ha
/* 80037528 00034468  C4 03 0C F4 */	lfsu f0, lbl_80430CF4@l(r3)
/* 8003752C 0003446C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80037530 00034470  C0 03 00 04 */	lfs f0, 4(r3)
/* 80037534 00034474  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80037538 00034478  C0 03 00 08 */	lfs f0, 8(r3)
/* 8003753C 0003447C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80037540 00034480  41 82 00 B8 */	beq lbl_800375F8
/* 80037544 00034484  C0 06 00 00 */	lfs f0, 0(r6)
/* 80037548 00034488  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8003754C 0003448C  C0 26 00 04 */	lfs f1, 4(r6)
/* 80037550 00034490  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80037554 00034494  C0 06 00 08 */	lfs f0, 8(r6)
/* 80037558 00034498  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8003755C 0003449C  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80037560 000344A0  EC 01 00 2A */	fadds f0, f1, f0
/* 80037564 000344A4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80037568 000344A8  28 07 00 00 */	cmplwi r7, 0
/* 8003756C 000344AC  41 82 00 14 */	beq lbl_80037580
/* 80037570 000344B0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80037574 000344B4  7C E4 3B 78 */	mr r4, r7
/* 80037578 000344B8  7C 65 1B 78 */	mr r5, r3
/* 8003757C 000344BC  48 30 FB 15 */	bl PSVECAdd
lbl_80037580:
/* 80037580 000344C0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80037584 000344C4  7F E4 FB 78 */	mr r4, r31
/* 80037588 000344C8  48 30 FC 0D */	bl PSVECDotProduct
/* 8003758C 000344CC  C0 02 83 A0 */	lfs f0, lbl_80451DA0-_SDA2_BASE_(r2)
/* 80037590 000344D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80037594 000344D4  40 80 00 64 */	bge lbl_800375F8
/* 80037598 000344D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8003759C 000344DC  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 800375A0 000344E0  4C 40 13 82 */	cror 2, 0, 2
/* 800375A4 000344E4  40 82 00 24 */	bne lbl_800375C8
/* 800375A8 000344E8  7F E3 FB 78 */	mr r3, r31
/* 800375AC 000344EC  38 81 00 2C */	addi r4, r1, 0x2c
/* 800375B0 000344F0  38 A1 00 20 */	addi r5, r1, 0x20
/* 800375B4 000344F4  48 23 76 09 */	bl cM3d_CrawVec
/* 800375B8 000344F8  7F A3 EB 78 */	mr r3, r29
/* 800375BC 000344FC  38 81 00 20 */	addi r4, r1, 0x20
/* 800375C0 00034500  7F A5 EB 78 */	mr r5, r29
/* 800375C4 00034504  48 30 FA CD */	bl PSVECAdd
lbl_800375C8:
/* 800375C8 00034508  7F E3 FB 78 */	mr r3, r31
/* 800375CC 0003450C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 800375D0 00034510  38 A1 00 14 */	addi r5, r1, 0x14
/* 800375D4 00034514  48 23 75 E9 */	bl cM3d_CrawVec
/* 800375D8 00034518  38 61 00 08 */	addi r3, r1, 8
/* 800375DC 0003451C  38 81 00 14 */	addi r4, r1, 0x14
/* 800375E0 00034520  FC 20 F0 90 */	fmr f1, f30
/* 800375E4 00034524  48 22 F5 A1 */	bl cXyz_NS___ml
/* 800375E8 00034528  7F A3 EB 78 */	mr r3, r29
/* 800375EC 0003452C  38 81 00 08 */	addi r4, r1, 8
/* 800375F0 00034530  7F A5 EB 78 */	mr r5, r29
/* 800375F4 00034534  48 30 FA C1 */	bl PSVECSubtract
lbl_800375F8:
/* 800375F8 00034538  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 800375FC 0003453C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80037600 00034540  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80037604 00034544  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80037608 00034548  39 61 00 50 */	addi r11, r1, 0x50
/* 8003760C 0003454C  48 32 AC 1D */	bl _restgpr_29
/* 80037610 00034550  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80037614 00034554  7C 08 03 A6 */	mtlr r0
/* 80037618 00034558  38 21 00 70 */	addi r1, r1, 0x70
/* 8003761C 0003455C  4E 80 00 20 */	blr 

.global daObj_NS_posMoveF_grade
daObj_NS_posMoveF_grade:
/* 80037620 00034560  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80037624 00034564  7C 08 02 A6 */	mflr r0
/* 80037628 00034568  90 01 00 54 */	stw r0, 0x54(r1)
/* 8003762C 0003456C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80037630 00034570  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80037634 00034574  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80037638 00034578  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 8003763C 0003457C  39 61 00 30 */	addi r11, r1, 0x30
/* 80037640 00034580  48 32 AB 99 */	bl _savegpr_28
/* 80037644 00034584  7C 7C 1B 78 */	mr r28, r3
/* 80037648 00034588  7C 9D 23 78 */	mr r29, r4
/* 8003764C 0003458C  7C DE 33 78 */	mr r30, r6
/* 80037650 00034590  FF C0 18 90 */	fmr f30, f3
/* 80037654 00034594  FF E0 20 90 */	fmr f31, f4
/* 80037658 00034598  7C FF 3B 78 */	mr r31, r7
/* 8003765C 0003459C  38 61 00 14 */	addi r3, r1, 0x14
/* 80037660 000345A0  7F 84 E3 78 */	mr r4, r28
/* 80037664 000345A4  4B FF FD 8D */	bl daObj_NS__unnamed_d_a_obj_cpp__NS_posMoveF_resist_acc
/* 80037668 000345A8  38 61 00 08 */	addi r3, r1, 8
/* 8003766C 000345AC  7F 84 E3 78 */	mr r4, r28
/* 80037670 000345B0  7F C5 F3 78 */	mr r5, r30
/* 80037674 000345B4  FC 20 F0 90 */	fmr f1, f30
/* 80037678 000345B8  FC 40 F8 90 */	fmr f2, f31
/* 8003767C 000345BC  38 C1 00 14 */	addi r6, r1, 0x14
/* 80037680 000345C0  7F E7 FB 78 */	mr r7, r31
/* 80037684 000345C4  4B FF FE 69 */	bl daObj_NS__unnamed_d_a_obj_cpp__NS_posMoveF_grade_acc
/* 80037688 000345C8  C0 9C 05 2C */	lfs f4, 0x52c(r28)
/* 8003768C 000345CC  C0 BC 05 30 */	lfs f5, 0x530(r28)
/* 80037690 000345D0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80037694 000345D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80037698 000345D8  3C 60 80 44 */	lis r3, lbl_80439A20@ha
/* 8003769C 000345DC  38 63 9A 20 */	addi r3, r3, lbl_80439A20@l
/* 800376A0 000345E0  7C 03 04 2E */	lfsx f0, r3, r0
/* 800376A4 000345E4  C0 41 00 08 */	lfs f2, 8(r1)
/* 800376A8 000345E8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 800376AC 000345EC  EC 04 00 32 */	fmuls f0, f4, f0
/* 800376B0 000345F0  EC 01 00 2A */	fadds f0, f1, f0
/* 800376B4 000345F4  EC 22 00 2A */	fadds f1, f2, f0
/* 800376B8 000345F8  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 800376BC 000345FC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 800376C0 00034600  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 800376C4 00034604  EC 00 28 2A */	fadds f0, f0, f5
/* 800376C8 00034608  EC 02 00 2A */	fadds f0, f2, f0
/* 800376CC 0003460C  EC A3 00 2A */	fadds f5, f3, f0
/* 800376D0 00034610  7C 63 02 14 */	add r3, r3, r0
/* 800376D4 00034614  C0 03 00 04 */	lfs f0, 4(r3)
/* 800376D8 00034618  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 800376DC 0003461C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 800376E0 00034620  EC 04 00 32 */	fmuls f0, f4, f0
/* 800376E4 00034624  EC 02 00 2A */	fadds f0, f2, f0
/* 800376E8 00034628  EC 43 00 2A */	fadds f2, f3, f0
/* 800376EC 0003462C  28 1F 00 00 */	cmplwi r31, 0
/* 800376F0 00034630  41 82 00 1C */	beq lbl_8003770C
/* 800376F4 00034634  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800376F8 00034638  EC 21 00 2A */	fadds f1, f1, f0
/* 800376FC 0003463C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80037700 00034640  EC A5 00 2A */	fadds f5, f5, f0
/* 80037704 00034644  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80037708 00034648  EC 42 00 2A */	fadds f2, f2, f0
lbl_8003770C:
/* 8003770C 0003464C  C0 1C 05 34 */	lfs f0, 0x534(r28)
/* 80037710 00034650  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80037714 00034654  40 80 00 08 */	bge lbl_8003771C
/* 80037718 00034658  FC A0 00 90 */	fmr f5, f0
lbl_8003771C:
/* 8003771C 0003465C  D0 3C 04 F8 */	stfs f1, 0x4f8(r28)
/* 80037720 00034660  D0 BC 04 FC */	stfs f5, 0x4fc(r28)
/* 80037724 00034664  D0 5C 05 00 */	stfs f2, 0x500(r28)
/* 80037728 00034668  EC 61 00 72 */	fmuls f3, f1, f1
/* 8003772C 0003466C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80037730 00034670  EC 63 00 2A */	fadds f3, f3, f0
/* 80037734 00034674  C0 02 83 A0 */	lfs f0, lbl_80451DA0-_SDA2_BASE_(r2)
/* 80037738 00034678  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8003773C 0003467C  40 81 00 0C */	ble lbl_80037748
/* 80037740 00034680  FC 00 18 34 */	frsqrte f0, f3
/* 80037744 00034684  EC 60 00 F2 */	fmuls f3, f0, f3
lbl_80037748:
/* 80037748 00034688  D0 7C 05 2C */	stfs f3, 0x52c(r28)
/* 8003774C 0003468C  48 22 FF 29 */	bl cM_atan2s
/* 80037750 00034690  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 80037754 00034694  7F 83 E3 78 */	mr r3, r28
/* 80037758 00034698  7F A4 EB 78 */	mr r4, r29
/* 8003775C 0003469C  4B FE 2F 05 */	bl fopAcM_posMove
/* 80037760 000346A0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80037764 000346A4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80037768 000346A8  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 8003776C 000346AC  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80037770 000346B0  39 61 00 30 */	addi r11, r1, 0x30
/* 80037774 000346B4  48 32 AA B1 */	bl _restgpr_28
/* 80037778 000346B8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8003777C 000346BC  7C 08 03 A6 */	mtlr r0
/* 80037780 000346C0  38 21 00 50 */	addi r1, r1, 0x50
/* 80037784 000346C4  4E 80 00 20 */	blr 
/* 80037788 000346C8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8003778C 000346CC  7C 08 02 A6 */	mflr r0
/* 80037790 000346D0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80037794 000346D4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80037798 000346D8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8003779C 000346DC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 800377A0 000346E0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 800377A4 000346E4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800377A8 000346E8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800377AC 000346EC  7C 7E 1B 78 */	mr r30, r3
/* 800377B0 000346F0  7C 9F 23 78 */	mr r31, r4
/* 800377B4 000346F4  7F E3 FB 78 */	mr r3, r31
/* 800377B8 000346F8  48 30 F9 81 */	bl PSVECSquareMag
/* 800377BC 000346FC  FF E0 08 90 */	fmr f31, f1
/* 800377C0 00034700  C0 02 83 A8 */	lfs f0, lbl_80451DA8-_SDA2_BASE_(r2)
/* 800377C4 00034704  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800377C8 00034708  40 81 00 EC */	ble lbl_800378B4
/* 800377CC 0003470C  38 61 00 14 */	addi r3, r1, 0x14
/* 800377D0 00034710  3C 80 80 43 */	lis r4, lbl_80430D24@ha
/* 800377D4 00034714  38 84 0D 24 */	addi r4, r4, lbl_80430D24@l
/* 800377D8 00034718  7F E5 FB 78 */	mr r5, r31
/* 800377DC 0003471C  48 22 F4 E1 */	bl cXyz_NS_outprod
/* 800377E0 00034720  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800377E4 00034724  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800377E8 00034728  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800377EC 0003472C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800377F0 00034730  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800377F4 00034734  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800377F8 00034738  38 61 00 2C */	addi r3, r1, 0x2c
/* 800377FC 0003473C  48 30 F9 3D */	bl PSVECSquareMag
/* 80037800 00034740  FF C0 08 90 */	fmr f30, f1
/* 80037804 00034744  C0 02 83 A8 */	lfs f0, lbl_80451DA8-_SDA2_BASE_(r2)
/* 80037808 00034748  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8003780C 0003474C  40 81 00 80 */	ble lbl_8003788C
/* 80037810 00034750  38 61 00 08 */	addi r3, r1, 8
/* 80037814 00034754  7F E4 FB 78 */	mr r4, r31
/* 80037818 00034758  FC 20 F8 90 */	fmr f1, f31
/* 8003781C 0003475C  48 22 F3 FD */	bl cXyz_NS___dv
/* 80037820 00034760  C0 01 00 08 */	lfs f0, 8(r1)
/* 80037824 00034764  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80037828 00034768  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8003782C 0003476C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80037830 00034770  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80037834 00034774  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80037838 00034778  3C 60 80 43 */	lis r3, lbl_80430D24@ha
/* 8003783C 0003477C  38 63 0D 24 */	addi r3, r3, lbl_80430D24@l
/* 80037840 00034780  38 81 00 20 */	addi r4, r1, 0x20
/* 80037844 00034784  48 30 F9 51 */	bl PSVECDotProduct
/* 80037848 00034788  48 33 4E 99 */	bl func_8036C6E0
/* 8003784C 0003478C  FF E0 08 18 */	frsp f31, f1
/* 80037850 00034790  C0 02 83 A0 */	lfs f0, lbl_80451DA0-_SDA2_BASE_(r2)
/* 80037854 00034794  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80037858 00034798  40 81 00 0C */	ble lbl_80037864
/* 8003785C 0003479C  FC 00 F0 34 */	frsqrte f0, f30
/* 80037860 000347A0  EF C0 07 B2 */	fmuls f30, f0, f30
lbl_80037864:
/* 80037864 000347A4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80037868 000347A8  7C 64 1B 78 */	mr r4, r3
/* 8003786C 000347AC  C0 02 83 98 */	lfs f0, lbl_80451D98-_SDA2_BASE_(r2)
/* 80037870 000347B0  EC 20 F0 24 */	fdivs f1, f0, f30
/* 80037874 000347B4  48 30 F8 65 */	bl PSVECScale
/* 80037878 000347B8  7F C3 F3 78 */	mr r3, r30
/* 8003787C 000347BC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80037880 000347C0  FC 20 F8 90 */	fmr f1, f31
/* 80037884 000347C4  48 30 FB F1 */	bl C_QUATRotAxisRad
/* 80037888 000347C8  48 00 00 50 */	b lbl_800378D8
lbl_8003788C:
/* 8003788C 000347CC  3C 60 80 38 */	lis r3, lbl_80379298@ha
/* 80037890 000347D0  C4 03 92 98 */	lfsu f0, lbl_80379298@l(r3)
/* 80037894 000347D4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80037898 000347D8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8003789C 000347DC  D0 1E 00 04 */	stfs f0, 4(r30)
/* 800378A0 000347E0  C0 03 00 08 */	lfs f0, 8(r3)
/* 800378A4 000347E4  D0 1E 00 08 */	stfs f0, 8(r30)
/* 800378A8 000347E8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800378AC 000347EC  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 800378B0 000347F0  48 00 00 28 */	b lbl_800378D8
lbl_800378B4:
/* 800378B4 000347F4  3C 60 80 38 */	lis r3, lbl_80379298@ha
/* 800378B8 000347F8  C4 03 92 98 */	lfsu f0, lbl_80379298@l(r3)
/* 800378BC 000347FC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 800378C0 00034800  C0 03 00 04 */	lfs f0, 4(r3)
/* 800378C4 00034804  D0 1E 00 04 */	stfs f0, 4(r30)
/* 800378C8 00034808  C0 03 00 08 */	lfs f0, 8(r3)
/* 800378CC 0003480C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 800378D0 00034810  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800378D4 00034814  D0 1E 00 0C */	stfs f0, 0xc(r30)
lbl_800378D8:
/* 800378D8 00034818  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 800378DC 0003481C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800378E0 00034820  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 800378E4 00034824  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 800378E8 00034828  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800378EC 0003482C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800378F0 00034830  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800378F4 00034834  7C 08 03 A6 */	mtlr r0
/* 800378F8 00034838  38 21 00 60 */	addi r1, r1, 0x60
/* 800378FC 0003483C  4E 80 00 20 */	blr 
/* 80037900 00034840  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80037904 00034844  7C 08 02 A6 */	mflr r0
/* 80037908 00034848  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003790C 0003484C  39 61 00 30 */	addi r11, r1, 0x30
/* 80037910 00034850  48 32 A8 BD */	bl func_803621CC
/* 80037914 00034854  7C 7D 1B 78 */	mr r29, r3
/* 80037918 00034858  7C 9E 23 78 */	mr r30, r4
/* 8003791C 0003485C  7C BA 2B 78 */	mr r26, r5
/* 80037920 00034860  7C DF 33 78 */	mr r31, r6
/* 80037924 00034864  7F 43 D3 78 */	mr r3, r26
/* 80037928 00034868  48 04 CC 55 */	bl dCcD_GObjInf_NS_GetTgHitObjSe
/* 8003792C 0003486C  54 7B 06 3E */	clrlwi r27, r3, 0x18
/* 80037930 00034870  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80037934 00034874  48 04 BD 55 */	bl dCcD_GAtTgCoCommonBase_NS_GetAc
/* 80037938 00034878  7C 7C 1B 78 */	mr r28, r3
/* 8003793C 0003487C  7F 43 D3 78 */	mr r3, r26
/* 80037940 00034880  48 04 CB B9 */	bl dCcD_GObjInf_NS_GetTgHitObj
/* 80037944 00034884  3B 40 00 00 */	li r26, 0
/* 80037948 00034888  2C 1B 00 00 */	cmpwi r27, 0
/* 8003794C 0003488C  41 82 00 E8 */	beq lbl_80037A34
/* 80037950 00034890  28 1C 00 00 */	cmplwi r28, 0
/* 80037954 00034894  41 82 00 A4 */	beq lbl_800379F8
/* 80037958 00034898  28 03 00 00 */	cmplwi r3, 0
/* 8003795C 0003489C  41 82 00 9C */	beq lbl_800379F8
/* 80037960 000348A0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80037964 000348A4  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 80037968 000348A8  41 82 00 10 */	beq lbl_80037978
/* 8003796C 000348AC  3C 60 00 04 */	lis r3, 0x00040006@ha
/* 80037970 000348B0  3B 23 00 06 */	addi r25, r3, 0x00040006@l
/* 80037974 000348B4  48 00 00 84 */	b lbl_800379F8
lbl_80037978:
/* 80037978 000348B8  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 8003797C 000348BC  41 82 00 10 */	beq lbl_8003798C
/* 80037980 000348C0  3C 60 00 04 */	lis r3, 0x00040008@ha
/* 80037984 000348C4  3B 23 00 08 */	addi r25, r3, 0x00040008@l
/* 80037988 000348C8  48 00 00 70 */	b lbl_800379F8
lbl_8003798C:
/* 8003798C 000348CC  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80037990 000348D0  41 82 00 10 */	beq lbl_800379A0
/* 80037994 000348D4  3C 60 00 04 */	lis r3, 0x0004000A@ha
/* 80037998 000348D8  3B 23 00 0A */	addi r25, r3, 0x0004000A@l
/* 8003799C 000348DC  48 00 00 5C */	b lbl_800379F8
lbl_800379A0:
/* 800379A0 000348E0  A8 1C 00 0E */	lha r0, 0xe(r28)
/* 800379A4 000348E4  2C 00 00 FD */	cmpwi r0, 0xfd
/* 800379A8 000348E8  40 82 00 14 */	bne lbl_800379BC
/* 800379AC 000348EC  48 12 79 ED */	bl daPy_py_c_NS_checkMasterSwordEquip
/* 800379B0 000348F0  2C 03 00 00 */	cmpwi r3, 0
/* 800379B4 000348F4  41 82 00 08 */	beq lbl_800379BC
/* 800379B8 000348F8  3B 40 00 01 */	li r26, 1
lbl_800379BC:
/* 800379BC 000348FC  2C 1B 00 05 */	cmpwi r27, 5
/* 800379C0 00034900  40 82 00 10 */	bne lbl_800379D0
/* 800379C4 00034904  3C 60 00 04 */	lis r3, 0x00040005@ha
/* 800379C8 00034908  3B 23 00 05 */	addi r25, r3, 0x00040005@l
/* 800379CC 0003490C  48 00 00 2C */	b lbl_800379F8
lbl_800379D0:
/* 800379D0 00034910  2C 1B 00 09 */	cmpwi r27, 9
/* 800379D4 00034914  40 82 00 10 */	bne lbl_800379E4
/* 800379D8 00034918  3C 60 00 04 */	lis r3, 0x0004000A@ha
/* 800379DC 0003491C  3B 23 00 0A */	addi r25, r3, 0x0004000A@l
/* 800379E0 00034920  48 00 00 18 */	b lbl_800379F8
lbl_800379E4:
/* 800379E4 00034924  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 800379E8 00034928  41 82 00 0C */	beq lbl_800379F4
/* 800379EC 0003492C  3F 20 00 04 */	lis r25, 4
/* 800379F0 00034930  48 00 00 08 */	b lbl_800379F8
lbl_800379F4:
/* 800379F4 00034934  3F 20 00 04 */	lis r25, 4
lbl_800379F8:
/* 800379F8 00034938  7F C3 F3 78 */	mr r3, r30
/* 800379FC 0003493C  4B FF 56 71 */	bl dComIfGp_getReverb
/* 80037A00 00034940  7C 60 1B 78 */	mr r0, r3
/* 80037A04 00034944  93 21 00 08 */	stw r25, 8(r1)
/* 80037A08 00034948  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80037A0C 0003494C  38 81 00 08 */	addi r4, r1, 8
/* 80037A10 00034950  7F A5 EB 78 */	mr r5, r29
/* 80037A14 00034954  57 E6 06 3E */	clrlwi r6, r31, 0x18
/* 80037A18 00034958  7C 07 07 74 */	extsb r7, r0
/* 80037A1C 0003495C  C0 22 83 98 */	lfs f1, lbl_80451D98-_SDA2_BASE_(r2)
/* 80037A20 00034960  FC 40 08 90 */	fmr f2, f1
/* 80037A24 00034964  C0 62 83 A4 */	lfs f3, lbl_80451DA4-_SDA2_BASE_(r2)
/* 80037A28 00034968  FC 80 18 90 */	fmr f4, f3
/* 80037A2C 0003496C  39 00 00 00 */	li r8, 0
/* 80037A30 00034970  48 27 3F 55 */	bl Z2SeMgr_NS_seStart
lbl_80037A34:
/* 80037A34 00034974  39 61 00 30 */	addi r11, r1, 0x30
/* 80037A38 00034978  48 32 A7 E1 */	bl func_80362218
/* 80037A3C 0003497C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80037A40 00034980  7C 08 03 A6 */	mtlr r0
/* 80037A44 00034984  38 21 00 30 */	addi r1, r1, 0x30
/* 80037A48 00034988  4E 80 00 20 */	blr 
/* 80037A4C 0003498C  38 63 00 20 */	addi r3, r3, 0x20
/* 80037A50 00034990  4E 80 00 20 */	blr 
/* 80037A54 00034994  38 63 00 20 */	addi r3, r3, 0x20
/* 80037A58 00034998  4E 80 00 20 */	blr 

