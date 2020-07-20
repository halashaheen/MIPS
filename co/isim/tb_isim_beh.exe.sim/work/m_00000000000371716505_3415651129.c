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
static const char *ng0 = "D:/mips/co/Sign_Extend.v";
static int ng1[] = {15, 0};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {31, 0};
static int ng5[] = {16, 0};
static int ng6[] = {1, 0};
static unsigned int ng7[] = {65535U, 0U};
static unsigned int ng8[] = {65535U, 65535U};



static void Always_25_0(char *t0)
{
    char t6[8];
    char t11[8];
    char t33[8];
    char t44[8];
    char t45[8];
    char t46[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    unsigned int t53;
    int t54;
    char *t55;
    unsigned int t56;
    int t57;
    int t58;
    char *t59;
    unsigned int t60;
    int t61;
    int t62;
    unsigned int t63;
    int t64;
    unsigned int t65;
    unsigned int t66;
    int t67;
    int t68;

LAB0:    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 2688);
    *((int *)t2) = 1;
    t3 = (t0 + 2400);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(26, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1008U);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t9 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t5, t8, 2, t9, 32, 1);
    t10 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t12 = (t6 + 4);
    t13 = (t10 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t12);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB8;

LAB5:    if (t23 != 0)
        goto LAB7;

LAB6:    *((unsigned int *)t11) = 1;

LAB8:    t27 = (t11 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1008U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t7 = ((char*)((ng1)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t3, t5, 2, t7, 32, 1);
    t8 = ((char*)((ng6)));
    memset(t11, 0, 8);
    t9 = (t6 + 4);
    t10 = (t8 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t8);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t10);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t10);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB20;

LAB17:    if (t23 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t11) = 1;

LAB20:    t13 = (t11 + 4);
    t28 = *((unsigned int *)t13);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(37, ng0);

LAB29:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (t14 >> 0);
    *((unsigned int *)t6) = t15;
    t16 = *((unsigned int *)t4);
    t17 = (t16 >> 0);
    *((unsigned int *)t2) = t17;
    t18 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t18 & 65535U);
    t19 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t19 & 65535U);
    t5 = (t0 + 1448);
    t7 = (t0 + 1448);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng1)));
    t12 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t11, t33, t44, ((int*)(t9)), 2, t10, 32, 1, t12, 32, 1);
    t13 = (t11 + 4);
    t20 = *((unsigned int *)t13);
    t54 = (!(t20));
    t26 = (t33 + 4);
    t21 = *((unsigned int *)t26);
    t57 = (!(t21));
    t58 = (t54 && t57);
    t27 = (t44 + 4);
    t22 = *((unsigned int *)t27);
    t61 = (!(t22));
    t62 = (t58 && t61);
    if (t62 == 1)
        goto LAB30;

LAB31:    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1448);
    t4 = (t0 + 1448);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng4)));
    t9 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t6, t11, t33, ((int*)(t7)), 2, t8, 32, 1, t9, 32, 1);
    t10 = (t6 + 4);
    t14 = *((unsigned int *)t10);
    t54 = (!(t14));
    t12 = (t11 + 4);
    t15 = *((unsigned int *)t12);
    t57 = (!(t15));
    t58 = (t54 && t57);
    t13 = (t33 + 4);
    t16 = *((unsigned int *)t13);
    t61 = (!(t16));
    t62 = (t58 && t61);
    if (t62 == 1)
        goto LAB32;

LAB33:
LAB23:
LAB11:    goto LAB2;

LAB7:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(27, ng0);

LAB12:    xsi_set_current_line(28, ng0);
    t34 = (t0 + 1048U);
    t35 = *((char **)t34);
    memset(t33, 0, 8);
    t34 = (t33 + 4);
    t36 = (t35 + 4);
    t37 = *((unsigned int *)t35);
    t38 = (t37 >> 0);
    *((unsigned int *)t33) = t38;
    t39 = *((unsigned int *)t36);
    t40 = (t39 >> 0);
    *((unsigned int *)t34) = t40;
    t41 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t41 & 65535U);
    t42 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t42 & 65535U);
    t43 = (t0 + 1448);
    t47 = (t0 + 1448);
    t48 = (t47 + 72U);
    t49 = *((char **)t48);
    t50 = ((char*)((ng1)));
    t51 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t44, t45, t46, ((int*)(t49)), 2, t50, 32, 1, t51, 32, 1);
    t52 = (t44 + 4);
    t53 = *((unsigned int *)t52);
    t54 = (!(t53));
    t55 = (t45 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (!(t56));
    t58 = (t54 && t57);
    t59 = (t46 + 4);
    t60 = *((unsigned int *)t59);
    t61 = (!(t60));
    t62 = (t58 && t61);
    if (t62 == 1)
        goto LAB13;

LAB14:    xsi_set_current_line(29, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1448);
    t4 = (t0 + 1448);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng4)));
    t9 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t6, t11, t33, ((int*)(t7)), 2, t8, 32, 1, t9, 32, 1);
    t10 = (t6 + 4);
    t14 = *((unsigned int *)t10);
    t54 = (!(t14));
    t12 = (t11 + 4);
    t15 = *((unsigned int *)t12);
    t57 = (!(t15));
    t58 = (t54 && t57);
    t13 = (t33 + 4);
    t16 = *((unsigned int *)t13);
    t61 = (!(t16));
    t62 = (t58 && t61);
    if (t62 == 1)
        goto LAB15;

