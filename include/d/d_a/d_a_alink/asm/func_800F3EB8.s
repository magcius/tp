/* 800F3EB8 000F0DF8  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800F3EBC 000F0DFC  7C 08 02 A6 */ mflr r0
/* 800F3EC0 000F0E00  90 01 00 24 */ stw r0, 0x24(r1)
/* 800F3EC4 000F0E04  39 61 00 20 */ addi r11, r1, 0x20
/* 800F3EC8 000F0E08  48 26 E3 11 */ bl _savegpr_28
/* 800F3ECC 000F0E0C  7C 7C 1B 78 */ mr r28, r3
/* 800F3ED0 000F0E10  7C 9D 23 78 */ mr r29, r4
/* 800F3ED4 000F0E14  3B C0 00 00 */ li r30, 0
/* 800F3ED8 000F0E18  A0 03 2F DC */ lhz r0, 0x2fdc(r3)
/* 800F3EDC 000F0E1C  28 00 01 0B */ cmplwi r0, 0x10b
/* 800F3EE0 000F0E20  40 82 00 3C */ bne lbl_800F3F1C
/* 800F3EE4 000F0E24  7F DF F3 78 */ mr r31, r30
/* 800F3EE8 000F0E28  81 83 06 28 */ lwz r12, 0x628(r3)
/* 800F3EEC 000F0E2C  81 8C 01 90 */ lwz r12, 0x190(r12)
/* 800F3EF0 000F0E30  7D 89 03 A6 */ mtctr r12
/* 800F3EF4 000F0E34  4E 80 04 21 */ bctrl
/* 800F3EF8 000F0E38  28 03 00 00 */ cmplwi r3, 0
/* 800F3EFC 000F0E3C  41 82 00 14 */ beq lbl_800F3F10
/* 800F3F00 000F0E40  80 1C 28 18 */ lwz r0, 0x2818(r28)
/* 800F3F04 000F0E44  7C 00 E8 40 */ cmplw r0, r29
/* 800F3F08 000F0E48  40 82 00 08 */ bne lbl_800F3F10
/* 800F3F0C 000F0E4C  3B E0 00 01 */ li r31, 1
lbl_800F3F10:
/* 800F3F10 000F0E50  57 E0 06 3F */ clrlwi. r0, r31, 0x18
/* 800F3F14 000F0E54  41 82 00 08 */ beq lbl_800F3F1C
/* 800F3F18 000F0E58  3B C0 00 01 */ li r30, 1
lbl_800F3F1C:
/* 800F3F1C 000F0E5C  57 C3 06 3E */ clrlwi r3, r30, 0x18
/* 800F3F20 000F0E60  39 61 00 20 */ addi r11, r1, 0x20
/* 800F3F24 000F0E64  48 26 E3 01 */ bl _restgpr_28
/* 800F3F28 000F0E68  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800F3F2C 000F0E6C  7C 08 03 A6 */ mtlr r0
/* 800F3F30 000F0E70  38 21 00 20 */ addi r1, r1, 0x20
/* 800F3F34 000F0E74  4E 80 00 20 */ blr