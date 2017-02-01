
/****************************************************************************************/
/*  This SAS program reads ASCII format (text format) 2014 SHPPS data and creates a     */
/*  formatted and labeled SAS dataset.                                                  */
/*                                                                                      */
/*  Change the file location specifications from "c:\shpps2014" to the location where   */
/*  you have stored the SHPPS ASCII data file and the format library before you run this*/
/*  program.  Change the location specification in three places - in the "filename"     */
/*  statement and in the two "libname" statements at the top of the program.            */
/*                                                                                      */
/*  Note: Run "SHPPS Formats Program.sas" BEFORE you run                                */
/*  "ENVL_SAS_Input_Program.sas" to create the 2014 SHPPS dataset.                      */
/****************************************************************************************/

filename datain 'c:\shpps2014\envl2014.dat';

libname dataout 'c:\shpps2014';

libname library 'c:\shpps2014';

data dataout.envl2014;
infile datain lrecl=4000;
missing A C F N M ;
input
STATENAME	$1	-	30
STCMSID	31	-	35
DISTCMSID	36	-	40
SCHCMSID	44	-	52
SPAN	66	-	67
ENROLL	68	-	78
HIGHGRADE	79	-	82
LOWGRADE	83	-	86
REGION	87	-	88
SAMPSTRA	89	-	90
DISTTYPE	91	-	92
LEVEL	93	-	94
PSU	95	-	105
SCHWT	12.7 @107
ENLM1PAP	122	-	124
ENLM2PAP	125	-	127
CMS_SchoolStartTime	128	-	136
CMS_SchoolEndTime	137	-	145
CMS_VendingMachines	146	-	148
ENL1	149	-	151
ENL2_0	152	-	156
ENL2_1	157	-	161
ENL2_2	162	-	166
ENL2_3	167	-	171
ENL2_4	172	-	176
ENL2_5	177	-	181
ENL2_6	182	-	186
ENL2_7	187	-	191
ENL2_8	192	-	196
ENL2_9	197	-	201
ENL2_10	202	-	206
ENL2_11	207	-	211
ENL2_12	212	-	216
ENL3	217	-	221
ENL4	222	-	226
ENL5	227	-	231
ENL6	232	-	236
ENL7	237	-	241
ENL8	242	-	246
ENL9a	247	-	251
ENL9b	252	-	256
ENL9c	257	-	261
ENL9d	262	-	266
ENL10	267	-	271
ENL11	272	-	276
ENL12	277	-	281
ENL13a	282	-	286
ENL13b	287	-	291
ENL13c	292	-	296
ENL14a	297	-	301
ENL14b	302	-	306
ENL14c	307	-	311
ENL15	312	-	316
ENL16a	317	-	321
ENL16b	322	-	326
ENL17	327	-	331
ENL18	332	-	336
ENL19	337	-	341
ENL20a	342	-	346
ENL20b	347	-	351
ENL20c	352	-	356
ENL20d	357	-	361
ENL20e	362	-	366
ENL20f	367	-	371
ENL20g	372	-	376
ENL20h	377	-	381
ENL20i	382	-	386
ENL20j	387	-	391
ENL20k	392	-	396
ENL21	397	-	401
ENL22	402	-	406
ENL23	407	-	411
ENL24	412	-	416
ENL25a	417	-	421
ENL25b	422	-	426
ENL25c	427	-	431
ENL26a	432	-	436
ENL26b	437	-	441
ENL26c	442	-	446
ENL26d	447	-	451
ENL26e	452	-	456
ENL26f	457	-	461
ENL26g	462	-	466
ENL27	467	-	471
ENL28	472	-	476
ENL29	477	-	481
ENL30	482	-	486
ENL31	487	-	491
ENL32a	492	-	496
ENL32b	497	-	501
ENL32c	502	-	506
ENL32d	507	-	511
ENL32e	512	-	516
ENL32f	517	-	521
ENL32g	522	-	526
ENL32h	527	-	531
ENL33a	532	-	536
ENL33b	537	-	541
ENL33c	542	-	546
ENL33d	547	-	551
ENL33e	552	-	556
ENL33f	557	-	561
ENL33g	562	-	566
ENL33g_SPEC	$567	-	627
ENL34	628	-	632
ENL35_1	633	-	637
ENL35_2	638	-	642
ENL35_3	643	-	647
ENL35_4	648	-	652
ENL35_5	653	-	657
ENL35_6	658	-	662
ENL36a	663	-	667
ENL36b	668	-	672
ENL36c	673	-	677
ENL36d	678	-	682
ENL36e	683	-	687
ENL36f	688	-	692
ENL36g	693	-	697
ENL36h	698	-	702
ENL36i	703	-	707
ENL36j	708	-	712
ENL36k	713	-	717
ENL36l	718	-	722
ENL37	723	-	727
ENL38_1	728	-	732
ENL38_2	733	-	737
ENL38_3	738	-	742
ENL38_4	743	-	747
ENL38_5	748	-	752
ENL38_6	753	-	757
ENL38_7	758	-	762
ENL39a	763	-	767
ENL39b	768	-	772
ENL39c	773	-	777
ENL39d	778	-	782
ENL39e	783	-	787
ENL39f	788	-	792
ENL39g	793	-	797
ENL39h	798	-	802
ENL39i	803	-	807
ENL39j	808	-	812
ENL39k	813	-	817
ENL40	818	-	822
ENL41a	823	-	827
ENL41b	828	-	832
ENL41c	833	-	837
ENL42	838	-	842
ENL43	843	-	847
ENL44	848	-	852
ENL45	853	-	857
ENL46_1	858	-	862
ENL46_2	863	-	867
ENL46_3	868	-	872
ENL46_4	873	-	877
ENL46_5	878	-	882
ENL46_6	883	-	887
ENL47a	888	-	892
ENL47b	893	-	897
ENL47c	898	-	902
ENL47d	903	-	907
ENL47e	908	-	912
ENL47f	913	-	917
ENL47g	918	-	922
ENL47h	923	-	927
ENL47i	928	-	932
ENL47j	933	-	937
ENL47k	938	-	942
ENL48	943	-	947
ENL49	948	-	952
ENL50	953	-	957
ENL51	958	-	962
ENL52_1	963	-	967
ENL52_2	968	-	972
ENL52_3	973	-	977
ENL52_4	978	-	982
ENL52_5	983	-	987
ENL53a	988	-	992
ENL53b	993	-	997
ENL53c	998	-	1002
ENL53d	1003	-	1007
ENL53e	1008	-	1012
ENL53f	1013	-	1017
ENL53g	1018	-	1022
ENL53h	1023	-	1027
ENL53i	1028	-	1032
ENL53j	1033	-	1037
ENL53k	1038	-	1042
ENL54a	1043	-	1047
ENL54b	1048	-	1052
ENL54c	1053	-	1057
ENL54d	1058	-	1062
ENL55	1063	-	1067
ENL56a	1068	-	1072
ENL56b	1073	-	1077
ENL56c	1078	-	1082
ENL57	1083	-	1087
ENL58	1088	-	1092
ENL59a	1093	-	1097
ENL59b	1098	-	1102
ENL59c	1103	-	1107
ENL59d	1108	-	1112
ENL60	1113	-	1117
ENL61_1	1118	-	1122
ENL61_2	1123	-	1127
ENL61_3	1128	-	1132
ENL61_4	1133	-	1137
ENL61_5	1138	-	1142
ENL62a	1143	-	1147
ENL62b	1148	-	1152
ENL62c	1153	-	1157
ENL62d	1158	-	1162
ENL62e	1163	-	1167
ENL62f	1168	-	1172
ENL62g	1173	-	1177
ENL62h	1178	-	1182
ENL62i	1183	-	1187
ENL62j	1188	-	1192
ENL62k	1193	-	1197
ENL63	1198	-	1202
ENL64	1203	-	1207
ENL65a	1208	-	1212
ENL65b	1213	-	1217
ENL65c	1218	-	1222
ENL65d	1223	-	1227
ENL66	1228	-	1232
ENL67_1	1233	-	1237
ENL67_2	1238	-	1242
ENL67_3	1243	-	1247
ENL67_4	1248	-	1252
ENL67_5	1253	-	1257
ENL68a	1258	-	1262
ENL68b	1263	-	1267
ENL68c	1268	-	1272
ENL68d	1273	-	1277
ENL68e	1278	-	1282
ENL68f	1283	-	1287
ENL68g	1288	-	1292
ENL68h	1293	-	1297
ENL68i	1298	-	1302
ENL68j	1303	-	1307
ENL68k	1308	-	1312
ENL69a	1313	-	1317
ENL69b	1318	-	1322
ENL69c	1323	-	1327
ENL69d	1328	-	1332
ENL69e	1333	-	1337
ENL70	1338	-	1342
ENL71a	1343	-	1347
ENL71b	1348	-	1352
ENL71c	1353	-	1357
ENL72	1358	-	1362
ENL73	1363	-	1367
ENL74	1368	-	1372
ENL75a	1373	-	1377
ENL75b	1378	-	1382
ENL75c	1383	-	1387
ENL75d	1388	-	1392
ENL76	1393	-	1397
ENL77	1398	-	1402
ENL78a	1403	-	1407
ENL78b	1408	-	1412
ENL78c	1413	-	1417
ENL78d	1418	-	1422
ENL79a	1423	-	1427
ENL79b	1428	-	1432
ENL80	1433	-	1437
ENL81a	1438	-	1442
ENL81b	1443	-	1447
ENL81c	1448	-	1452
ENL81d	1453	-	1457
ENL82	1458	-	1462
ENL83	1463	-	1467
ENL84a	1468	-	1472
ENL84b	1473	-	1477
ENL84c	1478	-	1482
ENL84d	1483	-	1487
ENL85a	1488	-	1492
ENL85b	1493	-	1497
ENL86	1498	-	1502
ENL87_1	1503	-	1507
ENL87_2	1508	-	1512
ENL87_3	1513	-	1517
ENL87_4	1518	-	1522
ENL87_5	1523	-	1527
ENL88a	1528	-	1532
ENL88b	1533	-	1537
ENL88c	1538	-	1542
ENL88d	1543	-	1547
ENL88e	1548	-	1552
ENL88f	1553	-	1557
ENL88g	1558	-	1562
ENL88h	1563	-	1567
ENL88i	1568	-	1572
ENL88j	1573	-	1577
ENL88k	1578	-	1582
ENL89a	1583	-	1587
ENL89b	1588	-	1592
ENL89c	1593	-	1597
ENL90	1598	-	1602
ENL91	1603	-	1607
ENL92_1	1608	-	1612
ENL92_2	1613	-	1617
ENL92_3	1618	-	1622
ENL92_4	1623	-	1627
ENL92_5	1628	-	1632
ENL92_6	1633	-	1637
ENL93a	1638	-	1642
ENL93b	1643	-	1647
ENL93c	1648	-	1652
ENL93d	1653	-	1657
ENL93e	1658	-	1662
ENL93f	1663	-	1667
ENL93g	1668	-	1672
ENL93h	1673	-	1677
ENL93i	1678	-	1682
ENL93j	1683	-	1687
ENL93k	1688	-	1692
ENL94a	1693	-	1697
ENL94b	1698	-	1702
ENL94c	1703	-	1707
ENL95	1708	-	1712
ENL96	1713	-	1717
ENL97	1718	-	1722
ENL98a	1723	-	1727
ENL98b	1728	-	1732
ENL98c	1733	-	1737
ENL98d	1738	-	1742
ENL98e	1743	-	1747
ENL99a	1748	-	1752
ENL99b	1753	-	1757
ENL99c	1758	-	1762
ENL99d	1763	-	1767
ENL99e	1768	-	1772
ENL99f	1773	-	1777
ENL99g	1778	-	1782
ENL99h	1783	-	1787
ENL100_1	1788	-	1792
ENL100_2	1793	-	1797
ENL100_3	1798	-	1802
ENL100_4	1803	-	1807
ENL100_5	1808	-	1812
ENL100_6	1813	-	1817
ENL101a	1818	-	1822
ENL101b	1823	-	1827
ENL101c	1828	-	1832
ENL101d	1833	-	1837
ENL101e	1838	-	1842
ENL101f	1843	-	1847
ENL101g	1848	-	1852
ENL101h	1853	-	1857
ENL101i	1858	-	1862
ENL101j	1863	-	1867
ENL101k	1868	-	1872
ENL102a	1873	-	1877
ENL102b	1878	-	1882
ENL103	1883	-	1887
ENL104	1888	-	1892
ENL105	1893	-	1897
ENL106a	1898	-	1902
ENL106b	1903	-	1907
ENL106c	1908	-	1912
ENL106d	1913	-	1917
ENL106e	1918	-	1922
ENL107	1923	-	1927
ENL108	1928	-	1932
ENL109a	1933	-	1937
ENL109b	1938	-	1942
ENL109c	1943	-	1947
ENL110	1948	-	1952
ENL111	1953	-	1957
ENL112a	1958	-	1962
ENL112b	1963	-	1967
ENL112c	1968	-	1972
ENL113	1973	-	1977
ENL114	1978	-	1982
ENL115	1983	-	1987
ENL116	1988	-	1992
ENL117	1993	-	1997
ENL118	1998	-	2002
ENL119a	2003	-	2007
ENL119b	2008	-	2012
ENL119c	2013	-	2017
ENL119d	2018	-	2022
ENL119e	2023	-	2027
ENL119f	2028	-	2032
ENL119g	2033	-	2037
ENL120	2038	-	2042
ENL121	2043	-	2047
ENL122	2048	-	2052
ENL123	2053	-	2057
ENL124	2058	-	2062
ENL125a	2063	-	2067
ENL125b	2068	-	2072
ENL125c	2073	-	2077
ENL125d	2078	-	2082
ENL125e	2083	-	2087
ENL125f	2088	-	2092
ENL125g	2093	-	2097
ENL125h	2098	-	2102
ENL125i	2103	-	2107
ENL126	2108	-	2112
ENL127	2113	-	2117
ENL128	2118	-	2122
ENL129	2123	-	2127
ENL130	2128	-	2132
ENL131	2133	-	2137
ENL132	2138	-	2142
ENL133	2143	-	2147
ENL134	2148	-	2152
ENL135	2153	-	2157
ENL136a	2158	-	2162
ENL136b	2163	-	2167
ENL136c	2168	-	2172
ENL137a	2173	-	2177
ENL137b	2178	-	2182
ENL137c	2183	-	2187
ENL138	2188	-	2192
ENL139	2193	-	2197
ENL140a	2198	-	2202
ENL140b	2203	-	2207
ENL140c	2208	-	2212
ENL140d	2213	-	2217
ENL140e	2218	-	2222
ENL140f	2223	-	2227
ENL140g	2228	-	2232
ENL140h	2233	-	2237
ENL140i	2238	-	2242
ENL140j	2243	-	2247
ENL141	2248	-	2252
ENL142	2253	-	2257
ENL143a	2258	-	2262
ENL143b	2263	-	2267
ENL143c	2268	-	2272
ENL143d	2273	-	2277
ENL143e	2278	-	2282
ENL143f	2283	-	2287
ENL143g	2288	-	2292
ENL143h	2293	-	2297
ENL144	2298	-	2302
ENL145a	2303	-	2307
ENL145b	2308	-	2312
ENL145c	2313	-	2317
ENL145d	2318	-	2322
ENL145e	2323	-	2327
ENL145f	2328	-	2332
ENL145g	2333	-	2337
ENL145h	2338	-	2342
ENL145i	2343	-	2347
ENL145j	2348	-	2352
ENL145k	2353	-	2357
ENL145l	2358	-	2362
ENL145m	2363	-	2367
ENL145n	2368	-	2372
ENL145o	2373	-	2377
ENL145p	2378	-	2382
ENL146a	2383	-	2387
ENL146b	2388	-	2392
ENL146c	2393	-	2397
ENL147	2398	-	2402
ENL148	2403	-	2407
ENL149	2408	-	2412
ENL150	2413	-	2417
ENL151	2418	-	2422
ENL152a	2423	-	2427
ENL152b	2428	-	2432
ENL152c	2433	-	2437
ENL152d	2438	-	2442
ENL152e	2443	-	2447
ENL152f	2448	-	2452
ENL152g	2453	-	2457
ENL152h	2458	-	2462
ENL152i	2463	-	2467
ENL152j	2468	-	2472
ENL153	2473	-	2477
ENL154	2478	-	2482
ENL155a	2483	-	2487
ENL155b	2488	-	2492
ENL155c	2493	-	2497
ENL155d	2498	-	2502
ENL156	2503	-	2507
ENL157a	2508	-	2512
ENL157b	2513	-	2517
ENL157c	2518	-	2522
ENL158	2523	-	2527
ENL159_0	2528	-	2532
ENL159_1	2533	-	2537
ENL159_2	2538	-	2542
ENL159_3	2543	-	2547
ENL159_4	2548	-	2552
ENL159_5	2553	-	2557
ENL159_6	2558	-	2562
ENL159_7	2563	-	2567
ENL160	2568	-	2572
ENL161	2573	-	2577
ENL162	2578	-	2582
ENL163	2583	-	2587
ENL164	2588	-	2592
ENL165	2593	-	2597
ENL165_SPEC	$2598	-	2658
ENL166	2659	-	2663
ENL167	2664	-	2668
ENL167_SPEC	$2669	-	2729
ENL168	2730	-	2734
ENL169	2735	-	2739
ENL170	2740	-	2744
ENL171	2745	-	2749
ENL172	2750	-	2754
ENL173	2755	-	2759
ENL174	2760	-	2764
ENL175	2765	-	2769
ENL176	2770	-	2774
ENL177	2775	-	2779
ENL178	2780	-	2784
ENL179	2785	-	2789
ENL180	2790	-	2794
ENL181	2795	-	2799
ENL182	2800	-	2804
ENL183	2805	-	2809
ENL184	2810	-	2814
ENL185	2815	-	2819
ENL186a	2820	-	2824
ENL186b	2825	-	2829
ENL187a	2830	-	2834
ENL187b	2835	-	2839
ENL187c	2840	-	2844
ENL187d	2845	-	2849
ENL187e	2850	-	2854
ENL187f	2855	-	2859
ENL187g	2860	-	2864
ENL188a	2865	-	2869
ENL188b	2870	-	2874
ENL188c	2875	-	2879
ENL189a	2880	-	2884
ENL189b	2885	-	2889
ENL189c	2890	-	2894
ENL189d	2895	-	2899
ENL189e	2900	-	2904
ENL189f	2905	-	2909
ENL189g	2910	-	2914
ENL189h	2915	-	2919
ENL189i	2920	-	2924
ENL189j	2925	-	2929
ENL189k	2930	-	2934
ENL189l	2935	-	2939
ENL190a	2940	-	2944
ENL190b	2945	-	2949
ENL190c	2950	-	2954
ENL191a	2955	-	2959
ENL191b	2960	-	2964
ENL191c	2965	-	2969
ENL191d	2970	-	2974
ENL191e	2975	-	2979
ENL192a	2980	-	2984
ENL192b	2985	-	2989
ENL192c	2990	-	2994
ENL193	2995	-	2999
ENL194	3000	-	3004
ENL195	3005	-	3009
ENL196a	3010	-	3014
ENL196b	3015	-	3019
ENL196c	3020	-	3024
ENL196d	3025	-	3029
ENL196e	3030	-	3034
ENL197a	3035	-	3039
ENL197b	3040	-	3044
ENL197c	3045	-	3049
ENL198a	3050	-	3054
ENL198b	3055	-	3059
ENL198c	3060	-	3064
ENL199a	3065	-	3069
ENL199b	3070	-	3074
ENL199c	3075	-	3079
ENL200	3080	-	3084
ENL201	3085	-	3089
ENL202	3090	-	3094
ENL203	3095	-	3099
ENL204	3100	-	3104
ENL205a	3105	-	3109
ENL205b	3110	-	3114
ENL205c	3115	-	3119
ENL205d	3120	-	3124
ENL206	3125	-	3129
ENL207	3130	-	3134
ENL208	3135	-	3139
ENL209	3140	-	3144
ENL210a	3145	-	3149
ENL210b	3150	-	3154
ENL210c	3155	-	3159
ENL210d	3160	-	3164
ENL210e	3165	-	3169
ENL210f	3170	-	3174
ENL210g	3175	-	3179
ENL210h	3180	-	3184
ENL210i	3185	-	3189
ENL210j	3190	-	3194
ENL210k	3195	-	3199
ENL210l	3200	-	3204
ENL210m	3205	-	3209
ENL210n	3210	-	3214
ENL210o	3215	-	3219
ENL210p	3220	-	3224
ENL210q	3225	-	3229
ENL210r	3230	-	3234
ENL210s	3235	-	3239
ENL210t	3240	-	3244
ENL210u	3245	-	3249
ENL210v	3250	-	3254
ENL211_0	3255	-	3259
ENL211_1	3260	-	3264
ENL211_2	3265	-	3269
ENL211_3	3270	-	3274
ENL211_4	3275	-	3279
ENL211_5	3280	-	3284
ENL211_6	3285	-	3289
ENL211_7	3290	-	3294
ENL211_8	3295	-	3299
ENL211_9	3300	-	3304
ENL211_10	3305	-	3309
ENL211_11	3310	-	3314
ENL211_12	3315	-	3319
ENL211_13	3320	-	3324
ENL212_1	3325	-	3329
ENL212_2	3330	-	3334
ENL212_3	3335	-	3339
ENL212_4	3340	-	3344
ENL212_5	3345	-	3349
ENL212_6	3350	-	3354
ENL212_7	3355	-	3359
ENL212_8	3360	-	3364
ENL212_9	3365	-	3369
ENL212_10	3370	-	3374
ENL212_11	3375	-	3379
ENL213a	3380	-	3384
ENL213b	3385	-	3389
ENL213c	3390	-	3394
ENL213d	3395	-	3399
ENL213e	3400	-	3404
ENL214	3405	-	3409
ENL215	3410	-	3414
ENL216a	3415	-	3419
ENL216b	3420	-	3424
ENL216c	3425	-	3429
ENL216d	3430	-	3434
ENL216e	3435	-	3439
ENL216f	3440	-	3444
ENL216g	3445	-	3449
ENL216h	3450	-	3454
ENL217	3455	-	3459
ENL218	3460	-	3464
ENL219a	3465	-	3469
ENL219b	3470	-	3474
ENL219c	3475	-	3479
ENL219d	3480	-	3484
ENL219e	3485	-	3489
ENL219f	3490	-	3494
ENL219g	3495	-	3499
ENL220	3500	-	3504
ENL221	3505	-	3509
ENL222_1	3510	-	3514
ENL222_2	3515	-	3519
ENL222_3	3520	-	3524
ENL222_4	3525	-	3529
ENL222_5	3530	-	3534
ENL222_6	3535	-	3539
ENL222_7	3540	-	3544
ENL222_8	3545	-	3549
ENL222_9	3550	-	3554
ENL222_10	3555	-	3559
ENL223	3560	-	3564
ENL224_1	3565	-	3569
ENL224_2	3570	-	3574
ENL224_3	3575	-	3579
ENL224_4	3580	-	3584
ENL224_5	3585	-	3589
ENL224_6	3590	-	3594
ENL224_7	3595	-	3599
ENL224_8	3600	-	3604
ENL224_9	3605	-	3609
ENL224_10	3610	-	3614
ENL225	3615	-	3619
ENL226_1	3620	-	3624
ENL226_2	3625	-	3629
ENL226_3	3630	-	3634
ENL226_4	3635	-	3639
ENL226_5	3640	-	3644
ENL226_6	3645	-	3649
ENL226_7	3650	-	3654
ENL226_8	3655	-	3659
ENL226_9	3660	-	3664
ENL226_10	3665	-	3669
ENL226_11	3670	-	3674
VendingMachine_flag	3675	-	3679
ENLM2	$3680	-	3785
;
************************************
*  Assign formats to SAS variables.*
************************************;

