/* 800204AC 0001D3EC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800204B0 0001D3F0  7C 08 02 A6 */ mflr r0
/* 800204B4 0001D3F4  90 01 00 14 */ stw r0, 0x14(r1)
/* 800204B8 0001D3F8  7C 65 1B 78 */ mr r5, r3
/* 800204BC 0001D3FC  38 6D 80 50 */ la r3, lbl_804505D0(r13)
/* 800204C0 0001D400  48 24 64 0D */ bl cTg_AdditionToTree
/* 800204C4 0001D404  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800204C8 0001D408  7C 08 03 A6 */ mtlr r0
/* 800204CC 0001D40C  38 21 00 10 */ addi r1, r1, 0x10
/* 800204D0 0001D410  4E 80 00 20 */ blr
