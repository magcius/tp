//
// Generated By: dol2asm
// Translation Unit: d/bg/d_bg_w_sv
//

#include "d/bg/d_bg_w_sv.h"
#include "dol2asm.h"
#include "dolphin/types.h"

//
// Types:
//

struct fopAc_ac_c {};

struct dBgW_Base {
    /* 80074AB4 */ void SetOldShapeAngleY(s16);
};

struct csXyz {};

struct cBgS_PolyInfo {};

struct cBgD_t {};

struct cXyz {};

struct dBgWSv {
    /* 80082F98 */ void Set(cBgD_t*, u32);
    /* 80083020 */ void CopyBackVtx();
    /* 8008308C */ void CrrPosWork(cXyz*, int, int, int);
    /* 80083244 */ void CrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*);
    /* 80083300 */ void TransPosWork(cXyz*, int, int, int);
    /* 8008351C */ void TransPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*);
    /* 800835D8 */ void MatrixCrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*);
    /* 800835DC */ ~dBgWSv();
};

struct dBgS_SphChk {};

struct dBgS_SplGrpChk {};

struct cBgS_PolyPassChk {};

struct cBgS_GrpPassChk {};

struct dBgS_Acch {};

struct dBgS_CaptPoly {};

struct dBgS_RoofChk {};

struct dBgW {
    /* 8007B3AC */ void GetExitId(cBgS_PolyInfo const&);
    /* 8007B3D8 */ void GetPolyColor(cBgS_PolyInfo const&);
    /* 8007B404 */ void GetHorseNoEntry(cBgS_PolyInfo const&);
    /* 8007B430 */ void GetSpecialCode(cBgS_PolyInfo const&);
    /* 8007B460 */ void GetSpecialCode(int);
    /* 8007B488 */ void GetMagnetCode(cBgS_PolyInfo const&);
    /* 8007B4B4 */ void GetMonkeyBarsCode(cBgS_PolyInfo const&);
    /* 8007B4E0 */ void GetPolyObjThrough(int);
    /* 8007B504 */ void GetPolyCamThrough(int);
    /* 8007B52C */ void GetPolyLinkThrough(int);
    /* 8007B550 */ void GetPolyArrowThrough(int);
    /* 8007B574 */ void GetPolyHSStick(int);
    /* 8007B598 */ void GetPolyBoomerangThrough(int);
    /* 8007B5BC */ void GetPolyRopeThrough(int);
    /* 8007B5E0 */ void GetPolyBombThrough(int);
    /* 8007B604 */ void GetShdwThrough(int);
    /* 8007B630 */ void GetUnderwaterRoofCode(int);
    /* 8007B6AC */ void GetLinkNo(cBgS_PolyInfo const&);
    /* 8007B6D8 */ void GetWallCode(cBgS_PolyInfo const&);
    /* 8007B704 */ void GetPolyAtt0(cBgS_PolyInfo const&);
    /* 8007B734 */ void GetPolyAtt1(cBgS_PolyInfo const&);
    /* 8007B760 */ void GetGroundCode(cBgS_PolyInfo const&);
    /* 8007B7DC */ void GetIronBallThrough(int);
    /* 8007B800 */ void GetAttackThrough(int);
    /* 8007B87C */ void GetCamMoveBG(cBgS_PolyInfo const&);
    /* 8007B8A8 */ void GetRoomCamId(cBgS_PolyInfo const&);
    /* 8007B8D8 */ void GetRoomPathId(cBgS_PolyInfo const&);
    /* 8007B904 */ void GetRoomPathPntNo(cBgS_PolyInfo const&);
    /* 8007C484 */ void WallCorrect(dBgS_Acch*);
    /* 8007C910 */ void WallCorrectSort(dBgS_Acch*);
    /* 8007D470 */ void RoofChk(dBgS_RoofChk*);
    /* 8007D830 */ void SplGrpChk(dBgS_SplGrpChk*);
    /* 8007DAF8 */ void CaptPoly(dBgS_CaptPoly&);
    /* 8007DF00 */ void SphChk(dBgS_SphChk*, void*);
    /* 8007DF28 */ void GetPolyGrpRoomInfId(cBgS_PolyInfo const&);
    /* 8007DF58 */ void GetGrpSoundId(cBgS_PolyInfo const&);
    /* 8007E02C */ void ChkPolyThrough(int, cBgS_PolyPassChk*);
    /* 8007E360 */ void ChkShdwDrawThrough(int, cBgS_PolyPassChk*);
    /* 8007E3D8 */ void ChkGrpThrough(int, cBgS_GrpPassChk*, int);
    /* 8007E444 */ void CallRideCallBack(fopAc_ac_c*, fopAc_ac_c*);
    /* 8007E474 */ void CallArrowStickCallBack(fopAc_ac_c*, fopAc_ac_c*, cXyz&);
    /* 8007E4A4 */ void OffMoveFlag();
    /* 8007E4B4 */ void ChkMoveFlag() const;
};