format

ENL1
jobtitle.

/*HEALTH AND SAFE SCHOOL ENVIRONMENT*/ 
ENL3 ENL5 ENL8 ENL9A ENL9B ENL9C ENL9D ENL11 ENL12 ENL13A ENL13B ENL13C ENL14A ENL14B ENL14C ENL15 ENL16A ENL16B 
ENL17 ENL18 ENL19 ENL20A ENL20B ENL20C ENL20D ENL20E ENL20F ENL20G ENL20H ENL20I ENL20J ENL20K ENL25B ENL25C 
ENL26A ENL26B ENL26C ENL26D ENL26E ENL26F ENL26G
ENL27 ENL30 ENL31 ENL32A ENL32B ENL32C ENL32D ENL32E ENL32F ENL32G ENL32H ENL33A ENL33B ENL33C ENL33D ENL33E ENL33F 
ENL33G ENL34 ENL35_1 ENL35_2 ENL35_3 ENL35_4 ENL35_5 ENL35_6 ENL37 ENL38_1 ENL38_2 ENL38_3 ENL38_4 ENL38_5 ENL38_6 ENL38_7 ENL40 
ENL41A ENL41B ENL41C ENL42 ENL43 ENL44 ENL45 ENL46_1 ENL46_2 ENL46_3 ENL46_4 ENL46_5 ENL46_6 ENL48 ENL49 ENL50 ENL51 ENL35_1 
ENL52_1  ENL52_2 ENL52_3 ENL52_4 ENL52_5 ENL54A ENL54B ENL54C ENL54D ENL55 ENL56A ENL56B ENL56C ENL57 ENL58 ENL59A ENL59B 
ENL59C ENL59D ENL60 ENL61_1 ENL61_2 ENL61_3 ENL61_4 ENL61_5 ENL63 ENL64 ENL65A ENL65B ENL65C ENL65D ENL67_1
ENL67_2 ENL67_3 ENL67_4 ENL67_5 ENL69A ENL69B ENL69C ENL69D ENL69E ENL70 ENL71A ENL71B ENL71C ENL72 ENL73 ENL74 ENL75A
ENL75B ENL75C ENL75D ENL76 ENL77 ENL78A ENL78B ENL78C ENL78D ENL79A ENL79B ENL80 ENL81A ENL81B ENL81C ENL81D ENL82 ENL83 
ENL84A ENL84B ENL84C ENL84D ENL85A ENL85B ENL86 ENL87_1 ENL87_2 ENL87_3 ENL87_4 ENL87_5 ENL89A ENL89B ENL89C ENL90 ENL91 ENL92_1
ENL92_2 ENL92_3 ENL92_4 ENL92_5 ENL92_6 ENL94A ENL94B ENL94C ENL95 ENL96 ENL97 ENL98A ENL98B ENL98C ENL98D ENL98E ENL99A 
ENL99B ENL99C ENL99D ENL99E ENL99F ENL99G ENL99H ENL100_1 ENL100_2 ENL100_3 ENL100_4 ENL100_5 ENL100_6 ENL104 ENL105 ENL108 
ENL109A ENL109B ENL109C ENL110 ENL112A ENL112B ENL112C ENL113 ENL114 ENL115 ENL116 ENL117 ENL118 ENL119A ENL119B ENL119C
ENL119D ENL119E ENL119F ENL119G ENL130 ENL132 ENL133 ENL134 ENL135 ENL136A ENL136B ENL136C ENL137A ENL137B ENL137C ENL138
ENL139 ENL140A ENL140B ENL140C ENL140D ENL140E ENL140F ENL140G ENL140H ENL140I ENL140J ENL142 ENL143A ENL143B ENL143C 
ENL143D ENL143E ENL143F ENL143G ENL143H ENL144 ENL145A ENL145B ENL145C ENL145D ENL145E ENL145F ENL145G ENL145H ENL145I 
ENL145J ENL145K ENL145L ENL145M ENL145N ENL145O ENL145P ENL146A ENL146B ENL146C ENL147 ENL148 ENL150 ENL151 ENL153 ENL154
ENL155A ENL155B ENL155C ENL155D ENL156 ENL157A ENL157B ENL157C ENL158 ENL164 ENL166 ENL168 ENL169 ENL170 ENL171 ENL172 
ENL172 ENL173 ENL172 ENL172 ENL186A ENL186B ENL187A ENL187B ENL187C ENL187D ENL187E ENL187F ENL187G ENL188A ENL188B ENL188C 
ENL189A ENL189B ENL189C ENL189D ENL189E ENL189F ENL189G ENL189H ENL189I ENL189J ENL189K ENL189L ENL190A ENL190B ENL190C
ENL191A ENL191B ENL191C ENL191D ENL191E ENL192A ENL192B ENL192C ENL191A 
ENL191B ENL191C ENL195 ENL196A ENL196B ENL196C ENL196D ENL196E ENL197A ENL197B ENL197C ENL198A ENL198B ENL198C ENL199A 
ENL199B ENL199C ENL200  ENL201 ENL202 ENL203 ENL204 ENL206 ENL207 ENL208 ENL209 ENL210A ENL210B ENL210C ENL210D ENL210E 
ENL210F ENL210G ENL210H ENL210I ENL210J ENL210K ENL210L ENL210M ENL210N ENL210O ENL210P ENL210Q ENL210R ENL210S ENL210T 
ENL210U ENL210V ENL211_0 ENL211_1 ENL211_2 ENL211_3 ENL211_4 ENL211_5 ENL211_6 ENL211_7 ENL211_8 ENL211_9 ENL211_10 ENL211_11 ENL211_12 ENL211_13
ENL212_1 ENL212_2 ENL212_3 ENL212_4 ENL212_5 ENL212_6 ENL212_7 ENL212_8 ENL212_9 ENL212_10 ENL212_11 ENL213A ENL213B ENL213C ENL213D
ENL213E ENL215 ENL217 ENL218 ENL221 ENL223 ENL225  ENL66
yesno.


