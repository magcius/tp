/* 800F22A8 000EF1E8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F22AC 000EF1EC  7C 08 02 A6 */ mflr r0
/* 800F22B0 000EF1F0  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F22B4 000EF1F4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F22B8 000EF1F8  7C 7F 1B 78 */ mr r31, r3
/* 800F22BC 000EF1FC  38 80 00 12 */ li r4, 0x12
/* 800F22C0 000EF200  4B FC 0F 91 */ bl daAlink_c_NS_setDoStatus
/* 800F22C4 000EF204  7F E3 FB 78 */ mr r3, r31
/* 800F22C8 000EF208  4B FF B7 5D */ bl daAlink_c_NS_setSyncRidePos
/* 800F22CC 000EF20C  2C 03 00 00 */ cmpwi r3, 0
/* 800F22D0 000EF210  40 82 00 0C */ bne lbl_800F22DC
/* 800F22D4 000EF214  38 60 00 01 */ li r3, 1
/* 800F22D8 000EF218  48 00 00 48 */ b lbl_800F2320
lbl_800F22DC:
/* 800F22DC 000EF21C  7F E3 FB 78 */ mr r3, r31
/* 800F22E0 000EF220  4B FF BA 8D */ bl daAlink_c_NS_checkHorseSpecialProc
/* 800F22E4 000EF224  2C 03 00 00 */ cmpwi r3, 0
/* 800F22E8 000EF228  41 82 00 0C */ beq lbl_800F22F4
/* 800F22EC 000EF22C  38 60 00 01 */ li r3, 1
/* 800F22F0 000EF230  48 00 00 30 */ b lbl_800F2320
lbl_800F22F4:
/* 800F22F4 000EF234  7F E3 FB 78 */ mr r3, r31
/* 800F22F8 000EF238  4B FF CA A1 */ bl daAlink_c_NS_setBaseRideAnime
/* 800F22FC 000EF23C  7F E3 FB 78 */ mr r3, r31
/* 800F2300 000EF240  4B FE CB 1D */ bl daAlink_c_NS_cancelBowMove
/* 800F2304 000EF244  7F E3 FB 78 */ mr r3, r31
/* 800F2308 000EF248  4B FF D1 49 */ bl daAlink_c_NS_checkNextActionHorse
/* 800F230C 000EF24C  2C 03 00 00 */ cmpwi r3, 0
/* 800F2310 000EF250  40 82 00 0C */ bne lbl_800F231C
/* 800F2314 000EF254  7F E3 FB 78 */ mr r3, r31
/* 800F2318 000EF258  4B FF CD 39 */ bl daAlink_c_NS_setBodyAngleRideReadyAnime
lbl_800F231C:
/* 800F231C 000EF25C  38 60 00 01 */ li r3, 1
lbl_800F2320:
/* 800F2320 000EF260  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F2324 000EF264  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F2328 000EF268  7C 08 03 A6 */ mtlr r0
/* 800F232C 000EF26C  38 21 00 10 */ addi r1, r1, 0x10
/* 800F2330 000EF270  4E 80 00 20 */ blr