struct cBgS_GndChk {};

struct cBgS_ShdwDraw {};

struct cBgS_LinChk {};

struct cBgW {
    /* 8007933C */ ~cBgW();
    /* 80079564 */ void CalcPlane();
    /* 800797BC */ void ClassifyPlane();
    /* 80079EEC */ void ChkMemoryError();
    /* 80079F38 */ void Set(cBgD_t*, u32, f32 (*)[3][4]);
    /* 8007A658 */ void LineCheck(cBgS_LinChk*);
    /* 8007AB9C */ void GroundCross(cBgS_GndChk*);
    /* 8007B084 */ void ShdwDraw(cBgS_ShdwDraw*);
    /* 8007B0E4 */ void GetGrpRoomIndex(cBgS_PolyInfo const&) const;
    /* 8007B164 */ void GetBnd() const;
    /* 8007B1B4 */ void GetTriPnt(cBgS_PolyInfo const&, cXyz*, cXyz*, cXyz*) const;
    /* 8007B240 */ void GetTopUnder(f32*, f32*) const;
    /* 8007B270 */ void GetTriPla(cBgS_PolyInfo const&) const;
    /* 8007B2B0 */ void GetGrpInf(cBgS_PolyInfo const&) const;
    /* 8007B948 */ void ChkNotReady() const;
    /* 8007B958 */ void ChkLock() const;
    /* 8007B964 */ void ChkMoveBg() const;
};

//
// Forward References:
//

extern "C" extern void* __vt__6dBgWSv[65 + 1 /* padding */];

extern "C" void Set__6dBgWSvFP6cBgD_tUl();
extern "C" void CopyBackVtx__6dBgWSvFv();
extern "C" void CrrPosWork__6dBgWSvFP4cXyziii();
extern "C" void CrrPos__6dBgWSvFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz();
extern "C" void TransPosWork__6dBgWSvFP4cXyziii();
extern "C" void TransPos__6dBgWSvFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz();
extern "C" void MatrixCrrPos__6dBgWSvFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz();
extern "C" void __dt__6dBgWSvFv();
extern "C" extern void* __vt__6dBgWSv[65 + 1 /* padding */];

//
// External References:
//

void* operator new[](u32);
void operator delete(void*);
extern "C" extern void* __vt__4dBgW[65];
extern "C" extern f32 G_CM3D_F_ABS_MIN[1 + 1 /* padding */];

