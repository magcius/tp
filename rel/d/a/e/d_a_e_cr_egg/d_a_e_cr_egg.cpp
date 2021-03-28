//
// Generated By: dol2asm
// Translation Unit: d_a_e_cr_egg
//

#include "rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct request_of_phase_process_class {};

struct mDoMtx_stack_c {
    /* 8000CD9C */ void transM(f32, f32, f32);
    /* 8000CE38 */ void scaleM(f32, f32, f32);
};

struct fopAc_ac_c {
    /* 80018B64 */ fopAc_ac_c();
};

struct e_cr_egg_class {};

struct dKy_tevstr_c {};

struct J3DModelData {};

struct Vec {};

struct cXyz {
    /* 80266AE4 */ void operator+(Vec const&) const;
};

struct dScnKy_env_light_c {
    /* 801A37C4 */ void settingTevStruct(int, cXyz*, dKy_tevstr_c*);
    /* 801A4DA0 */ void setLightTevColorType_MAJI(J3DModelData*, dKy_tevstr_c*);
};

struct dRes_info_c {};

struct dRes_control_c {
    /* 8003C2EC */ void getRes(char const*, s32, dRes_info_c*, int);
};

struct dPa_levelEcallBack {};

struct csXyz {};

struct _GXColor {};

struct dPa_control_c {
    /* 8004CA90 */ void set(u8, u16, cXyz const*, dKy_tevstr_c const*, csXyz const*, cXyz const*,
                            u8, dPa_levelEcallBack*, s8, _GXColor const*, _GXColor const*,
                            cXyz const*, f32);
};

struct dCcD_Stts {
    /* 80083860 */ void Init(int, int, fopAc_ac_c*);
};

struct dCcD_SrcSph {};

struct dCcD_Sph {
    /* 80084A34 */ void Set(dCcD_SrcSph const&);
};

struct dCcD_GStts {
    /* 80083760 */ dCcD_GStts();
};

struct dCcD_GObjInf {
    /* 80083A28 */ dCcD_GObjInf();
    /* 800842C0 */ void ChkAtHit();
    /* 80084460 */ void ChkTgHit();
};

struct dBgS_PolyPassChk {
    /* 80078E68 */ void SetObj();
};

struct dBgS_ObjAcch {
    /* 8069A844 */ ~dBgS_ObjAcch();
};

struct dBgS_AcchCir {
    /* 80075EAC */ dBgS_AcchCir();
    /* 80075F58 */ void SetWall(f32, f32);
};

struct dBgS {};

struct dBgS_Acch {
    /* 80075F94 */ ~dBgS_Acch();
    /* 800760A0 */ dBgS_Acch();
    /* 80076248 */ void Set(cXyz*, cXyz*, fopAc_ac_c*, int, dBgS_AcchCir*, cXyz*, csXyz*, csXyz*);
    /* 80076AAC */ void CrrPos(dBgS&);
};

struct cM3dGSph {
    /* 8026F648 */ void SetC(cXyz const&);
    /* 8026F708 */ void SetR(f32);
    /* 8069A7B4 */ ~cM3dGSph();
};

struct cM3dGAab {
    /* 8069A7FC */ ~cM3dGAab();
};

struct cCcD_Obj {};

struct cCcS {
    /* 80264BA8 */ void Set(cCcD_Obj*);
};

struct cBgS_PolyInfo {};

struct _GXTexObj {};

struct JAISoundID {};

struct Z2SeMgr {
    /* 802AB984 */ void seStart(JAISoundID, Vec const*, u32, s8, f32, f32, f32, f32, u8);
};

struct Z2Creature {
    /* 802C03C8 */ Z2Creature();
    /* 802C0530 */ void init(Vec*, Vec*, u8, u8);
    /* 802C06F4 */ void stopAnime();
};

struct J3DModel {};

//
// Forward References:
//

static void daE_CR_EGG_Draw(e_cr_egg_class*);
static void e_cr_egg_move(e_cr_egg_class*);
static void action(e_cr_egg_class*);
static void daE_CR_EGG_Execute(e_cr_egg_class*);
static bool daE_CR_EGG_IsDelete(e_cr_egg_class*);
static void daE_CR_EGG_Delete(e_cr_egg_class*);
static void useHeapInit(fopAc_ac_c*);
static void daE_CR_EGG_Create(fopAc_ac_c*);
extern "C" extern char const* const stringBase0;
extern "C" extern void* g_profile_E_CR_EGG[12];

