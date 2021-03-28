//
// Generated By: dol2asm
// Translation Unit: d_a_obj_lv7PropellerY
//

#include "rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct request_of_phase_process_class {};

struct mDoHIO_entry_c {
    /* 80C854C4 */ ~mDoHIO_entry_c();
};

struct fopAc_ac_c {};

struct daPropY_c {
    /* 80C8550C */ void setBaseMtx();
    /* 80C855A4 */ void CreateHeap();
    /* 80C85624 */ void create();
    /* 80C85810 */ void Execute(f32 (**)[3][4]);
    /* 80C85860 */ void procMain();
    /* 80C859B4 */ void init_modeMoveWait();
    /* 80C859C0 */ void modeMoveWait();
    /* 80C859C4 */ void init_modeMove();
    /* 80C859E0 */ void modeMove();
    /* 80C85B08 */ void init_modeWait();
    /* 80C85B24 */ void modeWait();
    /* 80C85B5C */ void init_modeMove2();
    /* 80C85B84 */ void modeMove2();
    /* 80C85CAC */ void init_modeStop();
    /* 80C85DD0 */ void modeStop();
    /* 80C85F14 */ void Draw();
    /* 80C85FB8 */ void Delete();
};

struct daPropY_HIO_c {
    /* 80C8546C */ daPropY_HIO_c();
    /* 80C86084 */ ~daPropY_HIO_c();
};

struct dSv_info_c {
    /* 80035360 */ void isSwitch(int, int) const;
};

struct dKy_tevstr_c {};

struct J3DModelData {};

struct cXyz {};

struct dScnKy_env_light_c {
    /* 801A37C4 */ void settingTevStruct(int, cXyz*, dKy_tevstr_c*);
    /* 801A4DA0 */ void setLightTevColorType_MAJI(J3DModelData*, dKy_tevstr_c*);
};

struct dRes_info_c {};

struct dRes_control_c {
    /* 8003C2EC */ void getRes(char const*, s32, dRes_info_c*, int);
};

struct dBgW {};

struct csXyz {};

struct cBgS_PolyInfo {};

