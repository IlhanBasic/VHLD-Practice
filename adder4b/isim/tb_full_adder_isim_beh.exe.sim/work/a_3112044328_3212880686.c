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
static const char *ng0 = "C:/Users/PC/Desktop/Predmeti/II godina/AR2/sabirac4b/sabirac4b.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_1781543830_1035706684(char *, char *, char *, int );


static void work_a_3112044328_3212880686_p_0(char *t0)
{
    char t1[16];
    char t2[16];
    char t8[16];
    char t10[16];
    char t19[16];
    char t21[16];
    char t30[16];
    char t32[16];
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    char *t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t20;
    char *t22;
    char *t23;
    int t24;
    char *t25;
    char *t27;
    char *t28;
    unsigned char t29;
    char *t31;
    char *t33;
    char *t34;
    int t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t39;

LAB0:    xsi_set_current_line(21, ng0);
    t3 = (t0 + 5389);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t9 = ((IEEE_P_1242562249) + 3000);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 0;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (0 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t5 = xsi_base_array_concat(t5, t8, t9, (char)97, t3, t10, (char)99, t7, (char)101);
    t12 = (t0 + 5390);
    t16 = (t0 + 1192U);
    t17 = *((char **)t16);
    t18 = *((unsigned char *)t17);
    t20 = ((IEEE_P_1242562249) + 3000);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 0;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (0 - 0);
    t14 = (t24 * 1);
    t14 = (t14 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t14;
    t16 = xsi_base_array_concat(t16, t19, t20, (char)97, t12, t21, (char)99, t18, (char)101);
    t23 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t2, t5, t8, t16, t19);
    t25 = (t0 + 5391);
    t27 = (t0 + 1352U);
    t28 = *((char **)t27);
    t29 = *((unsigned char *)t28);
    t31 = ((IEEE_P_1242562249) + 3000);
    t33 = (t32 + 0U);
    t34 = (t33 + 0U);
    *((int *)t34) = 0;
    t34 = (t33 + 4U);
    *((int *)t34) = 0;
    t34 = (t33 + 8U);
    *((int *)t34) = 1;
    t35 = (0 - 0);
    t14 = (t35 * 1);
    t14 = (t14 + 1);
    t34 = (t33 + 12U);
    *((unsigned int *)t34) = t14;
    t27 = xsi_base_array_concat(t27, t30, t31, (char)97, t25, t32, (char)99, t29, (char)101);
    t34 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t1, t23, t2, t27, t30);
    t36 = (t0 + 1968U);
    t37 = *((char **)t36);
    t36 = (t37 + 0);
    t38 = (t1 + 12U);
    t14 = *((unsigned int *)t38);
    t39 = (1U * t14);
    memcpy(t36, t34, t39);
    xsi_set_current_line(24, ng0);
    t3 = (t0 + 1968U);
    t4 = *((char **)t3);
    t3 = (t0 + 3352);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 2U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(27, ng0);
    t3 = (t0 + 1968U);
    t4 = *((char **)t3);
    t3 = (t0 + 5360U);
    t7 = ieee_p_1242562249_sub_1781543830_1035706684(IEEE_P_1242562249, t4, t3, 1);
    if (t7 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(30, ng0);
    t3 = (t0 + 3416);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);

LAB3:    t3 = (t0 + 3272);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t5 = (t0 + 3416);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

}


extern void work_a_3112044328_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3112044328_3212880686_p_0};
	xsi_register_didat("work_a_3112044328_3212880686", "isim/tb_full_adder_isim_beh.exe.sim/work/a_3112044328_3212880686.didat");
	xsi_register_executes(pe);
}
