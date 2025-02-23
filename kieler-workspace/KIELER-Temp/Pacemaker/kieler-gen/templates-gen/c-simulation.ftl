<#macro simulation_imports position>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "lib/cJSON.h"
</#macro>

<#macro simulation_init position>
sendVariables(1);
</#macro>

<#macro simulation_in position>
receiveVariables();
</#macro>

<#macro simulation_out position>
sendVariables(0);
</#macro>

<#macro simulation_body position>
void receiveVariables() {
    size_t blocksize = 2048;
    char *buffer = realloc(NULL, sizeof(char) * blocksize);
    size_t i = 0;
    
    // read next line
    int c = getchar();
    while (c != EOF && c != '\n') {
        buffer[i++] = (char) c;
        if (i == blocksize) {
            buffer = realloc(buffer, sizeof(char) * (blocksize += 2048));
        }
        c = getchar();
    }
    buffer[i++] = '\0';
    
    if (c == EOF) {
        exit(EOF);
    }
    
    cJSON *root = cJSON_Parse(buffer);
    cJSON *item = NULL;
    if(root != NULL) {
        // Receive AS
        item = cJSON_GetObjectItemCaseSensitive(root, "AS");
        if(item != NULL) {
            ${tickdata_name}.AS = item->valueint;
        }
        // Receive VS
        item = cJSON_GetObjectItemCaseSensitive(root, "VS");
        if(item != NULL) {
            ${tickdata_name}.VS = item->valueint;
        }
        // Receive deltaT
        item = cJSON_GetObjectItemCaseSensitive(root, "deltaT");
        if(item != NULL) {
            ${tickdata_name}.deltaT = item->valuedouble;
        }
        // Receive AP
        item = cJSON_GetObjectItemCaseSensitive(root, "AP");
        if(item != NULL) {
            ${tickdata_name}.AP = item->valueint;
        }
        // Receive VP
        item = cJSON_GetObjectItemCaseSensitive(root, "VP");
        if(item != NULL) {
            ${tickdata_name}.VP = item->valueint;
        }
        // Receive sleepT
        item = cJSON_GetObjectItemCaseSensitive(root, "sleepT");
        if(item != NULL) {
            ${tickdata_name}.sleepT = item->valuedouble;
        }
        // Receive #ticktime
        item = cJSON_GetObjectItemCaseSensitive(root, "#ticktime");
        if(item != NULL) {
            _ticktime = item->valuedouble;
        }
        // Receive _GO
        item = cJSON_GetObjectItemCaseSensitive(root, "_GO");
        if(item != NULL) {
            ${tickdata_name}._GO = item->valueint;
        }
        // Receive _Pacemaker_local_PVARP_timeout
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local_PVARP_timeout");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local_PVARP_timeout = item->valueint;
        }
        // Receive _Pacemaker_local_URI_timeout
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local_URI_timeout");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local_URI_timeout = item->valueint;
        }
        // Receive _Pacemaker_local_VRP_timeout
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local_VRP_timeout");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local_VRP_timeout = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig1
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig1");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig1 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig10
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig10");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig10 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig11
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig11");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig11 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig12
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig12");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig12 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig2
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig2");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig2 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig3
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig3");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig3 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig4
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig4");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig4 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig5
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig5");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig5 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig6
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig6");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig6 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig7
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig7");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig7 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig8
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig8");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig8 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig9
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig9");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig9 = item->valueint;
        }
        // Receive _Pacemaker_local__region0_LRI_x
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__region0_LRI_x");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__region0_LRI_x = item->valuedouble;
        }
        // Receive _Pacemaker_local__region1_URI_x
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__region1_URI_x");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__region1_URI_x = item->valuedouble;
        }
        // Receive _Pacemaker_local__region2_PVARP_x
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__region2_PVARP_x");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__region2_PVARP_x = item->valuedouble;
        }
        // Receive _Pacemaker_local__region3_VRP_x
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__region3_VRP_x");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__region3_VRP_x = item->valuedouble;
        }
        // Receive _Pacemaker_local__region4_AVI_x
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__region4_AVI_x");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__region4_AVI_x = item->valuedouble;
        }
        // Receive _Pacemaker_local__region5_AEI_x
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__region5_AEI_x");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__region5_AEI_x = item->valuedouble;
        }
        // Receive _Pacemaker_local_iAP
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local_iAP");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local_iAP = item->valueint;
        }
        // Receive _Pacemaker_local_iVP
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local_iVP");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local_iVP = item->valueint;
        }
        // Receive _TERM
        item = cJSON_GetObjectItemCaseSensitive(root, "_TERM");
        if(item != NULL) {
            ${tickdata_name}._TERM = item->valueint;
        }
        // Receive _cg100
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg100");
        if(item != NULL) {
            ${tickdata_name}._cg100 = item->valueint;
        }
        // Receive _cg102
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg102");
        if(item != NULL) {
            ${tickdata_name}._cg102 = item->valueint;
        }
        // Receive _cg108
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg108");
        if(item != NULL) {
            ${tickdata_name}._cg108 = item->valueint;
        }
        // Receive _cg111
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg111");
        if(item != NULL) {
            ${tickdata_name}._cg111 = item->valueint;
        }
        // Receive _cg112
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg112");
        if(item != NULL) {
            ${tickdata_name}._cg112 = item->valueint;
        }
        // Receive _cg115
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg115");
        if(item != NULL) {
            ${tickdata_name}._cg115 = item->valueint;
        }
        // Receive _cg116
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg116");
        if(item != NULL) {
            ${tickdata_name}._cg116 = item->valueint;
        }
        // Receive _cg118
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg118");
        if(item != NULL) {
            ${tickdata_name}._cg118 = item->valueint;
        }
        // Receive _cg12
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg12");
        if(item != NULL) {
            ${tickdata_name}._cg12 = item->valueint;
        }
        // Receive _cg121
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg121");
        if(item != NULL) {
            ${tickdata_name}._cg121 = item->valueint;
        }
        // Receive _cg122
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg122");
        if(item != NULL) {
            ${tickdata_name}._cg122 = item->valueint;
        }
        // Receive _cg123
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg123");
        if(item != NULL) {
            ${tickdata_name}._cg123 = item->valueint;
        }
        // Receive _cg126
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg126");
        if(item != NULL) {
            ${tickdata_name}._cg126 = item->valueint;
        }
        // Receive _cg127
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg127");
        if(item != NULL) {
            ${tickdata_name}._cg127 = item->valueint;
        }
        // Receive _cg129
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg129");
        if(item != NULL) {
            ${tickdata_name}._cg129 = item->valueint;
        }
        // Receive _cg13
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg13");
        if(item != NULL) {
            ${tickdata_name}._cg13 = item->valueint;
        }
        // Receive _cg132
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg132");
        if(item != NULL) {
            ${tickdata_name}._cg132 = item->valueint;
        }
        // Receive _cg135
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg135");
        if(item != NULL) {
            ${tickdata_name}._cg135 = item->valueint;
        }
        // Receive _cg138
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg138");
        if(item != NULL) {
            ${tickdata_name}._cg138 = item->valueint;
        }
        // Receive _cg140
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg140");
        if(item != NULL) {
            ${tickdata_name}._cg140 = item->valueint;
        }
        // Receive _cg146
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg146");
        if(item != NULL) {
            ${tickdata_name}._cg146 = item->valueint;
        }
        // Receive _cg149
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg149");
        if(item != NULL) {
            ${tickdata_name}._cg149 = item->valueint;
        }
        // Receive _cg15
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg15");
        if(item != NULL) {
            ${tickdata_name}._cg15 = item->valueint;
        }
        // Receive _cg150
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg150");
        if(item != NULL) {
            ${tickdata_name}._cg150 = item->valueint;
        }
        // Receive _cg153
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg153");
        if(item != NULL) {
            ${tickdata_name}._cg153 = item->valueint;
        }
        // Receive _cg154
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg154");
        if(item != NULL) {
            ${tickdata_name}._cg154 = item->valueint;
        }
        // Receive _cg156
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg156");
        if(item != NULL) {
            ${tickdata_name}._cg156 = item->valueint;
        }
        // Receive _cg159
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg159");
        if(item != NULL) {
            ${tickdata_name}._cg159 = item->valueint;
        }
        // Receive _cg160
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg160");
        if(item != NULL) {
            ${tickdata_name}._cg160 = item->valueint;
        }
        // Receive _cg161
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg161");
        if(item != NULL) {
            ${tickdata_name}._cg161 = item->valueint;
        }
        // Receive _cg164
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg164");
        if(item != NULL) {
            ${tickdata_name}._cg164 = item->valueint;
        }
        // Receive _cg165
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg165");
        if(item != NULL) {
            ${tickdata_name}._cg165 = item->valueint;
        }
        // Receive _cg167
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg167");
        if(item != NULL) {
            ${tickdata_name}._cg167 = item->valueint;
        }
        // Receive _cg170
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg170");
        if(item != NULL) {
            ${tickdata_name}._cg170 = item->valueint;
        }
        // Receive _cg173
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg173");
        if(item != NULL) {
            ${tickdata_name}._cg173 = item->valueint;
        }
        // Receive _cg176
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg176");
        if(item != NULL) {
            ${tickdata_name}._cg176 = item->valueint;
        }
        // Receive _cg178
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg178");
        if(item != NULL) {
            ${tickdata_name}._cg178 = item->valueint;
        }
        // Receive _cg18
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg18");
        if(item != NULL) {
            ${tickdata_name}._cg18 = item->valueint;
        }
        // Receive _cg180
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg180");
        if(item != NULL) {
            ${tickdata_name}._cg180 = item->valueint;
        }
        // Receive _cg182
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg182");
        if(item != NULL) {
            ${tickdata_name}._cg182 = item->valueint;
        }
        // Receive _cg188
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg188");
        if(item != NULL) {
            ${tickdata_name}._cg188 = item->valueint;
        }
        // Receive _cg190
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg190");
        if(item != NULL) {
            ${tickdata_name}._cg190 = item->valueint;
        }
        // Receive _cg191
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg191");
        if(item != NULL) {
            ${tickdata_name}._cg191 = item->valueint;
        }
        // Receive _cg194
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg194");
        if(item != NULL) {
            ${tickdata_name}._cg194 = item->valueint;
        }
        // Receive _cg195
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg195");
        if(item != NULL) {
            ${tickdata_name}._cg195 = item->valueint;
        }
        // Receive _cg197
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg197");
        if(item != NULL) {
            ${tickdata_name}._cg197 = item->valueint;
        }
        // Receive _cg200
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg200");
        if(item != NULL) {
            ${tickdata_name}._cg200 = item->valueint;
        }
        // Receive _cg203
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg203");
        if(item != NULL) {
            ${tickdata_name}._cg203 = item->valueint;
        }
        // Receive _cg206
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg206");
        if(item != NULL) {
            ${tickdata_name}._cg206 = item->valueint;
        }
        // Receive _cg208
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg208");
        if(item != NULL) {
            ${tickdata_name}._cg208 = item->valueint;
        }
        // Receive _cg21
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg21");
        if(item != NULL) {
            ${tickdata_name}._cg21 = item->valueint;
        }
        // Receive _cg24
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg24");
        if(item != NULL) {
            ${tickdata_name}._cg24 = item->valueint;
        }
        // Receive _cg26
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg26");
        if(item != NULL) {
            ${tickdata_name}._cg26 = item->valueint;
        }
        // Receive _cg32
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg32");
        if(item != NULL) {
            ${tickdata_name}._cg32 = item->valueint;
        }
        // Receive _cg35
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg35");
        if(item != NULL) {
            ${tickdata_name}._cg35 = item->valueint;
        }
        // Receive _cg36
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg36");
        if(item != NULL) {
            ${tickdata_name}._cg36 = item->valueint;
        }
        // Receive _cg39
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg39");
        if(item != NULL) {
            ${tickdata_name}._cg39 = item->valueint;
        }
        // Receive _cg40
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg40");
        if(item != NULL) {
            ${tickdata_name}._cg40 = item->valueint;
        }
        // Receive _cg42
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg42");
        if(item != NULL) {
            ${tickdata_name}._cg42 = item->valueint;
        }
        // Receive _cg45
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg45");
        if(item != NULL) {
            ${tickdata_name}._cg45 = item->valueint;
        }
        // Receive _cg46
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg46");
        if(item != NULL) {
            ${tickdata_name}._cg46 = item->valueint;
        }
        // Receive _cg47
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg47");
        if(item != NULL) {
            ${tickdata_name}._cg47 = item->valueint;
        }
        // Receive _cg50
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg50");
        if(item != NULL) {
            ${tickdata_name}._cg50 = item->valueint;
        }
        // Receive _cg51
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg51");
        if(item != NULL) {
            ${tickdata_name}._cg51 = item->valueint;
        }
        // Receive _cg53
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg53");
        if(item != NULL) {
            ${tickdata_name}._cg53 = item->valueint;
        }
        // Receive _cg56
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg56");
        if(item != NULL) {
            ${tickdata_name}._cg56 = item->valueint;
        }
        // Receive _cg59
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg59");
        if(item != NULL) {
            ${tickdata_name}._cg59 = item->valueint;
        }
        // Receive _cg6
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg6");
        if(item != NULL) {
            ${tickdata_name}._cg6 = item->valueint;
        }
        // Receive _cg62
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg62");
        if(item != NULL) {
            ${tickdata_name}._cg62 = item->valueint;
        }
        // Receive _cg64
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg64");
        if(item != NULL) {
            ${tickdata_name}._cg64 = item->valueint;
        }
        // Receive _cg70
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg70");
        if(item != NULL) {
            ${tickdata_name}._cg70 = item->valueint;
        }
        // Receive _cg73
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg73");
        if(item != NULL) {
            ${tickdata_name}._cg73 = item->valueint;
        }
        // Receive _cg74
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg74");
        if(item != NULL) {
            ${tickdata_name}._cg74 = item->valueint;
        }
        // Receive _cg77
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg77");
        if(item != NULL) {
            ${tickdata_name}._cg77 = item->valueint;
        }
        // Receive _cg78
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg78");
        if(item != NULL) {
            ${tickdata_name}._cg78 = item->valueint;
        }
        // Receive _cg8
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg8");
        if(item != NULL) {
            ${tickdata_name}._cg8 = item->valueint;
        }
        // Receive _cg80
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg80");
        if(item != NULL) {
            ${tickdata_name}._cg80 = item->valueint;
        }
        // Receive _cg83
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg83");
        if(item != NULL) {
            ${tickdata_name}._cg83 = item->valueint;
        }
        // Receive _cg84
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg84");
        if(item != NULL) {
            ${tickdata_name}._cg84 = item->valueint;
        }
        // Receive _cg85
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg85");
        if(item != NULL) {
            ${tickdata_name}._cg85 = item->valueint;
        }
        // Receive _cg88
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg88");
        if(item != NULL) {
            ${tickdata_name}._cg88 = item->valueint;
        }
        // Receive _cg89
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg89");
        if(item != NULL) {
            ${tickdata_name}._cg89 = item->valueint;
        }
        // Receive _cg9
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg9");
        if(item != NULL) {
            ${tickdata_name}._cg9 = item->valueint;
        }
        // Receive _cg91
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg91");
        if(item != NULL) {
            ${tickdata_name}._cg91 = item->valueint;
        }
        // Receive _cg94
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg94");
        if(item != NULL) {
            ${tickdata_name}._cg94 = item->valueint;
        }
        // Receive _cg97
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg97");
        if(item != NULL) {
            ${tickdata_name}._cg97 = item->valueint;
        }
        // Receive _g100
        item = cJSON_GetObjectItemCaseSensitive(root, "_g100");
        if(item != NULL) {
            ${tickdata_name}._g100 = item->valueint;
        }
        // Receive _g101
        item = cJSON_GetObjectItemCaseSensitive(root, "_g101");
        if(item != NULL) {
            ${tickdata_name}._g101 = item->valueint;
        }
        // Receive _g102
        item = cJSON_GetObjectItemCaseSensitive(root, "_g102");
        if(item != NULL) {
            ${tickdata_name}._g102 = item->valueint;
        }
        // Receive _g103
        item = cJSON_GetObjectItemCaseSensitive(root, "_g103");
        if(item != NULL) {
            ${tickdata_name}._g103 = item->valueint;
        }
        // Receive _g104
        item = cJSON_GetObjectItemCaseSensitive(root, "_g104");
        if(item != NULL) {
            ${tickdata_name}._g104 = item->valueint;
        }
        // Receive _g108
        item = cJSON_GetObjectItemCaseSensitive(root, "_g108");
        if(item != NULL) {
            ${tickdata_name}._g108 = item->valueint;
        }
        // Receive _g109
        item = cJSON_GetObjectItemCaseSensitive(root, "_g109");
        if(item != NULL) {
            ${tickdata_name}._g109 = item->valueint;
        }
        // Receive _g11
        item = cJSON_GetObjectItemCaseSensitive(root, "_g11");
        if(item != NULL) {
            ${tickdata_name}._g11 = item->valueint;
        }
        // Receive _g110
        item = cJSON_GetObjectItemCaseSensitive(root, "_g110");
        if(item != NULL) {
            ${tickdata_name}._g110 = item->valueint;
        }
        // Receive _g112
        item = cJSON_GetObjectItemCaseSensitive(root, "_g112");
        if(item != NULL) {
            ${tickdata_name}._g112 = item->valueint;
        }
        // Receive _g114
        item = cJSON_GetObjectItemCaseSensitive(root, "_g114");
        if(item != NULL) {
            ${tickdata_name}._g114 = item->valueint;
        }
        // Receive _g115
        item = cJSON_GetObjectItemCaseSensitive(root, "_g115");
        if(item != NULL) {
            ${tickdata_name}._g115 = item->valueint;
        }
        // Receive _g116
        item = cJSON_GetObjectItemCaseSensitive(root, "_g116");
        if(item != NULL) {
            ${tickdata_name}._g116 = item->valueint;
        }
        // Receive _g117
        item = cJSON_GetObjectItemCaseSensitive(root, "_g117");
        if(item != NULL) {
            ${tickdata_name}._g117 = item->valueint;
        }
        // Receive _g117_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g117_e1");
        if(item != NULL) {
            ${tickdata_name}._g117_e1 = item->valueint;
        }
        // Receive _g118
        item = cJSON_GetObjectItemCaseSensitive(root, "_g118");
        if(item != NULL) {
            ${tickdata_name}._g118 = item->valueint;
        }
        // Receive _g12
        item = cJSON_GetObjectItemCaseSensitive(root, "_g12");
        if(item != NULL) {
            ${tickdata_name}._g12 = item->valueint;
        }
        // Receive _g120
        item = cJSON_GetObjectItemCaseSensitive(root, "_g120");
        if(item != NULL) {
            ${tickdata_name}._g120 = item->valueint;
        }
        // Receive _g121
        item = cJSON_GetObjectItemCaseSensitive(root, "_g121");
        if(item != NULL) {
            ${tickdata_name}._g121 = item->valueint;
        }
        // Receive _g123
        item = cJSON_GetObjectItemCaseSensitive(root, "_g123");
        if(item != NULL) {
            ${tickdata_name}._g123 = item->valueint;
        }
        // Receive _g125
        item = cJSON_GetObjectItemCaseSensitive(root, "_g125");
        if(item != NULL) {
            ${tickdata_name}._g125 = item->valueint;
        }
        // Receive _g126
        item = cJSON_GetObjectItemCaseSensitive(root, "_g126");
        if(item != NULL) {
            ${tickdata_name}._g126 = item->valueint;
        }
        // Receive _g127
        item = cJSON_GetObjectItemCaseSensitive(root, "_g127");
        if(item != NULL) {
            ${tickdata_name}._g127 = item->valueint;
        }
        // Receive _g128
        item = cJSON_GetObjectItemCaseSensitive(root, "_g128");
        if(item != NULL) {
            ${tickdata_name}._g128 = item->valueint;
        }
        // Receive _g128_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g128_e2");
        if(item != NULL) {
            ${tickdata_name}._g128_e2 = item->valueint;
        }
        // Receive _g129
        item = cJSON_GetObjectItemCaseSensitive(root, "_g129");
        if(item != NULL) {
            ${tickdata_name}._g129 = item->valueint;
        }
        // Receive _g13
        item = cJSON_GetObjectItemCaseSensitive(root, "_g13");
        if(item != NULL) {
            ${tickdata_name}._g13 = item->valueint;
        }
        // Receive _g131
        item = cJSON_GetObjectItemCaseSensitive(root, "_g131");
        if(item != NULL) {
            ${tickdata_name}._g131 = item->valueint;
        }
        // Receive _g132
        item = cJSON_GetObjectItemCaseSensitive(root, "_g132");
        if(item != NULL) {
            ${tickdata_name}._g132 = item->valueint;
        }
        // Receive _g135
        item = cJSON_GetObjectItemCaseSensitive(root, "_g135");
        if(item != NULL) {
            ${tickdata_name}._g135 = item->valueint;
        }
        // Receive _g136
        item = cJSON_GetObjectItemCaseSensitive(root, "_g136");
        if(item != NULL) {
            ${tickdata_name}._g136 = item->valueint;
        }
        // Receive _g137
        item = cJSON_GetObjectItemCaseSensitive(root, "_g137");
        if(item != NULL) {
            ${tickdata_name}._g137 = item->valueint;
        }
        // Receive _g137_e3
        item = cJSON_GetObjectItemCaseSensitive(root, "_g137_e3");
        if(item != NULL) {
            ${tickdata_name}._g137_e3 = item->valueint;
        }
        // Receive _g138
        item = cJSON_GetObjectItemCaseSensitive(root, "_g138");
        if(item != NULL) {
            ${tickdata_name}._g138 = item->valueint;
        }
        // Receive _g139
        item = cJSON_GetObjectItemCaseSensitive(root, "_g139");
        if(item != NULL) {
            ${tickdata_name}._g139 = item->valueint;
        }
        // Receive _g14
        item = cJSON_GetObjectItemCaseSensitive(root, "_g14");
        if(item != NULL) {
            ${tickdata_name}._g14 = item->valueint;
        }
        // Receive _g140
        item = cJSON_GetObjectItemCaseSensitive(root, "_g140");
        if(item != NULL) {
            ${tickdata_name}._g140 = item->valueint;
        }
        // Receive _g141
        item = cJSON_GetObjectItemCaseSensitive(root, "_g141");
        if(item != NULL) {
            ${tickdata_name}._g141 = item->valueint;
        }
        // Receive _g142
        item = cJSON_GetObjectItemCaseSensitive(root, "_g142");
        if(item != NULL) {
            ${tickdata_name}._g142 = item->valueint;
        }
        // Receive _g146
        item = cJSON_GetObjectItemCaseSensitive(root, "_g146");
        if(item != NULL) {
            ${tickdata_name}._g146 = item->valueint;
        }
        // Receive _g147
        item = cJSON_GetObjectItemCaseSensitive(root, "_g147");
        if(item != NULL) {
            ${tickdata_name}._g147 = item->valueint;
        }
        // Receive _g148
        item = cJSON_GetObjectItemCaseSensitive(root, "_g148");
        if(item != NULL) {
            ${tickdata_name}._g148 = item->valueint;
        }
        // Receive _g14_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g14_e1");
        if(item != NULL) {
            ${tickdata_name}._g14_e1 = item->valueint;
        }
        // Receive _g15
        item = cJSON_GetObjectItemCaseSensitive(root, "_g15");
        if(item != NULL) {
            ${tickdata_name}._g15 = item->valueint;
        }
        // Receive _g150
        item = cJSON_GetObjectItemCaseSensitive(root, "_g150");
        if(item != NULL) {
            ${tickdata_name}._g150 = item->valueint;
        }
        // Receive _g152
        item = cJSON_GetObjectItemCaseSensitive(root, "_g152");
        if(item != NULL) {
            ${tickdata_name}._g152 = item->valueint;
        }
        // Receive _g153
        item = cJSON_GetObjectItemCaseSensitive(root, "_g153");
        if(item != NULL) {
            ${tickdata_name}._g153 = item->valueint;
        }
        // Receive _g154
        item = cJSON_GetObjectItemCaseSensitive(root, "_g154");
        if(item != NULL) {
            ${tickdata_name}._g154 = item->valueint;
        }
        // Receive _g155
        item = cJSON_GetObjectItemCaseSensitive(root, "_g155");
        if(item != NULL) {
            ${tickdata_name}._g155 = item->valueint;
        }
        // Receive _g155_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g155_e1");
        if(item != NULL) {
            ${tickdata_name}._g155_e1 = item->valueint;
        }
        // Receive _g156
        item = cJSON_GetObjectItemCaseSensitive(root, "_g156");
        if(item != NULL) {
            ${tickdata_name}._g156 = item->valueint;
        }
        // Receive _g158
        item = cJSON_GetObjectItemCaseSensitive(root, "_g158");
        if(item != NULL) {
            ${tickdata_name}._g158 = item->valueint;
        }
        // Receive _g159
        item = cJSON_GetObjectItemCaseSensitive(root, "_g159");
        if(item != NULL) {
            ${tickdata_name}._g159 = item->valueint;
        }
        // Receive _g161
        item = cJSON_GetObjectItemCaseSensitive(root, "_g161");
        if(item != NULL) {
            ${tickdata_name}._g161 = item->valueint;
        }
        // Receive _g163
        item = cJSON_GetObjectItemCaseSensitive(root, "_g163");
        if(item != NULL) {
            ${tickdata_name}._g163 = item->valueint;
        }
        // Receive _g164
        item = cJSON_GetObjectItemCaseSensitive(root, "_g164");
        if(item != NULL) {
            ${tickdata_name}._g164 = item->valueint;
        }
        // Receive _g165
        item = cJSON_GetObjectItemCaseSensitive(root, "_g165");
        if(item != NULL) {
            ${tickdata_name}._g165 = item->valueint;
        }
        // Receive _g166
        item = cJSON_GetObjectItemCaseSensitive(root, "_g166");
        if(item != NULL) {
            ${tickdata_name}._g166 = item->valueint;
        }
        // Receive _g166_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g166_e2");
        if(item != NULL) {
            ${tickdata_name}._g166_e2 = item->valueint;
        }
        // Receive _g167
        item = cJSON_GetObjectItemCaseSensitive(root, "_g167");
        if(item != NULL) {
            ${tickdata_name}._g167 = item->valueint;
        }
        // Receive _g169
        item = cJSON_GetObjectItemCaseSensitive(root, "_g169");
        if(item != NULL) {
            ${tickdata_name}._g169 = item->valueint;
        }
        // Receive _g17
        item = cJSON_GetObjectItemCaseSensitive(root, "_g17");
        if(item != NULL) {
            ${tickdata_name}._g17 = item->valueint;
        }
        // Receive _g170
        item = cJSON_GetObjectItemCaseSensitive(root, "_g170");
        if(item != NULL) {
            ${tickdata_name}._g170 = item->valueint;
        }
        // Receive _g173
        item = cJSON_GetObjectItemCaseSensitive(root, "_g173");
        if(item != NULL) {
            ${tickdata_name}._g173 = item->valueint;
        }
        // Receive _g174
        item = cJSON_GetObjectItemCaseSensitive(root, "_g174");
        if(item != NULL) {
            ${tickdata_name}._g174 = item->valueint;
        }
        // Receive _g175
        item = cJSON_GetObjectItemCaseSensitive(root, "_g175");
        if(item != NULL) {
            ${tickdata_name}._g175 = item->valueint;
        }
        // Receive _g175_e3
        item = cJSON_GetObjectItemCaseSensitive(root, "_g175_e3");
        if(item != NULL) {
            ${tickdata_name}._g175_e3 = item->valueint;
        }
        // Receive _g176
        item = cJSON_GetObjectItemCaseSensitive(root, "_g176");
        if(item != NULL) {
            ${tickdata_name}._g176 = item->valueint;
        }
        // Receive _g177
        item = cJSON_GetObjectItemCaseSensitive(root, "_g177");
        if(item != NULL) {
            ${tickdata_name}._g177 = item->valueint;
        }
        // Receive _g178
        item = cJSON_GetObjectItemCaseSensitive(root, "_g178");
        if(item != NULL) {
            ${tickdata_name}._g178 = item->valueint;
        }
        // Receive _g179
        item = cJSON_GetObjectItemCaseSensitive(root, "_g179");
        if(item != NULL) {
            ${tickdata_name}._g179 = item->valueint;
        }
        // Receive _g18
        item = cJSON_GetObjectItemCaseSensitive(root, "_g18");
        if(item != NULL) {
            ${tickdata_name}._g18 = item->valueint;
        }
        // Receive _g180
        item = cJSON_GetObjectItemCaseSensitive(root, "_g180");
        if(item != NULL) {
            ${tickdata_name}._g180 = item->valueint;
        }
        // Receive _g181
        item = cJSON_GetObjectItemCaseSensitive(root, "_g181");
        if(item != NULL) {
            ${tickdata_name}._g181 = item->valueint;
        }
        // Receive _g182
        item = cJSON_GetObjectItemCaseSensitive(root, "_g182");
        if(item != NULL) {
            ${tickdata_name}._g182 = item->valueint;
        }
        // Receive _g183
        item = cJSON_GetObjectItemCaseSensitive(root, "_g183");
        if(item != NULL) {
            ${tickdata_name}._g183 = item->valueint;
        }
        // Receive _g184
        item = cJSON_GetObjectItemCaseSensitive(root, "_g184");
        if(item != NULL) {
            ${tickdata_name}._g184 = item->valueint;
        }
        // Receive _g188
        item = cJSON_GetObjectItemCaseSensitive(root, "_g188");
        if(item != NULL) {
            ${tickdata_name}._g188 = item->valueint;
        }
        // Receive _g189
        item = cJSON_GetObjectItemCaseSensitive(root, "_g189");
        if(item != NULL) {
            ${tickdata_name}._g189 = item->valueint;
        }
        // Receive _g191
        item = cJSON_GetObjectItemCaseSensitive(root, "_g191");
        if(item != NULL) {
            ${tickdata_name}._g191 = item->valueint;
        }
        // Receive _g193
        item = cJSON_GetObjectItemCaseSensitive(root, "_g193");
        if(item != NULL) {
            ${tickdata_name}._g193 = item->valueint;
        }
        // Receive _g194
        item = cJSON_GetObjectItemCaseSensitive(root, "_g194");
        if(item != NULL) {
            ${tickdata_name}._g194 = item->valueint;
        }
        // Receive _g195
        item = cJSON_GetObjectItemCaseSensitive(root, "_g195");
        if(item != NULL) {
            ${tickdata_name}._g195 = item->valueint;
        }
        // Receive _g196
        item = cJSON_GetObjectItemCaseSensitive(root, "_g196");
        if(item != NULL) {
            ${tickdata_name}._g196 = item->valueint;
        }
        // Receive _g196_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g196_e1");
        if(item != NULL) {
            ${tickdata_name}._g196_e1 = item->valueint;
        }
        // Receive _g197
        item = cJSON_GetObjectItemCaseSensitive(root, "_g197");
        if(item != NULL) {
            ${tickdata_name}._g197 = item->valueint;
        }
        // Receive _g199
        item = cJSON_GetObjectItemCaseSensitive(root, "_g199");
        if(item != NULL) {
            ${tickdata_name}._g199 = item->valueint;
        }
        // Receive _g200
        item = cJSON_GetObjectItemCaseSensitive(root, "_g200");
        if(item != NULL) {
            ${tickdata_name}._g200 = item->valueint;
        }
        // Receive _g203
        item = cJSON_GetObjectItemCaseSensitive(root, "_g203");
        if(item != NULL) {
            ${tickdata_name}._g203 = item->valueint;
        }
        // Receive _g204
        item = cJSON_GetObjectItemCaseSensitive(root, "_g204");
        if(item != NULL) {
            ${tickdata_name}._g204 = item->valueint;
        }
        // Receive _g205
        item = cJSON_GetObjectItemCaseSensitive(root, "_g205");
        if(item != NULL) {
            ${tickdata_name}._g205 = item->valueint;
        }
        // Receive _g205_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g205_e2");
        if(item != NULL) {
            ${tickdata_name}._g205_e2 = item->valueint;
        }
        // Receive _g206
        item = cJSON_GetObjectItemCaseSensitive(root, "_g206");
        if(item != NULL) {
            ${tickdata_name}._g206 = item->valueint;
        }
        // Receive _g207
        item = cJSON_GetObjectItemCaseSensitive(root, "_g207");
        if(item != NULL) {
            ${tickdata_name}._g207 = item->valueint;
        }
        // Receive _g208
        item = cJSON_GetObjectItemCaseSensitive(root, "_g208");
        if(item != NULL) {
            ${tickdata_name}._g208 = item->valueint;
        }
        // Receive _g209
        item = cJSON_GetObjectItemCaseSensitive(root, "_g209");
        if(item != NULL) {
            ${tickdata_name}._g209 = item->valueint;
        }
        // Receive _g21
        item = cJSON_GetObjectItemCaseSensitive(root, "_g21");
        if(item != NULL) {
            ${tickdata_name}._g21 = item->valueint;
        }
        // Receive _g210
        item = cJSON_GetObjectItemCaseSensitive(root, "_g210");
        if(item != NULL) {
            ${tickdata_name}._g210 = item->valueint;
        }
        // Receive _g214
        item = cJSON_GetObjectItemCaseSensitive(root, "_g214");
        if(item != NULL) {
            ${tickdata_name}._g214 = item->valueint;
        }
        // Receive _g218
        item = cJSON_GetObjectItemCaseSensitive(root, "_g218");
        if(item != NULL) {
            ${tickdata_name}._g218 = item->valueint;
        }
        // Receive _g22
        item = cJSON_GetObjectItemCaseSensitive(root, "_g22");
        if(item != NULL) {
            ${tickdata_name}._g22 = item->valueint;
        }
        // Receive _g23
        item = cJSON_GetObjectItemCaseSensitive(root, "_g23");
        if(item != NULL) {
            ${tickdata_name}._g23 = item->valueint;
        }
        // Receive _g23_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g23_e2");
        if(item != NULL) {
            ${tickdata_name}._g23_e2 = item->valueint;
        }
        // Receive _g24
        item = cJSON_GetObjectItemCaseSensitive(root, "_g24");
        if(item != NULL) {
            ${tickdata_name}._g24 = item->valueint;
        }
        // Receive _g25
        item = cJSON_GetObjectItemCaseSensitive(root, "_g25");
        if(item != NULL) {
            ${tickdata_name}._g25 = item->valueint;
        }
        // Receive _g255
        item = cJSON_GetObjectItemCaseSensitive(root, "_g255");
        if(item != NULL) {
            ${tickdata_name}._g255 = item->valueint;
        }
        // Receive _g26
        item = cJSON_GetObjectItemCaseSensitive(root, "_g26");
        if(item != NULL) {
            ${tickdata_name}._g26 = item->valueint;
        }
        // Receive _g27
        item = cJSON_GetObjectItemCaseSensitive(root, "_g27");
        if(item != NULL) {
            ${tickdata_name}._g27 = item->valueint;
        }
        // Receive _g28
        item = cJSON_GetObjectItemCaseSensitive(root, "_g28");
        if(item != NULL) {
            ${tickdata_name}._g28 = item->valueint;
        }
        // Receive _g32
        item = cJSON_GetObjectItemCaseSensitive(root, "_g32");
        if(item != NULL) {
            ${tickdata_name}._g32 = item->valueint;
        }
        // Receive _g33
        item = cJSON_GetObjectItemCaseSensitive(root, "_g33");
        if(item != NULL) {
            ${tickdata_name}._g33 = item->valueint;
        }
        // Receive _g34
        item = cJSON_GetObjectItemCaseSensitive(root, "_g34");
        if(item != NULL) {
            ${tickdata_name}._g34 = item->valueint;
        }
        // Receive _g36
        item = cJSON_GetObjectItemCaseSensitive(root, "_g36");
        if(item != NULL) {
            ${tickdata_name}._g36 = item->valueint;
        }
        // Receive _g38
        item = cJSON_GetObjectItemCaseSensitive(root, "_g38");
        if(item != NULL) {
            ${tickdata_name}._g38 = item->valueint;
        }
        // Receive _g39
        item = cJSON_GetObjectItemCaseSensitive(root, "_g39");
        if(item != NULL) {
            ${tickdata_name}._g39 = item->valueint;
        }
        // Receive _g40
        item = cJSON_GetObjectItemCaseSensitive(root, "_g40");
        if(item != NULL) {
            ${tickdata_name}._g40 = item->valueint;
        }
        // Receive _g41
        item = cJSON_GetObjectItemCaseSensitive(root, "_g41");
        if(item != NULL) {
            ${tickdata_name}._g41 = item->valueint;
        }
        // Receive _g41_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g41_e1");
        if(item != NULL) {
            ${tickdata_name}._g41_e1 = item->valueint;
        }
        // Receive _g42
        item = cJSON_GetObjectItemCaseSensitive(root, "_g42");
        if(item != NULL) {
            ${tickdata_name}._g42 = item->valueint;
        }
        // Receive _g44
        item = cJSON_GetObjectItemCaseSensitive(root, "_g44");
        if(item != NULL) {
            ${tickdata_name}._g44 = item->valueint;
        }
        // Receive _g45
        item = cJSON_GetObjectItemCaseSensitive(root, "_g45");
        if(item != NULL) {
            ${tickdata_name}._g45 = item->valueint;
        }
        // Receive _g47
        item = cJSON_GetObjectItemCaseSensitive(root, "_g47");
        if(item != NULL) {
            ${tickdata_name}._g47 = item->valueint;
        }
        // Receive _g49
        item = cJSON_GetObjectItemCaseSensitive(root, "_g49");
        if(item != NULL) {
            ${tickdata_name}._g49 = item->valueint;
        }
        // Receive _g50
        item = cJSON_GetObjectItemCaseSensitive(root, "_g50");
        if(item != NULL) {
            ${tickdata_name}._g50 = item->valueint;
        }
        // Receive _g51
        item = cJSON_GetObjectItemCaseSensitive(root, "_g51");
        if(item != NULL) {
            ${tickdata_name}._g51 = item->valueint;
        }
        // Receive _g52
        item = cJSON_GetObjectItemCaseSensitive(root, "_g52");
        if(item != NULL) {
            ${tickdata_name}._g52 = item->valueint;
        }
        // Receive _g52_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g52_e2");
        if(item != NULL) {
            ${tickdata_name}._g52_e2 = item->valueint;
        }
        // Receive _g53
        item = cJSON_GetObjectItemCaseSensitive(root, "_g53");
        if(item != NULL) {
            ${tickdata_name}._g53 = item->valueint;
        }
        // Receive _g55
        item = cJSON_GetObjectItemCaseSensitive(root, "_g55");
        if(item != NULL) {
            ${tickdata_name}._g55 = item->valueint;
        }
        // Receive _g56
        item = cJSON_GetObjectItemCaseSensitive(root, "_g56");
        if(item != NULL) {
            ${tickdata_name}._g56 = item->valueint;
        }
        // Receive _g59
        item = cJSON_GetObjectItemCaseSensitive(root, "_g59");
        if(item != NULL) {
            ${tickdata_name}._g59 = item->valueint;
        }
        // Receive _g6
        item = cJSON_GetObjectItemCaseSensitive(root, "_g6");
        if(item != NULL) {
            ${tickdata_name}._g6 = item->valueint;
        }
        // Receive _g60
        item = cJSON_GetObjectItemCaseSensitive(root, "_g60");
        if(item != NULL) {
            ${tickdata_name}._g60 = item->valueint;
        }
        // Receive _g61
        item = cJSON_GetObjectItemCaseSensitive(root, "_g61");
        if(item != NULL) {
            ${tickdata_name}._g61 = item->valueint;
        }
        // Receive _g61_e3
        item = cJSON_GetObjectItemCaseSensitive(root, "_g61_e3");
        if(item != NULL) {
            ${tickdata_name}._g61_e3 = item->valueint;
        }
        // Receive _g62
        item = cJSON_GetObjectItemCaseSensitive(root, "_g62");
        if(item != NULL) {
            ${tickdata_name}._g62 = item->valueint;
        }
        // Receive _g63
        item = cJSON_GetObjectItemCaseSensitive(root, "_g63");
        if(item != NULL) {
            ${tickdata_name}._g63 = item->valueint;
        }
        // Receive _g64
        item = cJSON_GetObjectItemCaseSensitive(root, "_g64");
        if(item != NULL) {
            ${tickdata_name}._g64 = item->valueint;
        }
        // Receive _g65
        item = cJSON_GetObjectItemCaseSensitive(root, "_g65");
        if(item != NULL) {
            ${tickdata_name}._g65 = item->valueint;
        }
        // Receive _g66
        item = cJSON_GetObjectItemCaseSensitive(root, "_g66");
        if(item != NULL) {
            ${tickdata_name}._g66 = item->valueint;
        }
        // Receive _g7
        item = cJSON_GetObjectItemCaseSensitive(root, "_g7");
        if(item != NULL) {
            ${tickdata_name}._g7 = item->valueint;
        }
        // Receive _g70
        item = cJSON_GetObjectItemCaseSensitive(root, "_g70");
        if(item != NULL) {
            ${tickdata_name}._g70 = item->valueint;
        }
        // Receive _g71
        item = cJSON_GetObjectItemCaseSensitive(root, "_g71");
        if(item != NULL) {
            ${tickdata_name}._g71 = item->valueint;
        }
        // Receive _g72
        item = cJSON_GetObjectItemCaseSensitive(root, "_g72");
        if(item != NULL) {
            ${tickdata_name}._g72 = item->valueint;
        }
        // Receive _g74
        item = cJSON_GetObjectItemCaseSensitive(root, "_g74");
        if(item != NULL) {
            ${tickdata_name}._g74 = item->valueint;
        }
        // Receive _g76
        item = cJSON_GetObjectItemCaseSensitive(root, "_g76");
        if(item != NULL) {
            ${tickdata_name}._g76 = item->valueint;
        }
        // Receive _g77
        item = cJSON_GetObjectItemCaseSensitive(root, "_g77");
        if(item != NULL) {
            ${tickdata_name}._g77 = item->valueint;
        }
        // Receive _g78
        item = cJSON_GetObjectItemCaseSensitive(root, "_g78");
        if(item != NULL) {
            ${tickdata_name}._g78 = item->valueint;
        }
        // Receive _g79
        item = cJSON_GetObjectItemCaseSensitive(root, "_g79");
        if(item != NULL) {
            ${tickdata_name}._g79 = item->valueint;
        }
        // Receive _g79_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g79_e1");
        if(item != NULL) {
            ${tickdata_name}._g79_e1 = item->valueint;
        }
        // Receive _g80
        item = cJSON_GetObjectItemCaseSensitive(root, "_g80");
        if(item != NULL) {
            ${tickdata_name}._g80 = item->valueint;
        }
        // Receive _g82
        item = cJSON_GetObjectItemCaseSensitive(root, "_g82");
        if(item != NULL) {
            ${tickdata_name}._g82 = item->valueint;
        }
        // Receive _g83
        item = cJSON_GetObjectItemCaseSensitive(root, "_g83");
        if(item != NULL) {
            ${tickdata_name}._g83 = item->valueint;
        }
        // Receive _g85
        item = cJSON_GetObjectItemCaseSensitive(root, "_g85");
        if(item != NULL) {
            ${tickdata_name}._g85 = item->valueint;
        }
        // Receive _g87
        item = cJSON_GetObjectItemCaseSensitive(root, "_g87");
        if(item != NULL) {
            ${tickdata_name}._g87 = item->valueint;
        }
        // Receive _g88
        item = cJSON_GetObjectItemCaseSensitive(root, "_g88");
        if(item != NULL) {
            ${tickdata_name}._g88 = item->valueint;
        }
        // Receive _g89
        item = cJSON_GetObjectItemCaseSensitive(root, "_g89");
        if(item != NULL) {
            ${tickdata_name}._g89 = item->valueint;
        }
        // Receive _g9
        item = cJSON_GetObjectItemCaseSensitive(root, "_g9");
        if(item != NULL) {
            ${tickdata_name}._g9 = item->valueint;
        }
        // Receive _g90
        item = cJSON_GetObjectItemCaseSensitive(root, "_g90");
        if(item != NULL) {
            ${tickdata_name}._g90 = item->valueint;
        }
        // Receive _g90_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g90_e2");
        if(item != NULL) {
            ${tickdata_name}._g90_e2 = item->valueint;
        }
        // Receive _g91
        item = cJSON_GetObjectItemCaseSensitive(root, "_g91");
        if(item != NULL) {
            ${tickdata_name}._g91 = item->valueint;
        }
        // Receive _g93
        item = cJSON_GetObjectItemCaseSensitive(root, "_g93");
        if(item != NULL) {
            ${tickdata_name}._g93 = item->valueint;
        }
        // Receive _g94
        item = cJSON_GetObjectItemCaseSensitive(root, "_g94");
        if(item != NULL) {
            ${tickdata_name}._g94 = item->valueint;
        }
        // Receive _g97
        item = cJSON_GetObjectItemCaseSensitive(root, "_g97");
        if(item != NULL) {
            ${tickdata_name}._g97 = item->valueint;
        }
        // Receive _g98
        item = cJSON_GetObjectItemCaseSensitive(root, "_g98");
        if(item != NULL) {
            ${tickdata_name}._g98 = item->valueint;
        }
        // Receive _g99
        item = cJSON_GetObjectItemCaseSensitive(root, "_g99");
        if(item != NULL) {
            ${tickdata_name}._g99 = item->valueint;
        }
        // Receive _g99_e3
        item = cJSON_GetObjectItemCaseSensitive(root, "_g99_e3");
        if(item != NULL) {
            ${tickdata_name}._g99_e3 = item->valueint;
        }
        // Receive _pg103
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg103");
        if(item != NULL) {
            ${tickdata_name}._pg103 = item->valueint;
        }
        // Receive _pg108
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg108");
        if(item != NULL) {
            ${tickdata_name}._pg108 = item->valueint;
        }
        // Receive _pg109
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg109");
        if(item != NULL) {
            ${tickdata_name}._pg109 = item->valueint;
        }
        // Receive _pg112
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg112");
        if(item != NULL) {
            ${tickdata_name}._pg112 = item->valueint;
        }
        // Receive _pg117
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg117");
        if(item != NULL) {
            ${tickdata_name}._pg117 = item->valueint;
        }
        // Receive _pg118
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg118");
        if(item != NULL) {
            ${tickdata_name}._pg118 = item->valueint;
        }
        // Receive _pg121
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg121");
        if(item != NULL) {
            ${tickdata_name}._pg121 = item->valueint;
        }
        // Receive _pg13
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg13");
        if(item != NULL) {
            ${tickdata_name}._pg13 = item->valueint;
        }
        // Receive _pg14
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg14");
        if(item != NULL) {
            ${tickdata_name}._pg14 = item->valueint;
        }
        // Receive _pg15
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg15");
        if(item != NULL) {
            ${tickdata_name}._pg15 = item->valueint;
        }
        // Receive _pg150
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg150");
        if(item != NULL) {
            ${tickdata_name}._pg150 = item->valueint;
        }
        // Receive _pg159
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg159");
        if(item != NULL) {
            ${tickdata_name}._pg159 = item->valueint;
        }
        // Receive _pg165
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg165");
        if(item != NULL) {
            ${tickdata_name}._pg165 = item->valueint;
        }
        // Receive _pg167
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg167");
        if(item != NULL) {
            ${tickdata_name}._pg167 = item->valueint;
        }
        // Receive _pg182
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg182");
        if(item != NULL) {
            ${tickdata_name}._pg182 = item->valueint;
        }
        // Receive _pg183
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg183");
        if(item != NULL) {
            ${tickdata_name}._pg183 = item->valueint;
        }
        // Receive _pg188
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg188");
        if(item != NULL) {
            ${tickdata_name}._pg188 = item->valueint;
        }
        // Receive _pg189
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg189");
        if(item != NULL) {
            ${tickdata_name}._pg189 = item->valueint;
        }
        // Receive _pg191
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg191");
        if(item != NULL) {
            ${tickdata_name}._pg191 = item->valueint;
        }
        // Receive _pg195
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg195");
        if(item != NULL) {
            ${tickdata_name}._pg195 = item->valueint;
        }
        // Receive _pg196
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg196");
        if(item != NULL) {
            ${tickdata_name}._pg196 = item->valueint;
        }
        // Receive _pg197
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg197");
        if(item != NULL) {
            ${tickdata_name}._pg197 = item->valueint;
        }
        // Receive _pg200
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg200");
        if(item != NULL) {
            ${tickdata_name}._pg200 = item->valueint;
        }
        // Receive _pg206
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg206");
        if(item != NULL) {
            ${tickdata_name}._pg206 = item->valueint;
        }
        // Receive _pg208
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg208");
        if(item != NULL) {
            ${tickdata_name}._pg208 = item->valueint;
        }
        // Receive _pg210
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg210");
        if(item != NULL) {
            ${tickdata_name}._pg210 = item->valueint;
        }
        // Receive _pg26
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg26");
        if(item != NULL) {
            ${tickdata_name}._pg26 = item->valueint;
        }
        // Receive _pg33
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg33");
        if(item != NULL) {
            ${tickdata_name}._pg33 = item->valueint;
        }
        // Receive _pg40
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg40");
        if(item != NULL) {
            ${tickdata_name}._pg40 = item->valueint;
        }
        // Receive _pg45
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg45");
        if(item != NULL) {
            ${tickdata_name}._pg45 = item->valueint;
        }
        // Receive _pg47
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg47");
        if(item != NULL) {
            ${tickdata_name}._pg47 = item->valueint;
        }
        // Receive _pg51
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg51");
        if(item != NULL) {
            ${tickdata_name}._pg51 = item->valueint;
        }
        // Receive _pg6
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg6");
        if(item != NULL) {
            ${tickdata_name}._pg6 = item->valueint;
        }
        // Receive _pg7
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg7");
        if(item != NULL) {
            ${tickdata_name}._pg7 = item->valueint;
        }
        // Receive _pg70
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg70");
        if(item != NULL) {
            ${tickdata_name}._pg70 = item->valueint;
        }
        // Receive _pg78
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg78");
        if(item != NULL) {
            ${tickdata_name}._pg78 = item->valueint;
        }
        // Receive _pg79_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg79_e1");
        if(item != NULL) {
            ${tickdata_name}._pg79_e1 = item->valueint;
        }
        // Receive _pg80
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg80");
        if(item != NULL) {
            ${tickdata_name}._pg80 = item->valueint;
        }
        // Receive _pg83
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg83");
        if(item != NULL) {
            ${tickdata_name}._pg83 = item->valueint;
        }
        // Receive _taken_transitions
        item = cJSON_GetObjectItemCaseSensitive(root, "_taken_transitions");
        if(item != NULL) {
            for (int i0 = 0; i0 < cJSON_GetArraySize(item); i0++) {
                cJSON *item0 = cJSON_GetArrayItem(item, i0);
                ${tickdata_name}._taken_transitions[i0] = item0->valueint;
            }
        }
    }
  
    cJSON_Delete(root);
    free(buffer);
}

