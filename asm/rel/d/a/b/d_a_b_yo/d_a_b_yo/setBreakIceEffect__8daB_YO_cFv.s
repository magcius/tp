lbl_806306F0:
/* 806306F0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806306F4  7C 08 02 A6 */	mflr r0
/* 806306F8  90 01 00 64 */	stw r0, 0x64(r1)
/* 806306FC  39 61 00 60 */	addi r11, r1, 0x60
/* 80630700  4B D3 1A D0 */	b _savegpr_26
/* 80630704  7C 7E 1B 78 */	mr r30, r3
/* 80630708  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8063070C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80630710  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80630714  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80630718  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8063071C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80630720  88 83 0F A8 */	lbz r4, 0xfa8(r3)
/* 80630724  28 04 00 07 */	cmplwi r4, 7
/* 80630728  40 82 00 60 */	bne lbl_80630788
/* 8063072C  3C 60 80 64 */	lis r3, lit_4432@ha
/* 80630730  C0 03 98 50 */	lfs f0, lit_4432@l(r3)
/* 80630734  EC 01 00 28 */	fsubs f0, f1, f0
/* 80630738  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8063073C  3C 60 80 64 */	lis r3, lit_3795@ha
/* 80630740  C0 03 98 10 */	lfs f0, lit_3795@l(r3)
/* 80630744  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80630748  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8063074C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80630750  88 1E 0F AB */	lbz r0, 0xfab(r30)
/* 80630754  1F E0 00 03 */	mulli r31, r0, 3
/* 80630758  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007030A@ha */
/* 8063075C  38 03 03 0A */	addi r0, r3, 0x030A /* 0x0007030A@l */
/* 80630760  90 01 00 28 */	stw r0, 0x28(r1)
/* 80630764  38 7E 06 34 */	addi r3, r30, 0x634
/* 80630768  38 81 00 28 */	addi r4, r1, 0x28
/* 8063076C  38 A0 00 00 */	li r5, 0
/* 80630770  38 C0 FF FF */	li r6, -1
/* 80630774  81 9E 06 34 */	lwz r12, 0x634(r30)
/* 80630778  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8063077C  7D 89 03 A6 */	mtctr r12
/* 80630780  4E 80 04 21 */	bctrl 
/* 80630784  48 00 00 8C */	b lbl_80630810
lbl_80630788:
/* 80630788  3C 60 80 64 */	lis r3, l_HIO@ha
/* 8063078C  38 63 9F 84 */	addi r3, r3, l_HIO@l
/* 80630790  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 80630794  7C 63 02 14 */	add r3, r3, r0
/* 80630798  C0 03 00 08 */	lfs f0, 8(r3)
/* 8063079C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806307A0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806307A4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806307A8  3B E0 00 00 */	li r31, 0
/* 806307AC  28 04 00 04 */	cmplwi r4, 4
/* 806307B0  40 80 00 34 */	bge lbl_806307E4
/* 806307B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070301@ha */
/* 806307B8  38 03 03 01 */	addi r0, r3, 0x0301 /* 0x00070301@l */
/* 806307BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806307C0  38 7E 06 34 */	addi r3, r30, 0x634
/* 806307C4  38 81 00 24 */	addi r4, r1, 0x24
/* 806307C8  38 A0 00 00 */	li r5, 0
/* 806307CC  38 C0 FF FF */	li r6, -1
/* 806307D0  81 9E 06 34 */	lwz r12, 0x634(r30)
/* 806307D4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806307D8  7D 89 03 A6 */	mtctr r12
/* 806307DC  4E 80 04 21 */	bctrl 
/* 806307E0  48 00 00 30 */	b lbl_80630810
lbl_806307E4:
/* 806307E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070302@ha */
/* 806307E8  38 03 03 02 */	addi r0, r3, 0x0302 /* 0x00070302@l */
/* 806307EC  90 01 00 20 */	stw r0, 0x20(r1)
/* 806307F0  38 7E 06 34 */	addi r3, r30, 0x634
/* 806307F4  38 81 00 20 */	addi r4, r1, 0x20
/* 806307F8  38 A0 00 00 */	li r5, 0
/* 806307FC  38 C0 FF FF */	li r6, -1
/* 80630800  81 9E 06 34 */	lwz r12, 0x634(r30)
/* 80630804  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80630808  7D 89 03 A6 */	mtctr r12
/* 8063080C  4E 80 04 21 */	bctrl 
lbl_80630810:
/* 80630810  3B 40 00 00 */	li r26, 0
/* 80630814  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80630818  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 8063081C  3C 60 80 64 */	lis r3, break_ice_effect_id@ha
/* 80630820  3B 83 9C 6C */	addi r28, r3, break_ice_effect_id@l
/* 80630824  3C 60 80 64 */	lis r3, lit_3795@ha
/* 80630828  3B A3 98 10 */	addi r29, r3, lit_3795@l
lbl_8063082C:
/* 8063082C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80630830  38 80 00 00 */	li r4, 0
/* 80630834  90 81 00 08 */	stw r4, 8(r1)
/* 80630838  38 00 FF FF */	li r0, -1
/* 8063083C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80630840  90 81 00 10 */	stw r4, 0x10(r1)
/* 80630844  90 81 00 14 */	stw r4, 0x14(r1)
/* 80630848  90 81 00 18 */	stw r4, 0x18(r1)
/* 8063084C  38 80 00 00 */	li r4, 0
/* 80630850  7C 1F D2 14 */	add r0, r31, r26
/* 80630854  54 00 08 3C */	slwi r0, r0, 1
/* 80630858  7C BC 02 2E */	lhzx r5, r28, r0
/* 8063085C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80630860  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80630864  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80630868  39 21 00 38 */	addi r9, r1, 0x38
/* 8063086C  39 40 00 FF */	li r10, 0xff
/* 80630870  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80630874  4B A1 C2 1C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80630878  3B 5A 00 01 */	addi r26, r26, 1
/* 8063087C  2C 1A 00 03 */	cmpwi r26, 3
/* 80630880  41 80 FF AC */	blt lbl_8063082C
/* 80630884  39 61 00 60 */	addi r11, r1, 0x60
/* 80630888  4B D3 19 94 */	b _restgpr_26
/* 8063088C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80630890  7C 08 03 A6 */	mtlr r0
/* 80630894  38 21 00 60 */	addi r1, r1, 0x60
/* 80630898  4E 80 00 20 */	blr 