LAB16:    goto LAB11;

LAB13:    t63 = *((unsigned int *)t46);
    t64 = (t63 + 0);
    t65 = *((unsigned int *)t44);
    t66 = *((unsigned int *)t45);
    t67 = (t65 - t66);
    t68 = (t67 + 1);
    xsi_vlogvar_wait_assign_value(t43, t33, t64, *((unsigned int *)t45), t68, 0LL);
    goto LAB14;

LAB15:    t17 = *((unsigned int *)t33);
    t64 = (t17 + 0);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t11);
    t67 = (t18 - t19);
    t68 = (t67 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, t64, *((unsigned int *)t11), t68, 0LL);
    goto LAB16;

LAB19:    t12 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB20;

LAB21:    xsi_set_current_line(32, ng0);

LAB24:    xsi_set_current_line(33, ng0);
    t26 = (t0 + 1048U);
    t27 = *((char **)t26);
    memset(t33, 0, 8);
    t26 = (t33 + 4);
    t34 = (t27 + 4);
    t37 = *((unsigned int *)t27);
    t38 = (t37 >> 0);
    *((unsigned int *)t33) = t38;
    t39 = *((unsigned int *)t34);
    t40 = (t39 >> 0);
    *((unsigned int *)t26) = t40;
    t41 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t41 & 65535U);
    t42 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t42 & 65535U);
    t35 = (t0 + 1448);
    t36 = (t0 + 1448);
    t43 = (t36 + 72U);
    t47 = *((char **)t43);
    t48 = ((char*)((ng1)));
    t49 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t44, t45, t46, ((int*)(t47)), 2, t48, 32, 1, t49, 32, 1);
    t50 = (t44 + 4);
    t53 = *((unsigned int *)t50);
    t54 = (!(t53));
    t51 = (t45 + 4);
    t56 = *((unsigned int *)t51);
    t57 = (!(t56));
    t58 = (t54 && t57);
    t52 = (t46 + 4);
    t60 = *((unsigned int *)t52);
    t61 = (!(t60));
    t62 = (t58 && t61);
    if (t62 == 1)
        goto LAB25;

LAB26:    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1448);
    t4 = (t0 + 1448);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng4)));
    t9 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t6, t11, t33, ((int*)(t7)), 2, t8, 32, 1, t9, 32, 1);
    t10 = (t6 + 4);
    t14 = *((unsigned int *)t10);
    t54 = (!(t14));
    t12 = (t11 + 4);
    t15 = *((unsigned int *)t12);
    t57 = (!(t15));
    t58 = (t54 && t57);
    t13 = (t33 + 4);
    t16 = *((unsigned int *)t13);
    t61 = (!(t16));
    t62 = (t58 && t61);
    if (t62 == 1)
        goto LAB27;

LAB28:    goto LAB23;

LAB25:    t63 = *((unsigned int *)t46);
    t64 = (t63 + 0);
    t65 = *((unsigned int *)t44);
    t66 = *((unsigned int *)t45);
    t67 = (t65 - t66);
    t68 = (t67 + 1);
    xsi_vlogvar_wait_assign_value(t35, t33, t64, *((unsigned int *)t45), t68, 0LL);
    goto LAB26;

LAB27:    t17 = *((unsigned int *)t33);
    t64 = (t17 + 0);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t11);
    t67 = (t18 - t19);
    t68 = (t67 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, t64, *((unsigned int *)t11), t68, 0LL);
    goto LAB28;

LAB30:    t23 = *((unsigned int *)t44);
    t64 = (t23 + 0);
    t24 = *((unsigned int *)t11);
    t25 = *((unsigned int *)t33);
    t67 = (t24 - t25);
    t68 = (t67 + 1);
    xsi_vlogvar_wait_assign_value(t5, t6, t64, *((unsigned int *)t33), t68, 0LL);
    goto LAB31;

LAB32:    t17 = *((unsigned int *)t33);
    t64 = (t17 + 0);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t11);
    t67 = (t18 - t19);
    t68 = (t67 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, t64, *((unsigned int *)t11), t68, 0LL);
    goto LAB33;

}


extern void work_m_00000000000371716505_3415651129_init()
{
	static char *pe[] = {(void *)Always_25_0};
	xsi_register_didat("work_m_00000000000371716505_3415651129", "isim/tb_isim_beh.exe.sim/work/m_00000000000371716505_3415651129.didat");
	xsi_register_executes(pe);
}
