//
// Generated By: dol2asm
// Translation Unit: d_a_obj_zrTuraraRock
//

#include "rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct request_of_phase_process_class {};

struct mDoMtx_stack_c {
    /* 8000CE38 */ void scaleM(f32, f32, f32);
};

struct mDoHIO_entry_c {
    /* 80D418EC */ ~mDoHIO_entry_c();
};

struct fopAc_ac_c {
    /* 80018B64 */ fopAc_ac_c();
};

struct daZrTuraRc_c {
    /* 80D41934 */ void setBaseMtx();
    /* 80D419D4 */ void CreateHeap();
    /* 80D41A40 */ void create();
    /* 80D41EF0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80D41F10 */ void Execute();
    /* 80D41F78 */ void move();
    /* 80D4204C */ void init_modeDrop();
    /* 80D42084 */ void modeDrop();
    /* 80D420FC */ void bgCheck();
    /* 80D42128 */ void init_modeDropEnd();
    /* 80D4215C */ void modeDropEnd();
    /* 80D42160 */ void Draw();
    /* 80D421C4 */ void Delete();
};

struct daZrTuraRc_HIO_c {
    /* 80D4188C */ daZrTuraRc_HIO_c();
    /* 80D422D0 */ ~daZrTuraRc_HIO_c();
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

struct dCcD_Stts {
    /* 80083860 */ void Init(int, int, fopAc_ac_c*);
};

struct dCcD_SrcSph {};

struct dCcD_Sph {
    /* 80084A34 */ void Set(dCcD_SrcSph const&);
};

struct dCcD_GStts {
    /* 80083760 */ dCcD_GStts();
    /* 80083830 */ void Move();
    /* 80D41E94 */ ~dCcD_GStts();
};

struct dCcD_GObjInf {
    /* 80083A28 */ dCcD_GObjInf();
};

struct dBgS_PolyPassChk {
    /* 80078E68 */ void SetObj();
};

struct dBgS_ObjAcch {
    /* 80D41D24 */ ~dBgS_ObjAcch();
};

struct dBgS_AcchCir {
    /* 80075EAC */ dBgS_AcchCir();
    /* 80075F58 */ void SetWall(f32, f32);
    /* 80D41D94 */ ~dBgS_AcchCir();
};

struct csXyz {};

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
    /* 80D41E04 */ ~cM3dGSph();
};

struct cM3dGCir {
    /* 8026EF18 */ ~cM3dGCir();
};

struct cM3dGAab {
    /* 80D41E4C */ ~cM3dGAab();
};

struct cCcD_Obj {};

struct cCcS {
    /* 80264BA8 */ void Set(cCcD_Obj*);
};

struct cCcD_GStts {
    /* 80D42288 */ ~cCcD_GStts();
};

struct cBgS_PolyInfo {
    /* 802680B0 */ ~cBgS_PolyInfo();
};

struct Z2SoundObjSimple {
    /* 802BE844 */ Z2SoundObjSimple();
};

struct Z2SoundObjBase {
    /* 802BDFF8 */ void deleteObject();
};

struct J3DModel {};

//
// Forward References:
//

static void daZrTuraRc_Draw(daZrTuraRc_c*);
static void daZrTuraRc_Execute(daZrTuraRc_c*);
static void daZrTuraRc_Delete(daZrTuraRc_c*);
static void daZrTuraRc_Create(fopAc_ac_c*);
extern "C" extern char const* const stringBase0;
extern "C" extern u32 lit_1787[1 + 4 /* padding */];
extern "C" extern void* g_profile_Obj_zrTuraraRc[12];