extern "C" void SetOldShapeAngleY__9dBgW_BaseFs();
extern "C" void __dt__4cBgWFv();
extern "C" void CalcPlane__4cBgWFv();
extern "C" void ClassifyPlane__4cBgWFv();
extern "C" void ChkMemoryError__4cBgWFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void LineCheck__4cBgWFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgWFP11cBgS_GndChk();
extern "C" void ShdwDraw__4cBgWFP13cBgS_ShdwDraw();
extern "C" void GetGrpRoomIndex__4cBgWCFRC13cBgS_PolyInfo();
extern "C" void GetBnd__4cBgWCFv();
extern "C" void GetTriPnt__4cBgWCFRC13cBgS_PolyInfoP4cXyzP4cXyzP4cXyz();
extern "C" void GetTopUnder__4cBgWCFPfPf();
extern "C" void GetTriPla__4cBgWCFRC13cBgS_PolyInfo();
extern "C" void GetGrpInf__4cBgWCFRC13cBgS_PolyInfo();
extern "C" void GetExitId__4dBgWFRC13cBgS_PolyInfo();
extern "C" void GetPolyColor__4dBgWFRC13cBgS_PolyInfo();
extern "C" void GetHorseNoEntry__4dBgWFRC13cBgS_PolyInfo();
extern "C" void GetSpecialCode__4dBgWFRC13cBgS_PolyInfo();
extern "C" void GetSpecialCode__4dBgWFi();
extern "C" void GetMagnetCode__4dBgWFRC13cBgS_PolyInfo();
extern "C" void GetMonkeyBarsCode__4dBgWFRC13cBgS_PolyInfo();
extern "C" void GetPolyObjThrough__4dBgWFi();
extern "C" void GetPolyCamThrough__4dBgWFi();
extern "C" void GetPolyLinkThrough__4dBgWFi();
extern "C" void GetPolyArrowThrough__4dBgWFi();
extern "C" void GetPolyHSStick__4dBgWFi();
extern "C" void GetPolyBoomerangThrough__4dBgWFi();
extern "C" void GetPolyRopeThrough__4dBgWFi();
extern "C" void GetPolyBombThrough__4dBgWFi();
extern "C" void GetShdwThrough__4dBgWFi();
extern "C" void GetUnderwaterRoofCode__4dBgWFi();
extern "C" void GetLinkNo__4dBgWFRC13cBgS_PolyInfo();
extern "C" void GetWallCode__4dBgWFRC13cBgS_PolyInfo();
extern "C" void GetPolyAtt0__4dBgWFRC13cBgS_PolyInfo();
extern "C" void GetPolyAtt1__4dBgWFRC13cBgS_PolyInfo();
extern "C" void GetGroundCode__4dBgWFRC13cBgS_PolyInfo();
extern "C" void GetIronBallThrough__4dBgWFi();
extern "C" void GetAttackThrough__4dBgWFi();
extern "C" void GetCamMoveBG__4dBgWFRC13cBgS_PolyInfo();
extern "C" void GetRoomCamId__4dBgWFRC13cBgS_PolyInfo();
extern "C" void GetRoomPathId__4dBgWFRC13cBgS_PolyInfo();
extern "C" void GetRoomPathPntNo__4dBgWFRC13cBgS_PolyInfo();
extern "C" void ChkNotReady__4cBgWCFv();
extern "C" void ChkLock__4cBgWCFv();
extern "C" void ChkMoveBg__4cBgWCFv();
extern "C" void WallCorrect__4dBgWFP9dBgS_Acch();
extern "C" void WallCorrectSort__4dBgWFP9dBgS_Acch();
extern "C" void RoofChk__4dBgWFP12dBgS_RoofChk();
extern "C" void SplGrpChk__4dBgWFP14dBgS_SplGrpChk();
extern "C" void CaptPoly__4dBgWFR13dBgS_CaptPoly();
extern "C" void SphChk__4dBgWFP11dBgS_SphChkPv();
extern "C" void GetPolyGrpRoomInfId__4dBgWFRC13cBgS_PolyInfo();
extern "C" void GetGrpSoundId__4dBgWFRC13cBgS_PolyInfo();
extern "C" void ChkPolyThrough__4dBgWFiP16cBgS_PolyPassChk();
extern "C" void ChkShdwDrawThrough__4dBgWFiP16cBgS_PolyPassChk();
extern "C" void ChkGrpThrough__4dBgWFiP15cBgS_GrpPassChki();
extern "C" void CallRideCallBack__4dBgWFP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void CallArrowStickCallBack__4dBgWFP10fopAc_ac_cP10fopAc_ac_cR4cXyz();
extern "C" void OffMoveFlag__4dBgWFv();
extern "C" void ChkMoveFlag__4dBgWCFv();
extern "C" void* __nwa__FUl();
extern "C" void __dl__FPv();
extern "C" void _savegpr_27();
extern "C" void _restgpr_27();
extern "C" extern void* __vt__4dBgW[65];
extern "C" extern f32 G_CM3D_F_ABS_MIN[1 + 1 /* padding */];

