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
static const char *ng0 = "E:/ISE/Term_PC/alu/top.v";
static unsigned int ng1[] = {0U, 0U};



static void Always_43_0(char *t0)
{
    char t6[8];
    char t22[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 4240U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 4560);
    *((int *)t2) = 1;
    t3 = (t0 + 4272);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(44, ng0);

LAB5:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 1480U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 1);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 1);
    t13 = (t12 & 1);
    *((unsigned int *)t4) = t13;
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t6);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB6;

LAB7:
LAB8:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1480U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 2);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 2);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    t5 = (t6 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t6);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1480U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 3);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 3);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    t5 = (t6 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t6);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB14;

LAB15:
LAB16:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1480U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 4);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 4);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    t5 = (t6 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t6);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB18;

LAB19:
LAB20:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1480U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 5);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 5);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    t5 = (t6 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t6);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB22;

LAB23:
LAB24:    goto LAB2;

LAB6:    xsi_set_current_line(46, ng0);

LAB9:    xsi_set_current_line(47, ng0);
    t20 = (t0 + 1320U);
    t21 = *((char **)t20);
    t20 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t20, t21, 0, 0, 32, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(51, ng0);

LAB13:    xsi_set_current_line(52, ng0);
    t7 = (t0 + 1320U);
    t14 = *((char **)t7);
    t7 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t7, t14, 0, 0, 32, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(55, ng0);

LAB17:    xsi_set_current_line(56, ng0);
    t7 = (t0 + 1320U);
    t14 = *((char **)t7);
    memset(t22, 0, 8);
    t7 = (t22 + 4);
    t20 = (t14 + 4);
    t23 = *((unsigned int *)t14);
    t24 = (t23 >> 0);
    *((unsigned int *)t22) = t24;
    t25 = *((unsigned int *)t20);
    t26 = (t25 >> 0);
    *((unsigned int *)t7) = t26;
    t27 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t27 & 15U);
    t28 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t28 & 15U);
    t21 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t21, t22, 0, 0, 4, 0LL);
    goto LAB16;

LAB18:    xsi_set_current_line(59, ng0);

LAB21:    xsi_set_current_line(60, ng0);
    t7 = (t0 + 2440U);
    t14 = *((char **)t7);
    t7 = (t0 + 2840);
    xsi_vlogvar_wait_assign_value(t7, t14, 0, 0, 32, 0LL);
    goto LAB20;

LAB22:    xsi_set_current_line(64, ng0);

LAB25:    xsi_set_current_line(65, ng0);
    t7 = (t0 + 2280U);
    t14 = *((char **)t7);
    t7 = (t0 + 2120U);
    t20 = *((char **)t7);
    t7 = (t0 + 1960U);
    t21 = *((char **)t7);
    t7 = (t0 + 1800U);
    t29 = *((char **)t7);
    t7 = (t0 + 1640U);
    t30 = *((char **)t7);
    t7 = ((char*)((ng1)));
    xsi_vlogtype_concat(t22, 32, 32, 6U, t7, 27, t30, 1, t29, 1, t21, 1, t20, 1, t14, 1);
    t31 = (t0 + 2840);
    xsi_vlogvar_wait_assign_value(t31, t22, 0, 0, 32, 0LL);
    goto LAB24;

}


extern void work_m_00000000002783294233_3823007873_init()
{
	static char *pe[] = {(void *)Always_43_0};
	xsi_register_didat("work_m_00000000002783294233_3823007873", "isim/test_isim_beh.exe.sim/work/m_00000000002783294233_3823007873.didat");
	xsi_register_executes(pe);
}