extern "C" void __ct__16daZrTuraRc_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__12daZrTuraRc_cFv();
extern "C" void CreateHeap__12daZrTuraRc_cFv();
extern "C" void create__12daZrTuraRc_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void createHeapCallBack__12daZrTuraRc_cFP10fopAc_ac_c();
extern "C" void Execute__12daZrTuraRc_cFv();
extern "C" void move__12daZrTuraRc_cFv();
extern "C" void init_modeDrop__12daZrTuraRc_cFv();
extern "C" void modeDrop__12daZrTuraRc_cFv();
extern "C" void bgCheck__12daZrTuraRc_cFv();
extern "C" void init_modeDropEnd__12daZrTuraRc_cFv();
extern "C" void modeDropEnd__12daZrTuraRc_cFv();
extern "C" void Draw__12daZrTuraRc_cFv();
extern "C" void Delete__12daZrTuraRc_cFv();
extern "C" static void daZrTuraRc_Draw__FP12daZrTuraRc_c();
extern "C" static void daZrTuraRc_Execute__FP12daZrTuraRc_c();
extern "C" static void daZrTuraRc_Delete__FP12daZrTuraRc_c();
extern "C" static void daZrTuraRc_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__16daZrTuraRc_HIO_cFv();
extern "C" void __sinit_d_a_obj_zrTuraraRock_cpp();
extern "C" static void func_80D4239C();
extern "C" static void func_80D423A4();
extern "C" extern char const* const stringBase0;
extern "C" extern u32 lit_1787[1 + 4 /* padding */];
extern "C" extern void* g_profile_Obj_zrTuraraRc[12];

//
// External References:
//

void mDoMtx_ZXYrotM(f32 (*)[4], s16, s16, s16);
void mDoExt_modelUpdateDL(J3DModel*);
void mDoExt_J3DModel__create(J3DModelData*, u32, u32);
void fopAcM_delete(fopAc_ac_c*);
void fopAcM_entrySolidHeap(fopAc_ac_c*, int (*)(fopAc_ac_c*), u32);
void fopAcM_setCullSizeBox2(fopAc_ac_c*, J3DModelData*);
void fopAcM_posMoveF(fopAc_ac_c*, cXyz const*);
void dComIfG_resLoad(request_of_phase_process_class*, char const*);
void dComIfG_resDelete(request_of_phase_process_class*, char const*);
void dComIfGp_getReverb(int);
void cM_rndFX(f32);
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
extern "C" extern u8 g_env_light[4880];

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __dl__FPv();
extern "C" void PSMTXCopy();
extern "C" void PSMTXTrans();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _restgpr_28();
extern "C" extern void* g_fopAc_Method[8];
extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 g_env_light[4880];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80D423C0-80D423C4 0004+00 s=2 e=0 z=0  None .rodata    @3653 */
SECTION_RODATA static u32 const lit_3653 = 0x43E10000;

/* 80D423C4-80D423C8 0004+00 s=1 e=0 z=0  None .rodata    @3654 */
SECTION_RODATA static u32 const lit_3654 = 0x41200000;

/* 80D423C8-80D423CC 0004+00 s=1 e=0 z=0  None .rodata    @3655 */
SECTION_RODATA static u32 const lit_3655 = 0x43480000;

/* 80D423CC-80D423D0 0004+00 s=1 e=0 z=0  None .rodata    @3656 */
SECTION_RODATA static u32 const lit_3656 = 0x40A00000;

/* 80D423D0-80D423D4 0004+00 s=2 e=0 z=0  None .rodata    @3657 */
SECTION_RODATA static u32 const lit_3657 = 0x40400000;

/* 80D42440-80D4244C 000C+00 s=1 e=0 z=0  None .data      cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D4244C-80D42460 0004+10 s=0 e=0 z=0  None .data      @1787 */
SECTION_DATA u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};

