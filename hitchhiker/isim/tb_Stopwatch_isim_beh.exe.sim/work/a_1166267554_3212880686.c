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
static const char *ng0 = "C:/Users/PC/Desktop/Predmeti/II godina/AR2/ranije/stoperica/stoperica.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1166267554_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    int t12;
    int t13;
    char *t14;

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2272U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3792);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 3872);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 4000);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t9 = (t4 == (unsigned char)3);
    if (t9 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB10;

LAB11:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB12;

LAB13:
LAB8:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB3;

LAB7:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3872);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 4000);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB10:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 3936);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB12:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 3936);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB14:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t9 = *((unsigned char *)t5);
    t11 = (t9 == (unsigned char)3);
    if (t11 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t12 = *((int *)t2);
    t13 = (t12 - 1);
    t1 = (t0 + 3872);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t13;
    xsi_driver_first_trans_fast(t1);

LAB18:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t12 = *((int *)t2);
    t1 = (t0 + 4000);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t12;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB15;

LAB17:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1992U);
    t6 = *((char **)t1);
    t12 = *((int *)t6);
    t13 = (t12 + 1);
    t1 = (t0 + 3872);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t14 = *((char **)t10);
    *((int *)t14) = t13;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

}


extern void work_a_1166267554_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1166267554_3212880686_p_0};
	xsi_register_didat("work_a_1166267554_3212880686", "isim/tb_Stopwatch_isim_beh.exe.sim/work/a_1166267554_3212880686.didat");
	xsi_register_executes(pe);
}