//
// Declarations:
//

/* 80082F98-80083020 0088+00 s=0 e=0 z=2  None .text      Set__6dBgWSvFP6cBgD_tUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dBgWSv::Set(cBgD_t* param_0, u32 param_1) {
    nofralloc
#include "asm/d/bg/d_bg_w_sv/Set__6dBgWSvFP6cBgD_tUl.s"
}
#pragma pop

/* 80083020-8008308C 006C+00 s=0 e=0 z=3  None .text      CopyBackVtx__6dBgWSvFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dBgWSv::CopyBackVtx() {
    nofralloc
#include "asm/d/bg/d_bg_w_sv/CopyBackVtx__6dBgWSvFv.s"
}
#pragma pop

/* 8008308C-80083244 01B8+00 s=1 e=0 z=0  None .text      CrrPosWork__6dBgWSvFP4cXyziii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dBgWSv::CrrPosWork(cXyz* param_0, int param_1, int param_2, int param_3) {
    nofralloc
#include "asm/d/bg/d_bg_w_sv/CrrPosWork__6dBgWSvFP4cXyziii.s"
}
#pragma pop

/* 80083244-80083300 00BC+00 s=1 e=0 z=0  None .text
 * CrrPos__6dBgWSvFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz     */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dBgWSv::CrrPos(cBgS_PolyInfo const& param_0, void* param_1, bool param_2, cXyz* param_3,
                        csXyz* param_4, csXyz* param_5) {
    nofralloc
#include "asm/d/bg/d_bg_w_sv/CrrPos__6dBgWSvFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz.s"
}
#pragma pop