void sendVariables(int send_interface) {
    cJSON* root = cJSON_CreateObject();
    cJSON *array;
    
    // Send AS
    cJSON_AddItemToObject(root, "AS", cJSON_CreateBool(${tickdata_name}.AS));
    // Send VS
    cJSON_AddItemToObject(root, "VS", cJSON_CreateBool(${tickdata_name}.VS));
    // Send deltaT
    cJSON_AddItemToObject(root, "deltaT", cJSON_CreateNumber(${tickdata_name}.deltaT));
    // Send AP
    cJSON_AddItemToObject(root, "AP", cJSON_CreateBool(${tickdata_name}.AP));
    // Send VP
    cJSON_AddItemToObject(root, "VP", cJSON_CreateBool(${tickdata_name}.VP));
    // Send sleepT
    cJSON_AddItemToObject(root, "sleepT", cJSON_CreateNumber(${tickdata_name}.sleepT));
    // Send #ticktime
    cJSON_AddItemToObject(root, "#ticktime", cJSON_CreateNumber(_ticktime));
    // Send _GO
    cJSON_AddItemToObject(root, "_GO", cJSON_CreateBool(${tickdata_name}._GO));
    // Send _Pacemaker_local_PVARP_timeout
    cJSON_AddItemToObject(root, "_Pacemaker_local_PVARP_timeout", cJSON_CreateBool(${tickdata_name}._Pacemaker_local_PVARP_timeout));
    // Send _Pacemaker_local_URI_timeout
    cJSON_AddItemToObject(root, "_Pacemaker_local_URI_timeout", cJSON_CreateBool(${tickdata_name}._Pacemaker_local_URI_timeout));
    // Send _Pacemaker_local_VRP_timeout
    cJSON_AddItemToObject(root, "_Pacemaker_local_VRP_timeout", cJSON_CreateBool(${tickdata_name}._Pacemaker_local_VRP_timeout));
    // Send _Pacemaker_local__Atrig
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig));
    // Send _Pacemaker_local__Atrig1
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig1", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig1));
    // Send _Pacemaker_local__Atrig10
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig10", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig10));
    // Send _Pacemaker_local__Atrig11
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig11", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig11));
    // Send _Pacemaker_local__Atrig12
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig12", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig12));
    // Send _Pacemaker_local__Atrig2
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig2", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig2));
    // Send _Pacemaker_local__Atrig3
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig3", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig3));
    // Send _Pacemaker_local__Atrig4
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig4", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig4));
    // Send _Pacemaker_local__Atrig5
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig5", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig5));
    // Send _Pacemaker_local__Atrig6
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig6", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig6));
    // Send _Pacemaker_local__Atrig7
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig7", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig7));
    // Send _Pacemaker_local__Atrig8
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig8", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig8));
    // Send _Pacemaker_local__Atrig9
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig9", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig9));
    // Send _Pacemaker_local__region0_LRI_x
    cJSON_AddItemToObject(root, "_Pacemaker_local__region0_LRI_x", cJSON_CreateNumber(${tickdata_name}._Pacemaker_local__region0_LRI_x));
    // Send _Pacemaker_local__region1_URI_x
    cJSON_AddItemToObject(root, "_Pacemaker_local__region1_URI_x", cJSON_CreateNumber(${tickdata_name}._Pacemaker_local__region1_URI_x));
    // Send _Pacemaker_local__region2_PVARP_x
    cJSON_AddItemToObject(root, "_Pacemaker_local__region2_PVARP_x", cJSON_CreateNumber(${tickdata_name}._Pacemaker_local__region2_PVARP_x));
    // Send _Pacemaker_local__region3_VRP_x
    cJSON_AddItemToObject(root, "_Pacemaker_local__region3_VRP_x", cJSON_CreateNumber(${tickdata_name}._Pacemaker_local__region3_VRP_x));
    // Send _Pacemaker_local__region4_AVI_x
    cJSON_AddItemToObject(root, "_Pacemaker_local__region4_AVI_x", cJSON_CreateNumber(${tickdata_name}._Pacemaker_local__region4_AVI_x));
    // Send _Pacemaker_local__region5_AEI_x
    cJSON_AddItemToObject(root, "_Pacemaker_local__region5_AEI_x", cJSON_CreateNumber(${tickdata_name}._Pacemaker_local__region5_AEI_x));
    // Send _Pacemaker_local_iAP
    cJSON_AddItemToObject(root, "_Pacemaker_local_iAP", cJSON_CreateBool(${tickdata_name}._Pacemaker_local_iAP));
    // Send _Pacemaker_local_iVP
    cJSON_AddItemToObject(root, "_Pacemaker_local_iVP", cJSON_CreateBool(${tickdata_name}._Pacemaker_local_iVP));
    // Send _TERM
    cJSON_AddItemToObject(root, "_TERM", cJSON_CreateBool(${tickdata_name}._TERM));
    // Send _cg100
    cJSON_AddItemToObject(root, "_cg100", cJSON_CreateBool(${tickdata_name}._cg100));
    // Send _cg102
    cJSON_AddItemToObject(root, "_cg102", cJSON_CreateBool(${tickdata_name}._cg102));
    // Send _cg108
    cJSON_AddItemToObject(root, "_cg108", cJSON_CreateBool(${tickdata_name}._cg108));
    // Send _cg111
    cJSON_AddItemToObject(root, "_cg111", cJSON_CreateBool(${tickdata_name}._cg111));
    // Send _cg112
    cJSON_AddItemToObject(root, "_cg112", cJSON_CreateBool(${tickdata_name}._cg112));
    // Send _cg115
    cJSON_AddItemToObject(root, "_cg115", cJSON_CreateBool(${tickdata_name}._cg115));
    // Send _cg116
    cJSON_AddItemToObject(root, "_cg116", cJSON_CreateBool(${tickdata_name}._cg116));
    // Send _cg118
    cJSON_AddItemToObject(root, "_cg118", cJSON_CreateBool(${tickdata_name}._cg118));
    // Send _cg12
    cJSON_AddItemToObject(root, "_cg12", cJSON_CreateBool(${tickdata_name}._cg12));
    // Send _cg121
    cJSON_AddItemToObject(root, "_cg121", cJSON_CreateBool(${tickdata_name}._cg121));
    // Send _cg122
    cJSON_AddItemToObject(root, "_cg122", cJSON_CreateBool(${tickdata_name}._cg122));
    // Send _cg123
    cJSON_AddItemToObject(root, "_cg123", cJSON_CreateBool(${tickdata_name}._cg123));
    // Send _cg126
    cJSON_AddItemToObject(root, "_cg126", cJSON_CreateBool(${tickdata_name}._cg126));
    // Send _cg127
    cJSON_AddItemToObject(root, "_cg127", cJSON_CreateBool(${tickdata_name}._cg127));
    // Send _cg129
    cJSON_AddItemToObject(root, "_cg129", cJSON_CreateBool(${tickdata_name}._cg129));
    // Send _cg13
    cJSON_AddItemToObject(root, "_cg13", cJSON_CreateBool(${tickdata_name}._cg13));
    // Send _cg132
    cJSON_AddItemToObject(root, "_cg132", cJSON_CreateBool(${tickdata_name}._cg132));
    // Send _cg135
    cJSON_AddItemToObject(root, "_cg135", cJSON_CreateBool(${tickdata_name}._cg135));
    // Send _cg138
    cJSON_AddItemToObject(root, "_cg138", cJSON_CreateBool(${tickdata_name}._cg138));
    // Send _cg140
    cJSON_AddItemToObject(root, "_cg140", cJSON_CreateBool(${tickdata_name}._cg140));
    // Send _cg146
    cJSON_AddItemToObject(root, "_cg146", cJSON_CreateBool(${tickdata_name}._cg146));
    // Send _cg149
    cJSON_AddItemToObject(root, "_cg149", cJSON_CreateBool(${tickdata_name}._cg149));
    // Send _cg15
    cJSON_AddItemToObject(root, "_cg15", cJSON_CreateBool(${tickdata_name}._cg15));
    // Send _cg150
    cJSON_AddItemToObject(root, "_cg150", cJSON_CreateBool(${tickdata_name}._cg150));
    // Send _cg153
    cJSON_AddItemToObject(root, "_cg153", cJSON_CreateBool(${tickdata_name}._cg153));
    // Send _cg154
    cJSON_AddItemToObject(root, "_cg154", cJSON_CreateBool(${tickdata_name}._cg154));
    // Send _cg156
    cJSON_AddItemToObject(root, "_cg156", cJSON_CreateBool(${tickdata_name}._cg156));
    // Send _cg159
    cJSON_AddItemToObject(root, "_cg159", cJSON_CreateBool(${tickdata_name}._cg159));
    // Send _cg160
    cJSON_AddItemToObject(root, "_cg160", cJSON_CreateBool(${tickdata_name}._cg160));
    // Send _cg161
    cJSON_AddItemToObject(root, "_cg161", cJSON_CreateBool(${tickdata_name}._cg161));
    // Send _cg164
    cJSON_AddItemToObject(root, "_cg164", cJSON_CreateBool(${tickdata_name}._cg164));
    // Send _cg165
    cJSON_AddItemToObject(root, "_cg165", cJSON_CreateBool(${tickdata_name}._cg165));
    // Send _cg167
    cJSON_AddItemToObject(root, "_cg167", cJSON_CreateBool(${tickdata_name}._cg167));
    // Send _cg170
    cJSON_AddItemToObject(root, "_cg170", cJSON_CreateBool(${tickdata_name}._cg170));
    // Send _cg173
    cJSON_AddItemToObject(root, "_cg173", cJSON_CreateBool(${tickdata_name}._cg173));
    // Send _cg176
    cJSON_AddItemToObject(root, "_cg176", cJSON_CreateBool(${tickdata_name}._cg176));
    // Send _cg178
    cJSON_AddItemToObject(root, "_cg178", cJSON_CreateBool(${tickdata_name}._cg178));
    // Send _cg18
    cJSON_AddItemToObject(root, "_cg18", cJSON_CreateBool(${tickdata_name}._cg18));
    // Send _cg180
    cJSON_AddItemToObject(root, "_cg180", cJSON_CreateBool(${tickdata_name}._cg180));
    // Send _cg182
    cJSON_AddItemToObject(root, "_cg182", cJSON_CreateBool(${tickdata_name}._cg182));
    // Send _cg188
    cJSON_AddItemToObject(root, "_cg188", cJSON_CreateBool(${tickdata_name}._cg188));
    // Send _cg190
    cJSON_AddItemToObject(root, "_cg190", cJSON_CreateBool(${tickdata_name}._cg190));
    // Send _cg191
    cJSON_AddItemToObject(root, "_cg191", cJSON_CreateBool(${tickdata_name}._cg191));
    // Send _cg194
    cJSON_AddItemToObject(root, "_cg194", cJSON_CreateBool(${tickdata_name}._cg194));
    // Send _cg195
    cJSON_AddItemToObject(root, "_cg195", cJSON_CreateBool(${tickdata_name}._cg195));
    // Send _cg197
    cJSON_AddItemToObject(root, "_cg197", cJSON_CreateBool(${tickdata_name}._cg197));
    // Send _cg200
    cJSON_AddItemToObject(root, "_cg200", cJSON_CreateBool(${tickdata_name}._cg200));
    // Send _cg203
    cJSON_AddItemToObject(root, "_cg203", cJSON_CreateBool(${tickdata_name}._cg203));
    // Send _cg206
    cJSON_AddItemToObject(root, "_cg206", cJSON_CreateBool(${tickdata_name}._cg206));
    // Send _cg208
    cJSON_AddItemToObject(root, "_cg208", cJSON_CreateBool(${tickdata_name}._cg208));
    // Send _cg21
    cJSON_AddItemToObject(root, "_cg21", cJSON_CreateBool(${tickdata_name}._cg21));
    // Send _cg24
    cJSON_AddItemToObject(root, "_cg24", cJSON_CreateBool(${tickdata_name}._cg24));
    // Send _cg26
    cJSON_AddItemToObject(root, "_cg26", cJSON_CreateBool(${tickdata_name}._cg26));
    // Send _cg32
    cJSON_AddItemToObject(root, "_cg32", cJSON_CreateBool(${tickdata_name}._cg32));
    // Send _cg35
    cJSON_AddItemToObject(root, "_cg35", cJSON_CreateBool(${tickdata_name}._cg35));
    // Send _cg36
    cJSON_AddItemToObject(root, "_cg36", cJSON_CreateBool(${tickdata_name}._cg36));
    // Send _cg39
    cJSON_AddItemToObject(root, "_cg39", cJSON_CreateBool(${tickdata_name}._cg39));
    // Send _cg40
    cJSON_AddItemToObject(root, "_cg40", cJSON_CreateBool(${tickdata_name}._cg40));
    // Send _cg42
    cJSON_AddItemToObject(root, "_cg42", cJSON_CreateBool(${tickdata_name}._cg42));
    // Send _cg45
    cJSON_AddItemToObject(root, "_cg45", cJSON_CreateBool(${tickdata_name}._cg45));
    // Send _cg46
    cJSON_AddItemToObject(root, "_cg46", cJSON_CreateBool(${tickdata_name}._cg46));
    // Send _cg47
    cJSON_AddItemToObject(root, "_cg47", cJSON_CreateBool(${tickdata_name}._cg47));
    // Send _cg50
    cJSON_AddItemToObject(root, "_cg50", cJSON_CreateBool(${tickdata_name}._cg50));
    // Send _cg51
    cJSON_AddItemToObject(root, "_cg51", cJSON_CreateBool(${tickdata_name}._cg51));
    // Send _cg53
    cJSON_AddItemToObject(root, "_cg53", cJSON_CreateBool(${tickdata_name}._cg53));
    // Send _cg56
    cJSON_AddItemToObject(root, "_cg56", cJSON_CreateBool(${tickdata_name}._cg56));
    // Send _cg59
    cJSON_AddItemToObject(root, "_cg59", cJSON_CreateBool(${tickdata_name}._cg59));
    // Send _cg6
    cJSON_AddItemToObject(root, "_cg6", cJSON_CreateBool(${tickdata_name}._cg6));
    // Send _cg62
    cJSON_AddItemToObject(root, "_cg62", cJSON_CreateBool(${tickdata_name}._cg62));
    // Send _cg64
    cJSON_AddItemToObject(root, "_cg64", cJSON_CreateBool(${tickdata_name}._cg64));
    // Send _cg70
    cJSON_AddItemToObject(root, "_cg70", cJSON_CreateBool(${tickdata_name}._cg70));
    // Send _cg73
    cJSON_AddItemToObject(root, "_cg73", cJSON_CreateBool(${tickdata_name}._cg73));
    // Send _cg74
    cJSON_AddItemToObject(root, "_cg74", cJSON_CreateBool(${tickdata_name}._cg74));
    // Send _cg77
    cJSON_AddItemToObject(root, "_cg77", cJSON_CreateBool(${tickdata_name}._cg77));
    // Send _cg78
    cJSON_AddItemToObject(root, "_cg78", cJSON_CreateBool(${tickdata_name}._cg78));
    // Send _cg8
    cJSON_AddItemToObject(root, "_cg8", cJSON_CreateBool(${tickdata_name}._cg8));
    // Send _cg80
    cJSON_AddItemToObject(root, "_cg80", cJSON_CreateBool(${tickdata_name}._cg80));
    // Send _cg83
    cJSON_AddItemToObject(root, "_cg83", cJSON_CreateBool(${tickdata_name}._cg83));
    // Send _cg84
    cJSON_AddItemToObject(root, "_cg84", cJSON_CreateBool(${tickdata_name}._cg84));
    // Send _cg85
    cJSON_AddItemToObject(root, "_cg85", cJSON_CreateBool(${tickdata_name}._cg85));
    // Send _cg88
    cJSON_AddItemToObject(root, "_cg88", cJSON_CreateBool(${tickdata_name}._cg88));
    // Send _cg89
    cJSON_AddItemToObject(root, "_cg89", cJSON_CreateBool(${tickdata_name}._cg89));
    // Send _cg9
    cJSON_AddItemToObject(root, "_cg9", cJSON_CreateBool(${tickdata_name}._cg9));
    // Send _cg91
    cJSON_AddItemToObject(root, "_cg91", cJSON_CreateBool(${tickdata_name}._cg91));
    // Send _cg94
    cJSON_AddItemToObject(root, "_cg94", cJSON_CreateBool(${tickdata_name}._cg94));
    // Send _cg97
    cJSON_AddItemToObject(root, "_cg97", cJSON_CreateBool(${tickdata_name}._cg97));
    // Send _g100
    cJSON_AddItemToObject(root, "_g100", cJSON_CreateBool(${tickdata_name}._g100));
    // Send _g101
    cJSON_AddItemToObject(root, "_g101", cJSON_CreateBool(${tickdata_name}._g101));
    // Send _g102
    cJSON_AddItemToObject(root, "_g102", cJSON_CreateBool(${tickdata_name}._g102));
    // Send _g103
    cJSON_AddItemToObject(root, "_g103", cJSON_CreateBool(${tickdata_name}._g103));
    // Send _g104
    cJSON_AddItemToObject(root, "_g104", cJSON_CreateBool(${tickdata_name}._g104));
    // Send _g108
    cJSON_AddItemToObject(root, "_g108", cJSON_CreateBool(${tickdata_name}._g108));
    // Send _g109
    cJSON_AddItemToObject(root, "_g109", cJSON_CreateBool(${tickdata_name}._g109));
    // Send _g11
    cJSON_AddItemToObject(root, "_g11", cJSON_CreateBool(${tickdata_name}._g11));
    // Send _g110
    cJSON_AddItemToObject(root, "_g110", cJSON_CreateBool(${tickdata_name}._g110));
    // Send _g112
    cJSON_AddItemToObject(root, "_g112", cJSON_CreateBool(${tickdata_name}._g112));
    // Send _g114
    cJSON_AddItemToObject(root, "_g114", cJSON_CreateBool(${tickdata_name}._g114));
    // Send _g115
    cJSON_AddItemToObject(root, "_g115", cJSON_CreateBool(${tickdata_name}._g115));
    // Send _g116
    cJSON_AddItemToObject(root, "_g116", cJSON_CreateBool(${tickdata_name}._g116));
    // Send _g117
    cJSON_AddItemToObject(root, "_g117", cJSON_CreateBool(${tickdata_name}._g117));
    // Send _g117_e1
    cJSON_AddItemToObject(root, "_g117_e1", cJSON_CreateBool(${tickdata_name}._g117_e1));
    // Send _g118
    cJSON_AddItemToObject(root, "_g118", cJSON_CreateBool(${tickdata_name}._g118));
    // Send _g12
    cJSON_AddItemToObject(root, "_g12", cJSON_CreateBool(${tickdata_name}._g12));
    // Send _g120
    cJSON_AddItemToObject(root, "_g120", cJSON_CreateBool(${tickdata_name}._g120));
    // Send _g121
    cJSON_AddItemToObject(root, "_g121", cJSON_CreateBool(${tickdata_name}._g121));
    // Send _g123
    cJSON_AddItemToObject(root, "_g123", cJSON_CreateBool(${tickdata_name}._g123));
    // Send _g125
    cJSON_AddItemToObject(root, "_g125", cJSON_CreateBool(${tickdata_name}._g125));
    // Send _g126
    cJSON_AddItemToObject(root, "_g126", cJSON_CreateBool(${tickdata_name}._g126));
    // Send _g127
    cJSON_AddItemToObject(root, "_g127", cJSON_CreateBool(${tickdata_name}._g127));
    // Send _g128
    cJSON_AddItemToObject(root, "_g128", cJSON_CreateBool(${tickdata_name}._g128));
    // Send _g128_e2
    cJSON_AddItemToObject(root, "_g128_e2", cJSON_CreateBool(${tickdata_name}._g128_e2));
    // Send _g129
    cJSON_AddItemToObject(root, "_g129", cJSON_CreateBool(${tickdata_name}._g129));
    // Send _g13
    cJSON_AddItemToObject(root, "_g13", cJSON_CreateBool(${tickdata_name}._g13));
    // Send _g131
    cJSON_AddItemToObject(root, "_g131", cJSON_CreateBool(${tickdata_name}._g131));
    // Send _g132
    cJSON_AddItemToObject(root, "_g132", cJSON_CreateBool(${tickdata_name}._g132));
    // Send _g135
    cJSON_AddItemToObject(root, "_g135", cJSON_CreateBool(${tickdata_name}._g135));
    // Send _g136
    cJSON_AddItemToObject(root, "_g136", cJSON_CreateBool(${tickdata_name}._g136));
    // Send _g137
    cJSON_AddItemToObject(root, "_g137", cJSON_CreateBool(${tickdata_name}._g137));
    // Send _g137_e3
    cJSON_AddItemToObject(root, "_g137_e3", cJSON_CreateBool(${tickdata_name}._g137_e3));
    // Send _g138
    cJSON_AddItemToObject(root, "_g138", cJSON_CreateBool(${tickdata_name}._g138));
    // Send _g139
    cJSON_AddItemToObject(root, "_g139", cJSON_CreateBool(${tickdata_name}._g139));
    // Send _g14
    cJSON_AddItemToObject(root, "_g14", cJSON_CreateBool(${tickdata_name}._g14));
    // Send _g140
    cJSON_AddItemToObject(root, "_g140", cJSON_CreateBool(${tickdata_name}._g140));
    // Send _g141
    cJSON_AddItemToObject(root, "_g141", cJSON_CreateBool(${tickdata_name}._g141));
    // Send _g142
    cJSON_AddItemToObject(root, "_g142", cJSON_CreateBool(${tickdata_name}._g142));
    // Send _g146
    cJSON_AddItemToObject(root, "_g146", cJSON_CreateBool(${tickdata_name}._g146));
    // Send _g147
    cJSON_AddItemToObject(root, "_g147", cJSON_CreateBool(${tickdata_name}._g147));
    // Send _g148
    cJSON_AddItemToObject(root, "_g148", cJSON_CreateBool(${tickdata_name}._g148));
    // Send _g14_e1
    cJSON_AddItemToObject(root, "_g14_e1", cJSON_CreateBool(${tickdata_name}._g14_e1));
    // Send _g15
    cJSON_AddItemToObject(root, "_g15", cJSON_CreateBool(${tickdata_name}._g15));
    // Send _g150
    cJSON_AddItemToObject(root, "_g150", cJSON_CreateBool(${tickdata_name}._g150));
    // Send _g152
    cJSON_AddItemToObject(root, "_g152", cJSON_CreateBool(${tickdata_name}._g152));
    // Send _g153
    cJSON_AddItemToObject(root, "_g153", cJSON_CreateBool(${tickdata_name}._g153));
    // Send _g154
    cJSON_AddItemToObject(root, "_g154", cJSON_CreateBool(${tickdata_name}._g154));
    // Send _g155
    cJSON_AddItemToObject(root, "_g155", cJSON_CreateBool(${tickdata_name}._g155));
    // Send _g155_e1
    cJSON_AddItemToObject(root, "_g155_e1", cJSON_CreateBool(${tickdata_name}._g155_e1));
    // Send _g156
    cJSON_AddItemToObject(root, "_g156", cJSON_CreateBool(${tickdata_name}._g156));
    // Send _g158
    cJSON_AddItemToObject(root, "_g158", cJSON_CreateBool(${tickdata_name}._g158));
    // Send _g159
    cJSON_AddItemToObject(root, "_g159", cJSON_CreateBool(${tickdata_name}._g159));
    // Send _g161
    cJSON_AddItemToObject(root, "_g161", cJSON_CreateBool(${tickdata_name}._g161));
    // Send _g163
    cJSON_AddItemToObject(root, "_g163", cJSON_CreateBool(${tickdata_name}._g163));
    // Send _g164
    cJSON_AddItemToObject(root, "_g164", cJSON_CreateBool(${tickdata_name}._g164));
    // Send _g165
    cJSON_AddItemToObject(root, "_g165", cJSON_CreateBool(${tickdata_name}._g165));
    // Send _g166
    cJSON_AddItemToObject(root, "_g166", cJSON_CreateBool(${tickdata_name}._g166));
    // Send _g166_e2
    cJSON_AddItemToObject(root, "_g166_e2", cJSON_CreateBool(${tickdata_name}._g166_e2));
    // Send _g167
    cJSON_AddItemToObject(root, "_g167", cJSON_CreateBool(${tickdata_name}._g167));
    // Send _g169
    cJSON_AddItemToObject(root, "_g169", cJSON_CreateBool(${tickdata_name}._g169));
    // Send _g17
    cJSON_AddItemToObject(root, "_g17", cJSON_CreateBool(${tickdata_name}._g17));
    // Send _g170
    cJSON_AddItemToObject(root, "_g170", cJSON_CreateBool(${tickdata_name}._g170));
    // Send _g173
    cJSON_AddItemToObject(root, "_g173", cJSON_CreateBool(${tickdata_name}._g173));
    // Send _g174
    cJSON_AddItemToObject(root, "_g174", cJSON_CreateBool(${tickdata_name}._g174));
    // Send _g175
    cJSON_AddItemToObject(root, "_g175", cJSON_CreateBool(${tickdata_name}._g175));
    // Send _g175_e3
    cJSON_AddItemToObject(root, "_g175_e3", cJSON_CreateBool(${tickdata_name}._g175_e3));
    // Send _g176
    cJSON_AddItemToObject(root, "_g176", cJSON_CreateBool(${tickdata_name}._g176));
    // Send _g177
    cJSON_AddItemToObject(root, "_g177", cJSON_CreateBool(${tickdata_name}._g177));
    // Send _g178
    cJSON_AddItemToObject(root, "_g178", cJSON_CreateBool(${tickdata_name}._g178));
    // Send _g179
    cJSON_AddItemToObject(root, "_g179", cJSON_CreateBool(${tickdata_name}._g179));
    // Send _g18
    cJSON_AddItemToObject(root, "_g18", cJSON_CreateBool(${tickdata_name}._g18));
    // Send _g180
    cJSON_AddItemToObject(root, "_g180", cJSON_CreateBool(${tickdata_name}._g180));
    // Send _g181
    cJSON_AddItemToObject(root, "_g181", cJSON_CreateBool(${tickdata_name}._g181));
    // Send _g182
    cJSON_AddItemToObject(root, "_g182", cJSON_CreateBool(${tickdata_name}._g182));
    // Send _g183
    cJSON_AddItemToObject(root, "_g183", cJSON_CreateBool(${tickdata_name}._g183));
    // Send _g184
    cJSON_AddItemToObject(root, "_g184", cJSON_CreateBool(${tickdata_name}._g184));
    // Send _g188
    cJSON_AddItemToObject(root, "_g188", cJSON_CreateBool(${tickdata_name}._g188));
    // Send _g189
    cJSON_AddItemToObject(root, "_g189", cJSON_CreateBool(${tickdata_name}._g189));
    // Send _g191
    cJSON_AddItemToObject(root, "_g191", cJSON_CreateBool(${tickdata_name}._g191));
    // Send _g193
    cJSON_AddItemToObject(root, "_g193", cJSON_CreateBool(${tickdata_name}._g193));
    // Send _g194
    cJSON_AddItemToObject(root, "_g194", cJSON_CreateBool(${tickdata_name}._g194));
    // Send _g195
    cJSON_AddItemToObject(root, "_g195", cJSON_CreateBool(${tickdata_name}._g195));
    // Send _g196
    cJSON_AddItemToObject(root, "_g196", cJSON_CreateBool(${tickdata_name}._g196));
    // Send _g196_e1
    cJSON_AddItemToObject(root, "_g196_e1", cJSON_CreateBool(${tickdata_name}._g196_e1));
    // Send _g197
    cJSON_AddItemToObject(root, "_g197", cJSON_CreateBool(${tickdata_name}._g197));
    // Send _g199
    cJSON_AddItemToObject(root, "_g199", cJSON_CreateBool(${tickdata_name}._g199));
    // Send _g200
    cJSON_AddItemToObject(root, "_g200", cJSON_CreateBool(${tickdata_name}._g200));
    // Send _g203
    cJSON_AddItemToObject(root, "_g203", cJSON_CreateBool(${tickdata_name}._g203));
    // Send _g204
    cJSON_AddItemToObject(root, "_g204", cJSON_CreateBool(${tickdata_name}._g204));
    // Send _g205
    cJSON_AddItemToObject(root, "_g205", cJSON_CreateBool(${tickdata_name}._g205));
    // Send _g205_e2
    cJSON_AddItemToObject(root, "_g205_e2", cJSON_CreateBool(${tickdata_name}._g205_e2));
    // Send _g206
    cJSON_AddItemToObject(root, "_g206", cJSON_CreateBool(${tickdata_name}._g206));
    // Send _g207
    cJSON_AddItemToObject(root, "_g207", cJSON_CreateBool(${tickdata_name}._g207));
    // Send _g208
    cJSON_AddItemToObject(root, "_g208", cJSON_CreateBool(${tickdata_name}._g208));
    // Send _g209
    cJSON_AddItemToObject(root, "_g209", cJSON_CreateBool(${tickdata_name}._g209));
    // Send _g21
    cJSON_AddItemToObject(root, "_g21", cJSON_CreateBool(${tickdata_name}._g21));
    // Send _g210
    cJSON_AddItemToObject(root, "_g210", cJSON_CreateBool(${tickdata_name}._g210));
    // Send _g214
    cJSON_AddItemToObject(root, "_g214", cJSON_CreateBool(${tickdata_name}._g214));
    // Send _g218
    cJSON_AddItemToObject(root, "_g218", cJSON_CreateBool(${tickdata_name}._g218));
    // Send _g22
    cJSON_AddItemToObject(root, "_g22", cJSON_CreateBool(${tickdata_name}._g22));
    // Send _g23
    cJSON_AddItemToObject(root, "_g23", cJSON_CreateBool(${tickdata_name}._g23));
    // Send _g23_e2
    cJSON_AddItemToObject(root, "_g23_e2", cJSON_CreateBool(${tickdata_name}._g23_e2));
    // Send _g24
    cJSON_AddItemToObject(root, "_g24", cJSON_CreateBool(${tickdata_name}._g24));
    // Send _g25
    cJSON_AddItemToObject(root, "_g25", cJSON_CreateBool(${tickdata_name}._g25));
    // Send _g255
    cJSON_AddItemToObject(root, "_g255", cJSON_CreateBool(${tickdata_name}._g255));
    // Send _g26
    cJSON_AddItemToObject(root, "_g26", cJSON_CreateBool(${tickdata_name}._g26));
    // Send _g27
    cJSON_AddItemToObject(root, "_g27", cJSON_CreateBool(${tickdata_name}._g27));
    // Send _g28
    cJSON_AddItemToObject(root, "_g28", cJSON_CreateBool(${tickdata_name}._g28));
    // Send _g32
    cJSON_AddItemToObject(root, "_g32", cJSON_CreateBool(${tickdata_name}._g32));
    // Send _g33
    cJSON_AddItemToObject(root, "_g33", cJSON_CreateBool(${tickdata_name}._g33));
    // Send _g34
    cJSON_AddItemToObject(root, "_g34", cJSON_CreateBool(${tickdata_name}._g34));
    // Send _g36
    cJSON_AddItemToObject(root, "_g36", cJSON_CreateBool(${tickdata_name}._g36));
    // Send _g38
    cJSON_AddItemToObject(root, "_g38", cJSON_CreateBool(${tickdata_name}._g38));
    // Send _g39
    cJSON_AddItemToObject(root, "_g39", cJSON_CreateBool(${tickdata_name}._g39));
    // Send _g40
    cJSON_AddItemToObject(root, "_g40", cJSON_CreateBool(${tickdata_name}._g40));
    // Send _g41
    cJSON_AddItemToObject(root, "_g41", cJSON_CreateBool(${tickdata_name}._g41));
    // Send _g41_e1
    cJSON_AddItemToObject(root, "_g41_e1", cJSON_CreateBool(${tickdata_name}._g41_e1));
    // Send _g42
    cJSON_AddItemToObject(root, "_g42", cJSON_CreateBool(${tickdata_name}._g42));
    // Send _g44
    cJSON_AddItemToObject(root, "_g44", cJSON_CreateBool(${tickdata_name}._g44));
    // Send _g45
    cJSON_AddItemToObject(root, "_g45", cJSON_CreateBool(${tickdata_name}._g45));
    // Send _g47
    cJSON_AddItemToObject(root, "_g47", cJSON_CreateBool(${tickdata_name}._g47));
    // Send _g49
    cJSON_AddItemToObject(root, "_g49", cJSON_CreateBool(${tickdata_name}._g49));
    // Send _g50
    cJSON_AddItemToObject(root, "_g50", cJSON_CreateBool(${tickdata_name}._g50));
    // Send _g51
    cJSON_AddItemToObject(root, "_g51", cJSON_CreateBool(${tickdata_name}._g51));
    // Send _g52
    cJSON_AddItemToObject(root, "_g52", cJSON_CreateBool(${tickdata_name}._g52));
    // Send _g52_e2
    cJSON_AddItemToObject(root, "_g52_e2", cJSON_CreateBool(${tickdata_name}._g52_e2));
    // Send _g53
    cJSON_AddItemToObject(root, "_g53", cJSON_CreateBool(${tickdata_name}._g53));
    // Send _g55
    cJSON_AddItemToObject(root, "_g55", cJSON_CreateBool(${tickdata_name}._g55));
    // Send _g56
    cJSON_AddItemToObject(root, "_g56", cJSON_CreateBool(${tickdata_name}._g56));
    // Send _g59
    cJSON_AddItemToObject(root, "_g59", cJSON_CreateBool(${tickdata_name}._g59));
    // Send _g6
    cJSON_AddItemToObject(root, "_g6", cJSON_CreateBool(${tickdata_name}._g6));
    // Send _g60
    cJSON_AddItemToObject(root, "_g60", cJSON_CreateBool(${tickdata_name}._g60));
    // Send _g61
    cJSON_AddItemToObject(root, "_g61", cJSON_CreateBool(${tickdata_name}._g61));
    // Send _g61_e3
    cJSON_AddItemToObject(root, "_g61_e3", cJSON_CreateBool(${tickdata_name}._g61_e3));
    // Send _g62
    cJSON_AddItemToObject(root, "_g62", cJSON_CreateBool(${tickdata_name}._g62));
    // Send _g63
    cJSON_AddItemToObject(root, "_g63", cJSON_CreateBool(${tickdata_name}._g63));
    // Send _g64
    cJSON_AddItemToObject(root, "_g64", cJSON_CreateBool(${tickdata_name}._g64));
    // Send _g65
    cJSON_AddItemToObject(root, "_g65", cJSON_CreateBool(${tickdata_name}._g65));
    // Send _g66
    cJSON_AddItemToObject(root, "_g66", cJSON_CreateBool(${tickdata_name}._g66));
    // Send _g7
    cJSON_AddItemToObject(root, "_g7", cJSON_CreateBool(${tickdata_name}._g7));
    // Send _g70
    cJSON_AddItemToObject(root, "_g70", cJSON_CreateBool(${tickdata_name}._g70));
    // Send _g71
    cJSON_AddItemToObject(root, "_g71", cJSON_CreateBool(${tickdata_name}._g71));
    // Send _g72
    cJSON_AddItemToObject(root, "_g72", cJSON_CreateBool(${tickdata_name}._g72));
    // Send _g74
    cJSON_AddItemToObject(root, "_g74", cJSON_CreateBool(${tickdata_name}._g74));
    // Send _g76
    cJSON_AddItemToObject(root, "_g76", cJSON_CreateBool(${tickdata_name}._g76));
    // Send _g77
    cJSON_AddItemToObject(root, "_g77", cJSON_CreateBool(${tickdata_name}._g77));
    // Send _g78
    cJSON_AddItemToObject(root, "_g78", cJSON_CreateBool(${tickdata_name}._g78));
    // Send _g79
    cJSON_AddItemToObject(root, "_g79", cJSON_CreateBool(${tickdata_name}._g79));
    // Send _g79_e1
    cJSON_AddItemToObject(root, "_g79_e1", cJSON_CreateBool(${tickdata_name}._g79_e1));
    // Send _g80
    cJSON_AddItemToObject(root, "_g80", cJSON_CreateBool(${tickdata_name}._g80));
    // Send _g82
    cJSON_AddItemToObject(root, "_g82", cJSON_CreateBool(${tickdata_name}._g82));
    // Send _g83
    cJSON_AddItemToObject(root, "_g83", cJSON_CreateBool(${tickdata_name}._g83));
    // Send _g85
    cJSON_AddItemToObject(root, "_g85", cJSON_CreateBool(${tickdata_name}._g85));
    // Send _g87
    cJSON_AddItemToObject(root, "_g87", cJSON_CreateBool(${tickdata_name}._g87));
    // Send _g88
    cJSON_AddItemToObject(root, "_g88", cJSON_CreateBool(${tickdata_name}._g88));
    // Send _g89
    cJSON_AddItemToObject(root, "_g89", cJSON_CreateBool(${tickdata_name}._g89));
    // Send _g9
    cJSON_AddItemToObject(root, "_g9", cJSON_CreateBool(${tickdata_name}._g9));
    // Send _g90
    cJSON_AddItemToObject(root, "_g90", cJSON_CreateBool(${tickdata_name}._g90));
    // Send _g90_e2
    cJSON_AddItemToObject(root, "_g90_e2", cJSON_CreateBool(${tickdata_name}._g90_e2));
    // Send _g91
    cJSON_AddItemToObject(root, "_g91", cJSON_CreateBool(${tickdata_name}._g91));
    // Send _g93
    cJSON_AddItemToObject(root, "_g93", cJSON_CreateBool(${tickdata_name}._g93));
    // Send _g94
    cJSON_AddItemToObject(root, "_g94", cJSON_CreateBool(${tickdata_name}._g94));
    // Send _g97
    cJSON_AddItemToObject(root, "_g97", cJSON_CreateBool(${tickdata_name}._g97));
    // Send _g98
    cJSON_AddItemToObject(root, "_g98", cJSON_CreateBool(${tickdata_name}._g98));
    // Send _g99
    cJSON_AddItemToObject(root, "_g99", cJSON_CreateBool(${tickdata_name}._g99));
    // Send _g99_e3
    cJSON_AddItemToObject(root, "_g99_e3", cJSON_CreateBool(${tickdata_name}._g99_e3));
    // Send _pg103
    cJSON_AddItemToObject(root, "_pg103", cJSON_CreateBool(${tickdata_name}._pg103));
    // Send _pg108
    cJSON_AddItemToObject(root, "_pg108", cJSON_CreateBool(${tickdata_name}._pg108));
    // Send _pg109
    cJSON_AddItemToObject(root, "_pg109", cJSON_CreateBool(${tickdata_name}._pg109));
    // Send _pg112
    cJSON_AddItemToObject(root, "_pg112", cJSON_CreateBool(${tickdata_name}._pg112));
    // Send _pg117
    cJSON_AddItemToObject(root, "_pg117", cJSON_CreateBool(${tickdata_name}._pg117));
    // Send _pg118
    cJSON_AddItemToObject(root, "_pg118", cJSON_CreateBool(${tickdata_name}._pg118));
    // Send _pg121
    cJSON_AddItemToObject(root, "_pg121", cJSON_CreateBool(${tickdata_name}._pg121));
    // Send _pg13
    cJSON_AddItemToObject(root, "_pg13", cJSON_CreateBool(${tickdata_name}._pg13));
    // Send _pg14
    cJSON_AddItemToObject(root, "_pg14", cJSON_CreateBool(${tickdata_name}._pg14));
    // Send _pg15
    cJSON_AddItemToObject(root, "_pg15", cJSON_CreateBool(${tickdata_name}._pg15));
    // Send _pg150
    cJSON_AddItemToObject(root, "_pg150", cJSON_CreateBool(${tickdata_name}._pg150));
    // Send _pg159
    cJSON_AddItemToObject(root, "_pg159", cJSON_CreateBool(${tickdata_name}._pg159));
    // Send _pg165
    cJSON_AddItemToObject(root, "_pg165", cJSON_CreateBool(${tickdata_name}._pg165));
    // Send _pg167
    cJSON_AddItemToObject(root, "_pg167", cJSON_CreateBool(${tickdata_name}._pg167));
    // Send _pg182
    cJSON_AddItemToObject(root, "_pg182", cJSON_CreateBool(${tickdata_name}._pg182));
    // Send _pg183
    cJSON_AddItemToObject(root, "_pg183", cJSON_CreateBool(${tickdata_name}._pg183));
    // Send _pg188
    cJSON_AddItemToObject(root, "_pg188", cJSON_CreateBool(${tickdata_name}._pg188));
    // Send _pg189
    cJSON_AddItemToObject(root, "_pg189", cJSON_CreateBool(${tickdata_name}._pg189));
    // Send _pg191
    cJSON_AddItemToObject(root, "_pg191", cJSON_CreateBool(${tickdata_name}._pg191));
    // Send _pg195
    cJSON_AddItemToObject(root, "_pg195", cJSON_CreateBool(${tickdata_name}._pg195));
    // Send _pg196
    cJSON_AddItemToObject(root, "_pg196", cJSON_CreateBool(${tickdata_name}._pg196));
    // Send _pg197
    cJSON_AddItemToObject(root, "_pg197", cJSON_CreateBool(${tickdata_name}._pg197));
    // Send _pg200
    cJSON_AddItemToObject(root, "_pg200", cJSON_CreateBool(${tickdata_name}._pg200));
    // Send _pg206
    cJSON_AddItemToObject(root, "_pg206", cJSON_CreateBool(${tickdata_name}._pg206));
    // Send _pg208
    cJSON_AddItemToObject(root, "_pg208", cJSON_CreateBool(${tickdata_name}._pg208));
    // Send _pg210
    cJSON_AddItemToObject(root, "_pg210", cJSON_CreateBool(${tickdata_name}._pg210));
    // Send _pg26
    cJSON_AddItemToObject(root, "_pg26", cJSON_CreateBool(${tickdata_name}._pg26));
    // Send _pg33
    cJSON_AddItemToObject(root, "_pg33", cJSON_CreateBool(${tickdata_name}._pg33));
    // Send _pg40
    cJSON_AddItemToObject(root, "_pg40", cJSON_CreateBool(${tickdata_name}._pg40));
    // Send _pg45
    cJSON_AddItemToObject(root, "_pg45", cJSON_CreateBool(${tickdata_name}._pg45));
    // Send _pg47
    cJSON_AddItemToObject(root, "_pg47", cJSON_CreateBool(${tickdata_name}._pg47));
    // Send _pg51
    cJSON_AddItemToObject(root, "_pg51", cJSON_CreateBool(${tickdata_name}._pg51));
    // Send _pg6
    cJSON_AddItemToObject(root, "_pg6", cJSON_CreateBool(${tickdata_name}._pg6));
    // Send _pg7
    cJSON_AddItemToObject(root, "_pg7", cJSON_CreateBool(${tickdata_name}._pg7));
    // Send _pg70
    cJSON_AddItemToObject(root, "_pg70", cJSON_CreateBool(${tickdata_name}._pg70));
    // Send _pg78
    cJSON_AddItemToObject(root, "_pg78", cJSON_CreateBool(${tickdata_name}._pg78));
    // Send _pg79_e1
    cJSON_AddItemToObject(root, "_pg79_e1", cJSON_CreateBool(${tickdata_name}._pg79_e1));
    // Send _pg80
    cJSON_AddItemToObject(root, "_pg80", cJSON_CreateBool(${tickdata_name}._pg80));
    // Send _pg83
    cJSON_AddItemToObject(root, "_pg83", cJSON_CreateBool(${tickdata_name}._pg83));
    // Send _taken_transitions
    array = cJSON_CreateArray();
    for (int i0 = 0; i0 < 19; i0++) {
        cJSON *item0 = cJSON_CreateNumber(${tickdata_name}._taken_transitions[i0]);
        cJSON_AddItemToArray(array, item0);
    }
    cJSON_AddItemToObject(root, "_taken_transitions", array);
    
    if (send_interface) {
        cJSON *interface = cJSON_CreateObject();
        cJSON *info, *properties;
        
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AS", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "VS", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("dynamic-ticks"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "deltaT", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AP", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "VP", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("dynamic-ticks"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "sleepT", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("ticktime"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "#ticktime", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("goGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_GO", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local_PVARP_timeout", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local_URI_timeout", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local_VRP_timeout", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig10", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig11", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig12", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig3", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig4", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig5", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig6", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig7", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig8", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig9", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__region0_LRI_x", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__region1_URI_x", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__region2_PVARP_x", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__region3_VRP_x", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__region4_AVI_x", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__region5_AEI_x", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local_iAP", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local_iVP", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("term"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_TERM", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg100", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg102", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg108", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg111", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg112", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg115", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg116", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg118", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg12", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg121", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg122", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg123", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg126", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg127", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg129", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg13", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg132", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg135", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg138", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg140", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg146", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg149", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg15", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg150", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg153", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg154", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg156", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg159", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg160", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg161", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg164", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg165", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg167", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg170", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg173", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg176", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg178", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg18", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg180", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg182", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg188", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg190", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg191", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg194", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg195", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg197", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg200", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg203", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg206", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg208", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg21", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg24", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg26", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg32", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg35", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg36", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg39", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg40", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg42", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg45", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg46", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg47", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg50", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg51", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg53", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg56", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg59", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg6", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg62", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg64", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg70", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg73", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg74", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg77", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg78", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg8", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg80", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg83", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg84", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg85", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg88", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg89", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg9", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg91", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg94", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg97", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g100", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g101", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g102", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g103", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g104", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g108", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g109", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g11", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g110", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g112", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g114", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g115", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g116", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g117", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g117_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g118", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g12", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g120", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g121", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g123", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g125", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g126", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g127", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g128", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g128_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g129", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g13", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g131", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g132", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g135", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g136", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g137", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g137_e3", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g138", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g139", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g14", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g140", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g141", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g142", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g146", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g147", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g148", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g14_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g15", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g150", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g152", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g153", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g154", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g155", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g155_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g156", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g158", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g159", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g161", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g163", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g164", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g165", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g166", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g166_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g167", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g169", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g17", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g170", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g173", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g174", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g175", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g175_e3", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g176", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g177", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g178", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g179", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g18", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g180", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g181", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g182", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g183", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g184", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g188", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g189", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g191", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g193", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g194", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g195", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g196", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g196_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g197", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g199", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g200", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g203", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g204", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g205", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g205_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g206", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g207", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g208", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g209", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g21", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g210", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g214", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g218", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g22", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g23", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g23_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g24", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g25", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g255", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g26", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g27", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g28", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g32", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g33", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g34", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g36", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g38", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g39", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g40", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g41", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g41_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g42", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g44", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g45", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g47", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g49", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g50", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g51", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g52", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g52_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g53", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g55", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g56", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g59", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g6", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g60", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g61", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g61_e3", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g62", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g63", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g64", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g65", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g66", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g7", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g70", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g71", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g72", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g74", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g76", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g77", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g78", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g79", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g79_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g80", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g82", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g83", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g85", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g87", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g88", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g89", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g9", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g90", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g90_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g91", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g93", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g94", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g97", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g98", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g99", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g99_e3", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg103", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg108", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg109", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg112", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg117", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg118", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg121", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg13", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg14", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg15", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg150", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg159", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg165", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg167", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg182", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg183", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg188", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg189", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg191", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg195", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg196", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg197", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg200", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg206", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg208", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg210", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg26", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg33", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg40", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg45", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg47", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg51", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg6", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg7", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg70", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg78", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg79_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg80", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg83", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("simulation"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_taken_transitions", info);
        
        cJSON_AddItemToObject(root, "#interface", interface);
    }

    // Get JSON object as string
    char* outString = cJSON_Print(root);
    cJSON_Minify(outString);
    // Flush to stdout
    printf("%s\n", outString);
    fflush(stdout);

    cJSON_Delete(root);
    free(outString);
}
</#macro>