struct dBgS_MoveBgActor {
    /* 80078624 */ dBgS_MoveBgActor();
    /* 80078690 */ bool Create();
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

struct JAISoundID {};

struct Vec {};

struct Z2SeMgr {
    /* 802AC50C */ void seStartLevel(JAISoundID, Vec const*, u32, s8, f32, f32, f32, f32, u8);
};

struct J3DModel {};

//
// Forward References:
//

static void daPropY_Draw(daPropY_c*);
static void daPropY_Execute(daPropY_c*);
static void daPropY_Delete(daPropY_c*);
static void daPropY_Create(fopAc_ac_c*);
extern "C" extern u32 lit_1787[1 + 4 /* padding */];
extern "C" extern void* g_profile_Obj_Lv7PropY[12];

extern "C" void __ct__13daPropY_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__9daPropY_cFv();
extern "C" void CreateHeap__9daPropY_cFv();
extern "C" void create__9daPropY_cFv();
extern "C" void Execute__9daPropY_cFPPA3_A4_f();
extern "C" void procMain__9daPropY_cFv();
extern "C" void init_modeMoveWait__9daPropY_cFv();
extern "C" void modeMoveWait__9daPropY_cFv();
extern "C" void init_modeMove__9daPropY_cFv();
extern "C" void modeMove__9daPropY_cFv();
extern "C" void init_modeWait__9daPropY_cFv();
extern "C" void modeWait__9daPropY_cFv();
extern "C" void init_modeMove2__9daPropY_cFv();
extern "C" void modeMove2__9daPropY_cFv();
extern "C" void init_modeStop__9daPropY_cFv();
extern "C" void modeStop__9daPropY_cFv();
extern "C" void Draw__9daPropY_cFv();
extern "C" void Delete__9daPropY_cFv();
extern "C" static void daPropY_Draw__FP9daPropY_c();
extern "C" static void daPropY_Execute__FP9daPropY_c();
extern "C" static void daPropY_Delete__FP9daPropY_c();
extern "C" static void daPropY_Create__FP10fopAc_ac_c();
extern "C" void __dt__13daPropY_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv7PropellerY_cpp();
extern "C" extern u32 lit_1787[1 + 4 /* padding */];
extern "C" extern void* g_profile_Obj_Lv7PropY[12];

//
// External References:
//

void mDoMtx_ZXYrotM(f32 (*)[4], s16, s16, s16);
void mDoExt_modelUpdateDL(J3DModel*);
void mDoExt_J3DModel__create(J3DModelData*, u32, u32);
void fopAcM_setCullSizeBox2(fopAc_ac_c*, J3DModelData*);
void dComIfG_resLoad(request_of_phase_process_class*, char const*);
void dComIfG_resDelete(request_of_phase_process_class*, char const*);
void dComIfGp_getReverb(int);
void dBgS_MoveBGProc_TypicalRotY(dBgW*, void*, cBgS_PolyInfo const&, bool, cXyz*, csXyz*, csXyz*);
void cLib_addCalcAngleS(s16*, s16, s16, s16, s16);
void cLib_chaseF(f32*, f32, f32);
void operator delete(void*);
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" extern u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 g_env_light[4880];
extern "C" extern u8 j3dSys[284];
extern "C" extern u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void PSMTXCopy();
extern "C" void PSMTXTrans();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" extern u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 g_env_light[4880];
extern "C" extern u8 j3dSys[284];
extern "C" extern u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C86130-80C86134 0004+00 s=7 e=0 z=0  None .rodata    @3650 */
SECTION_RODATA static u8 const lit_3650[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80C86134-80C86138 0004+00 s=1 e=0 z=0  None .rodata    @3651 */
SECTION_RODATA static u32 const lit_3651 = 0x3DCCCCCD;

/* 80C86138-80C8613C 0004+00 s=1 e=0 z=0  None .rodata    @3652 */
SECTION_RODATA static u32 const lit_3652 = 0x3B449BA6;

/* 80C8613C-80C86140 0004+00 s=4 e=0 z=0  None .rodata    @3653 */
SECTION_RODATA static u32 const lit_3653 = 0x3F800000;

/* 80C86140-80C86144 0004+00 s=1 e=0 z=0  None .rodata    @3654 */
SECTION_RODATA static u32 const lit_3654 = 0x41A00000;

/* 80C86144-80C86148 0004+00 s=2 e=0 z=0  None .rodata    @3845 */
SECTION_RODATA static u32 const lit_3845 = 0x43B40000;

/* 80C86148-80C8614C 0004+00 s=2 e=0 z=0  None .rodata    @3846 */
SECTION_RODATA static u32 const lit_3846 = 0x41F00000;

/* 80C8614C-80C86150 0004+00 s=4 e=0 z=0  None .rodata    @3847 */
SECTION_RODATA static u32 const lit_3847 = 0x43360B61;

/* 80C86150-80C86154 0004+00 s=2 e=0 z=0  None .rodata    @3848 */
SECTION_RODATA static u32 const lit_3848 = 0x42FE0000;

/* 80C86154-80C86158 0004+00 s=3 e=0 z=0  None .rodata    @3849 */
SECTION_RODATA static u32 const lit_3849 = 0xBF800000;

/* 80C86158-80C86160 0008+00 s=2 e=0 z=0  None .rodata    @3913 */
SECTION_RODATA static u8 const lit_3913[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};

/* 80C86160-80C86174 0014+00 s=1 e=0 z=0  None .rodata    None */
SECTION_RODATA static u8 const struct_80C86160[20] = {
    /* 80C86160 000A stringBase_80C86160 @stringBase0 */
    0x73,
    0x74,
    0x69,
    0x63,
    0x6B,
    0x77,
    0x6C,
    0x30,
    0x30,
    0x00,
    /* 80C8616A 000A data_80C8616A None */
    0x73,
    0x74,
    0x69,
    0x63,
    0x6B,
    0x77,
    0x6C,
    0x30,
    0x31,
    0x00,
};

/* 80C86174-80C86180 000C+00 s=1 e=0 z=0  None .data      cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C86180-80C86194 0004+10 s=0 e=0 z=0  None .data      @1787 */
SECTION_DATA u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};

/* 80C86194-80C8619C 0008+00 s=3 e=0 z=0  None .data      l_type */
SECTION_DATA static void* l_type[2] = {
    (void*)(((char*)&struct_80C86160) + 0x0) /* @stringBase0 */,
    (void*)(((char*)&struct_80C86160) + 0xA) /* None */,
};

/* 80C8619C-80C861A4 0008+00 s=1 e=0 z=0  None .data      l_bmdIdx */
SECTION_DATA static u8 l_bmdIdx[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};

/* 80C861A4-80C861AC 0008+00 s=1 e=0 z=0  None .data      l_dzbIdx */
SECTION_DATA static u8 l_dzbIdx[8] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07,
};