/* ############################################################################################## */
/* 80452758-8045275C 0004+00 s=1 e=0 z=0  None .sdata2    @3807 */
SECTION_SDATA2 static u8 lit_3807[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 8045275C-80452760 0004+00 s=1 e=0 z=0  None .sdata2    @3808 */
SECTION_SDATA2 static u32 lit_3808 = 0x3F800000;

/* 80083300-8008351C 021C+00 s=1 e=0 z=0  None .text      TransPosWork__6dBgWSvFP4cXyziii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dBgWSv::TransPosWork(cXyz* param_0, int param_1, int param_2, int param_3) {
    nofralloc
#include "asm/d/bg/d_bg_w_sv/TransPosWork__6dBgWSvFP4cXyziii.s"
}
#pragma pop

/* 8008351C-800835D8 00BC+00 s=1 e=0 z=0  None .text
 * TransPos__6dBgWSvFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz   */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dBgWSv::TransPos(cBgS_PolyInfo const& param_0, void* param_1, bool param_2, cXyz* param_3,
                          csXyz* param_4, csXyz* param_5) {
    nofralloc
#include "asm/d/bg/d_bg_w_sv/TransPos__6dBgWSvFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz.s"
}
#pragma pop

/* 800835D8-800835DC 0004+00 s=1 e=0 z=0  None .text
 * MatrixCrrPos__6dBgWSvFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz */
void dBgWSv::MatrixCrrPos(cBgS_PolyInfo const& param_0, void* param_1, bool param_2, cXyz* param_3,
                          csXyz* param_4, csXyz* param_5) {
    /* empty function */
}

/* ############################################################################################## */
/* 803ABEB8-803ABFC0 0104+04 s=1 e=0 z=2  None .data      __vt__6dBgWSv */
SECTION_DATA void* __vt__6dBgWSv[65 + 1 /* padding */] = {
    (void*)NULL,
    (void*)NULL,
    (void*)__dt__6dBgWSvFv,
    (void*)ChkMemoryError__4cBgWFv,
    (void*)ChkNotReady__4cBgWCFv,
    (void*)ChkLock__4cBgWCFv,
    (void*)ChkMoveBg__4cBgWCFv,
    (void*)ChkMoveFlag__4dBgWCFv,
    (void*)GetTriPla__4cBgWCFRC13cBgS_PolyInfo,
    (void*)GetTriPnt__4cBgWCFRC13cBgS_PolyInfoP4cXyzP4cXyzP4cXyz,
    (void*)GetBnd__4cBgWCFv,
    (void*)GetGrpInf__4cBgWCFRC13cBgS_PolyInfo,
    (void*)OffMoveFlag__4dBgWFv,
    (void*)GetTopUnder__4cBgWCFPfPf,
    (void*)SetOldShapeAngleY__9dBgW_BaseFs,
    (void*)LineCheck__4cBgWFP11cBgS_LinChk,
    (void*)GroundCross__4cBgWFP11cBgS_GndChk,
    (void*)ShdwDraw__4cBgWFP13cBgS_ShdwDraw,
    (void*)CaptPoly__4dBgWFR13dBgS_CaptPoly,
    (void*)WallCorrect__4dBgWFP9dBgS_Acch,
    (void*)WallCorrectSort__4dBgWFP9dBgS_Acch,
    (void*)RoofChk__4dBgWFP12dBgS_RoofChk,
    (void*)SplGrpChk__4dBgWFP14dBgS_SplGrpChk,
    (void*)SphChk__4dBgWFP11dBgS_SphChkPv,
    (void*)GetGrpRoomIndex__4cBgWCFRC13cBgS_PolyInfo,
    (void*)GetExitId__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetPolyColor__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetHorseNoEntry__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetSpecialCode__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetSpecialCode__4dBgWFi,
    (void*)GetMagnetCode__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetPolyObjThrough__4dBgWFi,
    (void*)GetPolyCamThrough__4dBgWFi,
    (void*)GetPolyLinkThrough__4dBgWFi,
    (void*)GetPolyArrowThrough__4dBgWFi,
    (void*)GetPolyHSStick__4dBgWFi,
    (void*)GetPolyBoomerangThrough__4dBgWFi,
    (void*)GetPolyRopeThrough__4dBgWFi,
    (void*)GetPolyBombThrough__4dBgWFi,
    (void*)GetShdwThrough__4dBgWFi,
    (void*)GetUnderwaterRoofCode__4dBgWFi,
    (void*)GetMonkeyBarsCode__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetLinkNo__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetWallCode__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetPolyAtt0__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetPolyAtt1__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetGroundCode__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetIronBallThrough__4dBgWFi,
    (void*)GetAttackThrough__4dBgWFi,
    (void*)GetCamMoveBG__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetRoomCamId__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetRoomPathId__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetRoomPathPntNo__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetPolyGrpRoomInfId__4dBgWFRC13cBgS_PolyInfo,
    (void*)GetGrpSoundId__4dBgWFRC13cBgS_PolyInfo,
    (void*)CrrPos__6dBgWSvFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz,
    (void*)TransPos__6dBgWSvFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz,
    (void*)MatrixCrrPos__6dBgWSvFRC13cBgS_PolyInfoPvbP4cXyzP5csXyzP5csXyz,
    (void*)CallRideCallBack__4dBgWFP10fopAc_ac_cP10fopAc_ac_c,
    (void*)CallArrowStickCallBack__4dBgWFP10fopAc_ac_cP10fopAc_ac_cR4cXyz,
    (void*)CalcPlane__4cBgWFv,
    (void*)ClassifyPlane__4cBgWFv,
    (void*)ChkPolyThrough__4dBgWFiP16cBgS_PolyPassChk,
    (void*)ChkShdwDrawThrough__4dBgWFiP16cBgS_PolyPassChk,
    (void*)ChkGrpThrough__4dBgWFiP15cBgS_GrpPassChki,
    /* padding */
    NULL,
};

/* 800835DC-8008364C 0070+00 s=1 e=0 z=0  None .text      __dt__6dBgWSvFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dBgWSv::~dBgWSv() {
    nofralloc
#include "asm/d/bg/d_bg_w_sv/__dt__6dBgWSvFv.s"
}
#pragma pop