.include "macros.inc"

.section .text, "ax" # 8002064c


.global fpcBs_Is_JustOfType
fpcBs_Is_JustOfType:
/* 8002064C 0001D58C  7C 04 18 50 */	subf r0, r4, r3
/* 80020650 0001D590  7C 00 00 34 */	cntlzw r0, r0
/* 80020654 0001D594  54 03 D9 7E */	srwi r3, r0, 5
/* 80020658 0001D598  4E 80 00 20 */	blr 

.global fpcBs_MakeOfType
fpcBs_MakeOfType:
/* 8002065C 0001D59C  88 0D 87 88 */	lbz r0, lbl_80450D08-_SDA_BASE_(r13)
/* 80020660 0001D5A0  7C 00 07 75 */	extsb. r0, r0
/* 80020664 0001D5A4  40 82 00 14 */	bne lbl_80020678
/* 80020668 0001D5A8  3C 00 09 13 */	lis r0, 0x913
/* 8002066C 0001D5AC  90 0D 87 84 */	stw r0, lbl_80450D04-_SDA_BASE_(r13)
/* 80020670 0001D5B0  38 00 00 01 */	li r0, 1
/* 80020674 0001D5B4  98 0D 87 88 */	stb r0, lbl_80450D08-_SDA_BASE_(r13)
lbl_80020678:
/* 80020678 0001D5B8  80 03 00 00 */	lwz r0, 0(r3)
/* 8002067C 0001D5BC  2C 00 00 00 */	cmpwi r0, 0
/* 80020680 0001D5C0  40 82 00 14 */	bne lbl_80020694
/* 80020684 0001D5C4  80 8D 87 84 */	lwz r4, lbl_80450D04-_SDA_BASE_(r13)
/* 80020688 0001D5C8  38 04 00 01 */	addi r0, r4, 1
/* 8002068C 0001D5CC  90 0D 87 84 */	stw r0, lbl_80450D04-_SDA_BASE_(r13)
/* 80020690 0001D5D0  90 03 00 00 */	stw r0, 0(r3)
lbl_80020694:
/* 80020694 0001D5D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80020698 0001D5D8  4E 80 00 20 */	blr 

.global fpcBs_MakeOfId
fpcBs_MakeOfId:
/* 8002069C 0001D5DC  88 0D 87 90 */	lbz r0, lbl_80450D10-_SDA_BASE_(r13)
/* 800206A0 0001D5E0  7C 00 07 75 */	extsb. r0, r0
/* 800206A4 0001D5E4  40 82 00 10 */	bne lbl_800206B4
/* 800206A8 0001D5E8  38 00 00 01 */	li r0, 1
/* 800206AC 0001D5EC  90 0D 87 8C */	stw r0, lbl_80450D0C-_SDA_BASE_(r13)
/* 800206B0 0001D5F0  98 0D 87 90 */	stb r0, lbl_80450D10-_SDA_BASE_(r13)
lbl_800206B4:
/* 800206B4 0001D5F4  80 6D 87 8C */	lwz r3, lbl_80450D0C-_SDA_BASE_(r13)
/* 800206B8 0001D5F8  38 03 00 01 */	addi r0, r3, 1
/* 800206BC 0001D5FC  90 0D 87 8C */	stw r0, lbl_80450D0C-_SDA_BASE_(r13)
/* 800206C0 0001D600  4E 80 00 20 */	blr 

.global fpcBs_Execute
fpcBs_Execute:
/* 800206C4 0001D604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800206C8 0001D608  7C 08 02 A6 */	mflr r0
/* 800206CC 0001D60C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800206D0 0001D610  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800206D4 0001D614  93 C1 00 08 */	stw r30, 8(r1)
/* 800206D8 0001D618  7C 7F 1B 78 */	mr r31, r3
/* 800206DC 0001D61C  48 00 10 19 */	bl fpcLy_CurrentLayer
/* 800206E0 0001D620  7C 7E 1B 78 */	mr r30, r3
/* 800206E4 0001D624  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 800206E8 0001D628  48 00 10 05 */	bl fpcLy_SetCurrentLayer
/* 800206EC 0001D62C  80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 800206F0 0001D630  7F E4 FB 78 */	mr r4, r31
/* 800206F4 0001D634  48 00 1D 6D */	bl fpcMtd_Execute
/* 800206F8 0001D638  7C 7F 1B 78 */	mr r31, r3
/* 800206FC 0001D63C  7F C3 F3 78 */	mr r3, r30
/* 80020700 0001D640  48 00 0F ED */	bl fpcLy_SetCurrentLayer
/* 80020704 0001D644  7F E3 FB 78 */	mr r3, r31
/* 80020708 0001D648  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002070C 0001D64C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80020710 0001D650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020714 0001D654  7C 08 03 A6 */	mtlr r0
/* 80020718 0001D658  38 21 00 10 */	addi r1, r1, 0x10
/* 8002071C 0001D65C  4E 80 00 20 */	blr 