extern "C" static void daE_CR_EGG_Draw__FP14e_cr_egg_class();
extern "C" static void e_cr_egg_move__FP14e_cr_egg_class();
extern "C" static void action__FP14e_cr_egg_class();
extern "C" static void daE_CR_EGG_Execute__FP14e_cr_egg_class();
extern "C" static bool daE_CR_EGG_IsDelete__FP14e_cr_egg_class();
extern "C" static void daE_CR_EGG_Delete__FP14e_cr_egg_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_CR_EGG_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static void func_8069A8B4();
extern "C" static void func_8069A8BC();
extern "C" extern char const* const stringBase0;
extern "C" extern void* g_profile_E_CR_EGG[12];

//
// External References:
//

void mDoMtx_XrotM(f32 (*)[4], s16);
void mDoMtx_YrotS(f32 (*)[4], s16);
void mDoMtx_YrotM(f32 (*)[4], s16);
void mDoExt_modelUpdateDL(J3DModel*);
void mDoExt_J3DModel__create(J3DModelData*, u32, u32);
void fopAcM_delete(fopAc_ac_c*);
void fopAcM_entrySolidHeap(fopAc_ac_c*, int (*)(fopAc_ac_c*), u32);
void dComIfG_resLoad(request_of_phase_process_class*, char const*);
void dComIfG_resDelete(request_of_phase_process_class*, char const*);
void dComIfGd_setSimpleShadow(cXyz*, f32, f32, cBgS_PolyInfo&, s16, f32, _GXTexObj*);
void cM_rndF(f32);
void cM_rndFX(f32);
void cLib_addCalc0(f32*, f32, f32);
void MtxPosition(cXyz*, cXyz*);
void operator delete(void*);
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" extern u8 g_env_light[4880];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" extern u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void stopAnime__10Z2CreatureFv();
extern "C" void __dl__FPv();
extern "C" void PSMTXCopy();
extern "C" void PSMTXTrans();
extern "C" void PSVECAdd();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" extern u8 g_env_light[4880];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" extern u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 8069A8CC-8069A8D0 0004+00 s=4 e=0 z=0  None .rodata    @3657 */
SECTION_RODATA static u32 const lit_3657 = 0x41F00000;

/* 8069A8D0-8069A8D4 0004+00 s=3 e=0 z=0  None .rodata    @3658 */
SECTION_RODATA static u32 const lit_3658 = 0x3F800000;

/* 80699F38-80699FC8 0090+00 s=1 e=0 z=0  None .text      daE_CR_EGG_Draw__FP14e_cr_egg_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daE_CR_EGG_Draw(e_cr_egg_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/daE_CR_EGG_Draw__FP14e_cr_egg_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 8069A8D4-8069A8E0 000C+00 s=1 e=0 z=0  None .rodata    @3676 */
SECTION_RODATA static u8 const lit_3676[12] = {
    0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x0A,
};

/* 8069A8E0-8069A8E4 0004+00 s=1 e=0 z=0  None .rodata    @3702 */
SECTION_RODATA static u32 const lit_3702 = 0x40A00000;

/* 8069A8E4-8069A8E8 0004+00 s=2 e=0 z=0  None .rodata    @3703 */
SECTION_RODATA static u32 const lit_3703 = 0x40400000;

/* 8069A8E8-8069A8EC 0004+00 s=1 e=0 z=0  None .rodata    @3704 */
SECTION_RODATA static u32 const lit_3704 = 0x461C4000;

/* 8069A8EC-8069A8F0 0004+00 s=1 e=0 z=0  None .rodata    @3705 */
SECTION_RODATA static u32 const lit_3705 = 0xBF000000;

/* 8069A8F0-8069A8F4 0004+00 s=1 e=0 z=0  None .rodata    @3706 */
SECTION_RODATA static u32 const lit_3706 = 0x45FA0000;

/* 8069A8F4-8069A8F8 0004+00 s=1 e=0 z=0  None .rodata    @3707 */
SECTION_RODATA static u32 const lit_3707 = 0xBF800000;

/* 8069A8F8-8069A8FC 0004+00 s=1 e=0 z=0  None .rodata    @3708 */
SECTION_RODATA static u32 const lit_3708 = 0x3F000000;

/* 8069A914-8069A920 000C+00 s=1 e=0 z=0  None .data      spy$3662 */
SECTION_DATA static u8 spy[12] = {
    0x41, 0x88, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00,
};

/* 80699FC8-8069A258 0290+00 s=1 e=0 z=0  None .text      e_cr_egg_move__FP14e_cr_egg_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void e_cr_egg_move(e_cr_egg_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/e_cr_egg_move__FP14e_cr_egg_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 8069A8FC-8069A900 0004+00 s=1 e=0 z=0  None .rodata    @3728 */
SECTION_RODATA static u32 const lit_3728 = 0x442F0000;

