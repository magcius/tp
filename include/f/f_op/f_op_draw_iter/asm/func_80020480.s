/* 80020480 0001D3C0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80020484 0001D3C4  7C 08 02 A6 */ mflr r0
/* 80020488 0001D3C8  90 01 00 14 */ stw r0, 0x14(r1)
/* 8002048C 0001D3CC  80 63 00 08 */ lwz r3, 8(r3)
/* 80020490 0001D3D0  28 03 00 00 */ cmplwi r3, 0
/* 80020494 0001D3D4  40 82 00 08 */ bne lbl_8002049C
/* 80020498 0001D3D8  4B FF FF 69 */ bl fopDwIt_GetTag
lbl_8002049C:
/* 8002049C 0001D3DC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800204A0 0001D3E0  7C 08 03 A6 */ mtlr r0
/* 800204A4 0001D3E4  38 21 00 10 */ addi r1, r1, 0x10
/* 800204A8 0001D3E8  4E 80 00 20 */ blr
