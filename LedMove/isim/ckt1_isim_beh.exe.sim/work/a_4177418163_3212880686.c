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
static const char *ng0 = "C:/Users/Korisnik/OneDrive/Desktop/Xillinx share/IspitZ1/ckt1.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_4177418163_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    int t12;

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3880);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t7 = (t6 == 8);
    if (t7 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(66, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 4040);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);

LAB9:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t6 = *((int *)t2);
    t12 = (t6 + 1);
    t1 = (t0 + 3976);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t12;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 4104);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t4;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3976);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1992U);
    t5 = *((char **)t1);
    t1 = (t0 + 4040);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

}

static void work_a_4177418163_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 3560U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    if (t4 == 0)
        goto LAB5;

LAB14:    if (t4 == 1)
        goto LAB6;

LAB15:    if (t4 == 2)
        goto LAB7;

LAB16:    if (t4 == 3)
        goto LAB8;

LAB17:    if (t4 == 4)
        goto LAB9;

LAB18:    if (t4 == 5)
        goto LAB10;

LAB19:    if (t4 == 6)
        goto LAB11;

LAB20:    if (t4 == 7)
        goto LAB12;

LAB21:
LAB13:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 6741);
    t5 = (t0 + 4168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);

LAB4:    xsi_set_current_line(73, ng0);

LAB25:    t2 = (t0 + 3896);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB26;

LAB1:    return;
LAB5:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 6677);
    t6 = (t0 + 4168);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB4;

LAB6:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 6685);
    t5 = (t0 + 4168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB7:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 6693);
    t5 = (t0 + 4168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB8:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 6701);
    t5 = (t0 + 4168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB9:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 6709);
    t5 = (t0 + 4168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB10:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 6717);
    t5 = (t0 + 4168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB11:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 6725);
    t5 = (t0 + 4168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB12:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 6733);
    t5 = (t0 + 4168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB22:;
LAB23:    t3 = (t0 + 3896);
    *((int *)t3) = 0;
    goto LAB2;

LAB24:    goto LAB23;

LAB26:    goto LAB24;

}


extern void work_a_4177418163_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4177418163_3212880686_p_0,(void *)work_a_4177418163_3212880686_p_1};
	xsi_register_didat("work_a_4177418163_3212880686", "isim/ckt1_isim_beh.exe.sim/work/a_4177418163_3212880686.didat");
	xsi_register_executes(pe);
}