.global fpcBs_DeleteAppend
fpcBs_DeleteAppend:
/* 80020720 0001D660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020724 0001D664  7C 08 02 A6 */	mflr r0
/* 80020728 0001D668  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002072C 0001D66C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80020730 0001D670  7C 7F 1B 78 */	mr r31, r3
/* 80020734 0001D674  80 63 00 AC */	lwz r3, 0xac(r3)
/* 80020738 0001D678  28 03 00 00 */	cmplwi r3, 0
/* 8002073C 0001D67C  41 82 00 10 */	beq lbl_8002074C
/* 80020740 0001D680  48 24 2B 21 */	bl cMl_NS_free
/* 80020744 0001D684  38 00 00 00 */	li r0, 0
/* 80020748 0001D688  90 1F 00 AC */	stw r0, 0xac(r31)
lbl_8002074C:
/* 8002074C 0001D68C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80020750 0001D690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020754 0001D694  7C 08 03 A6 */	mtlr r0
/* 80020758 0001D698  38 21 00 10 */	addi r1, r1, 0x10
/* 8002075C 0001D69C  4E 80 00 20 */	blr 

.global fpcBs_IsDelete
fpcBs_IsDelete:
/* 80020760 0001D6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020764 0001D6A4  7C 08 02 A6 */	mflr r0
/* 80020768 0001D6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002076C 0001D6AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80020770 0001D6B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80020774 0001D6B4  7C 7F 1B 78 */	mr r31, r3
/* 80020778 0001D6B8  48 00 0F 7D */	bl fpcLy_CurrentLayer
/* 8002077C 0001D6BC  7C 7E 1B 78 */	mr r30, r3
/* 80020780 0001D6C0  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80020784 0001D6C4  48 00 0F 69 */	bl fpcLy_SetCurrentLayer
/* 80020788 0001D6C8  80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 8002078C 0001D6CC  7F E4 FB 78 */	mr r4, r31
/* 80020790 0001D6D0  48 00 1C F5 */	bl fpcMtd_IsDelete
/* 80020794 0001D6D4  7C 7F 1B 78 */	mr r31, r3
/* 80020798 0001D6D8  7F C3 F3 78 */	mr r3, r30
/* 8002079C 0001D6DC  48 00 0F 51 */	bl fpcLy_SetCurrentLayer
/* 800207A0 0001D6E0  7F E3 FB 78 */	mr r3, r31
/* 800207A4 0001D6E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800207A8 0001D6E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800207AC 0001D6EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800207B0 0001D6F0  7C 08 03 A6 */	mtlr r0
/* 800207B4 0001D6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800207B8 0001D6F8  4E 80 00 20 */	blr 

.global fpcBs_Delete
fpcBs_Delete:
/* 800207BC 0001D6FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800207C0 0001D700  7C 08 02 A6 */	mflr r0
/* 800207C4 0001D704  90 01 00 14 */	stw r0, 0x14(r1)
/* 800207C8 0001D708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800207CC 0001D70C  93 C1 00 08 */	stw r30, 8(r1)
/* 800207D0 0001D710  7C 7E 1B 78 */	mr r30, r3
/* 800207D4 0001D714  80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 800207D8 0001D718  7F C4 F3 78 */	mr r4, r30
/* 800207DC 0001D71C  48 00 1C CD */	bl fpcMtd_Delete
/* 800207E0 0001D720  7C 7F 1B 78 */	mr r31, r3
/* 800207E4 0001D724  2C 1F 00 01 */	cmpwi r31, 1
/* 800207E8 0001D728  40 82 00 1C */	bne lbl_80020804
/* 800207EC 0001D72C  7F C3 F3 78 */	mr r3, r30
/* 800207F0 0001D730  4B FF FF 31 */	bl fpcBs_DeleteAppend
/* 800207F4 0001D734  38 00 00 00 */	li r0, 0
/* 800207F8 0001D738  90 1E 00 00 */	stw r0, 0(r30)
/* 800207FC 0001D73C  7F C3 F3 78 */	mr r3, r30
/* 80020800 0001D740  48 24 2A 61 */	bl cMl_NS_free
lbl_80020804:
/* 80020804 0001D744  7F E3 FB 78 */	mr r3, r31
/* 80020808 0001D748  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002080C 0001D74C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80020810 0001D750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020814 0001D754  7C 08 03 A6 */	mtlr r0
/* 80020818 0001D758  38 21 00 10 */	addi r1, r1, 0x10
/* 8002081C 0001D75C  4E 80 00 20 */	blr 