ENL101A ENL101B ENL101C ENL101D ENL101E ENL101F ENL101G ENL101H ENL101I ENL101J ENL101K 
ENL102A ENL102B ENL219A ENL219B ENL219C ENL219D ENL219E ENL219F ENL219G 
yesnona.

ENL36A ENL36B ENL36C ENL36D ENL36E ENL36F ENL36G ENL36H ENL36I ENL36J ENL36K ENL36L
ENL39A ENL39B ENL39C ENL39D ENL39E ENL39F ENL39G ENL39H ENL39I ENL39J ENL39K 
ENL47A ENL47B ENL47C ENL47D ENL47E ENL47F ENL47G ENL47H ENL47I ENL47J ENL47K 
ENL53A ENL53B ENL53C ENL53D ENL53E ENL53F ENL53G ENL53H ENL53I ENL53J ENL53K 
ENL62A ENL62B ENL62C ENL62D ENL62E ENL62F ENL62G ENL62H ENL62I ENL62J ENL62K 
ENL68A ENL68B ENL68C ENL68D ENL68E ENL68F ENL68G ENL68H ENL68I ENL68J ENL68K 
ENL88A ENL88B ENL88C ENL88D ENL88E ENL88F ENL88G ENL88H ENL88I ENL88J ENL88K 
ENL93A ENL93B ENL93C ENL93D ENL93E ENL93F ENL93G ENL93H ENL93I ENL93J ENL93K 
ENL106A ENL106B ENL106C ENL106D ENL106E ENL111
ENL125A ENL125B ENL125C ENL125D ENL125E ENL125F ENL125G ENL125H ENL125I
howoften.

