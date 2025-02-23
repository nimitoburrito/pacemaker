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
  d->_Pacemaker_local_iAP = 0;
  d->_Pacemaker_local_iVP = 0;
  d->_Pacemaker_local_PVARP_timeout = 0;
  d->_Pacemaker_local_VRP_timeout = 0;
  d->_Pacemaker_local_URI_timeout = 0;
  d->_g156 = d->_pg179;
  d->_g150 = d->_pg144;
  d->_g153_e1 = !(d->_g156 || d->_g150);
  d->_g171 = d->_pg163;
  d->_g172 = d->_g171 && d->VS;
  if (d->_g172) {
    d->_Pacemaker_local__Atrig8 = 1;
  }
  d->_g45 = d->_pg66;
  d->_g39 = d->_pg65;
  d->_g42_e1 = !(d->_g45 || d->_g39);
  d->_g213 = d->_pg191;
  if (d->_g213) {
    d->_Pacemaker_local__region1_URI_x += d->deltaT;
  }
  d->_g60 = d->_pg43;
  d->_cg60 = !(d->_Pacemaker_local__region1_URI_x >= d->URI);
  d->_g61 = d->_g60 && d->_cg60;
  if (d->_g61) {
    d->_Pacemaker_local__Atrig2 = 1;
  }
  d->_g63 = d->_g60 && !d->_cg60;
  d->_cg63 = d->_Pacemaker_local__region1_URI_x >= d->URI;
  d->_g64 = d->_g63 && d->_cg63;
  if (d->_g64) {
    d->_Pacemaker_local__Atrig3 = 1;
  }
  d->sleepT = 1000.0;
  d->_g45 = d->_g39 || d->_g45;
  d->_cg40 = d->_Pacemaker_local__region1_URI_x < d->URI;
  d->_g39 = d->_g45 && d->_cg40;
  if (d->_g39) {
    d->sleepT = (d->sleepT < (d->URI - d->_Pacemaker_local__region1_URI_x)) ? d->sleepT : (d->URI - d->_Pacemaker_local__region1_URI_x);
  }
  d->_cg41 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g40 = d->_g45 && !d->_cg40;
  d->_cg43 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g42 = (d->_g39 && d->_cg41) || (d->_g40 && d->_cg43);
  d->_g56 = d->_pg46;
  d->_g50 = d->_pg37;
  d->_g53_e2 = !(d->_g56 || d->_g50);
  d->_g56 = d->_g50 || d->_g56;
  d->_cg51 = d->_Pacemaker_local__region1_URI_x < d->URI;
  d->_g50 = d->_g56 && d->_cg51;
  if (d->_g50) {
    d->sleepT = (d->sleepT < (d->URI - d->_Pacemaker_local__region1_URI_x)) ? d->sleepT : (d->URI - d->_Pacemaker_local__region1_URI_x);
  }
  d->_cg52 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g51 = d->_g56 && !d->_cg51;
  d->_cg54 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g53 = (d->_g50 && d->_cg52) || (d->_g51 && d->_cg54);
  d->_g60 = !d->_g60;
  d->_g64 = d->_g61 || d->_g64;
  d->_g61 = (d->_g42_e1 || d->_g42) && (d->_g53_e2 || d->_g53) && (d->_g60 || d->_g64) && (d->_g42 || d->_g53 || d->_g64);
  d->_cg65 = d->_Pacemaker_local__Atrig2;
  d->_g62 = d->_g61 && d->_cg65;
  if (d->_g62) {
    d->_Pacemaker_local_URI_timeout |= 1;
  }
  d->_g53_e2 = d->_pg185;
  if (d->_g53_e2) {
    d->_Pacemaker_local__region4_AVI_x += d->deltaT;
  }
  d->_g42 = d->_g171 && !d->VS;
  d->_cg174 = d->_Pacemaker_local__region4_AVI_x >= d->AVI && d->_Pacemaker_local_URI_timeout;
  d->_g53 = d->_g42 && d->_cg174;
  if (d->_g53) {
    d->_Pacemaker_local__Atrig9 = 1;
  }
  d->_g42_e1 = d->_g42 && !d->_cg174;
  d->_cg176 = d->_Pacemaker_local__region4_AVI_x >= d->AVI && !d->_Pacemaker_local_URI_timeout;
  d->_g62_e3 = d->_g42_e1 && d->_cg176;
  if (d->_g62_e3) {
    d->_Pacemaker_local__Atrig10 = 1;
  }
  d->_g174 = d->_g150 || d->_g156;
  d->_cg151 = d->_Pacemaker_local__region4_AVI_x < d->AVI;
  d->_g156 = d->_g174 && d->_cg151;
  if (d->_g156) {
    d->sleepT = (d->sleepT < (d->AVI - d->_Pacemaker_local__region4_AVI_x)) ? d->sleepT : (d->AVI - d->_Pacemaker_local__region4_AVI_x);
  }
  d->_cg152 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9 || d->_Pacemaker_local__Atrig10;
  d->_g150 = d->_g174 && !d->_cg151;
  d->_cg154 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9 || d->_Pacemaker_local__Atrig10;
  d->_g151 = (d->_g156 && d->_cg152) || (d->_g150 && d->_cg154);
  d->_g167 = d->_pg154;
  d->_g161 = d->_pg148;
  d->_g164_e2 = !(d->_g167 || d->_g161);
  d->_g167 = d->_g161 || d->_g167;
  d->_cg162 = d->_Pacemaker_local__region4_AVI_x < d->AVI;
  d->_g161 = d->_g167 && d->_cg162;
  if (d->_g161) {
    d->sleepT = (d->sleepT < (d->AVI - d->_Pacemaker_local__region4_AVI_x)) ? d->sleepT : (d->AVI - d->_Pacemaker_local__region4_AVI_x);
  }
  d->_cg163 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9 || d->_Pacemaker_local__Atrig10;
  d->_g162 = d->_g167 && !d->_cg162;
  d->_cg165 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9 || d->_Pacemaker_local__Atrig10;
  d->_g164 = (d->_g161 && d->_cg163) || (d->_g162 && d->_cg165);
  d->_g171 = !d->_g171;
  d->_g175 = d->_g172 || d->_g53 || d->_g62_e3;
  d->_g172 = (d->_g153_e1 || d->_g151) && (d->_g164_e2 || d->_g164) && (d->_g171 || d->_g175) && (d->_g151 || d->_g164 || d->_g175);
  d->_cg178 = d->_Pacemaker_local__Atrig8;
  d->_g177 = d->_g172 && !d->_cg178;
  d->_cg179 = d->_Pacemaker_local__Atrig9;
  d->_g164_e2 = d->_g177 && !d->_cg179;
  if (d->_g164_e2) {
    d->_Pacemaker_local_iVP |= 1;
  }
  d->_g164 = d->_pg153;
  d->_cg6 = d->VS || d->_Pacemaker_local_iVP;
  d->_g153 = d->_GO || (d->_g164 && !d->_cg6);
  d->_g173_e3 = d->_pg187;
  if (d->_g173_e3) {
    d->_Pacemaker_local__region0_LRI_x += d->deltaT;
  }
  d->_g153_e1 = d->_g164 && d->_cg6;
  if (d->_g153_e1) {
    d->_Pacemaker_local__region0_LRI_x = 0;
  }
  d->_g173 = d->_pg29;
  d->_g6 = d->_pg28;
  d->_g15_e1 = !(d->_g173 || d->_g6);
  d->_g22 = d->_pg14;
  d->_cg22 = d->VS || d->_Pacemaker_local_iVP;
  d->_g23 = d->_g22 && d->_cg22;
  if (d->_g23) {
    d->_Pacemaker_local__Atrig = 1;
  }
  d->_g25 = d->_g22 && !d->_cg22;
  d->_cg25 = d->_Pacemaker_local__region0_LRI_x >= d->LRI && !(d->VS || d->_Pacemaker_local_iVP);
  d->_g26 = d->_g25 && d->_cg25;
  if (d->_g26) {
    d->_Pacemaker_local__Atrig1 = 1;
  }
  d->_g12 = d->_g6 || d->_g173;
  d->_cg13 = d->_Pacemaker_local__region0_LRI_x < d->LRI;
  d->_g18 = d->_g12 && d->_cg13;
  if (d->_g18) {
    d->sleepT = (d->sleepT < (d->LRI - d->_Pacemaker_local__region0_LRI_x)) ? d->sleepT : (d->LRI - d->_Pacemaker_local__region0_LRI_x);
  }
  d->_cg14 = d->_Pacemaker_local__Atrig || d->_Pacemaker_local__Atrig1;
  d->_g13 = d->_g12 && !d->_cg13;
  d->_cg16 = d->_Pacemaker_local__Atrig || d->_Pacemaker_local__Atrig1;
  d->_g15 = (d->_g18 && d->_cg14) || (d->_g13 && d->_cg16);
  d->_g22 = !d->_g22;
  d->_g26 = d->_g23 || d->_g26;
  d->_g23 = (d->_g15_e1 || d->_g15) && (d->_g22 || d->_g26) && (d->_g15 || d->_g26);
  d->_cg27 = d->_Pacemaker_local__Atrig;
  d->_g15 = d->_g23 && d->_cg27;
  if (d->_g15) {
    d->_Pacemaker_local__region0_LRI_x = 0;
  }
  d->_g15_e1 = d->_pg24;
  d->_g24 = d->_GO || d->_g15_e1;
  if (d->_g24) {
    d->AP = 0;
    d->VP = 0;
  }
  d->_g24_e2 = d->_g23 && !d->_cg27;
  if (d->_g24_e2) {
    d->_Pacemaker_local_iVP |= 1;
    d->VP |= 1;
    d->_Pacemaker_local__region0_LRI_x = 0;
  }
  d->_g247 = d->_g153_e1 || d->_g15 || d->_g24_e2;
  if (d->_g247) {
    d->_Pacemaker_local__Atrig = 0;
    d->_Pacemaker_local__Atrig1 = 0;
  }
  d->_cg9 = d->_Pacemaker_local__region0_LRI_x < d->LRI;
  d->_g27 = d->_g247 && d->_cg9;
  if (d->_g27) {
    d->sleepT = (d->sleepT < (d->LRI - d->_Pacemaker_local__region0_LRI_x)) ? d->sleepT : (d->LRI - d->_Pacemaker_local__region0_LRI_x);
  }
  d->_cg10 = d->_Pacemaker_local__Atrig || d->_Pacemaker_local__Atrig1;
  d->_g28 = (d->_g27 && !d->_cg10) || (d->_g18 && !d->_cg14);
  d->_g7 = d->_g247 && !d->_cg9;
  d->_cg19 = d->_Pacemaker_local__Atrig || d->_Pacemaker_local__Atrig1;
  d->_g29 = (d->_g13 && !d->_cg16) || (d->_g7 && !d->_cg19);
  d->_g14 = d->_g247 || (d->_g25 && !d->_cg25);
  d->_g10 = d->_pg19;
  d->_cg33 = d->VS || d->_Pacemaker_local_iVP;
  d->_g19 = d->_GO || (d->_g61 && !d->_cg65) || (d->_g10 && !d->_cg33);
  d->_g16 = d->_g10 && d->_cg33;
  if (d->_g16) {
    d->_Pacemaker_local__region1_URI_x = 0;
  }
  d->_g8 = d->_g16 || d->_g62;
  if (d->_g8) {
    d->_Pacemaker_local__Atrig2 = 0;
    d->_Pacemaker_local__Atrig3 = 0;
  }
  d->_cg36 = d->_Pacemaker_local__region1_URI_x < d->URI;
  d->_g25 = d->_g8 && d->_cg36;
  if (d->_g25) {
    d->sleepT = (d->sleepT < (d->URI - d->_Pacemaker_local__region1_URI_x)) ? d->sleepT : (d->URI - d->_Pacemaker_local__region1_URI_x);
  }
  d->_cg37 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g65 = (d->_g25 && !d->_cg37) || (d->_g39 && !d->_cg41);
  d->_g33 = d->_g8 && !d->_cg36;
  d->_cg46 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g66 = (d->_g40 && !d->_cg43) || (d->_g33 && !d->_cg46);
  d->_cg47 = d->_Pacemaker_local__region1_URI_x < d->URI;
  d->_g34 = d->_g8 && d->_cg47;
  if (d->_g34) {
    d->sleepT = (d->sleepT < (d->URI - d->_Pacemaker_local__region1_URI_x)) ? d->sleepT : (d->URI - d->_Pacemaker_local__region1_URI_x);
  }
  d->_cg48 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g37 = (d->_g34 && !d->_cg48) || (d->_g50 && !d->_cg52);
  d->_g41 = d->_g8 && !d->_cg47;
  d->_cg57 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g46 = (d->_g51 && !d->_cg54) || (d->_g41 && !d->_cg57);
  d->_g43 = d->_g8 || (d->_g63 && !d->_cg63);
  d->_g48 = d->_pg103;
  d->_g52 = d->_pg70;
  d->_g57 = !(d->_g48 || d->_g52);
  d->_g54 = d->_pg196;
  if (d->_g54) {
    d->_Pacemaker_local__region2_PVARP_x += d->deltaT;
  }
  d->_g63 = d->_pg83;
  d->_cg97 = !(d->_Pacemaker_local__region2_PVARP_x >= d->PVARP);
  d->_g35 = d->_g63 && d->_cg97;
  if (d->_g35) {
    d->_Pacemaker_local__Atrig4 = 1;
  }
  d->_g100 = d->_g63 && !d->_cg97;
  d->_cg100 = d->_Pacemaker_local__region2_PVARP_x >= d->PVARP;
  d->_g101 = d->_g100 && d->_cg100;
  if (d->_g101) {
    d->_Pacemaker_local__Atrig5 = 1;
  }
  d->_g82 = d->_g52 || d->_g48;
  d->_cg77 = d->_Pacemaker_local__region2_PVARP_x < d->PVARP;
  d->_g76 = d->_g82 && d->_cg77;
  if (d->_g76) {
    d->sleepT = (d->sleepT < (d->PVARP - d->_Pacemaker_local__region2_PVARP_x)) ? d->sleepT : (d->PVARP - d->_Pacemaker_local__region2_PVARP_x);
  }
  d->_cg78 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g77 = d->_g82 && !d->_cg77;
  d->_cg80 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g79 = (d->_g76 && d->_cg78) || (d->_g77 && d->_cg80);
  d->_g93 = d->_pg80;
  d->_g87 = d->_pg78;
  d->_g90_e2 = !(d->_g93 || d->_g87);
  d->_g93 = d->_g87 || d->_g93;
  d->_cg88 = d->_Pacemaker_local__region2_PVARP_x < d->PVARP;
  d->_g87 = d->_g93 && d->_cg88;
  if (d->_g87) {
    d->sleepT = (d->sleepT < (d->PVARP - d->_Pacemaker_local__region2_PVARP_x)) ? d->sleepT : (d->PVARP - d->_Pacemaker_local__region2_PVARP_x);
  }
  d->_cg89 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g88 = d->_g93 && !d->_cg88;
  d->_cg91 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g90 = (d->_g87 && d->_cg89) || (d->_g88 && d->_cg91);
  d->_g97 = !d->_g63;
  d->_g101 = d->_g35 || d->_g101;
  d->_g98 = (d->_g57 || d->_g79) && (d->_g90_e2 || d->_g90) && (d->_g97 || d->_g101) && (d->_g79 || d->_g90 || d->_g101);
  d->_cg102 = d->_Pacemaker_local__Atrig4;
  d->_g90_e2 = d->_pg90;
  d->_cg70 = d->VS || d->_Pacemaker_local_iVP;
  d->_g90 = d->_GO || (d->_g98 && !d->_cg102) || (d->_g90_e2 && !d->_cg70);
  d->_g79_e1 = d->_g90_e2 && d->_cg70;
  if (d->_g79_e1) {
    d->_Pacemaker_local__region2_PVARP_x = 0;
  }
  d->_g99 = d->_g98 && d->_cg102;
  if (d->_g99) {
    d->_Pacemaker_local_PVARP_timeout |= 1;
  }
  d->_g99_e3 = d->_g79_e1 || d->_g99;
  if (d->_g99_e3) {
    d->_Pacemaker_local__Atrig4 = 0;
    d->_Pacemaker_local__Atrig5 = 0;
  }
  d->_cg73 = d->_Pacemaker_local__region2_PVARP_x < d->PVARP;
  d->_g79 = d->_g99_e3 && d->_cg73;
  if (d->_g79) {
    d->sleepT = (d->sleepT < (d->PVARP - d->_Pacemaker_local__region2_PVARP_x)) ? d->sleepT : (d->PVARP - d->_Pacemaker_local__region2_PVARP_x);
  }
  d->_cg74 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g70 = (d->_g79 && !d->_cg74) || (d->_g76 && !d->_cg78);
  d->_g102 = d->_g99_e3 && !d->_cg73;
  d->_cg83 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g103 = (d->_g77 && !d->_cg80) || (d->_g102 && !d->_cg83);
  d->_cg84 = d->_Pacemaker_local__region2_PVARP_x < d->PVARP;
  d->_g71 = d->_g99_e3 && d->_cg84;
  if (d->_g71) {
    d->sleepT = (d->sleepT < (d->PVARP - d->_Pacemaker_local__region2_PVARP_x)) ? d->sleepT : (d->PVARP - d->_Pacemaker_local__region2_PVARP_x);
  }
  d->_cg85 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g78 = (d->_g71 && !d->_cg85) || (d->_g87 && !d->_cg89);
  d->_g74 = d->_g99_e3 && !d->_cg84;
  d->_cg94 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g80 = (d->_g88 && !d->_cg91) || (d->_g74 && !d->_cg94);
  d->_g83 = d->_g99_e3 || (d->_g100 && !d->_cg100);
  d->_g89 = d->_pg108;
  d->_g85 = d->_pg107;
  d->_g91 = !(d->_g89 || d->_g85);
  d->_g94 = d->_pg193;
  if (d->_g94) {
    d->_Pacemaker_local__region3_VRP_x += d->deltaT;
  }
  d->_g100 = d->_pg117;
  d->_cg134 = !(d->_Pacemaker_local__region3_VRP_x >= d->VRP);
  d->_g72 = d->_g100 && d->_cg134;
  if (d->_g72) {
    d->_Pacemaker_local__Atrig6 = 1;
  }
  d->_g137 = d->_g100 && !d->_cg134;
  d->_cg137 = d->_Pacemaker_local__region3_VRP_x >= d->VRP;
  d->_g138 = d->_g137 && d->_cg137;
  if (d->_g138) {
    d->_Pacemaker_local__Atrig7 = 1;
  }
  d->_g113 = d->_g85 || d->_g89;
  d->_cg114 = d->_Pacemaker_local__region3_VRP_x < d->VRP;
  d->_g119 = d->_g113 && d->_cg114;
  if (d->_g119) {
    d->sleepT = (d->sleepT < (d->VRP - d->_Pacemaker_local__region3_VRP_x)) ? d->sleepT : (d->VRP - d->_Pacemaker_local__region3_VRP_x);
  }
  d->_cg115 = d->_Pacemaker_local__Atrig6 || d->_Pacemaker_local__Atrig7;
  d->_g114 = d->_g113 && !d->_cg114;
  d->_cg117 = d->_Pacemaker_local__Atrig6 || d->_Pacemaker_local__Atrig7;
  d->_g116 = (d->_g119 && d->_cg115) || (d->_g114 && d->_cg117);
  d->_g130 = d->_pg120;
  d->_g124 = d->_pg111;
  d->_g127_e2 = !(d->_g130 || d->_g124);
  d->_g130 = d->_g124 || d->_g130;
  d->_cg125 = d->_Pacemaker_local__region3_VRP_x < d->VRP;
  d->_g124 = d->_g130 && d->_cg125;
  if (d->_g124) {
    d->sleepT = (d->sleepT < (d->VRP - d->_Pacemaker_local__region3_VRP_x)) ? d->sleepT : (d->VRP - d->_Pacemaker_local__region3_VRP_x);
  }
  d->_cg126 = d->_Pacemaker_local__Atrig6 || d->_Pacemaker_local__Atrig7;
  d->_g125 = d->_g130 && !d->_cg125;
  d->_cg128 = d->_Pacemaker_local__Atrig6 || d->_Pacemaker_local__Atrig7;
  d->_g127 = (d->_g124 && d->_cg126) || (d->_g125 && d->_cg128);
  d->_g134 = !d->_g100;
  d->_g138 = d->_g72 || d->_g138;
  d->_g135 = (d->_g91 || d->_g116) && (d->_g127_e2 || d->_g127) && (d->_g134 || d->_g138) && (d->_g116 || d->_g127 || d->_g138);
  d->_cg139 = d->_Pacemaker_local__Atrig6;
  d->_g127 = d->_pg116;
  d->_cg107 = d->VS || d->_Pacemaker_local_iVP;
  d->_g116 = d->_GO || (d->_g135 && !d->_cg139) || (d->_g127 && !d->_cg107);
  d->_g136 = d->_g127 && d->_cg107;
  if (d->_g136) {
    d->_Pacemaker_local__region3_VRP_x = 0;
  }
  d->_g116_e1 = d->_g135 && d->_cg139;
  if (d->_g116_e1) {
    d->_Pacemaker_local_VRP_timeout |= 1;
  }
  d->_g136_e3 = d->_g136 || d->_g116_e1;
  if (d->_g136_e3) {
    d->_Pacemaker_local__Atrig6 = 0;
    d->_Pacemaker_local__Atrig7 = 0;
  }
  d->_cg110 = d->_Pacemaker_local__region3_VRP_x < d->VRP;
  d->_g127_e2 = d->_g136_e3 && d->_cg110;
  if (d->_g127_e2) {
    d->sleepT = (d->sleepT < (d->VRP - d->_Pacemaker_local__region3_VRP_x)) ? d->sleepT : (d->VRP - d->_Pacemaker_local__region3_VRP_x);
  }
  d->_cg111 = d->_Pacemaker_local__Atrig6 || d->_Pacemaker_local__Atrig7;
  d->_g107 = (d->_g127_e2 && !d->_cg111) || (d->_g119 && !d->_cg115);
  d->_g139 = d->_g136_e3 && !d->_cg110;
  d->_cg120 = d->_Pacemaker_local__Atrig6 || d->_Pacemaker_local__Atrig7;
  d->_g108 = (d->_g114 && !d->_cg117) || (d->_g139 && !d->_cg120);
  d->_cg121 = d->_Pacemaker_local__region3_VRP_x < d->VRP;
  d->_g140 = d->_g136_e3 && d->_cg121;
  if (d->_g140) {
    d->sleepT = (d->sleepT < (d->VRP - d->_Pacemaker_local__region3_VRP_x)) ? d->sleepT : (d->VRP - d->_Pacemaker_local__region3_VRP_x);
  }
  d->_cg122 = d->_Pacemaker_local__Atrig6 || d->_Pacemaker_local__Atrig7;
  d->_g111 = (d->_g140 && !d->_cg122) || (d->_g124 && !d->_cg126);
  d->_g115 = d->_g136_e3 && !d->_cg121;
  d->_cg131 = d->_Pacemaker_local__Atrig6 || d->_Pacemaker_local__Atrig7;
  d->_g120 = (d->_g125 && !d->_cg128) || (d->_g115 && !d->_cg131);
  d->_g117 = d->_g136_e3 || (d->_g137 && !d->_cg137);
  if (d->_g164_e2) {
    d->VP |= 1;
  }
  d->_g122 = d->_pg205;
  d->_g126 = d->_pg176;
  d->_g131 = !(d->_g122 || d->_g126);
  d->_g128 = d->_pg184;
  d->_g109 = d->_g128 && d->AS;
  if (d->_g109) {
    d->_Pacemaker_local__Atrig11 = 1;
  }
  d->_g137 = d->_pg202;
  if (d->_g137) {
    d->_Pacemaker_local__region5_AEI_x += d->deltaT;
  }
  d->_g202 = d->_g128 && !d->AS;
  d->_cg202 = d->_Pacemaker_local__region5_AEI_x >= d->AEI;
  d->_g203 = d->_g202 && d->_cg202;
  if (d->_g203) {
    d->_Pacemaker_local__Atrig12 = 1;
  }
  d->_g189 = d->_g126 || d->_g122;
  d->_cg190 = d->_Pacemaker_local__region5_AEI_x < d->AEI;
  d->_g195 = d->_g189 && d->_cg190;
  if (d->_g195) {
    d->sleepT = (d->sleepT < (d->AEI - d->_Pacemaker_local__region5_AEI_x)) ? d->sleepT : (d->AEI - d->_Pacemaker_local__region5_AEI_x);
  }
  d->_cg191 = d->_Pacemaker_local__Atrig11 || d->_Pacemaker_local__Atrig12;
  d->_g190 = d->_g189 && !d->_cg190;
  d->_cg193 = d->_Pacemaker_local__Atrig11 || d->_Pacemaker_local__Atrig12;
  d->_g192 = (d->_g195 && d->_cg191) || (d->_g190 && d->_cg193);
  d->_g199 = !d->_g128;
  d->_g200 = d->_g109 || d->_g203;
  d->_g203 = (d->_g131 || d->_g192) && (d->_g199 || d->_g200) && (d->_g192 || d->_g200);
  d->_cg204 = d->_Pacemaker_local__Atrig11;
  d->_g192 = d->_g203 && !d->_cg204;
  if (d->_g192) {
    d->_Pacemaker_local_iAP |= 1;
  }
  d->_g201 = d->_pg192_e1;
  d->_cg144 = (d->AS || d->_Pacemaker_local_iAP) && !d->_Pacemaker_local_PVARP_timeout;
  d->_g192_e1 = d->_GO || (d->_g172 && d->_cg178) || d->_g164_e2 || (d->_g201 && !d->_cg144);
  d->_g201_e2 = d->_g201 && d->_cg144;
  if (d->_g201_e2) {
    d->_Pacemaker_local__region4_AVI_x = 0;
  }
  d->_g178 = d->_g201_e2 || (d->_g177 && d->_cg179);
  if (d->_g178) {
    d->_Pacemaker_local__Atrig8 = 0;
    d->_Pacemaker_local__Atrig9 = 0;
    d->_Pacemaker_local__Atrig10 = 0;
  }
  d->_cg147 = d->_Pacemaker_local__region4_AVI_x < d->AVI;
  d->_g180 = d->_g178 && d->_cg147;
  if (d->_g180) {
    d->sleepT = (d->sleepT < (d->AVI - d->_Pacemaker_local__region4_AVI_x)) ? d->sleepT : (d->AVI - d->_Pacemaker_local__region4_AVI_x);
  }
  d->_cg148 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9 || d->_Pacemaker_local__Atrig10;
  d->_g144 = (d->_g180 && !d->_cg148) || (d->_g156 && !d->_cg152);
  d->_g145 = d->_g178 && !d->_cg147;
  d->_cg157 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9 || d->_Pacemaker_local__Atrig10;
  d->_g179 = (d->_g150 && !d->_cg154) || (d->_g145 && !d->_cg157);
  d->_cg158 = d->_Pacemaker_local__region4_AVI_x < d->AVI;
  d->_g152 = d->_g178 && d->_cg158;
  if (d->_g152) {
    d->sleepT = (d->sleepT < (d->AVI - d->_Pacemaker_local__region4_AVI_x)) ? d->sleepT : (d->AVI - d->_Pacemaker_local__region4_AVI_x);
  }
  d->_cg159 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9 || d->_Pacemaker_local__Atrig10;
  d->_g148 = (d->_g152 && !d->_cg159) || (d->_g161 && !d->_cg163);
  d->_g157 = d->_g178 && !d->_cg158;
  d->_cg168 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9 || d->_Pacemaker_local__Atrig10;
  d->_g154 = (d->_g162 && !d->_cg165) || (d->_g157 && !d->_cg168);
  d->_g163 = d->_g178 || (d->_g42_e1 && !d->_cg176);
  if (d->_g192) {
    d->AP |= 1;
  }
  d->_g159 = d->_pg168;
  d->_cg184 = (d->VS || d->_Pacemaker_local_iVP) && !d->_Pacemaker_local_VRP_timeout;
  d->_g168 = d->_GO || (d->_g203 && d->_cg204) || d->_g192 || (d->_g159 && !d->_cg184);
  d->_g165 = d->_g159 && d->_cg184;
  if (d->_g165) {
    d->_Pacemaker_local__region5_AEI_x = 0;
    d->_Pacemaker_local__Atrig11 = 0;
    d->_Pacemaker_local__Atrig12 = 0;
  }
  d->_cg186 = d->_Pacemaker_local__region5_AEI_x < d->AEI;
  d->_g146 = d->_g165 && d->_cg186;
  if (d->_g146) {
    d->sleepT = (d->sleepT < (d->AEI - d->_Pacemaker_local__region5_AEI_x)) ? d->sleepT : (d->AEI - d->_Pacemaker_local__region5_AEI_x);
  }
  d->_cg187 = d->_Pacemaker_local__Atrig11 || d->_Pacemaker_local__Atrig12;
  d->_g176 = (d->_g146 && !d->_cg187) || (d->_g195 && !d->_cg191);
  d->_g204 = d->_g165 && !d->_cg186;
  d->_cg196 = d->_Pacemaker_local__Atrig11 || d->_Pacemaker_local__Atrig12;
  d->_g205 = (d->_g190 && !d->_cg193) || (d->_g204 && !d->_cg196);
  d->_g184 = d->_g165 || (d->_g202 && !d->_cg202);
  d->_g187 = d->_GO || d->_g173_e3;
  d->_g191 = d->_GO || d->_g213;
  d->_g196 = d->_GO || d->_g54;
  d->_g193 = d->_GO || d->_g94;
  d->_g185 = d->_GO || d->_g53_e2;
  d->_g202 = d->_GO || d->_g137;
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
  d->deltaT = 0.0;
  d->sleepT = 0.0;
  d->AP = 0;
  d->VP = 0;
  d->_Pacemaker_local__region0_LRI_x = 0;
  d->_Pacemaker_local__region1_URI_x = 0;
  d->_Pacemaker_local__region2_PVARP_x = 0;
  d->_Pacemaker_local__region3_VRP_x = 0;
  d->_Pacemaker_local__region4_AVI_x = 0;
  d->_Pacemaker_local__region5_AEI_x = 0;
  d->_Pacemaker_local_iAP = 0;
  d->_Pacemaker_local_iVP = 0;
  d->_Pacemaker_local_PVARP_timeout = 0;
  d->_Pacemaker_local_VRP_timeout = 0;
  d->_Pacemaker_local_URI_timeout = 0;
  d->_pg179 = 0;
  d->_pg144 = 0;
  d->_pg163 = 0;
  d->_pg66 = 0;
  d->_pg65 = 0;
  d->_pg191 = 0;
  d->_pg43 = 0;
  d->_pg46 = 0;
  d->_pg37 = 0;
  d->_pg185 = 0;
  d->_pg154 = 0;
  d->_pg148 = 0;
  d->_pg153 = 0;
  d->_pg187 = 0;
  d->_pg29 = 0;
  d->_pg28 = 0;
  d->_pg14 = 0;
  d->_pg24 = 0;
  d->_pg19 = 0;
  d->_pg103 = 0;
  d->_pg70 = 0;
  d->_pg196 = 0;
  d->_pg83 = 0;
  d->_pg80 = 0;
  d->_pg78 = 0;
  d->_pg90 = 0;
  d->_pg108 = 0;
  d->_pg107 = 0;
  d->_pg193 = 0;
  d->_pg117 = 0;
  d->_pg120 = 0;
  d->_pg111 = 0;
  d->_pg116 = 0;
  d->_pg205 = 0;
  d->_pg176 = 0;
  d->_pg184 = 0;
  d->_pg202 = 0;
  d->_pg192_e1 = 0;
  d->_pg168 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg179 = d->_g179;
  d->_pg144 = d->_g144;
  d->_pg163 = d->_g163;
  d->_pg66 = d->_g66;
  d->_pg65 = d->_g65;
  d->_pg191 = d->_g191;
  d->_pg43 = d->_g43;
  d->_pg46 = d->_g46;
  d->_pg37 = d->_g37;
  d->_pg185 = d->_g185;
  d->_pg154 = d->_g154;
  d->_pg148 = d->_g148;
  d->_pg153 = d->_g153;
  d->_pg187 = d->_g187;
  d->_pg29 = d->_g29;
  d->_pg28 = d->_g28;
  d->_pg14 = d->_g14;
  d->_pg24 = d->_g24;
  d->_pg19 = d->_g19;
  d->_pg103 = d->_g103;
  d->_pg70 = d->_g70;
  d->_pg196 = d->_g196;
  d->_pg83 = d->_g83;
  d->_pg80 = d->_g80;
  d->_pg78 = d->_g78;
  d->_pg90 = d->_g90;
  d->_pg108 = d->_g108;
  d->_pg107 = d->_g107;
  d->_pg193 = d->_g193;
  d->_pg117 = d->_g117;
  d->_pg120 = d->_g120;
  d->_pg111 = d->_g111;
  d->_pg116 = d->_g116;
  d->_pg205 = d->_g205;
  d->_pg176 = d->_g176;
  d->_pg184 = d->_g184;
  d->_pg202 = d->_g202;
  d->_pg192_e1 = d->_g192_e1;
  d->_pg168 = d->_g168;
  d->_GO = 0;
}
