//
// Generated By: dol2asm
// Translation Unit: d/bg/d_bg_s_wtr_chk
//

#include "d/bg/d_bg_s_wtr_chk.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct dBgS_WtrChk {
    /* 80079164 */ dBgS_WtrChk();
};

struct dBgS_SplGrpChk {
    /* 80078BB0 */ dBgS_SplGrpChk();
};

//
// Forward References:
//

extern "C" void __ct__11dBgS_WtrChkFv();

//
// External References:
//

extern "C" extern void* __vt__11dBgS_WtrChk[12];

extern "C" void __ct__14dBgS_SplGrpChkFv();
extern "C" extern void* __vt__11dBgS_WtrChk[12];

//
// Declarations:
//

/* 80079164-800791C4 0060+00 s=0 e=2 z=3  None .text      __ct__11dBgS_WtrChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dBgS_WtrChk::dBgS_WtrChk() {
    nofralloc
#include "asm/d/bg/d_bg_s_wtr_chk/__ct__11dBgS_WtrChkFv.s"
}
#pragma pop