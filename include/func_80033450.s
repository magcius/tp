/* 80033450 00030390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033454 00030394  7C 08 02 A6 */	mflr r0
/* 80033458 00030398  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003345C 0003039C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80033460 000303A0  7C 7F 1B 78 */	mr r31, r3
/* 80033464 000303A4  7C 85 23 78 */	mr r5, r4
/* 80033468 000303A8  7C A3 2B 78 */	mr r3, r5
/* 8003346C 000303AC  4B FF F4 AD */	bl dSv_item_rename__FUc
/* 80033470 000303B0  7C 65 1B 78 */	mr r5, r3
/* 80033474 000303B4  7F E3 FB 78 */	mr r3, r31
/* 80033478 000303B8  38 80 00 60 */	li r4, 0x60
/* 8003347C 000303BC  4B FF FE F5 */	bl setBottleItemIn__17dSv_player_item_cFUcUc
/* 80033480 000303C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80033484 000303C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033488 000303C8  7C 08 03 A6 */	mtlr r0
/* 8003348C 000303CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80033490 000303D0  4E 80 00 20 */	blr 