ENL216A ENL216B ENL216C ENL216D ENL216E ENL216F ENL216G ENL216H
enl216f.

ENL159_0 ENL159_1 ENL159_2 ENL159_3 ENL159_4 ENL159_5 ENL159_6 ENL159_7 
yesno.

ENL222_1 ENL222_2 ENL222_3 ENL222_4 ENL222_5 ENL222_6 ENL222_7 ENL222_8 ENL222_9 ENL222_10
ENL224_1 ENL224_2 ENL224_3 ENL224_4 ENL224_5 ENL224_6 ENL224_7 ENL224_8 ENL224_9 ENL224_10
ENL226_1 ENL226_2 ENL226_3 ENL226_4 ENL226_5 ENL226_6 ENL226_7 ENL226_8 ENL226_9 ENL226_10 ENL226_11
yesno.

ENL4 enl4f. ENL10 enl10f. ENL21 enl21F. ENL22 enl22f. ENL23 enl23f. ENL24 enl24f.

ENL25A enl25af. ENL28 enl28f. ENL29 enl29f. ENL103 enl103f. ENL107 enl107f. ENL120 enl120f.

ENL121 enl121f. ENL122 enl122f. ENL123 enl123f. ENL124 enl124f. ENL126 enl126f. 

ENL127 enl127f. ENL128 enl128f. ENL129 enl129f. ENL131 enl131f. ENL141 enl141f.

ENL149 enl149f.  ENL162 enl162f. ENL163 enl163f. ENL165 enl165f.

ENL167 enl167f. ENL174 enl174f. ENL175 enl175f. ENL176 enl176f. ENL177 enl177f.

ENL178 enl178f. ENL179 enl179f. ENL180 enl180f. ENL181 enl181f. ENL182 enl182f.

ENL183 enl183f. ENL174 enl174f. ENL184 enl184f. ENL185 enl185f. ENL193 enl193f.

ENL194 enl194f.  ENL214 enl214f. 


ENL152A ENL152B ENL152C ENL152D ENL152E ENL152F ENL152G ENL152H ENL152I ENL152J enl152f.
ENL205A ENL205B ENL205C ENL205D enl205f.
ENL216A ENL216B ENL216C ENL216D ENL216E ENL216F ENL216G ENL216H enl216f. 

SPAN
VendingMachine_flag
span.


HIGHGRADE
LOWGRADE
grade.

REGION
region.

SAMPSTRA
locale.

DISTTYPE
dtype.

LEVEL
level.

ENLM1PAP
ENLM2PAP
method.
;

