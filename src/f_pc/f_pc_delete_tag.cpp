//
// Generated By: dol2asm
// Translation Unit: f_pc/f_pc_delete_tag
//

#include "f_pc/f_pc_delete_tag.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct node_list_class {};

struct delete_tag_class {};

struct create_tag_class {};

//
// Forward References:
//

void fpcDtTg_IsEmpty();
void fpcDtTg_ToDeleteQ(delete_tag_class*);
static void fpcDtTg_DeleteQTo(delete_tag_class*);
void fpcDtTg_Do(delete_tag_class*, int (*)(void*));
void fpcDtTg_Init(delete_tag_class*, void*);
extern "C" extern u8 g_fpcDtTg_Queue[12 + 4 /* padding */];

extern "C" void fpcDtTg_IsEmpty__Fv();
extern "C" void fpcDtTg_ToDeleteQ__FP16delete_tag_class();
extern "C" static void fpcDtTg_DeleteQTo__FP16delete_tag_class();
extern "C" void fpcDtTg_Do__FP16delete_tag_classPFPv_i();
extern "C" void fpcDtTg_Init__FP16delete_tag_classPv();
extern "C" extern u8 g_fpcDtTg_Queue[12 + 4 /* padding */];

//
// External References:
//

void cTg_SingleCut(create_tag_class*);
void cTg_Addition(node_list_class*, create_tag_class*);
void cTg_Create(create_tag_class*, void*);

extern "C" void cTg_SingleCut__FP16create_tag_class();
extern "C" void cTg_Addition__FP15node_list_classP16create_tag_class();
extern "C" void cTg_Create__FP16create_tag_classPv();

//
// Declarations:
//

/* ############################################################################################## */
/* 803A39A0-803A39B0 000C+04 s=2 e=1 z=0  None .data      g_fpcDtTg_Queue */
SECTION_DATA u8 g_fpcDtTg_Queue[12 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80020F30-80020F48 0018+00 s=0 e=1 z=0  None .text      fpcDtTg_IsEmpty__Fv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void fpcDtTg_IsEmpty() {
    nofralloc
#include "asm/f_pc/f_pc_delete_tag/fpcDtTg_IsEmpty__Fv.s"
}
#pragma pop

/* 80020F48-80020F7C 0034+00 s=1 e=1 z=0  None .text      fpcDtTg_ToDeleteQ__FP16delete_tag_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void fpcDtTg_ToDeleteQ(delete_tag_class* param_0) {
    nofralloc
#include "asm/f_pc/f_pc_delete_tag/fpcDtTg_ToDeleteQ__FP16delete_tag_class.s"
}
#pragma pop

/* 80020F7C-80020F9C 0020+00 s=1 e=0 z=0  None .text      fpcDtTg_DeleteQTo__FP16delete_tag_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void fpcDtTg_DeleteQTo(delete_tag_class* param_0) {
    nofralloc
#include "asm/f_pc/f_pc_delete_tag/fpcDtTg_DeleteQTo__FP16delete_tag_class.s"
}
#pragma pop

/* 80020F9C-8002101C 0080+00 s=0 e=1 z=0  None .text      fpcDtTg_Do__FP16delete_tag_classPFPv_i */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void fpcDtTg_Do(delete_tag_class* param_0, int (*)(void*)) {
    nofralloc
#include "asm/f_pc/f_pc_delete_tag/fpcDtTg_Do__FP16delete_tag_classPFPv_i.s"
}
#pragma pop

/* 8002101C-80021040 0024+00 s=0 e=1 z=0  None .text      fpcDtTg_Init__FP16delete_tag_classPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void fpcDtTg_Init(delete_tag_class* param_0, void* param_1) {
    nofralloc
#include "asm/f_pc/f_pc_delete_tag/fpcDtTg_Init__FP16delete_tag_classPv.s"
}
#pragma pop