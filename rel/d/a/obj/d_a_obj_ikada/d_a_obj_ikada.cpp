//
// Generated By: dol2asm
// Translation Unit: d_a_obj_ikada
//

#include "rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct request_of_phase_process_class {};

struct csXyz {};

struct cXyz {};

struct mDoMtx_stack_c {
    /* 8000CD64 */ void transS(cXyz const&);
    /* 8000CF44 */ void ZXYrotM(csXyz const&);
};

struct fopAc_ac_c {};

struct fopAcM_wt_c {
    /* 8001DD84 */ void waterCheck(cXyz const*);
};

struct daObjIkada_c {
    /* 80C269B8 */ void RideOn_Angle(s16&, f32, s16, f32);
    /* 80C26A20 */ void Check_RideOn();
    /* 80C26C50 */ void initBaseMtx();
    /* 80C26C7C */ void setBaseMtx();
    /* 80C27028 */ void CreateHeap();
    /* 80C270A0 */ void Create();
    /* 80C270E0 */ void Execute(f32 (**)[3][4]);
    /* 80C27400 */ void Draw();
    /* 80C274A4 */ void Delete();
};

struct dKy_tevstr_c {};

struct J3DModelData {};

struct dScnKy_env_light_c {
    /* 801A37C4 */ void settingTevStruct(int, cXyz*, dKy_tevstr_c*);
    /* 801A4DA0 */ void setLightTevColorType_MAJI(J3DModelData*, dKy_tevstr_c*);
};

struct dRes_info_c {};

struct dRes_control_c {
    /* 8003C37C */ void getRes(char const*, char const*, dRes_info_c*, int);
    /* 8003C6B8 */ void getObjectResName2Index(char const*, char const*);
};

struct dCcD_GStts {
    /* 80083760 */ dCcD_GStts();
};

struct dBgW {};

struct dBgS_PolyPassChk {
    /* 80078E68 */ void SetObj();
};

struct dBgS_ObjAcch {
    /* 80C26FB8 */ ~dBgS_ObjAcch();
};

struct cBgS_PolyInfo {};