***********************************
*  Assign labels to SAS variables.*
***********************************;
label
STATENAME	=	'State Name'
STCMSID	=	'State CMS ID'
DISTCMSID	=	'District CMS ID'
SCHCMSID	=	'School CMS ID'
SPAN	=	'Spanned School'
ENROLL	=	'School Enrollment'
HIGHGRADE	=	'Highest Grade in Sampled School'
LOWGRADE	=	'Lowest Grade in Sampled School'
REGION	=	'Region'
SAMPSTRA	=	'Urban locale stratum'
DISTTYPE	=	'District Type'
LEVEL	=	'School Level'
PSU	=	'Sampled Primary Sampling Unit'
SCHWT	=	'School-level weight'
ENLM1PAP	=	'Mail - CAPI Complete Module 1'
ENLM2PAP	=	'Mail - CAPI Complete Module 2'
CMS_VendingMachines   = 'Number of vending machine during sch day'
CMS_SchoolStartTime   = 'School start time'
CMS_SchoolEndTime     = 'School end time'
ENL1	=	'Job title'
ENL2_0	=	'Enrollment -  K '
ENL2_1	=	'Enrollment -  1st grade'
ENL2_2	=	'Enrollment -  2nd grade'
ENL2_3	=	'Enrollment -  3rd grade'
ENL2_4	=	'Enrollment -  4th grade'
ENL2_5	=	'Enrollment -  5th grade'
ENL2_6	=	'Enrollment -  6th grade'
ENL2_7	=	'Enrollment -  7th grade'
ENL2_8	=	'Enrollment -  8th grade'
ENL2_9	=	'Enrollment -  9th grade'
ENL2_10	=	'Enrollment -  10th grade'
ENL2_11	=	'Enrollment -  11th grade'
ENL2_12	=	'Enrollment -  12th grade'
ENL3	=	'Hand washing facility/sanitizers avail'
ENL4	=	'Drinking water bottles permitted'
ENL5	=	'Sch food garden'
ENL6	=	'Year sch bldg constructed'
ENL7	=	'Year last renovated'
ENL8	=	'Closed campus'
ENL9a	=	'Monitor - Halls during classes'
ENL9b	=	'Monitor - Halls between classes'
ENL9c	=	'Monitor - Restrooms'
ENL9d	=	'Monitor - School grounds'
ENL10	=	'MS/HS - Conduct locker searches'
ENL11	=	'Uniforms req'
ENL12	=	'Dress code'
ENL13a	=	'Students req wear ID badges'
ENL13b	=	'Fac/staff req wear ID badges'
ENL13c	=	'Visitors req wear ID badges'
ENL14a	=	'Use security cameras'
ENL14b	=	'Use metal detectors'
ENL14c	=	'Use communic devices for security'
ENL15	=	'Students req refrain from using communic devices'
ENL16a	=	'Use police/sch resource officers during day'
ENL16b	=	'Use security guards during day'
ENL17	=	'Security staff armed'
ENL18	=	'Students receive handbook '
ENL19	=	'Students req to acknowledge handbook receipt'
ENL20a	=	'Handbook - Use of personal communic devices'
ENL20b	=	'Handbook - Phys fighting'
ENL20c	=	'Handbook - Weapon possession'
ENL20d	=	'Handbook - Gang activity'
ENL20e	=	'Handbook - Bullying'
ENL20f	=	'Handbook - Cyber-bullying '
ENL20g	=	'Handbook - Cig smoking'
ENL20h	=	'Handbook - Smokeless tobacco'
ENL20i	=	'Handbook - Alcohol use'
ENL20j	=	'Handbook - Illegal drug possession/use'
ENL20k	=	'Handbook - ES playground safety'
ENL21	=	'Speed limit adjacent to sch'
ENL22	=	'Use hazard busing '
ENL23	=	'Promo use of public trans by students'
ENL24	=	'Promo use of public trans by fac/staff'
ENL25a	=	'Engine idling prog - School buses'
ENL25b	=	'Engine idling prog - Commercial vehicles'
ENL25c	=	'Engine idling prog - Personal vehicles'
ENL26a	=	'Paid/vol crossing guards'
ENL26b	=	'Walking sch bus'
ENL26c	=	'Law enf officials promo traffic safety'
ENL26d	=	'Law enf officials prev crime near sch'
ENL26e	=	'Bicycle racks'
ENL26f	=	'Traffic calming devices'
ENL26g	=	'Reduc speed during peak sch time'
ENL27	=	'Promo materials on walking/biking to sch'
ENL28	=	'% walk/bike to sch in am'
ENL29	=	'% walk/bike to sch in pm'
ENL30	=	'Prohib walk/bike to/from sch'
ENL31	=	'Joint use agree'
ENL32a	=	'Joint use -  Indoor recreation/PA'
ENL32b	=	'Joint use -  Outdoor recreation/PA'
ENL32c	=	'Joint use -  Library services '
ENL32d	=	'Joint use -  Preschool/infant child care prog'
ENL32e	=	'Joint use -  Before/after-sch prog '
ENL32f	=	'Joint use -  Adult ed prog'
ENL32g	=	'Joint use -  Hlthcare serv'
ENL32h	=	'Joint use -  Other activ/prog'
ENL33a	=	'Joint use -  Parks and recreation'
ENL33b	=	'Joint use -  Youth org'
ENL33c	=	'Joint use -  Faith-based org'
ENL33d	=	'Joint use -  Hlth club'
ENL33e	=	'Joint use -  Hlthcare facility'
ENL33f	=	'Joint use -  Library system'
ENL33g	=	'Joint use -  Other pub/private entity'
ENL33g_SPEC	=	'Joint use - Specify'
ENL34	=	'During 2012-13 - 4+ times students caught phys fighting'
ENL35_1	=	'Action when fighting - Zero-tolerance'
ENL35_2	=	'Action when fighting - Effect/severity of violation'
ENL35_3	=	'Action when fighting  - Grade level '
ENL35_4	=	'Action when fighting  - Victim v perpetrator'
ENL35_5	=	'Action when fighting - Repeat offender status'
ENL35_6	=	'Action when fighting  - None'
ENL36a	=	'When fighting - Ref to sch cnslr'
ENL36b	=	'When fighting - Ref to sch admin'
ENL36c	=	'When fighting - Ref to peer mediation'
ENL36d	=	'When fighting - Encour partic in assist/ed prog'
ENL36e	=	'When fighting - Req partic in assist/ed prog'
ENL36f	=	'When fighting - Ref to legal authorities '
ENL36g	=	'When fighting - Detention'
ENL36h	=	'When fighting - In-sch suspension'
ENL36i	=	'When fighting - No partic in activ/sports'
ENL36j	=	'When fighting - Suspended'
ENL36k	=	'When fighting - Expelled'
ENL36l	=	'When fighting - Reassigned to alt sch'
ENL37	=	'During 2012-13 - 4+ times students caught use/possess weapon'
ENL38_1	=	'Action when use/possess weapon - Zero-tolerance'
ENL38_2	=	'Action when use/possess weapon - Effect/severity of violation'
ENL38_3	=	'Action when use/possess weapon - Grade level '
ENL38_4	=	'Action when use/possess weapon - Repeat offender status'
ENL38_5	=	'Action when use/possess weapon - Type of weapon'
ENL38_6	=	'Action when use/possess weapon - Use v possession'
ENL38_7	=	'Action when use/possess weapon - None'
ENL39a	=	'When use/possess weapon - Ref to sch cnslr'
ENL39b	=	'When use/possess weapon - Ref to sch admin'
ENL39c	=	'When use/possess weapon - Encour partic in assist/ed prog'
ENL39d	=	'When use/possess weapon - Req partic in assist/ed prog'
ENL39e	=	'When use/possess weapon - Ref to legal authorities '
ENL39f	=	'When use/possess weapon - Detention'
ENL39g	=	'When use/possess weapon - In-sch suspension'
ENL39h	=	'When use/possess weapon - No partic in activ/sports'
ENL39i	=	'When use/possess weapon - Suspended'
ENL39j	=	'When use/possess weapon - Expelled'
ENL39k	=	'When use/possess weapon - Reassigned to alt sch'
ENL40	=	'Prohib gang activ'
ENL41a	=	'Past 2 years students helped dev/communic/impl violence prev pol/activ  '
ENL41b	=	'Past 2 years families helped dev/communic/impl violence prev pol/activ'
ENL41c	=	'Past 2 years cmty member helped dev/communic/impl violence prev pol/activ '
ENL42	=	'Signs posted for weapons-free sch zone'
ENL43	=	'Prohib bullying on sch property'
ENL44	=	'Prohib bullying at off-campus events'
ENL45	=	'During 2012-13, 4+ times caught bullying'
ENL46_1	=	'Action when bullying - Zero-tolerance'
ENL46_2	=	'Action when bullying - Effect/severity of violation'
ENL46_3	=	'Action when bullying - Grade level '
ENL46_4	=	'Action when bullying - Repeat offender status'
ENL46_5	=	'Action when bullying - Type of bullying'
ENL46_6	=	'Action when bullying - None'
ENL47a	=	'When bullying - Ref to sch cnslr'
ENL47b	=	'When bullying - Ref to sch admin'
ENL47c	=	'When bullying - Encour partic in assist/ed prog'
ENL47d	=	'When bullying - Req partic in assist/ed prog'
ENL47e	=	'When bullying - Ref to legal authorities'
ENL47f	=	'When bullying - Detention'
ENL47g	=	'When bullying - In-school suspension'
ENL47h	=	'When bullying - No partic in activ/sports'
ENL47i	=	'When bullying - Suspended'
ENL47j	=	'When bullying - Expelled'
ENL47k	=	'When bullying - Reassigned to alt sch'
ENL48	=	'Prohib cyber-bullying on sch property'
ENL49	=	'Prohib cyber-bullying at off-campus events'
ENL50	=	'Prohib cyber-bullying interfering with ed env'
ENL51	=	'During 2012-13, 4+ times caught cyber-bullying'
ENL52_1	=	'Action when cyber-bullying - Zero-tolerance'
ENL52_2	=	'Action when cyber-bullying - Effect/severity of violation'
ENL52_3	=	'Action when cyber-bullying - Grade level'
ENL52_4	=	'Action when cyber-bullying - Repeat offender status'
ENL52_5	=	'Action when cyber-bullying - None'
ENL53a	=	'When cyber-bullying - Ref to sch cnslr'
ENL53b	=	'When cyber-bullying - Ref to sch admin'
ENL53c	=	'When cyber-bullying - Encour partic in assist/ed prog'
ENL53d	=	'When cyber-bullying - Req partic in assist/ed prog'
ENL53e	=	'When cyber-bullying - Ref to legal authorities'
ENL53f	=	'When cyber-bullying - Detention'
ENL53g	=	'When cyber-bullying - In-sch suspension'
ENL53h	=	'When cyber-bullying - No partic in activ/sports'
ENL53i	=	'When cyber-bullying - Suspended'
ENL53j	=	'When cyber-bullying - Expelled'
ENL53k	=	'When cyber-bullying - Reassigned to alt sch'
ENL54a	=	'Partic in dating violence prev prog'
ENL54b	=	'Partic in gang violence prev prog'
ENL54c	=	'Partic in bullying prev prog'
ENL54d	=	'Partic in suicide prev prog'
ENL55	=	'Action plan for student suicide risk'
ENL56a	=	"Suicide plan - Inform student's family"
ENL56b	=	'Suicide plan - Req student ref to MH provider'
ENL56c	=	'Suicide plan - Req document visit to MH provider'
ENL57	=	'Gay/straight alliance club'
ENL58	=	'Prohib cig smoking '
ENL59a	=	'Prohib cig smoking - Sch bldg'
ENL59b	=	'Prohib cig smoking - Outside on sch grounds'
ENL59c	=	'Prohib cig smoking - Buses'
ENL59d	=	'Prohib cig smoking - Off-campus sch-sponsored events'
ENL60	=	'During 2012-13, 4+ times caught smoking'
ENL61_1	=	'Action when smoking cig - Zero-tolerance'
ENL61_2	=	'Action when smoking cig - Effect/severity of violation'
ENL61_3	=	'Action when smoking cig - Grade level'
ENL61_4	=	'Action when smoking cig - Repeat offender status'
ENL61_5	=	'Action when smoking cig - None'
ENL62a	=	'When smoking cig - Ref to sch cnslr'
ENL62b	=	'When smoking cig - Ref to sch admin'
ENL62c	=	'When smoking cig - Encour partic in assist/ed/cessation prog'
ENL62d	=	'When smoking cig - Req partic in assist/ed/cessation prog'
ENL62e	=	'When smoking cig - Ref to legal authorities'
ENL62f	=	'When smoking cig - Detention'
ENL62g	=	'When smoking cig - In-school suspension'
ENL62h	=	'When smoking cig - No partic in activ/sports'
ENL62i	=	'When smoking cig - Suspended'
ENL62j	=	'When smoking cig - Expelled'
ENL62k	=	'When smoking cig - Reassinged to alt sch'
ENL63	=	'Prohib cigar/pipe smoking '
ENL64	=	'Prohib smokeless tobacco use '
ENL65a	=	'Prohib smokeless tobacco use - Sch bldg'
ENL65b	=	'Prohib smokeless tobacco use - Outside on sch grounds'
ENL65c	=	'Prohib smokeless tobacco use - Sch buses'
ENL65d	=	'Prohib smokeless tobacco use - Off-campus sch-sponsored events'
ENL66	=	'During 2012-13, 4+ times caught use smokeless tobacco '
ENL67_1	=	'Action when use smokeless tobacco - Zero-tolerance'
ENL67_2	=	'Action when use smokeless tobacco - Effect/severity of violation'
ENL67_3	=	'Action when use smokeless tobacco - Grade level'
ENL67_4	=	'Action when use smokeless tobacco - Repeat offender status'
ENL67_5	=	'Action when use smokeless tobacco - None'
ENL68a	=	'When use smokeless tobacco - Ref to sch cnslr'
ENL68b	=	'When use smokeless tobacco - Ref to sch admin'
ENL68c	=	'When use smokeless tobacco - Encour to partic in assist/ed/cessation prog'
ENL68d	=	'When use smokeless tobacco - Req to partic in assist/ed/cessation prog'
ENL68e	=	'When use smokeless tobacco - Ref to legal authorities'
ENL68f	=	'When use smokeless tobacco - Detention'
ENL68g	=	'When use smokeless tobacco - In-home suspension'
ENL68h	=	'When use smokeless tobacco - No partic in activ/intersch sports'
ENL68i	=	'When use smokeless tobacco - Suspended'
ENL68j	=	'When use smokeless tobacco - Expelled'
ENL68k	=	'When use smokeless tobacco - Reassigned to alt sch'
ENL69a	=	'Prohib tobacco ads - School bldg'
ENL69b	=	'Prohib tobacco ads - Outside on sch grounds'
ENL69c	=	'Prohib tobacco ads - Buses'
ENL69d	=	'Prohib tobacco ads - Off-campus sch-sponsored events'
ENL69e	=	'Prohib tobacco ads - Sponsorship of sch events'
ENL70	=	'Prohib wearing tobacco brand apparel'
ENL71a	=	'Past 2 years students helped dev/communic/impl tob prev pol/activ '
ENL71b	=	'Past 2 years families helped dev/communic/impl tob prev pol/activ '
ENL71c	=	'Past 2 years cmty members helped dev/communic/impl tob prev pol/activ'
ENL72	=	'Signs posted tobacco-free sch zone'
ENL73	=	'MS/HS partic in youth empowerment/advocacy prog for tobacco use prev'
ENL74	=	'Prohib cig smoking by fac/staff'
ENL75a	=	'Prohib cig smoking by fac/staff - Sch bldg'
ENL75b	=	'Prohib cig smoking by fac/staff - Outside on sch grounds'
ENL75c	=	'Prohib cig smoking by fac/staff - Buses'
ENL75d	=	'Prohib cig smoking by fac/staff - Off-campus sch-sponsored events'
ENL76	=	'Prohib cigar/pipe smoking by fac/staff'
ENL77	=	'Prohib smokeless tobacco use by fac/staff'
ENL78a	=	'Prohib smokeless tobacco use by fac/staff - Sch bldg'
ENL78b	=	'Prohib smokeless tobacco use by fac/staff - Outside on sch grounds'
ENL78c	=	'Prohib smokeless tobacco use by fac/staff - Buses'
ENL78d	=	'Prohib smokeless tobacco use by fac/staff - Off-campus sch-sponsored events'
ENL79a	=	'Proc to inform fac/staff - Tobacco use'
ENL79b	=	'Proc to inform fac/staff - If break rules'
ENL80	=	'Prohib cig smoking by visitors'
ENL81a	=	'Prohib cig smoking by visitors - Sch bldg'
ENL81b	=	'Prohib cig smoking by visitors - Outside on sch grounds'
ENL81c	=	'Prohib cig smoking by visitors - Buses'
ENL81d	=	'Prohib cig smoking by visitors - Off-campus sch-sponsored events'
ENL82	=	'Prohib cigar/pipe smoking by visitors'
ENL83	=	'Prohib smokeless tobacco use by visitors'
ENL84a	=	'Prohib smokeless tobacco use by visitors - Sch bldg'
ENL84b	=	'Prohib smokeless tobacco use by visitors - Outside on sch grounds'
ENL84c	=	'Prohib smokeless tobacco use by visitors - Buses'
ENL84d	=	'Prohib smokeless tobacco use by visitors - Off-campus sch-sponsored events'
ENL85a	=	'Proc to inform visitors - Tobacco use'
ENL85b	=	'Proc to inform visitors - If break rules'
ENL86	=	'During 2012-13, 4+ times caught drinking alcohol'
ENL87_1	=	'Action when drinking alcohol - Zero-tolerance'
ENL87_2	=	'Action when drinking alcohol - Effect/severity of violation'
ENL87_3	=	'Action when drinking alcohol - Grade level'
ENL87_4	=	'Action when drinking alcohol - Repeat offender status'
ENL87_5	=	'Action when drinking alcohol - None'
ENL88a	=	'When drinking alcohol - Ref to sch cnslr'
ENL88b	=	'When drinking alcohol - Ref to sch admin'
ENL88c	=	'When drinking alcohol - Encour to partic in assist/ed/cessation prog'
ENL88d	=	'When drinking alcohol - Req to partic in assist/ed/cessation prog'
ENL88e	=	'When drinking alcohol - Ref to legal authorities'
ENL88f	=	'When drinking alcohol - Detention'
ENL88g	=	'When drinking alcohol - In-school suspension'
ENL88h	=	'When drinking alcohol - No partic in activ/intersch sports'
ENL88i	=	'When drinking alcohol - Suspended'
ENL88j	=	'When drinking alcohol - Expelled'
ENL88k	=	'When drinking alcohol - Reassigned to alt sch'
ENL89a	=	'Past 2 years students helped dev/communic/impl alcohol prev pol/activ'
ENL89b	=	'Past 2 years families helped dev/communic/impl alcohol prev pol/activ '
ENL89c	=	'Past 2 years cmty members helped dev/communic/impl alcohol prev pol/activ'
ENL90	=	'Partic in cmty-based alcohol use prev prog'
ENL91	=	'During 2012-13, 4+ times caught possess/use illegal drugs'
ENL92_1	=	'Action when use/possess illegal drugs - Zero-tolerance'
ENL92_2	=	'Action when use/possess illegal drugs - Effect/severity of violation'
ENL92_3	=	'Action when use/possess illegal drugs - Grade level'
ENL92_4	=	'Action when use/possess illegal drugs - Repeat offender status'
ENL92_5	=	'Action when use/possess illegal drugs - Type of drug'
ENL92_6	=	'Action when use/possess illegal drugs - None'
ENL93a	=	'When caught use/posess illegal drugs - Ref to sch cnslr'
ENL93b	=	'When caught use/posess illegal drugs - Ref to sch admin'
ENL93c	=	'When caught use/posess illegal drugs - Encour to partic in assist/ed/cessation prog'
ENL93d	=	'When caught use/posess illegal drugs - Req to partic in assist/ed/cessation prog'
ENL93e	=	'When caught use/posess illegal drugs - Ref to legal authority'
ENL93f	=	'When caught use/posess illegal drugs - Detention'
ENL93g	=	'When caught use/posess illegal drugs - In-school suspension'
ENL93h	=	'When caught use/posess illegal drugs - No partic in activ/sports'
ENL93i	=	'When caught use/posess illegal drugs - Suspended'
ENL93j	=	'When caught use/posess illegal drugs - Expelled'
ENL93k	=	'When caught use/posess illegal drugs - Reassigned to alt sch'
ENL94a	=	'Past 2 years students helped dev/communic/impl illegal drug prev pol/activ'
ENL94b	=	'Past 2 years families helped dev/communic/impl illegal drug prev pol/activ '
ENL94c	=	'Past 2 years cmty members helped dev/communic/impl illegal drug prev pol/activ '
ENL95	=	'Signs posted for drug-free sch zone '
ENL96	=	'Partic in cmty-based illegal drug-use prev prog'
ENL97	=	'MS/HS drug testing '
ENL98a	=	'MS/HS drug testing - Randomly w entire student pop'
ENL98b	=	'MS/HS drug testing - Randomly among members of specific groups'
ENL98c	=	'MS/HS drug testing  - Suspected of drug use'
ENL98d	=	'MS/HS drug testing  - Vol for all students/groups'
ENL98e	=	'MS/HS drug testing  - Other criteria'
ENL99a	=	'MS/HS test - Alcohol'
ENL99b	=	'MS/HS test  - Nicotine'
ENL99c	=	'MS/HS test - Cocaine'
ENL99d	=	'MS/HS test - Marijuana'
ENL99e	=	'MS/HS test - Opiates'
ENL99f	=	'MS/HS test - Amphetamines'
ENL99g	=	'MS/HS test - PCP'
ENL99h	=	'MS/HS test - Steroids'
ENL100_1	=	'MS/HS drug testing method - Breathalyzer'
ENL100_2	=	'MS/HS drug testing method - Urine'
ENL100_3	=	'MS/HS drug testing method - Hair'
ENL100_4	=	'MS/HS drug testing method - Saliva'
ENL100_5	=	'MS/HS drug testing method - Sweat'
ENL100_6	=	'MS/HS drug testing method - Other'
ENL101a	=	'Past 12 months, insp/maint - ES playground facilities/equipment'
ENL101b	=	'Past 12 months, insp/maint - Indoor athletic facilities'
ENL101c	=	'Past 12 months, insp/maint - Outdoor athletic facilities'
ENL101d	=	'Past 12 months, insp/maint - Special classroom areas'
ENL101e	=	'Past 12 months, insp/maint - Other areas'
ENL101f	=	'Past 12 months, insp/maint - Smoke alarms'
ENL101g	=	'Past 12 months, insp/maint - Fire extinguishers'
ENL101h	=	'Past 12 months, insp/maint - Sprinkler systems'
ENL101i	=	'Past 12 months, insp/maint - Lighting inside sch bldg'
ENL101j	=	'Past 12 months, insp/maint - Lighting outside sch bldg'
ENL101k	=	'Past 12 months, insp/maint - AEDs'
ENL102a	=	'Protective gear - Wood shop/metal shop'
ENL102b	=	'Protective gear - Lab activ'
ENL103	=	'Hearing protection devices'
ENL104	=	'ES req to use playground safety checklist'
ENL105	=	'Post safety rules for ES playground equipment'
ENL106a	=	'When ES student break safety rules - Use verbal redirection'
ENL106b	=	'When ES student break safety rules - Req to refrain from playing'
ENL106c	=	'When ES student break safety rules - No partic in next recess'
ENL106d	=	'when ES student break safety rules - Detention'
ENL106e	=	'When ES student break safety rules - Suspended'
ENL107	=	'HS parking permit agreement req seat belt use'
ENL108	=	'Proc to monitor seat belt use'
ENL109a	=	'Past 2 years students helped dev/communic/impl injury prev pol/activ'
ENL109b	=	'Past 2 years families helped dev/communic/impl injury prev pol/activ'
ENL109c	=	'Past 2 years cmty members helped dev/communic/impl injury prev pol/activ'
ENL110	=	'Sued for injury occuring on sch property'
ENL111	=	'Past 12 months, schedule outdoor activ to avoid peak sun'
ENL112a	=	'Parents asked to apply sunscreen before sch'
ENL112b	=	'Teach allow for sunscreen application'
ENL112c	=	'Teach remind suncreen application before outside'
ENL113	=	'Sunscreen avail for use'
ENL114	=	'Encouraged to wear protective clothing'
ENL115	=	'Encouraged to wear hats/visors in sun'
ENL116	=	'Prohib to wear hats/visors in sun'
ENL117	=	'Encouraged to wear sunglasses in sun'
ENL118	=	'Prohib to wear sunglasses in sun'
ENL119a	=	'Periodic Insp - Condensation'
ENL119b	=	'Periodic Insp - Bldg foundation/walls/roof'
ENL119c	=	'Periodic Insp - Mold'
ENL119d	=	'Periodic Insp - Plumbing system'
ENL119e	=	'Periodic Insp - HVAC system'
ENL119f	=	'Periodic Insp - Test drinking water for lead'
ENL119g	=	'Periodic Insp - Clutter preventing cleaning/maint'
ENL120	=	'Past 12 months insp for lead paint'
ENL121	=	'Past 12 months insp for PCBs in caulking'
ENL122	=	'Past 12 months insp for PCBs in fluorescent light ballasts'
ENL123	=	'How often pest insp'
ENL124	=	'How often notification prior to pesticides'
ENL125a	=	'Past 12 months maintain ASHRAE stds '
ENL125b	=	'Past 12 months seal openings'
ENL125c	=	'Past 12 months keep vegetation 1+ ft from bldgs'
ENL125d	=	'Past 12 months allow eating only in designated areas'
ENL125e	=	'Past 12 months store waste in plastic/glass/metal containers w lids'
ENL125f	=	'Past 12 months repair cracks in pavements/sidewalks'
ENL125g	=	'Past 12 months remove infested/diseased plants'
ENL125h	=	'Past 12 months use spot Tx rather than widespread pesticides'
ENL125i	=	'Past 12 months mark indoor/outdoor areas treated with pesticides'
ENL126	=	'How often MS/HS students req clean lockers '
ENL127	=	'How often ES students req clean desks'
ENL128	=	'How often ES students req clean cubbies'
ENL129	=	'How often clean desk tops'
ENL130	=	'Plan for mold problems'
ENL131	=	'Past 12 months moisture issues w/in 48 hrs'
ENL132	=	'Indoor air qual mgmt prog'
ENL133	=	'Program based on EPA Tools for Schools'
ENL134	=	'Ever test for radon '
ENL135	=	'School operates own water system'
ENL136a	=	'Past 12 months drinking water tested for bacteria'
ENL136b	=	'Past 12 months drinking water tested for coliforms'
ENL136c	=	'Past 12 months drinking water tested for other '
ENL137a	=	'Water test results prov - Staff'
ENL137b	=	'Water test results prov - Families'
ENL137c	=	'Water test results prov - Students'
ENL138	=	'Drinking water outlets flushed'
ENL139	=	'Purchase low-emitting products'
ENL140a	=	'Training - Use of hazrd materials'
ENL140b	=	'Training - Labeling of hazrd materials'
ENL140c	=	'Training - Storage of hazrd materials'
ENL140d	=	'Training - Disposal of hazrd materials'
ENL140e	=	'Training - Reduce use of hazrd materials'
ENL140f	=	'Training - Address mold prob'
ENL140g	=	'Training - Indoor air qual'
ENL140h	=	'Training - Drinking water qual'
ENL140i	=	'Training - Pest mgmt pract limiting use of pesticides'
ENL140j	=	'Training - Green cleaning products/pract'
ENL141	=	'Plan to address crisis prep'
ENL142	=	'Used materials from US DOE for crisis prep'
ENL143a	=	'Dev plan w - Fire dept'
ENL143b	=	'Dev plan w - Law enf agency'
ENL143c	=	'Dev plan w - EMS'
ENL143d	=	'Dev plan w - Pub transportation dept'
ENL143e	=	'Dev plan w - Hlth dept'
ENL143f	=	'Dev plan w - MH/SS agency'
ENL143g	=	'Dev plan w - Hospital'
ENL143h	=	'Dev plan w - DHS/emerg mgmt agency'
ENL144	=	'Worked w students/families/cmty members to dev crisis prep plan'
ENL145a	=	'Plan includes - Evacuation plans'
ENL145b	=	'Plan includes - Lock down plans'
ENL145c	=	'Plan includes - Proc to control exterior bldg/grounds'
ENL145d	=	'Plan includes - Shelter-in-place plans'
ENL145e	=	'Plan includes - Req to conduct reg emerg drills'
ENL145f	=	'Plan includes - Family reunification proc'
ENL145g	=	'Plan includes - Provisions for students/staff w special needs'
ENL145h	=	'Plan includes - Plans to resume normal activ'
ENL145i	=	'Plan includes - Provision of MH/SS for students/fac/staff'
ENL145j	=	'Plan includes - Mechanisms for communic w sch personnel'
ENL145k	=	'Plan includes - Establ of an incident command system'
ENL145l	=	'Plan includes - Proc for responding to media inquiries'
ENL145m	=	'Plan includes - Mechanisms for communic the plan to families'
ENL145n	=	'Plan includes - Req to review/revise emerg response plans'
ENL145o	=	'Plan includes - Proc for responding to flu/other inf dis outbreaks'
ENL145p	=	'Plan includes - Proc for impl unplanned dismissal/closure'
ENL146a	=	'Past 2 years prov crisis prep plan training - Sch faculty/staff'
ENL146b	=	'Past 2 years prov crisis prep plan training - Students '
ENL146c	=	'Past 2 years prov crisis prep plan training - Families'
ENL147	=	'Past 2 years prov training on crisis prep/response/recovery to families'
ENL148	=	'Past 12 months crisis prep plan eval/assessed'
ENL149	=	'Member of local emerg planning comm'
ENL150	=	'Serve as staging area/shelter'
ENL151	=	'NOAA weather radio'
ENL152a	=	'Past 12 months faculty prov families w direct line of communic'
ENL152b	=	'Past 12 months faculty prov families w opportunity to review curric'
ENL152c	=	'Past 12 months faculty prov families w copies of assignments'
ENL152d	=	'Past 12 months faculty contacted families to communic problems'
ENL152e	=	'Past 12 months faculty contacted families to communic praise'
ENL152f	=	'Past 12 months faculty encour families to vol'
ENL152g	=	'Past 12 months faculty  discussed w families ways to reinforce lrning at home'
ENL152h	=	'Past 12 months faculty requested families reg review homework'
ENL152i	=	'Past 12 months faculty encour families to attend parent-teach conference'
ENL152j	=	'Past 12 months faculty encour families partic in PTA meetings'
ENL153	=	'Students involved in dev sch/classroom rules'
ENL154	=	'Prov cmty serv opp for students'
ENL155a	=	'Cmty serv req for all students'
ENL155b	=	'Cmty serv req for specific grades'
ENL155c	=	'Cmty serv req for students who meet criteria'
ENL155d	=	'Cmty serv voluntary for all students'
ENL156	=	'Prov serv-lrning opp'
ENL157a	=	'Serv-lrning req for all students '
ENL157b	=	'Serv-lrning req for specific grades'
ENL157c	=	'Serv-lrning req for specific courses'
ENL158	=	'Partic in role model/mentor prog'
ENL159_0	=	'Grade partic in reg scheduled recess - K'
ENL159_1	=	'Grade partic in reg scheduled recess - 1st grade'
ENL159_2	=	'Grade partic in reg scheduled recess - 2nd grade'
ENL159_3	=	'Grade partic in reg scheduled recess - 3rd grade'
ENL159_4	=	'Grade partic in reg scheduled recess - 4th grade'
ENL159_5	=	'Grade partic in reg scheduled recess - 5th grade'
ENL159_6	=	'Grade partic in reg scheduled recess - 6th grade'
ENL159_7	=	'Grade partic in reg scheduled recess - None'
ENL160	=	'Days/week students have recess'
ENL161	=	'Min/day students spend in recess'
ENL162	=	'Classes that have reg recess immed before lunch'
ENL163	=	'Classes that have reg recess immed after lunch'
ENL164	=	'Prohib/discour excl from recess as punishment '
ENL165	=	'Recess structure'
ENL165_SPEC	=	'Specify'
ENL166	=	'Recess held outdoors, weather permitting'
ENL167	=	'Where recess when not outside'
ENL167_SPEC	=	'Where recess when not outside - Specify'
ENL168	=	'ES partic in reg PA breaks'
ENL169	=	'ES specified time/event for sch-wide PA '
ENL170	=	'MS/HS partic in reg PA breaks'
ENL171	=	'MS/HS specified time/event for sch-wide PA '
ENL172	=	'Prohib/discour food/food coupons - Good behav/academic performance'
ENL173	=	'Prohib/discour withholding food - Bad behav'
ENL174	=	'Food serv at parties - Fruits/veg off'
ENL175	=	'Food serv in after-sch/extended day prog - Fruits/veg off'
ENL176	=	'Food serv at concession stands - Fruits/veg off '
ENL177	=	'Food serv at parties - Whole grain foods off'
ENL178	=	'Food serv in after-sch/extended day prog  - Whole grain foods off'
ENL179	=	'Food serv a concession stands - Whole grain foods off '
ENL180	=	'Bev serv at student parties - Healthful bev off'
ENL181	=	'Bev served in after-sch/extended day prod - Healthful bev off'
ENL182	=	'Bev served at concession stands - Healthful bev off'
ENL183	=	'Prohib junk foods - Student parties'
ENL184	=	'Prohib junk foods - After-sch/extended day prog'
ENL185	=	'Prohib junk foods - Concession stands'
ENL186a	=	'Students purchase food/bev - 1+ vending machines'
ENL186b	=	'Students purchase food/bev - Sch store'
ENL187a	=	'Students purchase - Chocolate candy'
ENL187b	=	'Students purchase - Other candy'
ENL187c	=	'Students purchase - Baked goods not low in fat'
ENL187d	=	'Students purchase - Salty snacks not low in fat'
ENL187e	=	'Students purchase - Ice cream/frozen yogurt not low in fat'
ENL187f	=	'Students purchase - 2%/whole milk'
ENL187g	=	'Students purchase - Water ices/frozen slushes w no juice'
ENL188a	=	'Students purchase - Before classes in am'
ENL188b	=	'Students purchase - When meals not served'
ENL188c	=	'Students purchase - During lunch'
ENL189a	=	'Students purchase -  Baked goods low in fat'
ENL189b	=	'Students purchase -  Salty snacks low in fat'
ENL189c	=	'Students purchase -  Snacks low in sodium'
ENL189d	=	'Students purchase -  Whole grain bread products'
ENL189e	=	'Students purchase -  Bread products not whole grain'
ENL189f	=	'Students purchase -  Ice cream/frozen yogurt low in fat'
ENL189g	=	'Students purchase -  Yogurt low in fat'
ENL189h	=	'Students purchase -  Fruits/veg, not juice'
ENL189i	=	'Students purchase -  100% fruit juice'
ENL189j	=	'Students purchase -  100% veg juice'
ENL189k	=	'Students purchase -  1%/skim milk'
ENL189l	=	'Students purchase -  Bottled water'
ENL190a	=	'Students purchase healthy items - Before classes in am'
ENL190b	=	'Students purchase healthy items - When meals not served'
ENL190c	=	'Students purchase healthy items - During lunch'
ENL191a	=	'Students purchase -  Soda pop/fruit drinks not 100% juice'
ENL191b	=	'Students purchase -  Sports drinks'
ENL191c	=	'Students purchase -  Coffee/tea'
ENL191d	=	'Students purchase -  Sugar-sweetened bev'
ENL191e	=	'Students purchase -  Energy drinks'
ENL192a	=	'Students purchase bev -  Before classes in am'
ENL192b	=	'Students purchase bev - When meals not served'
ENL192c	=	'Students purchase bev -  During lunch'
ENL193	=	'Hlth foods intentionally priced lower than junk food'
ENL194	=	'Hlth bev intentionally priced lower than sugar-sweetened bev'
ENL195	=	'Past 12 months food/bev sold for fundraiser'
ENL196a	=	'Past 12 months, fundraising item - Chocolate candy'
ENL196b	=	'Past 12 months, fundraising item - Other candy'
ENL196c	=	'Past 12 months, fundraising item - Soda pop/fruit drinks not 100% juice'
ENL196d	=	'Past 12 months, fundraising item - Sports drinks'
ENL196e	=	'Past 12 months, fundraising item - Baked goods not low in fat'
ENL197a	=	'Students purchase fundraising item - Before classes in am'
ENL197b	=	'Students purchase fundraising item - When meals not served'
ENL197c	=	'Students purchase fundraising item - During lunch'
ENL198a	=	'Past 12 months, fundraising item - Fruits/vegs'
ENL198b	=	'Past 12 months, fundraising item - 100% fruit veg juices'
ENL198c	=	'Past 12 months, fundraising item - Baked goods low in fat'
ENL199a	=	'Students purchase healthy fundraising item - Before classes in am'
ENL199b	=	'Students purchase healthy fundraising item - When meals not served'
ENL199c	=	'Students purchase healthy fundraising item - During lunch'
ENL200	=	'Fundraiser nights at fast food restaurant'
ENL201	=	'Sell soft drinks in any venue'
ENL202	=	'Receive % of soft drink sales receipts'
ENL203	=	'Receive incentives '
ENL204	=	'Prohib selling soft drinks produced by >1 company'
ENL205a	=	'Soft drink co allowed to advertise - On vending machines'
ENL205b	=	'Soft drink co allowed to advertise - Elsewhere in sch bldg'
ENL205c	=	'Soft drink co allowed to advertise - On sch grounds'
ENL205d	=	'Soft drink co allowed to advertise - On buses'
ENL206	=	'Allow ad for junk/fast food on sch property'
ENL207	=	'Use ed materials that feature junk/fast food'
ENL208	=	'Junk/fast food promo through product distribution'
ENL209	=	'1+ sch hlth coordination group'
ENL210a	=	'Groups address - Tobacco use prev'
ENL210b	=	'Groups address - Alcohol/other drug use prev'
ENL210c	=	'Groups address - Food serv/nutr'
ENL210d	=	'Groups address - PE/PA'
ENL210e	=	'Groups address - Preg prev'
ENL210f	=	'Groups address - HIV prev'
ENL210g	=	'Groups address - STD prev'
ENL210h	=	'Groups address - Violence prev'
ENL210i	=	'Groups address - Injury prev/safety'
ENL210j	=	'Groups address - HE'
ENL210k	=	'Groups address - HSV'
ENL210l	=	'Groups address - MH/SS'
ENL210m	=	'Groups address - Sch climate'
ENL210n	=	'Groups address - FSHP'
ENL210o	=	'Groups address - Family/cmty involv'
ENL210p	=	'Groups address - Phys sch env'
ENL210q	=	'Groups address - Crisis prep'
ENL210r	=	'Groups address - Chronic hlth condition mgmt'
ENL210s	=	'Groups address - Infectious disease mgmt'
ENL210t	=	'Groups address - Foodborne illness mgmt'
ENL210u	=	'Groups address - Food allergy mgmt'
ENL210v	=	'Groups address - Local wellness pol'
ENL211_0	=	'Groups incl - ES teach'
ENL211_1	=	'Groups incl - HE teach'
ENL211_2	=	'Groups incl - PE teach'
ENL211_3	=	'Groups incl - HSV staff'
ENL211_4	=	'Groups incl - Nutr staff'
ENL211_5	=	'Groups incl - MH/SS staff'
ENL211_6	=	'Groups incl - Maint staff'
ENL211_7	=	'Groups incl - Transportation staff'
ENL211_8	=	'Groups incl - Technology staff'
ENL211_9	=	'Groups incl - Library/media ctr staff'
ENL211_10	=	'Groups incl - Dist admin'
ENL211_11	=	'Groups incl - Sch-level admin'
ENL211_12	=	'Groups incl - Students'
ENL211_13	=	'Groups incl - Families '
ENL212_1	=	'Groups incl - Hlth dept'
ENL212_2	=	'Groups incl - MH/SS agencies'
ENL212_3	=	'Groups incl - Hlthcare providers'
ENL212_4	=	'Groups incl - Hlth orgs'
ENL212_5	=	'Groups incl - Youth orgs'
ENL212_6	=	'Groups incl - Businesses'
ENL212_7	=	'Groups incl - Hosp'
ENL212_8	=	'Groups incl - Serv clubs'
ENL212_9	=	'Groups incl - Pub safety agencies'
ENL212_10	=	'Groups incl - Faith-based orgs'
ENL212_11	=	'Groups incl - Other local govt agencies'
ENL213a	=	'Groups - ID student hlth needs'
ENL213b	=	'Groups - Rec new/revised pol/activ'
ENL213c	=	'Groups - Seek funding'
ENL213d	=	'Groups - Review hlth curric'
ENL213e	=	'Groups - Communic importance of hlth and safety pol/activ'
ENL214	=	'Past 12 months, hlth coordination group met'
ENL215	=	'Sch used SHI/other self-assessment tools'
ENL216a	=	'SIP include - HE'
ENL216b	=	'SIP include - PE/PA'
ENL216c	=	'SIP include - NS and foods/bevs avail'
ENL216d	=	'SIP include - HSV'
ENL216e	=	'SIP include - MH/SS'
ENL216f	=	'SIP include - ENV'
ENL216g	=	'SIP include - FSHP'
ENL216h	=	'SIP include - Family and cmty involvement'
ENL217	=	'Sch person oversee/coordinate hlth and safety pol/activ'
ENL218	=	'R is person'
ENL219a	=	'R responsible for - Dev/assist sch hlth/safety pol materials'
ENL219b	=	'R responsible for - Securing funding'
ENL219c	=	'R responsible for - Communic hlth and safety priorities '
ENL219d	=	'R responsible for - Linking cmty-based resources to sch'
ENL219e	=	'R responsible for - Facilitating collaboration among sch staff'
ENL219f	=	'R responsible for - Serving as liaison between sch and dist level'
ENL219g	=	'R responsible for - Convening sch hlth council mtg'
ENL220	=	'R yrs coord sch hlth/safety pol/activ'
ENL221	=	'R has undergrad degree'
ENL222_1	=	'R major - HE'
ENL222_2	=	'R major - PE'
ENL222_3	=	'R major - Other ed'
ENL222_4	=	'R major - Kinesiology'
ENL222_5	=	'R major - Nursing'
ENL222_6	=	'R major - Nutr'
ENL222_7	=	'R major - Pub Hlth'
ENL222_8	=	'R major - Biology/other science'
ENL222_9	=	'R major - Home econ or family and consumer sci'
ENL222_10	=	'R major - Other '
ENL223	=	'R has undergrad minor'
ENL224_1	=	'R minor - HE'
ENL224_2	=	'R minor - PE'
ENL224_3	=	'R minor - Other ed'
ENL224_4	=	'R minor - Kinesiology'
ENL224_5	=	'R minor - Nursing'
ENL224_6	=	'R minor - Nutr'
ENL224_7	=	'R minor - Pub Hlth'
ENL224_8	=	'R minor - Biology/other science'
ENL224_9	=	'R minor - Home econ or family and consumer sci'
ENL224_10	=	'R minor - Other '
ENL225	=	'R has grad degree'
ENL226_1	=	'R grad degree - HE'
ENL226_2	=	'R grad degree - PE'
ENL226_3	=	'R grad degree - Ed admin'
ENL226_4	=	'R grad degree - Other ed'
ENL226_5	=	'R grad degree - Kinesiology'
ENL226_6	=	'R grad degree - Nursing'
ENL226_7	=	'R grad degree - Nutr'
ENL226_8	=	'R grad degree - Pub Hlth'
ENL226_9	=	'R grad degree - Biology/other science'
ENL226_10	=	'R grad degree - Home econ or family and consumer sci'
ENL226_11	=	'R grad degree - Other '
VendingMachine_flag	='R stated 0 VMs, Contact stated >0 VMs'
ENLM2='Job title from CMS for Module 2'
;
RUN;
