/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "timing.h"
#include <stdio.h>

#include "sccharts.h"

void logic(TickData* d) {
  d->AP = 0;
  d->VP = 0;
  d->v_event = 0;
  d->a_event = 0;
  d->URI_timeout = 0;
  d->_g15 = d->_pg7;
  d->_g9 = d->_pg25;
  d->_g12_e1 = !(d->_g15 || d->_g9);
  d->_pre_v_event = d->_reg_v_event;
  d->_g19 = d->_pg16;
  d->_cg19 = d->_pre_v_event;
  d->_g20 = d->_g19 && d->_cg19;
  if (d->_g20) {
    d->_Pacemaker_local__Atrig = 1;
  }
  d->_g150 = d->_pg121;
  if (d->_g150) {
    d->_region0_LRI_x += d->deltaT;
  }
  d->_g22 = d->_g19 && !d->_cg19;
  d->_cg22 = d->_region0_LRI_x >= d->LRI;
  d->_g23 = d->_g22 && d->_cg22;
  if (d->_g23) {
    d->_Pacemaker_local__Atrig1 = 1;
  }
  d->sleepT = 1000.0;
  d->_g15 = d->_g9 || d->_g15;
  d->_cg10 = d->_region0_LRI_x < d->LRI;
  d->_g9 = d->_g15 && d->_cg10;
  if (d->_g9) {
    d->sleepT = (d->sleepT < (d->LRI - d->_region0_LRI_x)) ? d->sleepT : (d->LRI - d->_region0_LRI_x);
  }
  d->_cg11 = d->_Pacemaker_local__Atrig || d->_Pacemaker_local__Atrig1;
  d->_g10 = d->_g15 && !d->_cg10;
  d->_cg13 = d->_Pacemaker_local__Atrig || d->_Pacemaker_local__Atrig1;
  d->_g12 = (d->_g9 && d->_cg11) || (d->_g10 && d->_cg13);
  d->_g19 = !d->_g19;
  d->_g23 = d->_g20 || d->_g23;
  d->_g20 = (d->_g12_e1 || d->_g12) && (d->_g19 || d->_g23) && (d->_g12 || d->_g23);
  d->_cg24 = d->_Pacemaker_local__Atrig;
  d->_g21 = d->_g20 && !d->_cg24;
  if (d->_g21) {
    d->VP |= 1;
  }
  d->_g12 = d->_pg34;
  if (d->_g12) {
    d->URI_timeout |= 1;
  }
  d->_g21_e2 = d->_pg115;
  d->_g12_e1 = d->_pg74;
  d->_g101_e1 = !(d->_g21_e2 || d->_g12_e1);
  d->_g108 = d->_pg93;
  d->_cg108 = d->_pre_v_event;
  d->_g109 = d->_g108 && d->_cg108;
  if (d->_g109) {
    d->_Pacemaker_local__Atrig5 = 1;
  }
  d->_g166 = d->_pg133;
  if (d->_g166) {
    d->_region4_AVI_x += d->deltaT;
  }
  d->_g111 = d->_g108 && !d->_cg108;
  d->_cg111 = d->_region4_AVI_x >= d->AVI;
  d->_g112 = d->_g111 && d->_cg111;
  if (d->_g112) {
    d->_Pacemaker_local__Atrig6 = 1;
  }
  d->_g98 = d->_g12_e1 || d->_g21_e2;
  d->_cg99 = d->_region4_AVI_x < d->AVI;
  d->_g104 = d->_g98 && d->_cg99;
  if (d->_g104) {
    d->sleepT = (d->sleepT < (d->AVI - d->_region4_AVI_x)) ? d->sleepT : (d->AVI - d->_region4_AVI_x);
  }
  d->_cg100 = d->_Pacemaker_local__Atrig5 || d->_Pacemaker_local__Atrig6;
  d->_g99 = d->_g98 && !d->_cg99;
  d->_cg102 = d->_Pacemaker_local__Atrig5 || d->_Pacemaker_local__Atrig6;
  d->_g101 = (d->_g104 && d->_cg100) || (d->_g99 && d->_cg102);
  d->_g108 = !d->_g108;
  d->_g112 = d->_g109 || d->_g112;
  d->_g109 = (d->_g101_e1 || d->_g101) && (d->_g108 || d->_g112) && (d->_g101 || d->_g112);
  d->_cg113 = d->_Pacemaker_local__Atrig5;
  d->_g101 = d->_pg96;
  d->_g110 = (d->_g109 && !d->_cg113) || d->_g101;
  d->_cg114 = !d->URI_timeout;
  d->_g101_e1 = d->_g110 && d->_cg114;
  if (d->_g101_e1) {
    d->VP |= 1;
  }
  d->_g110_e2 = d->_pg79_e1;
  d->_cg74 = d->VS || d->VP;
  d->_g117 = d->_g110_e2 && d->_cg74;
  if (d->_g117) {
    d->v_event |= 1;
  }
  d->_g4 = d->_pg3;
  d->_cg4 = d->v_event;
  d->_g3 = d->_GO || (d->_g4 && !d->_cg4);
  d->_g4 = (d->_g4 && d->_cg4) || (d->_g20 && d->_cg24) || d->_g21;
  if (d->_g4) {
    d->_region0_LRI_x = 0;
    d->_Pacemaker_local__Atrig = 0;
    d->_Pacemaker_local__Atrig1 = 0;
  }
  d->_cg6 = d->_region0_LRI_x < d->LRI;
  d->_g24 = d->_g4 && d->_cg6;
  if (d->_g24) {
    d->sleepT = (d->sleepT < (d->LRI - d->_region0_LRI_x)) ? d->sleepT : (d->LRI - d->_region0_LRI_x);
  }
  d->_cg7 = d->_Pacemaker_local__Atrig || d->_Pacemaker_local__Atrig1;
  d->_g25 = (d->_g24 && !d->_cg7) || (d->_g9 && !d->_cg11);
  d->_g11 = d->_g4 && !d->_cg6;
  d->_cg16 = d->_Pacemaker_local__Atrig || d->_Pacemaker_local__Atrig1;
  d->_g7 = (d->_g10 && !d->_cg13) || (d->_g11 && !d->_cg16);
  d->_g16 = d->_g4 || (d->_g22 && !d->_cg22);
  d->_g13 = d->_pg124;
  if (d->_g13) {
    d->_region1_URI_x += d->deltaT;
  }
  d->_g22 = d->_pg42;
  d->_cg47 = d->_region1_URI_x >= d->URI;
  d->_g5 = d->_g22 && d->_cg47;
  if (d->_g5) {
    d->_Pacemaker_local__Atrig2 = 1;
  }
  d->_g29 = d->_pg48;
  d->_cg29 = d->v_event;
  d->_g30 = d->_g29 && d->_cg29;
  if (d->_g30) {
    d->_region1_URI_x = 0;
    d->_Pacemaker_local__Atrig2 = 0;
  }
  d->_g35 = d->_g30 || d->_g12;
  d->_cg32 = d->_Pacemaker_local__Atrig2;
  d->_g34 = d->_g35 && !d->_cg32;
  d->_g33_e1 = !d->_g34;
  d->_g32 = d->_g35 && d->_cg32;
  d->_g41 = d->_pg40;
  d->_g44 = d->_pg43;
  d->_g44 = d->_g30 || d->_g41 || d->_g44;
  d->_cg37 = d->_region1_URI_x < d->URI;
  d->_g41 = d->_g44 && !d->_cg37;
  d->_cg42 = d->_Pacemaker_local__Atrig2;
  d->_g43 = d->_g41 && !d->_cg42;
  d->_g37 = d->_g44 && d->_cg37;
  if (d->_g37) {
    d->sleepT = (d->sleepT < (d->URI - d->_region1_URI_x)) ? d->sleepT : (d->URI - d->_region1_URI_x);
  }
  d->_cg38 = d->_Pacemaker_local__Atrig2;
  d->_g40 = d->_g37 && !d->_cg38;
  d->_g39_e2 = !(d->_g43 || d->_g40);
  d->_g38 = (d->_g37 && d->_cg38) || (d->_g41 && d->_cg42);
  d->_g42 = d->_g30 || (d->_g22 && !d->_cg47);
  d->_g30 = !d->_g42;
  d->_g47 = (d->_g33_e1 || d->_g32) && (d->_g39_e2 || d->_g38) && (d->_g30 || d->_g5) && (d->_g32 || d->_g38 || d->_g5);
  d->_g48 = d->_GO || d->_g47 || (d->_g29 && !d->_cg29);
  d->_g33_e1 = d->_pg141;
  d->_g39 = d->_pg111;
  d->_g48_e3 = !(d->_g33_e1 || d->_g39);
  d->_g39_e2 = d->_pg33;
  d->_g33 = d->_GO || d->_g39_e2;
  if (d->_g33) {
    d->_pre_a_event = d->_reg_a_event;
  }
  d->_g49 = d->_pg142;
  d->_cg136 = d->_pre_a_event;
  d->_g29 = d->_g49 && d->_cg136;
  if (d->_g29) {
    d->_Pacemaker_local__Atrig7 = 1;
  }
  d->_g179 = d->_pg139;
  if (d->_g179) {
    d->_region5_AEI_x += d->deltaT;
  }
  d->_g139 = d->_g49 && !d->_cg136;
  d->_cg139 = d->_region5_AEI_x >= d->AEI;
  d->_g140 = d->_g139 && d->_cg139;
  if (d->_g140) {
    d->_Pacemaker_local__Atrig8 = 1;
  }
  d->_g132 = d->_g39 || d->_g33_e1;
  d->_cg127 = d->_region5_AEI_x < d->AEI;
  d->_g126 = d->_g132 && d->_cg127;
  if (d->_g126) {
    d->sleepT = (d->sleepT < (d->AEI - d->_region5_AEI_x)) ? d->sleepT : (d->AEI - d->_region5_AEI_x);
  }
  d->_cg128 = d->_Pacemaker_local__Atrig7 || d->_Pacemaker_local__Atrig8;
  d->_g127 = d->_g132 && !d->_cg127;
  d->_cg130 = d->_Pacemaker_local__Atrig7 || d->_Pacemaker_local__Atrig8;
  d->_g129 = (d->_g126 && d->_cg128) || (d->_g127 && d->_cg130);
  d->_g136 = !d->_g49;
  d->_g137 = d->_g29 || d->_g140;
  d->_g140 = (d->_g48_e3 || d->_g129) && (d->_g136 || d->_g137) && (d->_g129 || d->_g137);
  d->_cg141 = d->_Pacemaker_local__Atrig7;
  d->_g129_e1 = d->_g140 && !d->_cg141;
  if (d->_g129_e1) {
    d->AP |= 1;
  }
  d->_g129 = d->_pg60_e1;
  d->_cg53 = d->AS || d->AP;
  d->_g138 = d->_g129 && d->_cg53;
  if (d->_g138) {
    d->a_event |= 1;
  }
  d->_g138_e2 = d->_pg128;
  if (d->_g138_e2) {
    d->_region2_PVARP_x += d->deltaT;
  }
  d->_g68 = d->_pg63;
  d->_cg68 = d->_region2_PVARP_x >= d->PVARP;
  d->_g69 = d->_g68 && d->_cg68;
  if (d->_g69) {
    d->_Pacemaker_local__Atrig3 = 1;
  }
  d->_g53 = d->_g129 && !d->_cg53;
  d->_cg55 = d->v_event;
  d->_g56 = d->_g53 && d->_cg55;
  if (d->_g56) {
    d->_region2_PVARP_x = 0;
    d->_Pacemaker_local__Atrig3 = 0;
  }
  d->_g62 = d->_pg61;
  d->_g65 = d->_pg64;
  d->_g62 = d->_g56 || d->_g62 || d->_g65;
  d->_cg58 = d->_region2_PVARP_x < d->PVARP;
  d->_g65 = d->_g62 && !d->_cg58;
  d->_cg63 = d->_Pacemaker_local__Atrig3;
  d->_g64 = d->_g65 && !d->_cg63;
  d->_g58 = d->_g62 && d->_cg58;
  if (d->_g58) {
    d->sleepT = (d->sleepT < (d->PVARP - d->_region2_PVARP_x)) ? d->sleepT : (d->PVARP - d->_region2_PVARP_x);
  }
  d->_cg59 = d->_Pacemaker_local__Atrig3;
  d->_g61 = d->_g58 && !d->_cg59;
  d->_g60_e1 = !(d->_g64 || d->_g61);
  d->_g59 = (d->_g58 && d->_cg59) || (d->_g65 && d->_cg63);
  d->_g63 = d->_g56 || (d->_g68 && !d->_cg68);
  d->_g56 = !d->_g63;
  d->_g68 = (d->_g60_e1 || d->_g59) && (d->_g56 || d->_g69) && (d->_g59 || d->_g69);
  d->_g60_e1 = d->_GO || d->_g138 || d->_g68 || (d->_g53 && !d->_cg55);
  d->_g60 = d->_pg130;
  if (d->_g60) {
    d->_region3_VRP_x += d->deltaT;
  }
  d->_g69_e2 = d->_pg82;
  d->_cg87 = d->_region3_VRP_x >= d->VRP;
  d->_g69 = d->_g69_e2 && d->_cg87;
  if (d->_g69) {
    d->_Pacemaker_local__Atrig4 = 1;
  }
  if (d->_g117) {
    d->_region3_VRP_x = 0;
    d->_Pacemaker_local__Atrig4 = 0;
  }
  d->_g55 = d->_pg80;
  d->_g70 = d->_pg81;
  d->_g54 = d->_g117 || d->_g55 || d->_g70;
  d->_cg77 = d->_region3_VRP_x < d->VRP;
  d->_g84 = d->_g54 && !d->_cg77;
  d->_cg82 = d->_Pacemaker_local__Atrig4;
  d->_g81 = d->_g84 && !d->_cg82;
  d->_g77 = d->_g54 && d->_cg77;
  if (d->_g77) {
    d->sleepT = (d->sleepT < (d->VRP - d->_region3_VRP_x)) ? d->sleepT : (d->VRP - d->_region3_VRP_x);
  }
  d->_cg78 = d->_Pacemaker_local__Atrig4;
  d->_g80 = d->_g77 && !d->_cg78;
  d->_g79_e1 = !(d->_g81 || d->_g80);
  d->_g78 = (d->_g77 && d->_cg78) || (d->_g84 && d->_cg82);
  d->_g82 = d->_g117 || (d->_g69_e2 && !d->_cg87);
  d->_g75 = !d->_g82;
  d->_g87 = (d->_g79_e1 || d->_g78) && (d->_g75 || d->_g69) && (d->_g78 || d->_g69);
  d->_g79_e1 = d->_GO || d->_g87 || (d->_g110_e2 && !d->_cg74);
  d->_g88 = d->_pg79;
  d->_cg93 = d->a_event;
  d->_g79 = d->_GO || (d->_g109 && d->_cg113) || d->_g101_e1 || (d->_g88 && !d->_cg93);
  d->_g88_e2 = d->_g88 && d->_cg93;
  if (d->_g88_e2) {
    d->_region4_AVI_x = 0;
    d->_Pacemaker_local__Atrig5 = 0;
    d->_Pacemaker_local__Atrig6 = 0;
  }
  d->_cg95 = d->_region4_AVI_x < d->AVI;
  d->_g89 = d->_g88_e2 && d->_cg95;
  if (d->_g89) {
    d->sleepT = (d->sleepT < (d->AVI - d->_region4_AVI_x)) ? d->sleepT : (d->AVI - d->_region4_AVI_x);
  }
  d->_cg96 = d->_Pacemaker_local__Atrig5 || d->_Pacemaker_local__Atrig6;
  d->_g74 = (d->_g89 && !d->_cg96) || (d->_g104 && !d->_cg100);
  d->_g113 = d->_g88_e2 && !d->_cg95;
  d->_cg105 = d->_Pacemaker_local__Atrig5 || d->_Pacemaker_local__Atrig6;
  d->_g115 = (d->_g99 && !d->_cg102) || (d->_g113 && !d->_cg105);
  d->_g93 = d->_g88_e2 || (d->_g111 && !d->_cg111);
  d->_g96 = d->_g110 && !d->_cg114;
  d->_g100 = d->_pg105;
  d->_cg121 = d->v_event;
  d->_g105 = d->_GO || (d->_g140 && d->_cg141) || d->_g129_e1 || (d->_g100 && !d->_cg121);
  d->_g102 = d->_g100 && d->_cg121;
  if (d->_g102) {
    d->_region5_AEI_x = 0;
    d->_Pacemaker_local__Atrig7 = 0;
    d->_Pacemaker_local__Atrig8 = 0;
  }
  d->_cg123 = d->_region5_AEI_x < d->AEI;
  d->_g94 = d->_g102 && d->_cg123;
  if (d->_g94) {
    d->sleepT = (d->sleepT < (d->AEI - d->_region5_AEI_x)) ? d->sleepT : (d->AEI - d->_region5_AEI_x);
  }
  d->_cg124 = d->_Pacemaker_local__Atrig7 || d->_Pacemaker_local__Atrig8;
  d->_g111 = (d->_g94 && !d->_cg124) || (d->_g126 && !d->_cg128);
  d->_g114 = d->_g102 && !d->_cg123;
  d->_cg133 = d->_Pacemaker_local__Atrig7 || d->_Pacemaker_local__Atrig8;
  d->_g141 = (d->_g127 && !d->_cg130) || (d->_g114 && !d->_cg133);
  d->_g142 = d->_g102 || (d->_g139 && !d->_cg139);
  d->_g121 = d->_GO || d->_g150;
  d->_g124 = d->_GO || d->_g13;
  d->_g128 = d->_GO || d->_g138_e2;
  d->_g130 = d->_GO || d->_g60;
  d->_g133 = d->_GO || d->_g166;
  d->_g139 = d->_GO || d->_g179;
  if (d->_g33) {
    d->_reg_a_event = d->a_event;
  }
  d->_reg_v_event = d->v_event;
}