.global fpcBs_Create
fpcBs_Create:
/* 80020820 0001D760  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80020824 0001D764  7C 08 02 A6 */	mflr r0
/* 80020828 0001D768  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002082C 0001D76C  39 61 00 20 */	addi r11, r1, 0x20
/* 80020830 0001D770  48 34 19 A1 */	bl _savegpr_26
/* 80020834 0001D774  7C 7A 1B 78 */	mr r26, r3
/* 80020838 0001D778  7C 9B 23 78 */	mr r27, r4
/* 8002083C 0001D77C  7C BC 2B 78 */	mr r28, r5
/* 80020840 0001D780  48 00 2D 25 */	bl fpcPf_Get
/* 80020844 0001D784  7C 7F 1B 78 */	mr r31, r3
/* 80020848 0001D788  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8002084C 0001D78C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80020850 0001D790  7F A3 02 14 */	add r29, r3, r0
/* 80020854 0001D794  38 60 FF FC */	li r3, -4
/* 80020858 0001D798  7F A4 EB 78 */	mr r4, r29
/* 8002085C 0001D79C  48 24 29 CD */	bl cMl_NS_memalignB
/* 80020860 0001D7A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80020864 0001D7A4  40 82 00 0C */	bne lbl_80020870
/* 80020868 0001D7A8  38 60 00 00 */	li r3, 0
/* 8002086C 0001D7AC  48 00 00 98 */	b lbl_80020904
lbl_80020870:
/* 80020870 0001D7B0  7F A4 EB 78 */	mr r4, r29
/* 80020874 0001D7B4  48 25 14 39 */	bl sBs_ClearArea
/* 80020878 0001D7B8  38 7E 00 18 */	addi r3, r30, 0x18
/* 8002087C 0001D7BC  80 9F 00 00 */	lwz r4, 0(r31)
/* 80020880 0001D7C0  7F C5 F3 78 */	mr r5, r30
/* 80020884 0001D7C4  48 00 16 2D */	bl fpcLyTg_Init
/* 80020888 0001D7C8  38 7E 00 34 */	addi r3, r30, 0x34
/* 8002088C 0001D7CC  7F C4 F3 78 */	mr r4, r30
/* 80020890 0001D7D0  48 00 2D FD */	bl fpcLnTg_Init
/* 80020894 0001D7D4  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80020898 0001D7D8  7F C4 F3 78 */	mr r4, r30
/* 8002089C 0001D7DC  48 00 07 81 */	bl fpcDtTg_Init
/* 800208A0 0001D7E0  38 7E 00 68 */	addi r3, r30, 0x68
/* 800208A4 0001D7E4  7F C4 F3 78 */	mr r4, r30
/* 800208A8 0001D7E8  80 BF 00 00 */	lwz r5, 0(r31)
/* 800208AC 0001D7EC  A0 DF 00 04 */	lhz r6, 4(r31)
/* 800208B0 0001D7F0  A0 FF 00 06 */	lhz r7, 6(r31)
/* 800208B4 0001D7F4  48 00 2C 09 */	bl fpcPi_Init
/* 800208B8 0001D7F8  38 00 00 00 */	li r0, 0
/* 800208BC 0001D7FC  98 1E 00 0C */	stb r0, 0xc(r30)
/* 800208C0 0001D800  98 1E 00 0A */	stb r0, 0xa(r30)
/* 800208C4 0001D804  93 7E 00 04 */	stw r27, 4(r30)
/* 800208C8 0001D808  B3 5E 00 0E */	sth r26, 0xe(r30)
/* 800208CC 0001D80C  38 6D 87 80 */	addi r3, r13, lbl_80450D00-_SDA_BASE_
/* 800208D0 0001D810  4B FF FD 8D */	bl fpcBs_MakeOfType
/* 800208D4 0001D814  90 7E 00 00 */	stw r3, 0(r30)
/* 800208D8 0001D818  A8 1F 00 08 */	lha r0, 8(r31)
/* 800208DC 0001D81C  B0 1E 00 08 */	sth r0, 8(r30)
/* 800208E0 0001D820  7F C3 F3 78 */	mr r3, r30
/* 800208E4 0001D824  48 00 30 65 */	bl fpcPause_Init
/* 800208E8 0001D828  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 800208EC 0001D82C  90 1E 00 A8 */	stw r0, 0xa8(r30)
/* 800208F0 0001D830  93 FE 00 10 */	stw r31, 0x10(r30)
/* 800208F4 0001D834  93 9E 00 AC */	stw r28, 0xac(r30)
/* 800208F8 0001D838  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 800208FC 0001D83C  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 80020900 0001D840  7F C3 F3 78 */	mr r3, r30
lbl_80020904:
/* 80020904 0001D844  39 61 00 20 */	addi r11, r1, 0x20
/* 80020908 0001D848  48 34 19 15 */	bl _restgpr_26
/* 8002090C 0001D84C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80020910 0001D850  7C 08 03 A6 */	mtlr r0
/* 80020914 0001D854  38 21 00 20 */	addi r1, r1, 0x20
/* 80020918 0001D858  4E 80 00 20 */	blr 

