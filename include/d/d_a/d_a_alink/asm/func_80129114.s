/* 80129114 00126054  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 80129118 00126058  7C 08 02 A6 */ mflr r0
/* 8012911C 0012605C  90 01 00 44 */ stw r0, 0x44(r1)
/* 80129120 00126060  DB E1 00 30 */ stfd f31, 0x30(r1)
/* 80129124 00126064  F3 E1 00 38 */ psq_st f31, 56(r1), 0, 0
/* 80129128 00126068  DB C1 00 20 */ stfd f30, 0x20(r1)
/* 8012912C 0012606C  F3 C1 00 28 */ psq_st f30, 40(r1), 0, 0
/* 80129130 00126070  39 61 00 20 */ addi r11, r1, 0x20
/* 80129134 00126074  48 23 90 A9 */ bl _savegpr_29
/* 80129138 00126078  7C 7E 1B 78 */ mr r30, r3
/* 8012913C 0012607C  FF C0 08 90 */ fmr f30, f1
/* 80129140 00126080  3C 80 80 39 */ lis r4, lbl_8038D658@ha
/* 80129144 00126084  3B E4 D6 58 */ addi r31, r4, lbl_8038D658@l
/* 80129148 00126088  A8 83 2F E4 */ lha r4, 0x2fe4(r3)
/* 8012914C 0012608C  4B FB E7 49 */ bl daAlink_c_NS_checkSetChainPullAnime
/* 80129150 00126090  2C 03 00 00 */ cmpwi r3, 0
/* 80129154 00126094  41 82 00 68 */ beq lbl_801291BC
/* 80129158 00126098  80 1E 05 8C */ lwz r0, 0x58c(r30)
/* 8012915C 0012609C  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 80129160 001260A0  38 80 00 8A */ li r4, 0x8a
/* 80129164 001260A4  41 82 00 08 */ beq lbl_8012916C
/* 80129168 001260A8  38 80 00 8B */ li r4, 0x8b
lbl_8012916C:
/* 8012916C 001260AC  7C 9F 23 78 */ mr r31, r4
/* 80129170 001260B0  7F C3 F3 78 */ mr r3, r30
/* 80129174 001260B4  4B FF F6 99 */ bl daAlink_c_NS_checkUnderMove0BckNoArcWolf
/* 80129178 001260B8  2C 03 00 00 */ cmpwi r3, 0
/* 8012917C 001260BC  40 82 01 98 */ bne lbl_80129314
/* 80129180 001260C0  7F C3 F3 78 */ mr r3, r30
/* 80129184 001260C4  81 9E 06 28 */ lwz r12, 0x628(r30)
/* 80129188 001260C8  81 8C 00 68 */ lwz r12, 0x68(r12)
/* 8012918C 001260CC  7D 89 03 A6 */ mtctr r12
/* 80129190 001260D0  4E 80 04 21 */ bctrl
/* 80129194 001260D4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80129198 001260D8  41 82 00 0C */ beq lbl_801291A4
/* 8012919C 001260DC  C0 22 93 A8 */ lfs f1, lbl_80452DA8-_SDA2_BASE_(r2)
/* 801291A0 001260E0  48 00 00 08 */ b lbl_801291A8
lbl_801291A4:
/* 801291A4 001260E4  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
lbl_801291A8:
/* 801291A8 001260E8  7F C3 F3 78 */ mr r3, r30
/* 801291AC 001260EC  7F E4 FB 78 */ mr r4, r31
/* 801291B0 001260F0  C0 42 92 C4 */ lfs f2, lbl_80452CC4-_SDA2_BASE_(r2)
/* 801291B4 001260F4  48 00 05 25 */ bl daAlink_c_NS_setSingleAnimeWolfBaseSpeed
/* 801291B8 001260F8  48 00 01 5C */ b lbl_80129314
lbl_801291BC:
/* 801291BC 001260FC  88 1E 2F 98 */ lbz r0, 0x2f98(r30)
/* 801291C0 00126100  28 00 00 01 */ cmplwi r0, 1
/* 801291C4 00126104  40 82 00 14 */ bne lbl_801291D8
/* 801291C8 00126108  7F C3 F3 78 */ mr r3, r30
/* 801291CC 0012610C  FC 20 F0 90 */ fmr f1, f30
/* 801291D0 00126110  48 00 01 6D */ bl daAlink_c_NS_setBlendWolfAtnBackMoveAnime
/* 801291D4 00126114  48 00 01 40 */ b lbl_80129314
lbl_801291D8:
/* 801291D8 00126118  38 00 00 00 */ li r0, 0
/* 801291DC 0012611C  98 1E 2F C1 */ stb r0, 0x2fc1(r30)
/* 801291E0 00126120  80 1E 31 74 */ lwz r0, 0x3174(r30)
/* 801291E4 00126124  2C 00 00 08 */ cmpwi r0, 8
/* 801291E8 00126128  41 82 00 10 */ beq lbl_801291F8
/* 801291EC 0012612C  80 1E 19 9C */ lwz r0, 0x199c(r30)
/* 801291F0 00126130  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 801291F4 00126134  40 82 00 0C */ bne lbl_80129200
lbl_801291F8:
/* 801291F8 00126138  38 60 00 00 */ li r3, 0
/* 801291FC 0012613C  48 00 00 14 */ b lbl_80129210
lbl_80129200:
/* 80129200 00126140  7F C3 F3 78 */ mr r3, r30
/* 80129204 00126144  38 9E 1A 60 */ addi r4, r30, 0x1a60
/* 80129208 00126148  A8 BE 04 DE */ lha r5, 0x4de(r30)
/* 8012920C 0012614C  4B F8 6E 8D */ bl daAlink_c_NS_getGroundAngle
lbl_80129210:
/* 80129210 00126150  C0 3E 33 98 */ lfs f1, 0x3398(r30)
/* 80129214 00126154  3C 80 80 44 */ lis r4, lbl_80439A20@ha
/* 80129218 00126158  38 84 9A 20 */ addi r4, r4, lbl_80439A20@l
/* 8012921C 0012615C  54 60 04 38 */ rlwinm r0, r3, 0, 0x10, 0x1c
/* 80129220 00126160  7C 64 02 14 */ add r3, r4, r0
/* 80129224 00126164  C0 03 00 04 */ lfs f0, 4(r3)
/* 80129228 00126168  EC 21 00 32 */ fmuls f1, f1, f0
/* 8012922C 0012616C  C0 1E 05 94 */ lfs f0, 0x594(r30)
/* 80129230 00126170  EC 01 00 24 */ fdivs f0, f1, f0
/* 80129234 00126174  FC 00 02 10 */ fabs f0, f0
/* 80129238 00126178  FC 00 00 18 */ frsp f0, f0
/* 8012923C 0012617C  38 9F 19 18 */ addi r4, r31, 0x1918
/* 80129240 00126180  C0 44 00 10 */ lfs f2, 0x10(r4)
/* 80129244 00126184  FC 00 10 40 */ fcmpo cr0, f0, f2
/* 80129248 00126188  40 80 00 6C */ bge lbl_801292B4
/* 8012924C 0012618C  EF E0 10 24 */ fdivs f31, f0, f2
/* 80129250 00126190  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 80129254 00126194  54 00 07 FE */ clrlwi r0, r0, 0x1f
/* 80129258 00126198  7C 60 00 D0 */ neg r3, r0
/* 8012925C 0012619C  38 03 00 03 */ addi r0, r3, 3
/* 80129260 001261A0  7C 1D 03 78 */ mr r29, r0
/* 80129264 001261A4  7F C3 F3 78 */ mr r3, r30
/* 80129268 001261A8  4B FF F5 31 */ bl daAlink_c_NS_checkWolfAtnWait
/* 8012926C 001261AC  2C 03 00 00 */ cmpwi r3, 0
/* 80129270 001261B0  41 82 00 14 */ beq lbl_80129284
/* 80129274 001261B4  38 80 00 1C */ li r4, 0x1c
/* 80129278 001261B8  38 7F 17 D0 */ addi r3, r31, 0x17d0
/* 8012927C 001261BC  C0 43 00 B8 */ lfs f2, 0xb8(r3)
/* 80129280 001261C0  48 00 00 10 */ b lbl_80129290
lbl_80129284:
/* 80129284 001261C4  38 80 00 00 */ li r4, 0
/* 80129288 001261C8  38 7F 18 D0 */ addi r3, r31, 0x18d0
/* 8012928C 001261CC  C0 43 00 14 */ lfs f2, 0x14(r3)
lbl_80129290:
/* 80129290 001261D0  7F C3 F3 78 */ mr r3, r30
/* 80129294 001261D4  FC 20 F8 90 */ fmr f1, f31
/* 80129298 001261D8  38 BF 19 18 */ addi r5, r31, 0x1918
/* 8012929C 001261DC  C0 65 00 08 */ lfs f3, 8(r5)
/* 801292A0 001261E0  38 A0 00 45 */ li r5, 0x45
/* 801292A4 001261E4  7F A6 EB 78 */ mr r6, r29
/* 801292A8 001261E8  FC 80 F0 90 */ fmr f4, f30
/* 801292AC 001261EC  48 00 01 E1 */ bl daAlink_c_NS_setDoubleAnimeWolf
/* 801292B0 001261F0  48 00 00 64 */ b lbl_80129314
lbl_801292B4:
/* 801292B4 001261F4  C0 64 00 14 */ lfs f3, 0x14(r4)
/* 801292B8 001261F8  FC 00 18 40 */ fcmpo cr0, f0, f3
/* 801292BC 001261FC  40 80 00 34 */ bge lbl_801292F0
/* 801292C0 00126200  EC 20 10 28 */ fsubs f1, f0, f2
/* 801292C4 00126204  EC 03 10 28 */ fsubs f0, f3, f2
/* 801292C8 00126208  EC 21 00 24 */ fdivs f1, f1, f0
/* 801292CC 0012620C  7F C3 F3 78 */ mr r3, r30
/* 801292D0 00126210  C0 44 00 08 */ lfs f2, 8(r4)
/* 801292D4 00126214  C0 64 00 0C */ lfs f3, 0xc(r4)
/* 801292D8 00126218  38 80 00 45 */ li r4, 0x45
/* 801292DC 0012621C  38 A0 00 46 */ li r5, 0x46
/* 801292E0 00126220  38 C0 00 03 */ li r6, 3
/* 801292E4 00126224  FC 80 F0 90 */ fmr f4, f30
/* 801292E8 00126228  48 00 01 A5 */ bl daAlink_c_NS_setDoubleAnimeWolf
/* 801292EC 0012622C  48 00 00 28 */ b lbl_80129314
lbl_801292F0:
/* 801292F0 00126230  C0 44 00 0C */ lfs f2, 0xc(r4)
/* 801292F4 00126234  7F C3 F3 78 */ mr r3, r30
/* 801292F8 00126238  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 801292FC 0012623C  FC 60 10 90 */ fmr f3, f2
/* 80129300 00126240  38 80 00 46 */ li r4, 0x46
/* 80129304 00126244  38 A0 00 46 */ li r5, 0x46
/* 80129308 00126248  38 C0 00 03 */ li r6, 3
/* 8012930C 0012624C  FC 80 F0 90 */ fmr f4, f30
/* 80129310 00126250  48 00 01 7D */ bl daAlink_c_NS_setDoubleAnimeWolf
lbl_80129314:
/* 80129314 00126254  E3 E1 00 38 */ psq_l f31, 56(r1), 0, 0
/* 80129318 00126258  CB E1 00 30 */ lfd f31, 0x30(r1)
/* 8012931C 0012625C  E3 C1 00 28 */ psq_l f30, 40(r1), 0, 0
/* 80129320 00126260  CB C1 00 20 */ lfd f30, 0x20(r1)
/* 80129324 00126264  39 61 00 20 */ addi r11, r1, 0x20
/* 80129328 00126268  48 23 8F 01 */ bl _restgpr_29
/* 8012932C 0012626C  80 01 00 44 */ lwz r0, 0x44(r1)
/* 80129330 00126270  7C 08 03 A6 */ mtlr r0
/* 80129334 00126274  38 21 00 40 */ addi r1, r1, 0x40
/* 80129338 00126278  4E 80 00 20 */ blr