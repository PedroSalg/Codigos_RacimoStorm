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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/pedro/Documents/ISE/RACIMOStorm/I2C_slave.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_4174755481_1446275585_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 9192);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(100, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (t0 + 9368);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 9432);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 3272U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 9496);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 9560);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 9624);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 4712U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t10 = (t5 == (unsigned char)2);
    if (t10 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 9688);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 4712U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t10 = (t5 == (unsigned char)3);
    if (t10 == 1)
        goto LAB14;

LAB15:    t2 = (unsigned char)0;

LAB16:    if (t2 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 9752);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(118, ng0);
    t1 = (t0 + 9816);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(119, ng0);
    t1 = (t0 + 3272U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB26;

LAB27:    t10 = (unsigned char)0;

LAB28:    if (t10 == 1)
        goto LAB23;

LAB24:    t5 = (unsigned char)0;

LAB25:    if (t5 == 1)
        goto LAB20;

LAB21:    t2 = (unsigned char)0;

LAB22:    if (t2 != 0)
        goto LAB17;

LAB19:
LAB18:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 4712U);
    t3 = *((char **)t1);
    t11 = *((unsigned char *)t3);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB38;

LAB39:    t10 = (unsigned char)0;

LAB40:    if (t10 == 1)
        goto LAB35;

LAB36:    t5 = (unsigned char)0;

LAB37:    if (t5 == 1)
        goto LAB32;

LAB33:    t2 = (unsigned char)0;

LAB34:    if (t2 != 0)
        goto LAB29;

LAB31:
LAB30:    goto LAB3;

LAB5:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 9624);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    t1 = (t0 + 3272U);
    t4 = *((char **)t1);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)3);
    t2 = t12;
    goto LAB10;

LAB11:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 9688);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB14:    t1 = (t0 + 3272U);
    t4 = *((char **)t1);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)2);
    t2 = t12;
    goto LAB16;

LAB17:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 9752);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t19 = (t9 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(122, ng0);
    t1 = (t0 + 9816);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB20:    t1 = (t0 + 3432U);
    t7 = *((char **)t1);
    t17 = *((unsigned char *)t7);
    t18 = (t17 == (unsigned char)2);
    t2 = t18;
    goto LAB22;

LAB23:    t1 = (t0 + 5192U);
    t6 = *((char **)t1);
    t15 = *((unsigned char *)t6);
    t16 = (t15 == (unsigned char)3);
    t5 = t16;
    goto LAB25;

LAB26:    t1 = (t0 + 4712U);
    t4 = *((char **)t1);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)3);
    t10 = t14;
    goto LAB28;

LAB29:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 9752);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t19 = (t9 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 9816);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB30;

LAB32:    t1 = (t0 + 3432U);
    t7 = *((char **)t1);
    t17 = *((unsigned char *)t7);
    t18 = (t17 == (unsigned char)3);
    t2 = t18;
    goto LAB34;

LAB35:    t1 = (t0 + 5192U);
    t6 = *((char **)t1);
    t15 = *((unsigned char *)t6);
    t16 = (t15 == (unsigned char)2);
    t5 = t16;
    goto LAB37;

LAB38:    t1 = (t0 + 3272U);
    t4 = *((char **)t1);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)3);
    t10 = t14;
    goto LAB40;

}

