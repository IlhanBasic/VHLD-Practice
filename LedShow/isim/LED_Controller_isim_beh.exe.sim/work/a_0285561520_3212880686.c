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
static const char *ng0 = "C:/Users/PC/Desktop/Predmeti/II godina/AR2/LedShow/Led_Show.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0285561520_3212880686_p_0(char *t0)
{
    char t21[16];
    char t22[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2752U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4768);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 4880);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 8058);
    t5 = (t0 + 4944);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 5008);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (t0 + 4880);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB13;

LAB14:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB17;

LAB18:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)0);
    if (t4 != 0)
        goto LAB21;

LAB22:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 2632U);
    t5 = *((char **)t1);
    t10 = *((unsigned char *)t5);
    t11 = (t10 == (unsigned char)3);
    if (t11 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(52, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)3, 8U);
    t5 = (t0 + 4944);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t5);

LAB11:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 5008);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB10:    xsi_set_current_line(50, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t6 = t1;
    memset(t6, (unsigned char)2, 8U);
    t7 = (t0 + 4944);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB11;

LAB13:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2472U);
    t5 = *((char **)t1);
    t14 = (7 - 6);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t5 + t16);
    t6 = (t0 + 2472U);
    t7 = *((char **)t6);
    t17 = (7 - 7);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t6 = (t7 + t20);
    t10 = *((unsigned char *)t6);
    t9 = ((IEEE_P_2592010699) + 4024);
    t12 = (t22 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 6;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t23 = (0 - 6);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t24;
    t8 = xsi_base_array_concat(t8, t21, t9, (char)97, t1, t22, (char)99, t10, (char)101);
    t24 = (7U + 1U);
    t11 = (8U != t24);
    if (t11 == 1)
        goto LAB15;

LAB16:    t13 = (t0 + 4944);
    t25 = (t13 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t8, 8U);
    xsi_driver_first_trans_fast(t13);
    goto LAB8;

LAB15:    xsi_size_not_matching(8U, t24, 0);
    goto LAB16;

LAB17:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2472U);
    t5 = *((char **)t1);
    t17 = (0 - 7);
    t14 = (t17 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t5 + t16);
    t10 = *((unsigned char *)t1);
    t6 = (t0 + 2472U);
    t7 = *((char **)t6);
    t18 = (7 - 7);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t6 = (t7 + t20);
    t9 = ((IEEE_P_2592010699) + 4024);
    t12 = (t22 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 7;
    t13 = (t12 + 4U);
    *((int *)t13) = 1;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t23 = (1 - 7);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t24;
    t8 = xsi_base_array_concat(t8, t21, t9, (char)99, t10, (char)97, t6, t22, (char)101);
    t24 = (1U + 7U);
    t11 = (8U != t24);
    if (t11 == 1)
        goto LAB19;

LAB20:    t13 = (t0 + 4944);
    t25 = (t13 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t8, 8U);
    xsi_driver_first_trans_fast(t13);
    goto LAB8;

LAB19:    xsi_size_not_matching(8U, t24, 0);
    goto LAB20;

LAB21:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 8066);
    t6 = (t0 + 4944);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB8;

}

static void work_a_0285561520_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6};

LAB0:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4784);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(70, ng0);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 != 0)
        goto LAB10;

LAB11:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 != 0)
        goto LAB12;

LAB13:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 5072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB8:    goto LAB2;

LAB4:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 5072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB15:    goto LAB2;

LAB5:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 5072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB18:    goto LAB2;

LAB6:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 5072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB21:    goto LAB2;

LAB7:    xsi_set_current_line(71, ng0);
    t4 = (t0 + 5072);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t4);
    goto LAB8;

LAB10:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 5072);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB12:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 5072);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB14:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 5072);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB17:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 5072);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB20:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 5072);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB21;

}

static void work_a_0285561520_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(101, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5136);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4800);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0285561520_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0285561520_3212880686_p_0,(void *)work_a_0285561520_3212880686_p_1,(void *)work_a_0285561520_3212880686_p_2};
	xsi_register_didat("work_a_0285561520_3212880686", "isim/LED_Controller_isim_beh.exe.sim/work/a_0285561520_3212880686.didat");
	xsi_register_executes(pe);
}
