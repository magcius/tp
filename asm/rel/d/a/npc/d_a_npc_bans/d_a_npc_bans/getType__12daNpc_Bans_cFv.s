lbl_80963558:
/* 80963558  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8096355C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80963560  2C 00 00 02 */	cmpwi r0, 2
/* 80963564  41 82 00 38 */	beq lbl_8096359C
/* 80963568  40 80 00 14 */	bge lbl_8096357C
/* 8096356C  2C 00 00 00 */	cmpwi r0, 0
/* 80963570  41 82 00 1C */	beq lbl_8096358C
/* 80963574  40 80 00 20 */	bge lbl_80963594
/* 80963578  48 00 00 3C */	b lbl_809635B4
lbl_8096357C:
/* 8096357C  2C 00 00 04 */	cmpwi r0, 4
/* 80963580  41 82 00 2C */	beq lbl_809635AC
/* 80963584  40 80 00 30 */	bge lbl_809635B4
/* 80963588  48 00 00 1C */	b lbl_809635A4
lbl_8096358C:
/* 8096358C  38 60 00 00 */	li r3, 0
/* 80963590  4E 80 00 20 */	blr 
lbl_80963594:
/* 80963594  38 60 00 01 */	li r3, 1
/* 80963598  4E 80 00 20 */	blr 
lbl_8096359C:
/* 8096359C  38 60 00 02 */	li r3, 2
/* 809635A0  4E 80 00 20 */	blr 
lbl_809635A4:
/* 809635A4  38 60 00 03 */	li r3, 3
/* 809635A8  4E 80 00 20 */	blr 
lbl_809635AC:
/* 809635AC  38 60 00 04 */	li r3, 4
/* 809635B0  4E 80 00 20 */	blr 
lbl_809635B4:
/* 809635B4  38 60 00 05 */	li r3, 5
/* 809635B8  4E 80 00 20 */	blr 