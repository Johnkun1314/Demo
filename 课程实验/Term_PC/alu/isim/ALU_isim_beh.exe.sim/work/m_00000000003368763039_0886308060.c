/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/ISE/Term_PC/CPU/ALU.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {5U, 0U};
static int ng8[] = {1, 0, 0, 0};
static unsigned int ng9[] = {6U, 0U};
static unsigned int ng10[] = {7U, 0U};



static void Always_16_0(char *t0)
{
    char t8[8];
    char t40[8];
    char t47[16];
    char t48[16];
    char t49[16];
    char t50[8];
    char t52[8];
    char t55[8];
    char t72[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t51;
    char *t53;
    char *t54;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t70;
    char *t71;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;

LAB0:    t1 = (t0 + 3784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(16, ng0);
    t2 = (t0 + 4104);
    *((int *)t2) = 1;
    t3 = (t0 + 3816);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(17, ng0);

LAB5:    xsi_set_current_line(18, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2864);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(19, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB23:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1904);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t12 = (t5 + 4);
    t13 = (t7 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 ^ t10);
    t14 = *((unsigned int *)t12);
    t15 = *((unsigned int *)t13);
    t16 = (t14 ^ t15);
    t17 = (t11 | t16);
    t18 = *((unsigned int *)t12);
    t19 = *((unsigned int *)t13);
    t20 = (t18 | t19);
    t23 = (~(t20));
    t24 = (t17 & t23);
    if (t24 != 0)
        goto LAB54;

LAB51:    if (t20 != 0)
        goto LAB53;

LAB52:    *((unsigned int *)t8) = 1;

LAB54:    t22 = (t0 + 2064);
    xsi_vlogvar_assign_value(t22, t8, 0, 0, 1);
    xsi_set_current_line(30, ng0);
    t2 = (t0 + 2864);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 2224);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 1);
    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1344U);
    t4 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 31);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t14 = *((unsigned int *)t5);
    t15 = (t14 >> 31);
    t16 = (t15 & 1);
    *((unsigned int *)t2) = t16;
    t7 = (t0 + 1504U);
    t12 = *((char **)t7);
    memset(t40, 0, 8);
    t7 = (t40 + 4);
    t13 = (t12 + 4);
    t17 = *((unsigned int *)t12);
    t18 = (t17 >> 31);
    t19 = (t18 & 1);
    *((unsigned int *)t40) = t19;
    t20 = *((unsigned int *)t13);
    t23 = (t20 >> 31);
    t24 = (t23 & 1);
    *((unsigned int *)t7) = t24;
    t25 = *((unsigned int *)t8);
    t26 = *((unsigned int *)t40);
    t27 = (t25 ^ t26);
    *((unsigned int *)t50) = t27;
    t21 = (t8 + 4);
    t22 = (t40 + 4);
    t39 = (t50 + 4);
    t28 = *((unsigned int *)t21);
    t29 = *((unsigned int *)t22);
    t30 = (t28 | t29);
    *((unsigned int *)t39) = t30;
    t33 = *((unsigned int *)t39);
    t34 = (t33 != 0);
    if (t34 == 1)
        goto LAB55;

LAB56:
LAB57:    t41 = (t0 + 1904);
    t46 = (t41 + 56U);
    t51 = *((char **)t46);
    memset(t52, 0, 8);
    t53 = (t52 + 4);
    t54 = (t51 + 4);
    t37 = *((unsigned int *)t51);
    t38 = (t37 >> 31);
    t42 = (t38 & 1);
    *((unsigned int *)t52) = t42;
    t43 = *((unsigned int *)t54);
    t44 = (t43 >> 31);
    t45 = (t44 & 1);
    *((unsigned int *)t53) = t45;
    t56 = *((unsigned int *)t50);
    t57 = *((unsigned int *)t52);
    t58 = (t56 ^ t57);
    *((unsigned int *)t55) = t58;
    t59 = (t50 + 4);
    t60 = (t52 + 4);
    t61 = (t55 + 4);
    t62 = *((unsigned int *)t59);
    t63 = *((unsigned int *)t60);
    t64 = (t62 | t63);
    *((unsigned int *)t61) = t64;
    t65 = *((unsigned int *)t61);
    t66 = (t65 != 0);
    if (t66 == 1)
        goto LAB58;

