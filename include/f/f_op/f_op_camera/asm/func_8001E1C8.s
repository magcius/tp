/* 8001E1C8 0001B108  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001E1CC 0001B10C  7C 08 02 A6 */ mflr r0
/* 8001E1D0 0001B110  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001E1D4 0001B114  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8001E1D8 0001B118  93 C1 00 08 */ stw r30, 8(r1)
/* 8001E1DC 0001B11C  7C 7E 1B 78 */ mr r30, r3
/* 8001E1E0 0001B120  80 63 02 24 */ lwz r3, 0x224(r3)
/* 8001E1E4 0001B124  7F C4 F3 78 */ mr r4, r30
/* 8001E1E8 0001B128  48 00 42 9D */ bl fpcMtd_IsDelete
/* 8001E1EC 0001B12C  7C 7F 1B 78 */ mr r31, r3
/* 8001E1F0 0001B130  2C 1F 00 01 */ cmpwi r31, 1
/* 8001E1F4 0001B134  40 82 00 0C */ bne lbl_8001E200
/* 8001E1F8 0001B138  38 7E 02 10 */ addi r3, r30, 0x210
/* 8001E1FC 0001B13C  48 00 22 D9 */ bl fopDwTg_DrawQTo
lbl_8001E200:
/* 8001E200 0001B140  7F E3 FB 78 */ mr r3, r31
/* 8001E204 0001B144  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8001E208 0001B148  83 C1 00 08 */ lwz r30, 8(r1)
/* 8001E20C 0001B14C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001E210 0001B150  7C 08 03 A6 */ mtlr r0
/* 8001E214 0001B154  38 21 00 10 */ addi r1, r1, 0x10
/* 8001E218 0001B158  4E 80 00 20 */ blr