/* 80D42460-80D424A0 0040+00 s=2 e=0 z=0  None .data      mCcDSph__12daZrTuraRc_c */
SECTION_DATA static u8 mCcDSph__12daZrTuraRc_c[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D424A0-80D424AC 000C+00 s=1 e=0 z=0  None .data      @3871 */
SECTION_DATA static void* lit_3871[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeDrop__12daZrTuraRc_cFv,
};

/* 80D424AC-80D424B8 000C+00 s=1 e=0 z=0  None .data      @3872 */
SECTION_DATA static void* lit_3872[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeDropEnd__12daZrTuraRc_cFv,
};

/* 80D424B8-80D424D0 0018+00 s=1 e=0 z=0  None .data      mode_proc$3870 */
SECTION_DATA static u8 mode_proc[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D424D0-80D424F0 0020+00 s=1 e=0 z=0  None .data      l_daZrTuraRc_Method */
SECTION_DATA static void* l_daZrTuraRc_Method[8] = {
    (void*)daZrTuraRc_Create__FP10fopAc_ac_c,
    (void*)daZrTuraRc_Delete__FP12daZrTuraRc_c,
    (void*)daZrTuraRc_Execute__FP12daZrTuraRc_c,
    (void*)NULL,
    (void*)daZrTuraRc_Draw__FP12daZrTuraRc_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80D424F0-80D42520 0030+00 s=0 e=0 z=1  None .data      g_profile_Obj_zrTuraraRc */
SECTION_DATA void* g_profile_Obj_zrTuraraRc[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x01880000, (void*)&g_fpcLf_Method,
    (void*)0x00000938, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x028D0000, (void*)&l_daZrTuraRc_Method,
    (void*)0x00040100, (void*)0x000E0000,
};

/* 80D42520-80D4252C 000C+00 s=2 e=0 z=0  None .data      __vt__10cCcD_GStts */
SECTION_DATA static void* __vt__10cCcD_GStts[3] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80D4252C-80D42538 000C+00 s=1 e=0 z=0  None .data      __vt__10dCcD_GStts */
SECTION_DATA static void* __vt__10dCcD_GStts[3] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80D42538-80D42544 000C+00 s=1 e=0 z=0  None .data      __vt__12dBgS_AcchCir */
SECTION_DATA static void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80D42544-80D42568 0024+00 s=2 e=0 z=0  None .data      __vt__12dBgS_ObjAcch */
SECTION_DATA static void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL, (void*)NULL, (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL, (void*)NULL, (void*)func_80D423A4,
    (void*)NULL, (void*)NULL, (void*)func_80D4239C,
};

/* 80D42568-80D42574 000C+00 s=2 e=0 z=0  None .data      __vt__8cM3dGSph */
SECTION_DATA static void* __vt__8cM3dGSph[3] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80D42574-80D42580 000C+00 s=2 e=0 z=0  None .data      __vt__8cM3dGAab */
SECTION_DATA static void* __vt__8cM3dGAab[3] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D42580-80D4258C 000C+00 s=2 e=0 z=0  None .data      __vt__16daZrTuraRc_HIO_c */
SECTION_DATA static void* __vt__16daZrTuraRc_HIO_c[3] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__16daZrTuraRc_HIO_cFv,
};

/* 80D4258C-80D42598 000C+00 s=3 e=0 z=0  None .data      __vt__14mDoHIO_entry_c */
SECTION_DATA static void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80D4188C-80D418EC 0060+00 s=1 e=0 z=0  None .text      __ct__16daZrTuraRc_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daZrTuraRc_HIO_c::daZrTuraRc_HIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/__ct__16daZrTuraRc_HIO_cFv.s"
}
#pragma pop

/* 80D418EC-80D41934 0048+00 s=1 e=0 z=0  None .text      __dt__14mDoHIO_entry_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm mDoHIO_entry_c::~mDoHIO_entry_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/__dt__14mDoHIO_entry_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D423D4-80D42404 0030+00 s=1 e=0 z=0  None .rodata    mCcDObjInfo__12daZrTuraRc_c */
SECTION_RODATA static u8 const mCcDObjInfo__12daZrTuraRc_c[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x01, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};

/* 80D42404-80D42408 0004+00 s=2 e=0 z=0  None .rodata    @3684 */
SECTION_RODATA static u32 const lit_3684 = 0x3F800000;

/* 80D41934-80D419D4 00A0+00 s=2 e=0 z=0  None .text      setBaseMtx__12daZrTuraRc_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZrTuraRc_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/setBaseMtx__12daZrTuraRc_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D42408-80D4240C 0004+00 s=2 e=0 z=0  None .rodata    @3774 */
SECTION_RODATA static u32 const lit_3774 = 0x43020000;

/* 80D4240C-80D42410 0004+00 s=1 e=0 z=0  None .rodata    @3775 */
SECTION_RODATA static u32 const lit_3775 = 0x42820000;

/* 80D42410-80D42414 0004+00 s=1 e=0 z=0  None .rodata    @3776 */
SECTION_RODATA static u32 const lit_3776 = 0x461C4000;

/* 80D42414-80D42418 0004+00 s=1 e=0 z=0  None .rodata    @3777 */
SECTION_RODATA static u32 const lit_3777 = 0x3F666666;

/* 80D42418-80D4241C 0004+00 s=1 e=0 z=0  None .rodata    @3778 */
SECTION_RODATA static u32 const lit_3778 = 0x3DCCCCCD;

/* 80D4241C-80D42420 0004+00 s=1 e=0 z=0  None .rodata    @3779 */
SECTION_RODATA static u32 const lit_3779 = 0x43340000;

/* 80D42420-80D42428 0004+04 s=1 e=0 z=0  None .rodata    @3780 */
SECTION_RODATA static u32 const lit_3780[1 + 1 /* padding */] = {
    0x43360B61,
    /* padding */
    0x00000000,
};

/* 80D42428-80D42430 0008+00 s=1 e=0 z=0  None .rodata    @3782 */
SECTION_RODATA static u8 const lit_3782[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D42430-80D42434 0004+00 s=1 e=0 z=0  None .rodata    @3885 */
SECTION_RODATA static u8 const lit_3885[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80D42434-80D4243E 000A+00 s=3 e=0 z=0  None .rodata    @stringBase0 */
#pragma push
#pragma force_active on
#pragma section ".dead"
SECTION_DEAD char const* const stringBase_80D42434 = "M_DRockHn";
#pragma pop

/* 80D419D4-80D41A40 006C+00 s=1 e=0 z=0  None .text      CreateHeap__12daZrTuraRc_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZrTuraRc_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/CreateHeap__12daZrTuraRc_cFv.s"
}
#pragma pop

/* 80D41A40-80D41D24 02E4+00 s=1 e=0 z=0  None .text      create__12daZrTuraRc_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZrTuraRc_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/create__12daZrTuraRc_cFv.s"
}
#pragma pop

/* 80D41D24-80D41D94 0070+00 s=3 e=0 z=0  None .text      __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dBgS_ObjAcch::~dBgS_ObjAcch() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80D41D94-80D41E04 0070+00 s=1 e=0 z=0  None .text      __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dBgS_AcchCir::~dBgS_AcchCir() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80D41E04-80D41E4C 0048+00 s=1 e=0 z=0  None .text      __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cM3dGSph::~cM3dGSph() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 80D41E4C-80D41E94 0048+00 s=1 e=0 z=0  None .text      __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cM3dGAab::~cM3dGAab() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80D41E94-80D41EF0 005C+00 s=1 e=0 z=0  None .text      __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dCcD_GStts::~dCcD_GStts() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80D41EF0-80D41F10 0020+00 s=1 e=0 z=0  None .text
 * createHeapCallBack__12daZrTuraRc_cFP10fopAc_ac_c             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZrTuraRc_c::createHeapCallBack(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/createHeapCallBack__12daZrTuraRc_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80D41F10-80D41F78 0068+00 s=1 e=0 z=0  None .text      Execute__12daZrTuraRc_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZrTuraRc_c::Execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/Execute__12daZrTuraRc_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D425A0-80D425AC 000C+00 s=1 e=0 z=0  None .bss       @3647 */
static u8 lit_3647[12];

/* 80D425AC-80D425CC 0020+00 s=2 e=0 z=0  None .bss       l_HIO */
static u8 l_HIO[32];

/* 80D425CC-80D425D0 0004+00 s=1 e=0 z=0  None .bss       None */
static u8 data_80D425CC[4];

/* 80D41F78-80D4204C 00D4+00 s=1 e=0 z=0  None .text      move__12daZrTuraRc_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZrTuraRc_c::move() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/move__12daZrTuraRc_cFv.s"
}
#pragma pop

/* 80D4204C-80D42084 0038+00 s=1 e=0 z=0  None .text      init_modeDrop__12daZrTuraRc_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZrTuraRc_c::init_modeDrop() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/init_modeDrop__12daZrTuraRc_cFv.s"
}
#pragma pop

/* 80D42084-80D420FC 0078+00 s=1 e=0 z=0  None .text      modeDrop__12daZrTuraRc_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZrTuraRc_c::modeDrop() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/modeDrop__12daZrTuraRc_cFv.s"
}
#pragma pop

/* 80D420FC-80D42128 002C+00 s=1 e=0 z=0  None .text      bgCheck__12daZrTuraRc_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZrTuraRc_c::bgCheck() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/bgCheck__12daZrTuraRc_cFv.s"
}
#pragma pop

/* 80D42128-80D4215C 0034+00 s=1 e=0 z=0  None .text      init_modeDropEnd__12daZrTuraRc_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZrTuraRc_c::init_modeDropEnd() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/init_modeDropEnd__12daZrTuraRc_cFv.s"
}
#pragma pop

/* 80D4215C-80D42160 0004+00 s=1 e=0 z=0  None .text      modeDropEnd__12daZrTuraRc_cFv */
void daZrTuraRc_c::modeDropEnd() {
    /* empty function */
}

/* 80D42160-80D421C4 0064+00 s=1 e=0 z=0  None .text      Draw__12daZrTuraRc_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZrTuraRc_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/Draw__12daZrTuraRc_cFv.s"
}
#pragma pop

/* 80D421C4-80D42208 0044+00 s=1 e=0 z=0  None .text      Delete__12daZrTuraRc_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daZrTuraRc_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/Delete__12daZrTuraRc_cFv.s"
}
#pragma pop

/* 80D42208-80D42228 0020+00 s=1 e=0 z=0  None .text      daZrTuraRc_Draw__FP12daZrTuraRc_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daZrTuraRc_Draw(daZrTuraRc_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/daZrTuraRc_Draw__FP12daZrTuraRc_c.s"
}
#pragma pop

/* 80D42228-80D42248 0020+00 s=1 e=0 z=0  None .text      daZrTuraRc_Execute__FP12daZrTuraRc_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daZrTuraRc_Execute(daZrTuraRc_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/daZrTuraRc_Execute__FP12daZrTuraRc_c.s"
}
#pragma pop

/* 80D42248-80D42268 0020+00 s=1 e=0 z=0  None .text      daZrTuraRc_Delete__FP12daZrTuraRc_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daZrTuraRc_Delete(daZrTuraRc_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/daZrTuraRc_Delete__FP12daZrTuraRc_c.s"
}
#pragma pop

/* 80D42268-80D42288 0020+00 s=1 e=0 z=0  None .text      daZrTuraRc_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm static void daZrTuraRc_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/daZrTuraRc_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80D42288-80D422D0 0048+00 s=1 e=0 z=0  None .text      __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cCcD_GStts::~cCcD_GStts() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80D422D0-80D4232C 005C+00 s=2 e=0 z=0  None .text      __dt__16daZrTuraRc_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daZrTuraRc_HIO_c::~daZrTuraRc_HIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/__dt__16daZrTuraRc_HIO_cFv.s"
}
#pragma pop

/* 80D4232C-80D4239C 0070+00 s=0 e=1 z=0  None .text      __sinit_d_a_obj_zrTuraraRock_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __sinit_d_a_obj_zrTuraraRock_cpp() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/__sinit_d_a_obj_zrTuraraRock_cpp.s"
}
#pragma pop

/* 80D4239C-80D423A4 0008+00 s=1 e=0 z=0  None .text      @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm static void func_80D4239C() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/func_80D4239C.s"
}
#pragma pop

/* 80D423A4-80D423AC 0008+00 s=1 e=0 z=0  None .text      @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm static void func_80D423A4() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_zrTuraraRock/d_a_obj_zrTuraraRock/func_80D423A4.s"
}
#pragma pop