static void work_a_4174755481_1446275585_p_1(char *t0)
{
    char t22[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    int t21;
    unsigned char t23;
    unsigned char t24;
    static char *nl0[] = {&&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13};

LAB0:    xsi_set_current_line(140, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 9208);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(142, ng0);
    t3 = (t0 + 9880);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(143, ng0);
    t1 = (t0 + 9944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(145, ng0);
    t1 = (t0 + 10008);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(146, ng0);
    t1 = (t0 + 10072);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(148, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (char *)((nl0) + t2);
    goto **((char **)t1);

LAB5:    xsi_set_current_line(274, ng0);
    t1 = (t0 + 3592U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB91;

LAB93:
LAB92:    xsi_set_current_line(279, ng0);
    t1 = (t0 + 3752U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB94;

LAB96:
LAB95:    xsi_set_current_line(284, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB97;

LAB99:
LAB98:    goto LAB3;

LAB6:    xsi_set_current_line(151, ng0);
    t4 = (t0 + 3592U);
    t5 = *((char **)t4);
    t8 = *((unsigned char *)t5);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB15;

LAB17:
LAB16:    goto LAB5;

LAB7:    xsi_set_current_line(157, ng0);
    t1 = (t0 + 3912U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB18;

LAB20:
LAB19:    xsi_set_current_line(167, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t12 = *((int *)t3);
    t8 = (t12 == 8);
    if (t8 == 1)
        goto LAB29;

LAB30:    t2 = (unsigned char)0;

LAB31:    if (t2 != 0)
        goto LAB26;

LAB28:
LAB27:    goto LAB5;

LAB8:    xsi_set_current_line(187, ng0);
    t1 = (t0 + 9944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(188, ng0);
    t1 = (t0 + 9880);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(189, ng0);
    t1 = (t0 + 4072U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB46;

LAB48:
LAB47:    goto LAB5;

LAB9:    xsi_set_current_line(201, ng0);
    t1 = (t0 + 3912U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB52;

LAB54:
LAB53:    xsi_set_current_line(211, ng0);
    t1 = (t0 + 4072U);
    t3 = *((char **)t1);
    t8 = *((unsigned char *)t3);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 1)
        goto LAB63;

LAB64:    t2 = (unsigned char)0;

LAB65:    if (t2 != 0)
        goto LAB60;

LAB62:
LAB61:    goto LAB5;

LAB10:    xsi_set_current_line(220, ng0);
    t1 = (t0 + 9944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(221, ng0);
    t1 = (t0 + 5992U);
    t3 = *((char **)t1);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t13 = (7 - t12);
    t14 = (t13 - 7);
    t15 = (t14 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t13);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t1 = (t3 + t17);
    t2 = *((unsigned char *)t1);
    t5 = (t0 + 9880);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t2;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(222, ng0);
    t1 = (t0 + 4072U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB66;

LAB68:
LAB67:    goto LAB5;

LAB11:    xsi_set_current_line(235, ng0);
    t1 = (t0 + 3912U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB74;

LAB76:
LAB75:    goto LAB5;

LAB12:    xsi_set_current_line(247, ng0);
    t1 = (t0 + 4072U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB80;

LAB82:
LAB81:    goto LAB5;

LAB13:    xsi_set_current_line(261, ng0);
    goto LAB5;

LAB14:    xsi_set_current_line(265, ng0);
    if ((unsigned char)0 == 0)
        goto LAB89;

LAB90:    xsi_set_current_line(268, ng0);
    t1 = (t0 + 10136);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB15:    xsi_set_current_line(152, ng0);
    t4 = (t0 + 10136);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(153, ng0);
    t1 = (t0 + 10200);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB16;

LAB18:    xsi_set_current_line(158, ng0);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t9 = (t12 < 7);
    if (t9 != 0)
        goto LAB21;

LAB23:    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t12 = *((int *)t3);
    t2 = (t12 == 7);
    if (t2 != 0)
        goto LAB24;

LAB25:
LAB22:    goto LAB19;

LAB21:    xsi_set_current_line(159, ng0);
    t1 = (t0 + 2632U);
    t5 = *((char **)t1);
    t13 = *((int *)t5);
    t14 = (t13 + 1);
    t1 = (t0 + 10200);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t14;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(160, ng0);
    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t13 = (6 - t12);
    t14 = (t13 - 6);
    t15 = (t14 * -1);
    t16 = (1 * t15);
    t17 = (0U + t16);
    t1 = (t0 + 10264);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = t2;
    xsi_driver_first_trans_delta(t1, t17, 1, 0LL);
    goto LAB22;

LAB24:    xsi_set_current_line(162, ng0);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t13 = *((int *)t4);
    t14 = (t13 + 1);
    t1 = (t0 + 10200);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((int *)t10) = t14;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(163, ng0);
    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 10328);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t2;
    xsi_driver_first_trans_fast(t1);
    goto LAB22;

LAB26:    xsi_set_current_line(168, ng0);
    t1 = (t0 + 10200);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(169, ng0);
    t1 = (t0 + 4232U);
    t3 = *((char **)t1);
    t1 = (t0 + 15959);
    t2 = 1;
    if (7U == 7U)
        goto LAB35;

LAB36:    t2 = 0;

LAB37:    if (t2 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(176, ng0);
    if ((unsigned char)0 == 0)
        goto LAB44;

LAB45:    xsi_set_current_line(179, ng0);
    t1 = (t0 + 10136);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB33:    goto LAB27;

LAB29:    t1 = (t0 + 4072U);
    t4 = *((char **)t1);
    t9 = *((unsigned char *)t4);
    t18 = (t9 == (unsigned char)3);
    t2 = t18;
    goto LAB31;

LAB32:    xsi_set_current_line(170, ng0);
    t7 = (t0 + 10136);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t19 = (t11 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)2;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(171, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB41;

LAB43:
LAB42:    goto LAB33;

LAB35:    t15 = 0;

LAB38:    if (t15 < 7U)
        goto LAB39;
    else
        goto LAB37;

LAB39:    t5 = (t3 + t15);
    t6 = (t1 + t15);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB36;

LAB40:    t15 = (t15 + 1);
    goto LAB38;

LAB41:    xsi_set_current_line(172, ng0);
    t1 = (t0 + 10072);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(173, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t1 = (t0 + 10392);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB42;

LAB44:    t1 = (t0 + 15966);
    xsi_report(t1, 73U, (unsigned char)0);
    goto LAB45;

LAB46:    xsi_set_current_line(190, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t9 = *((unsigned char *)t4);
    t18 = (t9 == (unsigned char)2);
    if (t18 != 0)
        goto LAB49;

LAB51:    xsi_set_current_line(193, ng0);
    t1 = (t0 + 10136);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);

LAB50:    goto LAB47;

LAB49:    xsi_set_current_line(191, ng0);
    t1 = (t0 + 10136);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB50;

LAB52:    xsi_set_current_line(202, ng0);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t13 = (t12 + 1);
    t1 = (t0 + 10200);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((int *)t10) = t13;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(203, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t12 = *((int *)t3);
    t2 = (t12 < 7);
    if (t2 != 0)
        goto LAB55;

LAB57:    xsi_set_current_line(206, ng0);
    t1 = (t0 + 4392U);
    t3 = *((char **)t1);
    t1 = (t0 + 3432U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t5 = ((IEEE_P_2592010699) + 4000);
    t6 = (t0 + 15824U);
    t1 = xsi_base_array_concat(t1, t22, t5, (char)97, t3, t6, (char)99, t2, (char)101);
    t15 = (7U + 1U);
    t8 = (8U != t15);
    if (t8 == 1)
        goto LAB58;

LAB59:    t7 = (t0 + 10520);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t19 = (t11 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t1, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(207, ng0);
    t1 = (t0 + 10008);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB56:    goto LAB53;

LAB55:    xsi_set_current_line(204, ng0);
    t1 = (t0 + 3432U);
    t4 = *((char **)t1);
    t8 = *((unsigned char *)t4);
    t1 = (t0 + 2632U);
    t5 = *((char **)t1);
    t13 = *((int *)t5);
    t14 = (6 - t13);
    t21 = (t14 - 6);
    t15 = (t21 * -1);
    t16 = (1 * t15);
    t17 = (0U + t16);
    t1 = (t0 + 10456);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t8;
    xsi_driver_first_trans_delta(t1, t17, 1, 0LL);
    goto LAB56;

LAB58:    xsi_size_not_matching(8U, t15, 0);
    goto LAB59;

LAB60:    xsi_set_current_line(212, ng0);
    t1 = (t0 + 10136);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(213, ng0);
    t1 = (t0 + 10200);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB61;

LAB63:    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t18 = (t12 == 8);
    t2 = t18;
    goto LAB65;

LAB66:    xsi_set_current_line(223, ng0);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t12 = *((int *)t4);
    t9 = (t12 < 7);
    if (t9 != 0)
        goto LAB69;

LAB71:    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t12 = *((int *)t3);
    t2 = (t12 == 7);
    if (t2 != 0)
        goto LAB72;

LAB73:
LAB70:    goto LAB67;

LAB69:    xsi_set_current_line(224, ng0);
    t1 = (t0 + 2632U);
    t5 = *((char **)t1);
    t13 = *((int *)t5);
    t14 = (t13 + 1);
    t1 = (t0 + 10200);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t14;
    xsi_driver_first_trans_fast(t1);
    goto LAB70;

LAB72:    xsi_set_current_line(226, ng0);
    t1 = (t0 + 10136);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(227, ng0);
    t1 = (t0 + 10200);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB70;

LAB74:    xsi_set_current_line(236, ng0);
    t1 = (t0 + 10136);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(237, ng0);
    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB77;

LAB79:    xsi_set_current_line(240, ng0);
    t1 = (t0 + 10584);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(241, ng0);
    t1 = (t0 + 10072);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(242, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t1 = (t0 + 10392);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8U);
    xsi_driver_first_trans_fast(t1);

LAB78:    goto LAB75;

LAB77:    xsi_set_current_line(238, ng0);
    t1 = (t0 + 10584);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB78;

LAB80:    xsi_set_current_line(248, ng0);
    t1 = (t0 + 2792U);
    t4 = *((char **)t1);
    t9 = *((unsigned char *)t4);
    t18 = (t9 == (unsigned char)3);
    if (t18 != 0)
        goto LAB83;

LAB85:    xsi_set_current_line(255, ng0);
    t1 = (t0 + 10136);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);

LAB84:    goto LAB81;

LAB83:    xsi_set_current_line(249, ng0);
    t1 = (t0 + 2472U);
    t5 = *((char **)t1);
    t23 = *((unsigned char *)t5);
    t24 = (t23 == (unsigned char)2);
    if (t24 != 0)
        goto LAB86;

LAB88:    xsi_set_current_line(252, ng0);
    t1 = (t0 + 10136);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);

LAB87:    goto LAB84;

LAB86:    xsi_set_current_line(250, ng0);
    t1 = (t0 + 10136);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB87;

LAB89:    t1 = (t0 + 16039);
    xsi_report(t1, 41U, (unsigned char)2);
    goto LAB90;

LAB91:    xsi_set_current_line(275, ng0);
    t1 = (t0 + 10136);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(276, ng0);
    t1 = (t0 + 10200);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB92;

LAB94:    xsi_set_current_line(280, ng0);
    t1 = (t0 + 10136);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(281, ng0);
    t1 = (t0 + 10200);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB95;

LAB97:    xsi_set_current_line(285, ng0);
    t1 = (t0 + 10136);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB98;

}

static void work_a_4174755481_1446275585_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(293, ng0);
    t1 = (t0 + 5352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 10648);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t11);

LAB2:    t16 = (t0 + 9224);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 5512U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t1 = (t0 + 10648);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_4174755481_1446275585_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(295, ng0);
    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 10712);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)4;
    xsi_driver_first_trans_fast_port(t11);

LAB2:    t16 = (t0 + 9240);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 5032U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t1 = (t0 + 10712);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_4174755481_1446275585_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(301, ng0);

LAB3:    t1 = (t0 + 5672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 10776);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 9256);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4174755481_1446275585_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(302, ng0);

LAB3:    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    t1 = (t0 + 10840);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 9272);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4174755481_1446275585_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(304, ng0);

LAB3:    t1 = (t0 + 5832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 10904);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 9288);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4174755481_1446275585_init()
{
	static char *pe[] = {(void *)work_a_4174755481_1446275585_p_0,(void *)work_a_4174755481_1446275585_p_1,(void *)work_a_4174755481_1446275585_p_2,(void *)work_a_4174755481_1446275585_p_3,(void *)work_a_4174755481_1446275585_p_4,(void *)work_a_4174755481_1446275585_p_5,(void *)work_a_4174755481_1446275585_p_6};
	xsi_register_didat("work_a_4174755481_1446275585", "isim/Simulacion_V4_isim_beh.exe.sim/work/a_4174755481_1446275585.didat");
	xsi_register_executes(pe);
}
