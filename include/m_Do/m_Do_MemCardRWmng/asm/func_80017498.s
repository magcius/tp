/* 80017498 000143D8  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8001749C 000143DC  7C 08 02 A6 */ mflr r0
/* 800174A0 000143E0  90 01 00 24 */ stw r0, 0x24(r1)
/* 800174A4 000143E4  39 61 00 20 */ addi r11, r1, 0x20
/* 800174A8 000143E8  48 34 AD 31 */ bl _savegpr_28
/* 800174AC 000143EC  7C 7D 1B 78 */ mr r29, r3
/* 800174B0 000143F0  7C 9E 23 78 */ mr r30, r4
/* 800174B4 000143F4  7C BF 2B 78 */ mr r31, r5
/* 800174B8 000143F8  3C 60 80 3F */ lis r3, lbl_803ECF40@ha
/* 800174BC 000143FC  38 63 CF 40 */ addi r3, r3, lbl_803ECF40@l
/* 800174C0 00014400  48 00 03 BD */ bl mDoMemCdRWm_BuildHeader
/* 800174C4 00014404  7F A3 EB 78 */ mr r3, r29
/* 800174C8 00014408  3C 80 80 3F */ lis r4, lbl_803ECF40@ha
/* 800174CC 0001440C  38 84 CF 40 */ addi r4, r4, lbl_803ECF40@l
/* 800174D0 00014410  38 A0 40 00 */ li r5, 0x4000
/* 800174D4 00014414  38 C0 00 00 */ li r6, 0
/* 800174D8 00014418  48 34 17 71 */ bl CARDWrite
/* 800174DC 0001441C  2C 03 00 00 */ cmpwi r3, 0
/* 800174E0 00014420  41 82 00 08 */ beq lbl_800174E8
/* 800174E4 00014424  48 00 01 A0 */ b lbl_80017684
lbl_800174E8:
/* 800174E8 00014428  7F A3 EB 78 */ mr r3, r29
/* 800174EC 0001442C  48 00 06 61 */ bl mDoMemCdRWm_CheckCardStat
/* 800174F0 00014430  2C 03 00 00 */ cmpwi r3, 0
/* 800174F4 00014434  40 82 00 60 */ bne lbl_80017554
/* 800174F8 00014438  3C 60 80 3F */ lis r3, lbl_803ECF40@ha
/* 800174FC 0001443C  38 63 CF 40 */ addi r3, r3, lbl_803ECF40@l
/* 80017500 00014440  38 80 00 00 */ li r4, 0
/* 80017504 00014444  38 A0 40 00 */ li r5, 0x4000
/* 80017508 00014448  4B FE BF 51 */ bl memset
/* 8001750C 0001444C  7F A3 EB 78 */ mr r3, r29
/* 80017510 00014450  3C 80 80 3F */ lis r4, lbl_803ECF40@ha
/* 80017514 00014454  38 84 CF 40 */ addi r4, r4, lbl_803ECF40@l
/* 80017518 00014458  38 A0 20 00 */ li r5, 0x2000
/* 8001751C 0001445C  38 C0 40 00 */ li r6, 0x4000
/* 80017520 00014460  48 34 17 29 */ bl CARDWrite
/* 80017524 00014464  2C 03 00 00 */ cmpwi r3, 0
/* 80017528 00014468  41 82 00 08 */ beq lbl_80017530
/* 8001752C 0001446C  48 00 01 58 */ b lbl_80017684
lbl_80017530:
/* 80017530 00014470  7F A3 EB 78 */ mr r3, r29
/* 80017534 00014474  3C 80 80 3F */ lis r4, lbl_803ECF40@ha
/* 80017538 00014478  38 84 CF 40 */ addi r4, r4, lbl_803ECF40@l
/* 8001753C 0001447C  38 A0 20 00 */ li r5, 0x2000
/* 80017540 00014480  38 C0 60 00 */ li r6, 0x6000
/* 80017544 00014484  48 34 17 05 */ bl CARDWrite
/* 80017548 00014488  2C 03 00 00 */ cmpwi r3, 0
/* 8001754C 0001448C  41 82 00 08 */ beq lbl_80017554
/* 80017550 00014490  48 00 01 34 */ b lbl_80017684
lbl_80017554:
/* 80017554 00014494  3C 60 80 3F */ lis r3, lbl_803ECF40@ha
/* 80017558 00014498  38 63 CF 40 */ addi r3, r3, lbl_803ECF40@l
/* 8001755C 0001449C  38 80 00 00 */ li r4, 0
/* 80017560 000144A0  38 A0 40 00 */ li r5, 0x4000
/* 80017564 000144A4  4B FE BE F5 */ bl memset
/* 80017568 000144A8  3C 60 80 3F */ lis r3, lbl_803ECF40@ha
/* 8001756C 000144AC  38 63 CF 40 */ addi r3, r3, lbl_803ECF40@l
/* 80017570 000144B0  7C 7C 1B 78 */ mr r28, r3
/* 80017574 000144B4  38 00 00 06 */ li r0, 6
/* 80017578 000144B8  90 03 00 04 */ stw r0, 4(r3)
/* 8001757C 000144BC  38 63 00 08 */ addi r3, r3, 8
/* 80017580 000144C0  7F C4 F3 78 */ mr r4, r30
/* 80017584 000144C4  7F E5 FB 78 */ mr r5, r31
/* 80017588 000144C8  4B FE BF B9 */ bl memcpy
/* 8001758C 000144CC  38 00 00 00 */ li r0, 0
/* 80017590 000144D0  90 1C 00 00 */ stw r0, 0(r28)
/* 80017594 000144D4  7F 83 E3 78 */ mr r3, r28
/* 80017598 000144D8  38 80 1F FC */ li r4, 0x1ffc
/* 8001759C 000144DC  48 00 06 D9 */ bl mDoMemCdRWm_CalcCheckSum
/* 800175A0 000144E0  7C 7E 1B 78 */ mr r30, r3
/* 800175A4 000144E4  93 DC 1F FC */ stw r30, 0x1ffc(r28)
/* 800175A8 000144E8  7F A3 EB 78 */ mr r3, r29
/* 800175AC 000144EC  3C 80 80 3F */ lis r4, lbl_803ECF40@ha
/* 800175B0 000144F0  38 84 CF 40 */ addi r4, r4, lbl_803ECF40@l
/* 800175B4 000144F4  38 A0 20 00 */ li r5, 0x2000
/* 800175B8 000144F8  38 C0 40 00 */ li r6, 0x4000
/* 800175BC 000144FC  48 34 16 8D */ bl CARDWrite
/* 800175C0 00014500  2C 03 00 00 */ cmpwi r3, 0
/* 800175C4 00014504  41 82 00 08 */ beq lbl_800175CC
/* 800175C8 00014508  48 00 00 BC */ b lbl_80017684
lbl_800175CC:
/* 800175CC 0001450C  7F A3 EB 78 */ mr r3, r29
/* 800175D0 00014510  3C 80 80 3F */ lis r4, lbl_803ECF40@ha
/* 800175D4 00014514  38 84 CF 40 */ addi r4, r4, lbl_803ECF40@l
/* 800175D8 00014518  38 A0 20 00 */ li r5, 0x2000
/* 800175DC 0001451C  38 C0 40 00 */ li r6, 0x4000
/* 800175E0 00014520  48 34 12 ED */ bl CARDRead
/* 800175E4 00014524  7C 7F 1B 79 */ or. r31, r3, r3
/* 800175E8 00014528  41 82 00 08 */ beq lbl_800175F0
/* 800175EC 0001452C  48 00 00 98 */ b lbl_80017684
lbl_800175F0:
/* 800175F0 00014530  3C 60 80 3F */ lis r3, lbl_803ECF40@ha
/* 800175F4 00014534  38 63 CF 40 */ addi r3, r3, lbl_803ECF40@l
/* 800175F8 00014538  38 80 1F FC */ li r4, 0x1ffc
/* 800175FC 0001453C  48 00 06 79 */ bl mDoMemCdRWm_CalcCheckSum
/* 80017600 00014540  7C 1E 18 40 */ cmplw r30, r3
/* 80017604 00014544  41 82 00 0C */ beq lbl_80017610
/* 80017608 00014548  7F E3 FB 78 */ mr r3, r31
/* 8001760C 0001454C  48 00 00 78 */ b lbl_80017684
lbl_80017610:
/* 80017610 00014550  7F A3 EB 78 */ mr r3, r29
/* 80017614 00014554  3C 80 80 3F */ lis r4, lbl_803ECF40@ha
/* 80017618 00014558  38 84 CF 40 */ addi r4, r4, lbl_803ECF40@l
/* 8001761C 0001455C  38 A0 20 00 */ li r5, 0x2000
/* 80017620 00014560  38 C0 60 00 */ li r6, 0x6000
/* 80017624 00014564  48 34 16 25 */ bl CARDWrite
/* 80017628 00014568  2C 03 00 00 */ cmpwi r3, 0
/* 8001762C 0001456C  41 82 00 08 */ beq lbl_80017634
/* 80017630 00014570  48 00 00 54 */ b lbl_80017684
lbl_80017634:
/* 80017634 00014574  7F A3 EB 78 */ mr r3, r29
/* 80017638 00014578  3C 80 80 3F */ lis r4, lbl_803ECF40@ha
/* 8001763C 0001457C  38 84 CF 40 */ addi r4, r4, lbl_803ECF40@l
/* 80017640 00014580  38 A0 20 00 */ li r5, 0x2000
/* 80017644 00014584  38 C0 60 00 */ li r6, 0x6000
/* 80017648 00014588  48 34 12 85 */ bl CARDRead
/* 8001764C 0001458C  7C 7F 1B 79 */ or. r31, r3, r3
/* 80017650 00014590  41 82 00 08 */ beq lbl_80017658
/* 80017654 00014594  48 00 00 30 */ b lbl_80017684
lbl_80017658:
/* 80017658 00014598  3C 60 80 3F */ lis r3, lbl_803ECF40@ha
/* 8001765C 0001459C  38 63 CF 40 */ addi r3, r3, lbl_803ECF40@l
/* 80017660 000145A0  38 80 1F FC */ li r4, 0x1ffc
/* 80017664 000145A4  48 00 06 11 */ bl mDoMemCdRWm_CalcCheckSum
/* 80017668 000145A8  7C 1E 18 40 */ cmplw r30, r3
/* 8001766C 000145AC  41 82 00 0C */ beq lbl_80017678
/* 80017670 000145B0  7F E3 FB 78 */ mr r3, r31
/* 80017674 000145B4  48 00 00 10 */ b lbl_80017684
lbl_80017678:
/* 80017678 000145B8  7F A3 EB 78 */ mr r3, r29
/* 8001767C 000145BC  48 00 03 69 */ bl mDoMemCdRWm_SetCardStat
/* 80017680 000145C0  7F E3 FB 78 */ mr r3, r31
lbl_80017684:
/* 80017684 000145C4  39 61 00 20 */ addi r11, r1, 0x20
/* 80017688 000145C8  48 34 AB 9D */ bl _restgpr_28
/* 8001768C 000145CC  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80017690 000145D0  7C 08 03 A6 */ mtlr r0
/* 80017694 000145D4  38 21 00 20 */ addi r1, r1, 0x20
/* 80017698 000145D8  4E 80 00 20 */ blr