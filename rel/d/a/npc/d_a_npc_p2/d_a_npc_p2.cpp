//
// Generated By: dol2asm
// Translation Unit: d_a_npc_p2
//

#include "rel/d/a/npc/d_a_npc_p2/d_a_npc_p2.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Forward References:
//

static bool daNpc_P2Create(void*);
static bool daNpc_P2Delete(void*);
static bool daNpc_P2Execute(void*);
static bool daNpc_P2Draw(void*);
static bool daNpc_P2IsDelete(void*);
extern "C" extern void* g_profile_NPC_P2[12];

extern "C" static bool daNpc_P2Create__FPv();
extern "C" static bool daNpc_P2Delete__FPv();
extern "C" static bool daNpc_P2Execute__FPv();
extern "C" static bool daNpc_P2Draw__FPv();
extern "C" static bool daNpc_P2IsDelete__FPv();
extern "C" extern void* g_profile_NPC_P2[12];

//
// External References:
//

extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];

extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];

//
// Declarations:
//

/* 80A92BF8-80A92C00 0008+00 s=1 e=0 z=0  None .text      daNpc_P2Create__FPv */
static bool daNpc_P2Create(void* param_0) {
    return true;
}

/* 80A92C00-80A92C08 0008+00 s=1 e=0 z=0  None .text      daNpc_P2Delete__FPv */
static bool daNpc_P2Delete(void* param_0) {
    return true;
}

/* 80A92C08-80A92C10 0008+00 s=1 e=0 z=0  None .text      daNpc_P2Execute__FPv */
static bool daNpc_P2Execute(void* param_0) {
    return true;
}

/* 80A92C10-80A92C18 0008+00 s=1 e=0 z=0  None .text      daNpc_P2Draw__FPv */
static bool daNpc_P2Draw(void* param_0) {
    return true;
}

/* 80A92C18-80A92C20 0008+00 s=1 e=0 z=0  None .text      daNpc_P2IsDelete__FPv */
static bool daNpc_P2IsDelete(void* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80A92C28-80A92C48 0020+00 s=1 e=0 z=0  None .data      daNpc_P2MethodTable */
SECTION_DATA static void* daNpc_P2MethodTable[8] = {
    (void*)daNpc_P2Create__FPv,
    (void*)daNpc_P2Delete__FPv,
    (void*)daNpc_P2Execute__FPv,
    (void*)daNpc_P2IsDelete__FPv,
    (void*)daNpc_P2Draw__FPv,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80A92C48-80A92C78 0030+00 s=0 e=0 z=1  None .data      g_profile_NPC_P2 */
SECTION_DATA void* g_profile_NPC_P2[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x02A90000, (void*)&g_fpcLf_Method,
    (void*)0x00000001, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x01AC0000, (void*)&daNpc_P2MethodTable,
    (void*)0x020C4407, (void*)NULL,
};