/* 80C861AC-80C861B8 000C+00 s=1 e=0 z=0  None .data      @3788 */
SECTION_DATA static void* lit_3788[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMoveWait__9daPropY_cFv,
};

/* 80C861B8-80C861C4 000C+00 s=1 e=0 z=0  None .data      @3789 */
SECTION_DATA static void* lit_3789[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMove__9daPropY_cFv,
};

/* 80C861C4-80C861D0 000C+00 s=1 e=0 z=0  None .data      @3790 */
SECTION_DATA static void* lit_3790[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__9daPropY_cFv,
};

/* 80C861D0-80C861DC 000C+00 s=1 e=0 z=0  None .data      @3791 */
SECTION_DATA static void* lit_3791[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMove2__9daPropY_cFv,
};

/* 80C861DC-80C861E8 000C+00 s=1 e=0 z=0  None .data      @3792 */
SECTION_DATA static void* lit_3792[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeStop__9daPropY_cFv,
};

/* 80C861E8-80C86224 003C+00 s=1 e=0 z=0  None .data      mode_proc$3787 */
SECTION_DATA static u8 mode_proc[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C86224-80C86244 0020+00 s=1 e=0 z=0  None .data      l_daPropY_Method */
SECTION_DATA static void* l_daPropY_Method[8] = {
    (void*)daPropY_Create__FP10fopAc_ac_c,
    (void*)daPropY_Delete__FP9daPropY_c,
    (void*)daPropY_Execute__FP9daPropY_c,
    (void*)NULL,
    (void*)daPropY_Draw__FP9daPropY_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80C86244-80C86274 0030+00 s=0 e=0 z=1  None .data      g_profile_Obj_Lv7PropY */
SECTION_DATA void* g_profile_Obj_Lv7PropY[12] = {
    (void*)0xFFFFFFFD, (void*)0x0003FFFD,
    (void*)0x00A00000, (void*)&g_fpcLf_Method,
    (void*)0x000005C8, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x02810000, (void*)&l_daPropY_Method,
    (void*)0x00040000, (void*)0x000E0000,
};

/* 80C86274-80C8629C 0028+00 s=1 e=0 z=0  None .data      __vt__9daPropY_c */
SECTION_DATA static void* __vt__9daPropY_c[10] = {
    (void*)NULL,
    (void*)NULL,
    (void*)CreateHeap__9daPropY_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__9daPropY_cFPPA3_A4_f,
    (void*)Draw__9daPropY_cFv,
    (void*)Delete__9daPropY_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C8629C-80C862A8 000C+00 s=2 e=0 z=0  None .data      __vt__13daPropY_HIO_c */
SECTION_DATA static void* __vt__13daPropY_HIO_c[3] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__13daPropY_HIO_cFv,
};

/* 80C862A8-80C862B4 000C+00 s=3 e=0 z=0  None .data      __vt__14mDoHIO_entry_c */
SECTION_DATA static void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C8546C-80C854C4 0058+00 s=1 e=0 z=0  None .text      __ct__13daPropY_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daPropY_HIO_c::daPropY_HIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/__ct__13daPropY_HIO_cFv.s"
}
#pragma pop

/* 80C854C4-80C8550C 0048+00 s=1 e=0 z=0  None .text      __dt__14mDoHIO_entry_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm mDoHIO_entry_c::~mDoHIO_entry_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/__dt__14mDoHIO_entry_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C862C0-80C862CC 000C+00 s=1 e=0 z=0  None .bss       @3644 */
static u8 lit_3644[12];

/* 80C862CC-80C862EC 0020+00 s=7 e=0 z=0  None .bss       l_HIO */
static u8 l_HIO[32];

/* 80C8550C-80C855A4 0098+00 s=2 e=0 z=0  None .text      setBaseMtx__9daPropY_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/setBaseMtx__9daPropY_cFv.s"
}
#pragma pop

/* 80C855A4-80C85624 0080+00 s=1 e=0 z=0  None .text      CreateHeap__9daPropY_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/CreateHeap__9daPropY_cFv.s"
}
#pragma pop

/* 80C85624-80C85810 01EC+00 s=1 e=0 z=0  None .text      create__9daPropY_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/create__9daPropY_cFv.s"
}
#pragma pop

/* 80C85810-80C85860 0050+00 s=1 e=0 z=0  None .text      Execute__9daPropY_cFPPA3_A4_f */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::Execute(f32 (**param_0)[3][4]) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/Execute__9daPropY_cFPPA3_A4_f.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C862EC-80C862F0 0004+00 s=1 e=0 z=0  None .bss       None */
static u8 data_80C862EC[4];

/* 80C85860-80C859B4 0154+00 s=1 e=0 z=0  None .text      procMain__9daPropY_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::procMain() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/procMain__9daPropY_cFv.s"
}
#pragma pop

/* 80C859B4-80C859C0 000C+00 s=2 e=0 z=0  None .text      init_modeMoveWait__9daPropY_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::init_modeMoveWait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/init_modeMoveWait__9daPropY_cFv.s"
}
#pragma pop

/* 80C859C0-80C859C4 0004+00 s=1 e=0 z=0  None .text      modeMoveWait__9daPropY_cFv */
void daPropY_c::modeMoveWait() {
    /* empty function */
}

/* 80C859C4-80C859E0 001C+00 s=2 e=0 z=0  None .text      init_modeMove__9daPropY_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::init_modeMove() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/init_modeMove__9daPropY_cFv.s"
}
#pragma pop

/* 80C859E0-80C85B08 0128+00 s=1 e=0 z=0  None .text      modeMove__9daPropY_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::modeMove() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/modeMove__9daPropY_cFv.s"
}
#pragma pop

/* 80C85B08-80C85B24 001C+00 s=2 e=0 z=0  None .text      init_modeWait__9daPropY_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::init_modeWait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/init_modeWait__9daPropY_cFv.s"
}
#pragma pop

/* 80C85B24-80C85B5C 0038+00 s=1 e=0 z=0  None .text      modeWait__9daPropY_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::modeWait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/modeWait__9daPropY_cFv.s"
}
#pragma pop

/* 80C85B5C-80C85B84 0028+00 s=2 e=0 z=0  None .text      init_modeMove2__9daPropY_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::init_modeMove2() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/init_modeMove2__9daPropY_cFv.s"
}
#pragma pop

/* 80C85B84-80C85CAC 0128+00 s=1 e=0 z=0  None .text      modeMove2__9daPropY_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::modeMove2() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/modeMove2__9daPropY_cFv.s"
}
#pragma pop

/* 80C85CAC-80C85DD0 0124+00 s=1 e=0 z=0  None .text      init_modeStop__9daPropY_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::init_modeStop() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/init_modeStop__9daPropY_cFv.s"
}
#pragma pop

/* 80C85DD0-80C85F14 0144+00 s=1 e=0 z=0  None .text      modeStop__9daPropY_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::modeStop() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/modeStop__9daPropY_cFv.s"
}
#pragma pop

/* 80C85F14-80C85FB8 00A4+00 s=1 e=0 z=0  None .text      Draw__9daPropY_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/Draw__9daPropY_cFv.s"
}
#pragma pop

/* 80C85FB8-80C85FF8 0040+00 s=1 e=0 z=0  None .text      Delete__9daPropY_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daPropY_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/Delete__9daPropY_cFv.s"
}
#pragma pop

/* 80C85FF8-80C86024 002C+00 s=1 e=0 z=0  None .text      daPropY_Draw__FP9daPropY_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daPropY_Draw(daPropY_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/daPropY_Draw__FP9daPropY_c.s"
}
#pragma pop

/* 80C86024-80C86044 0020+00 s=1 e=0 z=0  None .text      daPropY_Execute__FP9daPropY_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daPropY_Execute(daPropY_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/daPropY_Execute__FP9daPropY_c.s"
}
#pragma pop

/* 80C86044-80C86064 0020+00 s=1 e=0 z=0  None .text      daPropY_Delete__FP9daPropY_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daPropY_Delete(daPropY_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/daPropY_Delete__FP9daPropY_c.s"
}
#pragma pop

/* 80C86064-80C86084 0020+00 s=1 e=0 z=0  None .text      daPropY_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daPropY_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/daPropY_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80C86084-80C860E0 005C+00 s=2 e=0 z=0  None .text      __dt__13daPropY_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daPropY_HIO_c::~daPropY_HIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/__dt__13daPropY_HIO_cFv.s"
}
#pragma pop

/* 80C860E0-80C8611C 003C+00 s=0 e=1 z=0  None .text      __sinit_d_a_obj_lv7PropellerY_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __sinit_d_a_obj_lv7PropellerY_cpp() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_lv7PropellerY/d_a_obj_lv7PropellerY/__sinit_d_a_obj_lv7PropellerY_cpp.s"
}
#pragma pop