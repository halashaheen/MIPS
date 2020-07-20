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
static const char *ng0 = "D:/mips/co/tb.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static const char *ng3 = "IM_init";
static int ng4[] = {8192, 0};
static int ng5[] = {4, 0};
static unsigned int ng6[] = {4294967295U, 4294967295U};
static const char *ng7 = "RF";
static const char *ng8 = "w";
static int ng9[] = {32, 0};
static const char *ng10 = "%h\n";



static void Initial_45_0(char *t0)
{
    char t6[8];
    char t19[8];
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
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 4608U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);

LAB4:    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 4416);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2728);
    xsi_vlogfile_readmemb(ng3, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(62, ng0);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB6:    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 4416);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB7:    xsi_set_current_line(63, ng0);

LAB9:    xsi_set_current_line(64, ng0);
    t13 = (t0 + 5176);
    *((int *)t13) = 1;
    t14 = (t0 + 4640);
    *((char **)t14) = t13;
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(65, ng0);

LAB11:    xsi_set_current_line(66, ng0);
    t15 = ((char*)((ng5)));
    t16 = (t0 + 3528);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memset(t19, 0, 8);
    xsi_vlog_signed_multiply(t19, 32, t15, 32, t18, 32);
    t20 = (t0 + 2568);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 32);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2728);
    t7 = (t5 + 72U);
    t13 = *((char **)t7);
    t14 = (t0 + 2728);
    t15 = (t14 + 64U);
    t16 = *((char **)t15);
    t17 = (t0 + 3528);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    xsi_vlog_generic_get_array_select_value(t6, 32, t4, t13, t16, 2, 1, t20, 32, 1);
    t21 = (t0 + 2408);
    xsi_vlogvar_assign_value(t21, t6, 0, 0, 32);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 3528);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB6;

LAB12:    xsi_set_current_line(73, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 2248);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(75, ng0);

LAB13:    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t6, 0, 8);
    if (*((unsigned int *)t3) != *((unsigned int *)t2))
        goto LAB16;

LAB14:    t4 = (t3 + 4);
    t5 = (t2 + 4);
    if (*((unsigned int *)t4) != *((unsigned int *)t5))
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB16:    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB18;

LAB17:    t13 = (t0 + 5192);
    *((int *)t13) = 1;
    t14 = (t0 + 4608U);
    *((char **)t14) = &&LAB13;
    goto LAB1;

LAB18:    t15 = (t0 + 5192);
    *((int *)t15) = 0;
    xsi_set_current_line(76, ng0);

LAB19:    xsi_set_current_line(78, ng0);
    *((int *)t19) = xsi_vlogfile_file_open_of_cname_ctype(ng7, ng8);
    t16 = (t19 + 4);
    *((int *)t16) = 0;
    t17 = (t0 + 3688);
    xsi_vlogvar_assign_value(t17, t19, 0, 0, 32);
    xsi_set_current_line(79, ng0);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB20:    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng9)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1528U);
    t7 = *((char **)t5);
    xsi_vlogfile_fwrite(*((unsigned int *)t4), 0, 0, 1, ng10, 2, t0, (char)118, t7, 32);
    xsi_set_current_line(86, ng0);
    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB25:    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    xsi_vlogfile_fclose(*((unsigned int *)t4));
    xsi_set_current_line(97, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

LAB21:    xsi_set_current_line(80, ng0);

LAB23:    xsi_set_current_line(81, ng0);
    t13 = (t0 + 3368);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t0 + 3048);
    xsi_vlogvar_assign_value(t16, t15, 0, 0, 5);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 4416);
    xsi_process_wait(t2, 10LL);
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB24:    xsi_set_current_line(83, ng0);
    t3 = (t0 + 3688);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 1368U);
    t13 = *((char **)t7);
    xsi_vlogfile_fwrite(*((unsigned int *)t5), 0, 0, 1, ng10, 2, t0, (char)118, t13, 32);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 3368);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB20;

LAB26:    xsi_set_current_line(87, ng0);

LAB28:    xsi_set_current_line(88, ng0);
    t13 = (t0 + 3208);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t0 + 2888);
    xsi_vlogvar_assign_value(t16, t15, 0, 0, 13);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 4416);
    xsi_process_wait(t2, 10LL);
    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB29:    xsi_set_current_line(90, ng0);
    t3 = (t0 + 3688);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 1208U);
    t13 = *((char **)t7);
    xsi_vlogfile_fwrite(*((unsigned int *)t5), 0, 0, 1, ng10, 2, t0, (char)118, t13, 32);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 3208);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB25;

}

static void Always_99_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 4856U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(100, ng0);

LAB4:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 4664);
    xsi_process_wait(t2, 31250LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(102, ng0);
    t4 = (t0 + 2088);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t7) == 0)
        goto LAB6;

LAB8:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB9:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB11;

LAB10:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 2088);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB11:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB10;

}


extern void work_m_00000000000198952129_3671711236_init()
{
	static char *pe[] = {(void *)Initial_45_0,(void *)Always_99_1};
	xsi_register_didat("work_m_00000000000198952129_3671711236", "isim/tb_isim_beh.exe.sim/work/m_00000000000198952129_3671711236.didat");
	xsi_register_executes(pe);
}