.global fpcBs_SubCreate
fpcBs_SubCreate:
/* 8002091C 0001D85C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020920 0001D860  7C 08 02 A6 */	mflr r0
/* 80020924 0001D864  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020928 0001D868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002092C 0001D86C  7C 7F 1B 78 */	mr r31, r3
/* 80020930 0001D870  80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 80020934 0001D874  7F E4 FB 78 */	mr r4, r31
/* 80020938 0001D878  48 00 1B 95 */	bl fpcMtd_Create
/* 8002093C 0001D87C  2C 03 00 03 */	cmpwi r3, 3
/* 80020940 0001D880  41 82 00 58 */	beq lbl_80020998
/* 80020944 0001D884  40 80 00 18 */	bge lbl_8002095C
/* 80020948 0001D888  2C 03 00 02 */	cmpwi r3, 2
/* 8002094C 0001D88C  40 80 00 1C */	bge lbl_80020968
/* 80020950 0001D890  2C 03 00 00 */	cmpwi r3, 0
/* 80020954 0001D894  40 80 00 2C */	bge lbl_80020980
/* 80020958 0001D898  48 00 00 50 */	b lbl_800209A8
lbl_8002095C:
/* 8002095C 0001D89C  2C 03 00 05 */	cmpwi r3, 5
/* 80020960 0001D8A0  41 82 00 48 */	beq lbl_800209A8
/* 80020964 0001D8A4  40 80 00 44 */	bge lbl_800209A8
lbl_80020968:
/* 80020968 0001D8A8  7F E3 FB 78 */	mr r3, r31
/* 8002096C 0001D8AC  4B FF FD B5 */	bl fpcBs_DeleteAppend
/* 80020970 0001D8B0  38 00 00 02 */	li r0, 2
/* 80020974 0001D8B4  98 1F 00 0D */	stb r0, 0xd(r31)
/* 80020978 0001D8B8  38 60 00 02 */	li r3, 2
/* 8002097C 0001D8BC  48 00 00 38 */	b lbl_800209B4
lbl_80020980:
/* 80020980 0001D8C0  38 00 00 01 */	li r0, 1
/* 80020984 0001D8C4  98 1F 00 0C */	stb r0, 0xc(r31)
/* 80020988 0001D8C8  38 00 00 00 */	li r0, 0
/* 8002098C 0001D8CC  98 1F 00 0D */	stb r0, 0xd(r31)
/* 80020990 0001D8D0  38 60 00 00 */	li r3, 0
/* 80020994 0001D8D4  48 00 00 20 */	b lbl_800209B4
lbl_80020998:
/* 80020998 0001D8D8  38 00 00 03 */	li r0, 3
/* 8002099C 0001D8DC  98 1F 00 0D */	stb r0, 0xd(r31)
/* 800209A0 0001D8E0  38 60 00 03 */	li r3, 3
/* 800209A4 0001D8E4  48 00 00 10 */	b lbl_800209B4
lbl_800209A8:
/* 800209A8 0001D8E8  38 00 00 05 */	li r0, 5
/* 800209AC 0001D8EC  98 1F 00 0D */	stb r0, 0xd(r31)
/* 800209B0 0001D8F0  38 60 00 05 */	li r3, 5
lbl_800209B4:
/* 800209B4 0001D8F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800209B8 0001D8F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800209BC 0001D8FC  7C 08 03 A6 */	mtlr r0
/* 800209C0 0001D900  38 21 00 10 */	addi r1, r1, 0x10
/* 800209C4 0001D904  4E 80 00 20 */	blr 