LAB59:
LAB60:    t69 = (t0 + 2864);
    t70 = (t69 + 56U);
    t71 = *((char **)t70);
    t73 = *((unsigned int *)t55);
    t74 = *((unsigned int *)t71);
    t75 = (t73 ^ t74);
    *((unsigned int *)t72) = t75;
    t76 = (t55 + 4);
    t77 = (t71 + 4);
    t78 = (t72 + 4);
    t79 = *((unsigned int *)t76);
    t80 = *((unsigned int *)t77);
    t81 = (t79 | t80);
    *((unsigned int *)t78) = t81;
    t82 = *((unsigned int *)t78);
    t83 = (t82 != 0);
    if (t83 == 1)
        goto LAB61;

LAB62:
LAB63:    t86 = (t0 + 2384);
    xsi_vlogvar_assign_value(t86, t72, 0, 0, 1);
    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1904);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t8, 0, 8);
    t7 = (t8 + 4);
    t12 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 31);
    t11 = (t10 & 1);
    *((unsigned int *)t8) = t11;
    t14 = *((unsigned int *)t12);
    t15 = (t14 >> 31);
    t16 = (t15 & 1);
    *((unsigned int *)t7) = t16;
    t13 = (t0 + 2544);
    xsi_vlogvar_assign_value(t13, t8, 0, 0, 1);
    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1904);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t8, 0, 8);
    t7 = (t5 + 4);
    t9 = 1;
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t5);
    t11 = (t11 & 1);
    if (*((unsigned int *)t7) != 0)
        goto LAB64;

LAB65:    t14 = 0;

LAB67:    t15 = (t14 <= 31);
    if (t15 == 1)
        goto LAB68;

LAB69:    t17 = (!(t11));
    *((unsigned int *)t8) = t17;

LAB66:    t13 = (t0 + 2704);
    xsi_vlogvar_assign_value(t13, t8, 0, 0, 1);
    goto LAB2;

LAB7:    xsi_set_current_line(20, ng0);

LAB24:    xsi_set_current_line(20, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t0 + 1504U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 & t10);
    *((unsigned int *)t8) = t11;
    t4 = (t5 + 4);
    t12 = (t7 + 4);
    t13 = (t8 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t12);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB25;

LAB26:
LAB27:    t39 = (t0 + 1904);
    xsi_vlogvar_assign_value(t39, t8, 0, 0, 32);
    goto LAB23;

LAB9:    xsi_set_current_line(21, ng0);

LAB28:    xsi_set_current_line(21, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t0 + 1504U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t8) = t11;
    t4 = (t5 + 4);
    t12 = (t7 + 4);
    t13 = (t8 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t12);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB29;

LAB30:
LAB31:    t39 = (t0 + 1904);
    xsi_vlogvar_assign_value(t39, t8, 0, 0, 32);
    goto LAB23;

LAB11:    xsi_set_current_line(22, ng0);

LAB32:    xsi_set_current_line(22, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t0 + 1504U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 ^ t10);
    *((unsigned int *)t8) = t11;
    t4 = (t5 + 4);
    t12 = (t7 + 4);
    t13 = (t8 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t12);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB33;

LAB34:
LAB35:    t21 = (t0 + 1904);
    xsi_vlogvar_assign_value(t21, t8, 0, 0, 32);
    goto LAB23;

LAB13:    xsi_set_current_line(23, ng0);

LAB36:    xsi_set_current_line(23, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t0 + 1504U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t40) = t11;
    t4 = (t5 + 4);
    t12 = (t7 + 4);
    t13 = (t40 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t12);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (t17 != 0);
    if (t18 == 1)
        goto LAB37;

LAB38:
LAB39:    memset(t8, 0, 8);
    t39 = (t8 + 4);
    t41 = (t40 + 4);
    t35 = *((unsigned int *)t40);
    t36 = (~(t35));
    *((unsigned int *)t8) = t36;
    *((unsigned int *)t39) = 0;
    if (*((unsigned int *)t41) != 0)
        goto LAB41;

LAB40:    t44 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t44 & 4294967295U);
    t45 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t45 & 4294967295U);
    t46 = (t0 + 1904);
    xsi_vlogvar_assign_value(t46, t8, 0, 0, 32);
    goto LAB23;

LAB15:    xsi_set_current_line(24, ng0);

LAB42:    xsi_set_current_line(24, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t0 + 1504U);
    t7 = *((char **)t4);
    xsi_vlog_unsigned_add(t47, 33, t5, 32, t7, 32);
    t4 = (t0 + 1904);
    xsi_vlogvar_assign_value(t4, t47, 0, 0, 32);
    t12 = (t0 + 2864);
    xsi_vlogvar_assign_value(t12, t47, 32, 0, 1);
    goto LAB23;

