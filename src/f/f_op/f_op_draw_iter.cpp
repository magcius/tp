/* f_op_draw_iter.cpp autogenerated by split.py v0.4 at 2021-02-15 20:16:49.147351 */

#include "global.h"

// additional symbols needed for f_op_draw_iter.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:16:49.147373
extern "C" {
    void fopDwIt_Begin(void);
    void fopDwIt_GetTag(void);
    void fopDwIt_Next(void);
}

// additional symbols needed for f_op_draw_iter.cpp
// autogenerated by split.py v0.4 at 2021-02-15 20:16:49.147378
extern u8 lbl_804505D0;
extern u8 lbl_80450CF8;


extern "C" {
// fopDwIt_GetTag__Fv
// fopDwIt_GetTag(void)
asm void fopDwIt_GetTag(void) {
    nofralloc
    #include "f/f_op/f_op_draw_iter/asm/func_80020400.s"
}

// fopDwIt_Begin__Fv
// fopDwIt_Begin(void)
asm void fopDwIt_Begin(void) {
    nofralloc
    #include "f/f_op/f_op_draw_iter/asm/func_80020444.s"
}

// fopDwIt_Next__FP16create_tag_class
// fopDwIt_Next(create_tag_class*)
asm void fopDwIt_Next(void) {
    nofralloc
    #include "f/f_op/f_op_draw_iter/asm/func_80020480.s"
}

};