struct dBgS_MoveBgActor {
    /* 80078624 */ dBgS_MoveBgActor();
    /* 800786B0 */ bool IsDelete();
    /* 800786B8 */ bool ToFore();
    /* 800786C0 */ bool ToBack();
    /* 800787BC */ void MoveBGCreate(char const*, int,
                                     void (*)(dBgW*, void*, cBgS_PolyInfo const&, bool, cXyz*,
                                              csXyz*, csXyz*),
                                     u32, f32 (*)[3][4]);
    /* 800788DC */ void MoveBGDelete();
    /* 80078950 */ void MoveBGExecute();
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

struct Vec {};

struct J3DModel {};

//
// Forward References:
//

static void rideCallBack(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
static void daObjIkada_Draw(daObjIkada_c*);
static void daObjIkada_Execute(daObjIkada_c*);
static bool daObjIkada_IsDelete(daObjIkada_c*);
static void daObjIkada_Delete(daObjIkada_c*);
static void daObjIkada_Create(fopAc_ac_c*);
extern "C" extern char const* const stringBase0;
extern "C" extern void* g_profile_Obj_Ikada[12];

extern "C" void RideOn_Angle__12daObjIkada_cFRsfsf();
extern "C" void Check_RideOn__12daObjIkada_cFv();
extern "C" void initBaseMtx__12daObjIkada_cFv();
extern "C" void setBaseMtx__12daObjIkada_cFv();
extern "C" static void rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void daObjIkada_Draw__FP12daObjIkada_c();
extern "C" static void daObjIkada_Execute__FP12daObjIkada_c();
extern "C" static bool daObjIkada_IsDelete__FP12daObjIkada_c();
extern "C" static void daObjIkada_Delete__FP12daObjIkada_c();
extern "C" static void daObjIkada_Create__FP10fopAc_ac_c();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void CreateHeap__12daObjIkada_cFv();
extern "C" void Create__12daObjIkada_cFv();
extern "C" void Execute__12daObjIkada_cFPPA3_A4_f();
extern "C" void Draw__12daObjIkada_cFv();
extern "C" void Delete__12daObjIkada_cFv();
extern "C" static void func_80C274D8();
extern "C" static void func_80C274E0();
extern "C" extern char const* const stringBase0;
extern "C" extern void* g_profile_Obj_Ikada[12];

//
// External References:
//

void mDoExt_modelUpdateDL(J3DModel*);
void mDoExt_J3DModel__create(J3DModelData*, u32, u32);
void fopAcM_setCullSizeBox(fopAc_ac_c*, f32, f32, f32, f32, f32, f32);
void fopAcM_posMoveF(fopAc_ac_c*, cXyz const*);
void dComIfG_resLoad(request_of_phase_process_class*, char const*);
void dComIfG_resDelete(request_of_phase_process_class*, char const*);
void dBgS_MoveBGProc_TypicalRotY(dBgW*, void*, cBgS_PolyInfo const&, bool, cXyz*, csXyz*, csXyz*);
void cM_rndFX(f32);
void cLib_addCalc(f32*, f32, f32, f32, f32);
void cLib_addCalcAngleS(s16*, s16, s16, s16, s16);
void cLib_targetAngleY(Vec const*, Vec const*);
void operator delete(void*);
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 g_env_light[4880];
extern "C" extern u8 j3dSys[284];
extern "C" extern u8 sincosTable___5JMath[65536];
extern "C" extern u32 __float_nan;
extern "C" extern f32 mWaterY__11fopAcM_wt_c[1 + 1 /* padding */];

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void waterCheck__11fopAcM_wt_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cM_rndFX__Ff();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void __dl__FPv();
extern "C" void PSMTXCopy();
extern "C" void PSVECSquareDistance();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 g_env_light[4880];
extern "C" extern u8 j3dSys[284];
extern "C" extern u8 sincosTable___5JMath[65536];
extern "C" extern u32 __float_nan;
extern "C" extern f32 mWaterY__11fopAcM_wt_c[1 + 1 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80C274F0-80C274F8 0004+04 s=3 e=0 z=0  None .rodata    @3668 */
SECTION_RODATA static u8 const lit_3668[4 + 4 /* padding */] = {
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

/* 80C274F8-80C27500 0008+00 s=3 e=0 z=0  None .rodata    @3670 */
SECTION_RODATA static u8 const lit_3670[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};

/* 80C269B8-80C26A20 0068+00 s=1 e=0 z=0  None .text      RideOn_Angle__12daObjIkada_cFRsfsf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjIkada_c::RideOn_Angle(s16& param_0, f32 param_1, s16 param_2, f32 param_3) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/RideOn_Angle__12daObjIkada_cFRsfsf.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C27500-80C27508 0008+00 s=1 e=0 z=0  None .rodata    @3725 */
SECTION_RODATA static u8 const lit_3725[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C27508-80C27510 0008+00 s=1 e=0 z=0  None .rodata    @3726 */
SECTION_RODATA static u8 const lit_3726[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C27510-80C27518 0008+00 s=1 e=0 z=0  None .rodata    @3727 */
SECTION_RODATA static u8 const lit_3727[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C27518-80C2751C 0004+00 s=2 e=0 z=0  None .rodata    @3728 */
SECTION_RODATA static u32 const lit_3728 = 0x437A0000;

/* 80C2751C-80C27520 0004+00 s=3 e=0 z=0  None .rodata    @3729 */
SECTION_RODATA static u32 const lit_3729 = 0x43960000;

/* 80C27520-80C27524 0004+00 s=2 e=0 z=0  None .rodata    @3730 */
SECTION_RODATA static u32 const lit_3730 = 0x3D4CCCCD;

/* 80C27524-80C27528 0004+00 s=3 e=0 z=0  None .rodata    @3731 */
SECTION_RODATA static u32 const lit_3731 = 0x42C80000;

/* 80C26A20-80C26C50 0230+00 s=1 e=0 z=0  None .text      Check_RideOn__12daObjIkada_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjIkada_c::Check_RideOn() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/Check_RideOn__12daObjIkada_cFv.s"
}
#pragma pop

/* 80C26C50-80C26C7C 002C+00 s=1 e=0 z=0  None .text      initBaseMtx__12daObjIkada_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjIkada_c::initBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/initBaseMtx__12daObjIkada_cFv.s"
}
#pragma pop

/* 80C26C7C-80C26CD8 005C+00 s=2 e=0 z=0  None .text      setBaseMtx__12daObjIkada_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjIkada_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/setBaseMtx__12daObjIkada_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C27528-80C2752C 0004+00 s=1 e=0 z=0  None .rodata    @3767 */
SECTION_RODATA static u32 const lit_3767 = 0xBF800000;

/* 80C2752C-80C27530 0004+00 s=1 e=0 z=0  None .rodata    @3768 */
SECTION_RODATA static u32 const lit_3768 = 0xC0C00000;

/* 80C26CD8-80C26D3C 0064+00 s=1 e=0 z=0  None .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c.s"
}
#pragma pop

/* 80C26D3C-80C26D68 002C+00 s=1 e=0 z=0  None .text      daObjIkada_Draw__FP12daObjIkada_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daObjIkada_Draw(daObjIkada_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/daObjIkada_Draw__FP12daObjIkada_c.s"
}
#pragma pop

/* 80C26D68-80C26D88 0020+00 s=1 e=0 z=0  None .text      daObjIkada_Execute__FP12daObjIkada_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daObjIkada_Execute(daObjIkada_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/daObjIkada_Execute__FP12daObjIkada_c.s"
}
#pragma pop

/* 80C26D88-80C26D90 0008+00 s=1 e=0 z=0  None .text      daObjIkada_IsDelete__FP12daObjIkada_c */
static bool daObjIkada_IsDelete(daObjIkada_c* param_0) {
    return true;
}

/* 80C26D90-80C26DB4 0024+00 s=1 e=0 z=0  None .text      daObjIkada_Delete__FP12daObjIkada_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daObjIkada_Delete(daObjIkada_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/daObjIkada_Delete__FP12daObjIkada_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C27530-80C27534 0004+00 s=1 e=0 z=0  None .rodata    @3846 */
SECTION_RODATA static u32 const lit_3846 = 0x43480000;

/* 80C27534-80C27538 0004+00 s=1 e=0 z=0  None .rodata    @3847 */
SECTION_RODATA static u32 const lit_3847 = 0x46FA0000;

/* 80C27538-80C2753C 0004+00 s=1 e=0 z=0  None .rodata    @3848 */
SECTION_RODATA static u32 const lit_3848 = 0xC37A0000;

/* 80C2753C-80C27540 0004+00 s=1 e=0 z=0  None .rodata    @3849 */
SECTION_RODATA static u32 const lit_3849 = 0xC2480000;

/* 80C27540-80C27544 0004+00 s=1 e=0 z=0  None .rodata    @3850 */
SECTION_RODATA static u32 const lit_3850 = 0xC3960000;

/* 80C27544-80C27548 0004+00 s=1 e=0 z=0  None .rodata    @3851 */
SECTION_RODATA static u32 const lit_3851 = 0x42480000;

/* 80C27548-80C2754C 0004+00 s=1 e=0 z=0  None .rodata    @3912 */
SECTION_RODATA static u32 const lit_3912 = 0x44540000;

/* 80C2754C-80C27550 0004+00 s=1 e=0 z=0  None .rodata    @3913 */
SECTION_RODATA static u32 const lit_3913 = 0x40000000;

/* 80C27550-80C27554 0004+00 s=1 e=0 z=0  None .rodata    @3914 */
SECTION_RODATA static u32 const lit_3914 = 0x41300000;

/* 80C27554-80C27558 0004+00 s=1 e=0 z=0  None .rodata    @3915 */
SECTION_RODATA static u32 const lit_3915 = 0x40A00000;

/* 80C27558-80C2755C 0004+00 s=1 e=0 z=0  None .rodata    @3916 */
SECTION_RODATA static u32 const lit_3916 = 0x3DCCCCCD;

/* 80C2755C-80C27560 0004+00 s=1 e=0 z=0  None .rodata    @3917 */
SECTION_RODATA static u32 const lit_3917 = 0x41700000;

/* 80C27560-80C27564 0004+00 s=1 e=0 z=0  None .rodata    @3918 */
SECTION_RODATA static u32 const lit_3918 = 0x3E4CCCCD;

/* 80C27564-80C27584 0020+00 s=3 e=0 z=0  None .rodata    @stringBase0 */
#pragma push
#pragma force_active on
#pragma section ".dead"
SECTION_DEAD char const* const stringBase_80C27564 = "M_Ikada";
SECTION_DEAD char const* const stringBase_80C2756C = "M_Ikada.dzb";
SECTION_DEAD char const* const stringBase_80C27578 = "M_Ikada.bmd";
#pragma pop

/* 80C27584-80C27588 0004+00 s=3 e=0 z=0  None .data      l_arcName */
SECTION_DATA static void* l_arcName = (void*)&stringBase0;

/* 80C27588-80C275A8 0020+00 s=1 e=0 z=0  None .data      l_daObjIkada_Method */
SECTION_DATA static void* l_daObjIkada_Method[8] = {
    (void*)daObjIkada_Create__FP10fopAc_ac_c,
    (void*)daObjIkada_Delete__FP12daObjIkada_c,
    (void*)daObjIkada_Execute__FP12daObjIkada_c,
    (void*)daObjIkada_IsDelete__FP12daObjIkada_c,
    (void*)daObjIkada_Draw__FP12daObjIkada_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80C275A8-80C275D8 0030+00 s=0 e=0 z=1  None .data      g_profile_Obj_Ikada */
SECTION_DATA void* g_profile_Obj_Ikada[12] = {
    (void*)0xFFFFFFFD, (void*)0x0003FFFD,
    (void*)0x00650000, (void*)&g_fpcLf_Method,
    (void*)0x00000844, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x01C70000, (void*)&l_daObjIkada_Method,
    (void*)0x00040180, (void*)0x000E0000,
};

/* 80C275D8-80C275FC 0024+00 s=2 e=0 z=0  None .data      __vt__12dBgS_ObjAcch */
SECTION_DATA static void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL, (void*)NULL, (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL, (void*)NULL, (void*)func_80C274E0,
    (void*)NULL, (void*)NULL, (void*)func_80C274D8,
};

/* 80C275FC-80C27624 0028+00 s=1 e=0 z=0  None .data      __vt__12daObjIkada_c */
SECTION_DATA static void* __vt__12daObjIkada_c[10] = {
    (void*)NULL,
    (void*)NULL,
    (void*)CreateHeap__12daObjIkada_cFv,
    (void*)Create__12daObjIkada_cFv,
    (void*)Execute__12daObjIkada_cFPPA3_A4_f,
    (void*)Draw__12daObjIkada_cFv,
    (void*)Delete__12daObjIkada_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C26DB4-80C26FB8 0204+00 s=1 e=0 z=0  None .text      daObjIkada_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daObjIkada_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/daObjIkada_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80C26FB8-80C27028 0070+00 s=3 e=0 z=0  None .text      __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dBgS_ObjAcch::~dBgS_ObjAcch() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80C27028-80C270A0 0078+00 s=1 e=0 z=0  None .text      CreateHeap__12daObjIkada_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjIkada_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/CreateHeap__12daObjIkada_cFv.s"
}
#pragma pop

/* 80C270A0-80C270E0 0040+00 s=1 e=0 z=0  None .text      Create__12daObjIkada_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjIkada_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/Create__12daObjIkada_cFv.s"
}
#pragma pop

/* 80C270E0-80C27400 0320+00 s=1 e=0 z=0  None .text      Execute__12daObjIkada_cFPPA3_A4_f */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjIkada_c::Execute(f32 (**param_0)[3][4]) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/Execute__12daObjIkada_cFPPA3_A4_f.s"
}
#pragma pop

/* 80C27400-80C274A4 00A4+00 s=1 e=0 z=0  None .text      Draw__12daObjIkada_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjIkada_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/Draw__12daObjIkada_cFv.s"
}
#pragma pop

/* 80C274A4-80C274D8 0034+00 s=1 e=0 z=0  None .text      Delete__12daObjIkada_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjIkada_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/Delete__12daObjIkada_cFv.s"
}
#pragma pop

/* 80C274D8-80C274E0 0008+00 s=1 e=0 z=0  None .text      @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm static void func_80C274D8() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/func_80C274D8.s"
}
#pragma pop

/* 80C274E0-80C274E8 0008+00 s=1 e=0 z=0  None .text      @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm static void func_80C274E0() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ikada/d_a_obj_ikada/func_80C274E0.s"
}
#pragma pop