/* 800D1540 000CE480  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800D1544 000CE484  7C 08 02 A6 */ mflr r0
/* 800D1548 000CE488  90 01 00 34 */ stw r0, 0x34(r1)
/* 800D154C 000CE48C  DB E1 00 28 */ stfd f31, 0x28(r1)
/* 800D1550 000CE490  39 61 00 28 */ addi r11, r1, 0x28
/* 800D1554 000CE494  48 29 0C 79 */ bl _savegpr_25
/* 800D1558 000CE498  7C 7A 1B 78 */ mr r26, r3
/* 800D155C 000CE49C  7C 9B 23 78 */ mr r27, r4
/* 800D1560 000CE4A0  7C BC 2B 78 */ mr r28, r5
/* 800D1564 000CE4A4  7C DD 33 78 */ mr r29, r6
/* 800D1568 000CE4A8  7C FE 3B 78 */ mr r30, r7
/* 800D156C 000CE4AC  7D 1F 43 78 */ mr r31, r8
/* 800D1570 000CE4B0  FF E0 10 90 */ fmr f31, f2
/* 800D1574 000CE4B4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D1578 000CE4B8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D157C 000CE4BC  88 03 00 14 */ lbz r0, 0x14(r3)
/* 800D1580 000CE4C0  28 00 00 3F */ cmplwi r0, 0x3f
/* 800D1584 000CE4C4  40 82 00 24 */ bne lbl_800D15A8
/* 800D1588 000CE4C8  57 C0 06 3E */ clrlwi r0, r30, 0x18
/* 800D158C 000CE4CC  28 00 00 0E */ cmplwi r0, 0xe
/* 800D1590 000CE4D0  41 82 00 14 */ beq lbl_800D15A4
/* 800D1594 000CE4D4  28 00 00 01 */ cmplwi r0, 1
/* 800D1598 000CE4D8  41 82 00 0C */ beq lbl_800D15A4
/* 800D159C 000CE4DC  28 00 00 10 */ cmplwi r0, 0x10
/* 800D15A0 000CE4E0  40 82 00 08 */ bne lbl_800D15A8
lbl_800D15A4:
/* 800D15A4 000CE4E4  3B C0 00 05 */ li r30, 5
lbl_800D15A8:
/* 800D15A8 000CE4E8  57 60 07 BD */ rlwinm. r0, r27, 0, 0x1e, 0x1e
/* 800D15AC 000CE4EC  41 82 00 20 */ beq lbl_800D15CC
/* 800D15B0 000CE4F0  80 1A 05 7C */ lwz r0, 0x57c(r26)
/* 800D15B4 000CE4F4  54 00 02 D7 */ rlwinm. r0, r0, 0, 0xb, 0xb
/* 800D15B8 000CE4F8  41 82 00 0C */ beq lbl_800D15C4
/* 800D15BC 000CE4FC  3B 20 00 04 */ li r25, 4
/* 800D15C0 000CE500  48 00 00 24 */ b lbl_800D15E4
lbl_800D15C4:
/* 800D15C4 000CE504  3B 20 00 00 */ li r25, 0
/* 800D15C8 000CE508  48 00 00 1C */ b lbl_800D15E4
lbl_800D15CC:
/* 800D15CC 000CE50C  A0 1A 2F DC */ lhz r0, 0x2fdc(r26)
/* 800D15D0 000CE510  28 00 00 67 */ cmplwi r0, 0x67
/* 800D15D4 000CE514  40 82 00 0C */ bne lbl_800D15E0
/* 800D15D8 000CE518  3B 20 00 06 */ li r25, 6
/* 800D15DC 000CE51C  48 00 00 08 */ b lbl_800D15E4
lbl_800D15E0:
/* 800D15E0 000CE520  3B 20 00 00 */ li r25, 0
lbl_800D15E4:
/* 800D15E4 000CE524  93 7A 11 00 */ stw r27, 0x1100(r26)
/* 800D15E8 000CE528  9B 9A 11 67 */ stb r28, 0x1167(r26)
/* 800D15EC 000CE52C  9B BA 11 66 */ stb r29, 0x1166(r26)
/* 800D15F0 000CE530  9B DA 11 64 */ stb r30, 0x1164(r26)
/* 800D15F4 000CE534  9B FA 11 04 */ stb r31, 0x1104(r26)
/* 800D15F8 000CE538  38 7A 12 14 */ addi r3, r26, 0x1214
/* 800D15FC 000CE53C  48 19 DC 05 */ bl cM3dGCyl_NS_SetR
/* 800D1600 000CE540  38 7A 12 14 */ addi r3, r26, 0x1214
/* 800D1604 000CE544  FC 20 F8 90 */ fmr f1, f31
/* 800D1608 000CE548  48 19 DB F1 */ bl cM3dGCyl_NS_SetH
/* 800D160C 000CE54C  9B 3A 11 65 */ stb r25, 0x1165(r26)
/* 800D1610 000CE550  A0 1A 2F E8 */ lhz r0, 0x2fe8(r26)
/* 800D1614 000CE554  28 00 00 1E */ cmplwi r0, 0x1e
/* 800D1618 000CE558  40 82 00 14 */ bne lbl_800D162C
/* 800D161C 000CE55C  80 1A 11 48 */ lwz r0, 0x1148(r26)
/* 800D1620 000CE560  60 00 00 02 */ ori r0, r0, 2
/* 800D1624 000CE564  90 1A 11 48 */ stw r0, 0x1148(r26)
/* 800D1628 000CE568  48 00 00 10 */ b lbl_800D1638
lbl_800D162C:
/* 800D162C 000CE56C  80 1A 11 48 */ lwz r0, 0x1148(r26)
/* 800D1630 000CE570  54 00 07 FA */ rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800D1634 000CE574  90 1A 11 48 */ stw r0, 0x1148(r26)
lbl_800D1638:
/* 800D1638 000CE578  80 1A 05 74 */ lwz r0, 0x574(r26)
/* 800D163C 000CE57C  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800D1640 000CE580  41 82 00 2C */ beq lbl_800D166C
/* 800D1644 000CE584  38 7A 08 50 */ addi r3, r26, 0x850
/* 800D1648 000CE588  38 00 00 03 */ li r0, 3
/* 800D164C 000CE58C  7C 09 03 A6 */ mtctr r0
lbl_800D1650:
/* 800D1650 000CE590  93 63 00 10 */ stw r27, 0x10(r3)
/* 800D1654 000CE594  9B 83 00 77 */ stb r28, 0x77(r3)
/* 800D1658 000CE598  9B A3 00 76 */ stb r29, 0x76(r3)
/* 800D165C 000CE59C  9B C3 00 74 */ stb r30, 0x74(r3)
/* 800D1660 000CE5A0  9B E3 00 14 */ stb r31, 0x14(r3)
/* 800D1664 000CE5A4  38 63 01 3C */ addi r3, r3, 0x13c
/* 800D1668 000CE5A8  42 00 FF E8 */ bdnz lbl_800D1650
lbl_800D166C:
/* 800D166C 000CE5AC  CB E1 00 28 */ lfd f31, 0x28(r1)
/* 800D1670 000CE5B0  39 61 00 28 */ addi r11, r1, 0x28
/* 800D1674 000CE5B4  48 29 0B A5 */ bl _restgpr_25
/* 800D1678 000CE5B8  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800D167C 000CE5BC  7C 08 03 A6 */ mtlr r0
/* 800D1680 000CE5C0  38 21 00 30 */ addi r1, r1, 0x30
/* 800D1684 000CE5C4  4E 80 00 20 */ blr