/* 8069A900-8069A904 0004+00 s=2 e=0 z=0  None .rodata    @3729 */
SECTION_RODATA static u8 const lit_3729[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 8069A904-8069A908 0004+00 s=3 e=0 z=0  None .rodata    @3730 */
SECTION_RODATA static u32 const lit_3730 = 0x41A00000;

/* 8069A258-8069A378 0120+00 s=1 e=0 z=0  None .text      action__FP14e_cr_egg_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void action(e_cr_egg_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/action__FP14e_cr_egg_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 8069A908-8069A90C 0004+00 s=1 e=0 z=0  None .rodata    @3770 */
SECTION_RODATA static u32 const lit_3770 = 0xC1A00000;

/* 8069A378-8069A4C4 014C+00 s=2 e=0 z=0  None .text      daE_CR_EGG_Execute__FP14e_cr_egg_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daE_CR_EGG_Execute(e_cr_egg_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/daE_CR_EGG_Execute__FP14e_cr_egg_class.s"
}
#pragma pop

/* 8069A4C4-8069A4CC 0008+00 s=1 e=0 z=0  None .text      daE_CR_EGG_IsDelete__FP14e_cr_egg_class */
static bool daE_CR_EGG_IsDelete(e_cr_egg_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 8069A90C-8069A911 0005+00 s=3 e=0 z=0  None .rodata    @stringBase0 */
#pragma push
#pragma force_active on
#pragma section ".dead"
SECTION_DEAD char const* const stringBase_8069A90C = "E_CR";
#pragma pop

/* 8069A4CC-8069A510 0044+00 s=1 e=0 z=0  None .text      daE_CR_EGG_Delete__FP14e_cr_egg_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daE_CR_EGG_Delete(e_cr_egg_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/daE_CR_EGG_Delete__FP14e_cr_egg_class.s"
}
#pragma pop

/* 8069A510-8069A57C 006C+00 s=1 e=0 z=0  None .text      useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 8069A920-8069A960 0040+00 s=1 e=0 z=0  None .data      cc_sph_src$3802 */
SECTION_DATA static u8 cc_sph_src[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x75, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
};

/* 8069A960-8069A980 0020+00 s=1 e=0 z=0  None .data      l_daE_CR_EGG_Method */
SECTION_DATA static void* l_daE_CR_EGG_Method[8] = {
    (void*)daE_CR_EGG_Create__FP10fopAc_ac_c,
    (void*)daE_CR_EGG_Delete__FP14e_cr_egg_class,
    (void*)daE_CR_EGG_Execute__FP14e_cr_egg_class,
    (void*)daE_CR_EGG_IsDelete__FP14e_cr_egg_class,
    (void*)daE_CR_EGG_Draw__FP14e_cr_egg_class,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 8069A980-8069A9B0 0030+00 s=0 e=0 z=1  None .data      g_profile_E_CR_EGG */
SECTION_DATA void* g_profile_E_CR_EGG[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x01C40000, (void*)&g_fpcLf_Method,
    (void*)0x00000A0C, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x00720000, (void*)&l_daE_CR_EGG_Method,
    (void*)0x00040100, (void*)0x02000000,
};

/* 8069A9B0-8069A9BC 000C+00 s=2 e=0 z=0  None .data      __vt__8cM3dGSph */
SECTION_DATA static void* __vt__8cM3dGSph[3] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8069A9BC-8069A9C8 000C+00 s=2 e=0 z=0  None .data      __vt__8cM3dGAab */
SECTION_DATA static void* __vt__8cM3dGAab[3] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8069A9C8-8069A9EC 0024+00 s=2 e=0 z=0  None .data      __vt__12dBgS_ObjAcch */
SECTION_DATA static void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL, (void*)NULL, (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL, (void*)NULL, (void*)func_8069A8BC,
    (void*)NULL, (void*)NULL, (void*)func_8069A8B4,
};

/* 8069A57C-8069A7B4 0238+00 s=1 e=0 z=0  None .text      daE_CR_EGG_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daE_CR_EGG_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/daE_CR_EGG_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 8069A7B4-8069A7FC 0048+00 s=1 e=0 z=0  None .text      __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cM3dGSph::~cM3dGSph() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 8069A7FC-8069A844 0048+00 s=1 e=0 z=0  None .text      __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cM3dGAab::~cM3dGAab() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 8069A844-8069A8B4 0070+00 s=3 e=0 z=0  None .text      __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dBgS_ObjAcch::~dBgS_ObjAcch() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 8069A8B4-8069A8BC 0008+00 s=1 e=0 z=0  None .text      @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm static void func_8069A8B4() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/func_8069A8B4.s"
}
#pragma pop

/* 8069A8BC-8069A8C4 0008+00 s=1 e=0 z=0  None .text      @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm static void func_8069A8BC() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/func_8069A8BC.s"
}
#pragma pop