LAB17:    xsi_set_current_line(25, ng0);

LAB43:    xsi_set_current_line(25, ng0);
    t4 = (t0 + 1504U);
    t5 = *((char **)t4);
    xsi_vlogtype_unsigned_bit_neg(t47, 33, t5, 32);
    t4 = (t0 + 1344U);
    t7 = *((char **)t4);
    xsi_vlog_unsigned_add(t48, 33, t47, 33, t7, 32);
    t4 = ((char*)((ng8)));
    xsi_vlog_unsigned_add(t49, 33, t48, 33, t4, 32);
    t12 = (t0 + 1904);
    xsi_vlogvar_assign_value(t12, t49, 0, 0, 32);
    t13 = (t0 + 2864);
    xsi_vlogvar_assign_value(t13, t49, 32, 0, 1);
    goto LAB23;

LAB19:    xsi_set_current_line(26, ng0);

LAB44:    xsi_set_current_line(26, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t0 + 1504U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t5 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB46;

LAB45:    t12 = (t7 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB46;

LAB49:    if (*((unsigned int *)t5) < *((unsigned int *)t7))
        goto LAB47;

LAB48:    t21 = (t0 + 1904);
    xsi_vlogvar_assign_value(t21, t8, 0, 0, 32);
    goto LAB23;

LAB21:    xsi_set_current_line(27, ng0);

LAB50:    xsi_set_current_line(27, ng0);
    t4 = (t0 + 1504U);
    t5 = *((char **)t4);
    t4 = (t0 + 1344U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_lshift(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 1904);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    goto LAB23;

LAB25:    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t8) = (t19 | t20);
    t21 = (t5 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t5);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (~(t25));
    t27 = *((unsigned int *)t7);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (~(t29));
    t31 = (t24 & t26);
    t32 = (t28 & t30);
    t33 = (~(t31));
    t34 = (~(t32));
    t35 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t35 & t33);
    t36 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t36 & t34);
    t37 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t37 & t33);
    t38 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t38 & t34);
    goto LAB27;

LAB29:    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t8) = (t19 | t20);
    t21 = (t5 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t5);
    t31 = (t25 & t24);
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t32 = (t28 & t27);
    t29 = (~(t31));
    t30 = (~(t32));
    t33 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t33 & t29);
    t34 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t34 & t30);
    goto LAB31;

LAB33:    t19 = *((unsigned int *)t8);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t8) = (t19 | t20);
    goto LAB35;

LAB37:    t19 = *((unsigned int *)t40);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t40) = (t19 | t20);
    t21 = (t5 + 4);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t5);
    t31 = (t25 & t24);
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t32 = (t28 & t27);
    t29 = (~(t31));
    t30 = (~(t32));
    t33 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t33 & t29);
    t34 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t34 & t30);
    goto LAB39;

LAB41:    t37 = *((unsigned int *)t8);
    t38 = *((unsigned int *)t41);
    *((unsigned int *)t8) = (t37 | t38);
    t42 = *((unsigned int *)t39);
    t43 = *((unsigned int *)t41);
    *((unsigned int *)t39) = (t42 | t43);
    goto LAB40;

LAB46:    t13 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB48;

LAB47:    *((unsigned int *)t8) = 1;
    goto LAB48;

LAB53:    t21 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB54;

LAB55:    t35 = *((unsigned int *)t50);
    t36 = *((unsigned int *)t39);
    *((unsigned int *)t50) = (t35 | t36);
    goto LAB57;

LAB58:    t67 = *((unsigned int *)t55);
    t68 = *((unsigned int *)t61);
    *((unsigned int *)t55) = (t67 | t68);
    goto LAB60;

LAB61:    t84 = *((unsigned int *)t72);
    t85 = *((unsigned int *)t78);
    *((unsigned int *)t72) = (t84 | t85);
    goto LAB63;

LAB64:    t12 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB66;

LAB68:    if (t9 == 1)
        goto LAB71;

LAB72:    t16 = (t10 & 1);
    t11 = (t11 ^ t16);

LAB73:    t10 = (t10 >> 1);

LAB70:    t14 = (t14 + 1);
    goto LAB67;

LAB71:    t9 = 0;
    goto LAB73;

}


extern void work_m_00000000003368763039_0886308060_init()
{
	static char *pe[] = {(void *)Always_16_0};
	xsi_register_didat("work_m_00000000003368763039_0886308060", "isim/ALU_isim_beh.exe.sim/work/m_00000000003368763039_0886308060.didat");
	xsi_register_executes(pe);
}