void reset(TickData* d) {
  d->_GO = 1;
  d->_TERM = 0;
  d->AVI = AVI_VALUE;
  d->AEI = AEI_VALUE;
  d->PVARP = PVARP_VALUE;
  d->VRP = VRP_VALUE;
  d->LRI = LRI_VALUE;
  d->URI = URI_VALUE;
  d->_region0_LRI_x = 0;
  d->_region1_URI_x = 0;
  d->_region2_PVARP_x = 0;
  d->_region3_VRP_x = 0;
  d->_region4_AVI_x = 0;
  d->_region5_AEI_x = 0;
  d->deltaT = 0.0;
  d->sleepT = 0.0;
  d->AP = 0;
  d->VP = 0;
  d->v_event = 0;
  d->a_event = 0;
  d->URI_timeout = 0;
  d->_reg_a_event = 0;
  d->_reg_v_event = 0;
  d->_pg7 = 0;
  d->_pg25 = 0;
  d->_pg16 = 0;
  d->_pg121 = 0;
  d->_pg34 = 0;
  d->_pg115 = 0;
  d->_pg74 = 0;
  d->_pg93 = 0;
  d->_pg133 = 0;
  d->_pg96 = 0;
  d->_pg79_e1 = 0;
  d->_pg3 = 0;
  d->_pg124 = 0;
  d->_pg42 = 0;
  d->_pg48 = 0;
  d->_pg40 = 0;
  d->_pg43 = 0;
  d->_pg141 = 0;
  d->_pg111 = 0;
  d->_pg33 = 0;
  d->_pg142 = 0;
  d->_pg139 = 0;
  d->_pg60_e1 = 0;
  d->_pg128 = 0;
  d->_pg63 = 0;
  d->_pg61 = 0;
  d->_pg64 = 0;
  d->_pg130 = 0;
  d->_pg82 = 0;
  d->_pg80 = 0;
  d->_pg81 = 0;
  d->_pg79 = 0;
  d->_pg105 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg7 = d->_g7;
  d->_pg25 = d->_g25;
  d->_pg16 = d->_g16;
  d->_pg121 = d->_g121;
  d->_pg34 = d->_g34;
  d->_pg115 = d->_g115;
  d->_pg74 = d->_g74;
  d->_pg93 = d->_g93;
  d->_pg133 = d->_g133;
  d->_pg96 = d->_g96;
  d->_pg79_e1 = d->_g79_e1;
  d->_pg3 = d->_g3;
  d->_pg124 = d->_g124;
  d->_pg42 = d->_g42;
  d->_pg48 = d->_g48;
  d->_pg40 = d->_g40;
  d->_pg43 = d->_g43;
  d->_pg141 = d->_g141;
  d->_pg111 = d->_g111;
  d->_pg33 = d->_g33;
  d->_pg142 = d->_g142;
  d->_pg139 = d->_g139;
  d->_pg60_e1 = d->_g60_e1;
  d->_pg128 = d->_g128;
  d->_pg63 = d->_g63;
  d->_pg61 = d->_g61;
  d->_pg64 = d->_g64;
  d->_pg130 = d->_g130;
  d->_pg82 = d->_g82;
  d->_pg80 = d->_g80;
  d->_pg81 = d->_g81;
  d->_pg79 = d->_g79;
  d->_pg105 = d->_g105;
  d->_GO = 0;
}
