/* 80020518 0001D458  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002051C 0001D45C  7C 08 02 A6 */ mflr r0
/* 80020520 0001D460  90 01 00 14 */ stw r0, 0x14(r1)
/* 80020524 0001D464  38 6D 80 50 */ la r3, lbl_804505D0(r13)
/* 80020528 0001D468  3C 80 80 3F */ lis r4, lbl_803F1E10@ha
/* 8002052C 0001D46C  38 84 1E 10 */ addi r4, r4, lbl_803F1E10@l
/* 80020530 0001D470  38 A0 03 E8 */ li r5, 0x3e8
/* 80020534 0001D474  48 24 5F B5 */ bl cTr_Create
/* 80020538 0001D478  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002053C 0001D47C  7C 08 03 A6 */ mtlr r0
/* 80020540 0001D480  38 21 00 10 */ addi r1, r1, 0x10
/* 80020544 0001D484  4E 80 00 20 */ blr
