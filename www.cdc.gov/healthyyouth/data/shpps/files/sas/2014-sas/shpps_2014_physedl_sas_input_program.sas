
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
/*  "PHYSEDL_SAS_Input_Program.sas" to create the 2014 SHPPS dataset.                   */
/****************************************************************************************/

filename datain 'c:\shpps2014\physedl2014.dat';

libname dataout 'c:\shpps2014';

libname library 'c:\shpps2014';

data dataout.physedl2014;
infile datain lrecl=4000;
missing A C F N M ;
input
STATENAME	$1 	-	30
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
PELM1PAP	122	-	124
PELM2PAP	125	-	127
PEL1	128	-	130
PEL2	131	-	133
PEL3a	134	-	136
PEL3b	137	-	139
PEL3c	140	-	142
PEL4a	143	-	145
PEL4b	146	-	148
PEL4c	149	-	151
PEL4d	152	-	154
PEL4e	155	-	157
PEL4f	158	-	160
PEL5	161	-	163
PEL6a	164	-	166
PEL6b	167	-	169
PEL6c	170	-	172
PEL6d	173	-	175
PEL6e	176	-	178
PEL6f	179	-	181
PEL6g	182	-	184
PEL6h	185	-	187
PEL6i	188	-	190
PEL6j	191	-	193
PEL6k	194	-	196
PEL7	197	-	199
PEL8	200	-	202
PEL9a	203	-	205
PEL9b	206	-	208
PEL9c	209	-	211
PEL9d	212	-	214
PEL9e	215	-	217
PEL10_1	218	-	220
PEL10_2	221	-	223
PEL10_3	224	-	226
PEL10_4	227	-	229
PEL10_5	230	-	232
PEL10_6	233	-	235
PEL10_7	236	-	238
PEL10_8	239	-	241
PEL10_9	242	-	244
PEL10_10	245	-	247
PEL10_11	248	-	250
PEL10_12	251	-	253
PEL10_13	254	-	256
PEL10_14	257	-	259
PEL10_15	260	-	262
PEL10_16	263	-	265
PEL10_17	266	-	268
PEL10_18	269	-	271
PEL10_19	272	-	274
PEL10_20	275	-	277
PEL10_21	278	-	280
PEL10_22	281	-	283
PEL10_23	284	-	286
PEL10_24	287	-	289
PEL10_25	290	-	292
PEL10_26	293	-	295
PEL10_27	296	-	298
PEL10_28	299	-	301
PEL10_29	302	-	304
PEL10_30	305	-	307
PEL10_31	308	-	310
PEL11_1	311	-	313
PEL11_2	314	-	316
PEL11_3	317	-	319
PEL11_4	320	-	322
PEL11_5	323	-	325
PEL11_6	326	-	328
PEL11_7	329	-	331
PEL11_8	332	-	334
PEL11_9	335	-	337
PEL11_10	338	-	340
PEL11_11	341	-	343
PEL11_12	344	-	346
PEL12_1	347	-	349
PEL12_2	350	-	352
PEL12_3	353	-	355
PEL12_4	356	-	358
PEL12_5	359	-	361
PEL12_6	362	-	364
PEL13_1	365	-	367
PEL13_2	368	-	370
PEL13_3	371	-	373
PEL13_4	374	-	376
PEL13_5	377	-	379
PEL14_1	380	-	382
PEL14_2	383	-	385
PEL14_3	386	-	388
PEL15	389	-	391
PEL16_0	392	-	394
PEL16_1	395	-	397
PEL16_2	398	-	400
PEL16_3	401	-	403
PEL16_4	404	-	406
PEL16_5	407	-	409
PEL16_6	410	-	412
PEL16_7	413	-	415
PEL16_8	416	-	418
PEL16_9	419	-	421
PEL16_10	422	-	424
PEL16_11	425	-	427
PEL16_12	428	-	430
PEL17_0	431	-	433
PEL18_0	434	-	436
PEL19_0	437	-	439
PEL17_1	440	-	442
PEL18_1	443	-	445
PEL19_1	446	-	448
PEL17_2	449	-	451
PEL18_2	452	-	454
PEL19_2	455	-	457
PEL17_3	458	-	460
PEL18_3	461	-	463
PEL19_3	464	-	466
PEL17_4	467	-	469
PEL18_4	470	-	472
PEL19_4	473	-	475
PEL17_5	476	-	478
PEL18_5	479	-	481
PEL19_5	482	-	484
PEL17_6	485	-	487
PEL18_6	488	-	490
PEL19_6	491	-	493
PEL17_7	494	-	496
PEL18_7	497	-	499
PEL19_7	500	-	502
PEL17_8	503	-	505
PEL18_8	506	-	508
PEL19_8	509	-	511
PEL17_9	512	-	514
PEL18_9	515	-	517
PEL19_9	518	-	520
PEL17_10	521	-	523
PEL18_10	524	-	526
PEL19_10	527	-	529
PEL17_11	530	-	532
PEL18_11	533	-	535
PEL19_11	536	-	538
PEL17_12	539	-	541
PEL18_12	542	-	544
PEL19_12	545	-	547
PEL20	548	-	550
PEL21_1	$551	-	591
PEL21_2	$592	-	632
PEL21_3	$633	-	673
PEL21_4	$674	-	714
PEL21_5	$715	-	755
PEL21_6	$756	-	796
PEL21_7	$797	-	837
PEL21_8	$838	-	878
PEL21_9	$879	-	919
PEL21_10	$920	-	960
PEL21_11	$961	-	1001
PEL21_12	$1002	-	1042
PEL21_13	$1043	-	1083
PEL21_14	$1084	-	1124
PEL21_15	$1125	-	1165
PEL21_16	$1166	-	1206
PEL22_17	$1207	-	1247
PEL22_18	$1248	-	1288
PEL22_19	$1289	-	1329
PEL22_20	$1330	-	1370
PEL23_1	1371	-	1373
PEL24_1	1374	-	1376
PEL25_1	1377	-	1379
PEL26_1	1380	-	1382
PEL23_2	1383	-	1385
PEL24_2	1386	-	1388
PEL25_2	1389	-	1391
PEL26_2	1392	-	1394
PEL23_3	1395	-	1397
PEL24_3	1398	-	1400
PEL25_3	1401	-	1403
PEL26_3	1404	-	1406
PEL23_4	1407	-	1409
PEL24_4	1410	-	1412
PEL25_4	1413	-	1415
PEL26_4	1416	-	1418
PEL23_5	1419	-	1421
PEL24_5	1422	-	1424
PEL25_5	1425	-	1427
PEL26_5	1428	-	1430
PEL23_6	1431	-	1433
PEL24_6	1434	-	1436
PEL25_6	1437	-	1439
PEL26_6	1440	-	1442
PEL23_7	1443	-	1445
PEL24_7	1446	-	1448
PEL25_7	1449	-	1451
PEL26_7	1452	-	1454
PEL23_8	1455	-	1457
PEL24_8	1458	-	1460
PEL25_8	1461	-	1463
PEL26_8	1464	-	1466
PEL23_9	1467	-	1469
PEL24_9	1470	-	1472
PEL25_9	1473	-	1475
PEL26_9	1476	-	1478
PEL23_10	1479	-	1481
PEL24_10	1482	-	1484
PEL25_10	1485	-	1487
PEL26_10	1488	-	1490
PEL23_11	1491	-	1493
PEL24_11	1494	-	1496
PEL25_11	1497	-	1499
PEL26_11	1500	-	1502
PEL23_12	1503	-	1505
PEL24_12	1506	-	1508
PEL25_12	1509	-	1511
PEL26_12	1512	-	1514
PEL23_13	1515	-	1517
PEL24_13	1518	-	1520
PEL25_13	1521	-	1523
PEL26_13	1524	-	1526
PEL23_14	1527	-	1529
PEL24_14	1530	-	1532
PEL25_14	1533	-	1535
PEL26_14	1536	-	1538
PEL23_15	1539	-	1541
PEL24_15	1542	-	1544
PEL25_15	1545	-	1547
PEL26_15	1548	-	1550
PEL23_16	1551	-	1553
PEL24_16	1554	-	1556
PEL25_16	1557	-	1559
PEL26_16	1560	-	1562
PEL23_17	1563	-	1565
PEL24_17	1566	-	1568
PEL25_17	1569	-	1571
PEL26_17	1572	-	1574
PEL23_18	1575	-	1577
PEL24_18	1578	-	1580
PEL25_18	1581	-	1583
PEL26_18	1584	-	1586
PEL23_19	1587	-	1589
PEL24_19	1590	-	1592
PEL25_19	1593	-	1595
PEL26_19	1596	-	1598
PEL23_20	1599	-	1601
PEL24_20	1602	-	1604
PEL25_20	1605	-	1607
PEL26_20	1608	-	1610
PEL27	1611	-	1613
PEL28_1	$1614	-	1654
PEL28_2	$1655	-	1695
PEL28_3	$1696	-	1736
PEL28_4	$1737	-	1777
PEL28_5	$1778	-	1818
PEL28_6	$1819	-	1859
PEL28_7	$1860	-	1900
PEL28_8	$1901	-	1941
PEL28_9	$1942	-	1982
PEL28_10	$1983	-	2023
PEL28_11	$2024	-	2064
PEL28_12	$2065	-	2105
PEL28_13	$2106	-	2146
PEL28_14	$2147	-	2187
PEL28_15	$2188	-	2228
PEL28_16	$2229	-	2269
PEL29_17	$2270	-	2310
PEL29_18	$2311	-	2351
PEL29_19	$2352	-	2392
PEL29_20	$2393	-	2433
PEL30	2434	-	2436
PEL31_1	2437	-	2439
PEL32_1	2440	-	2442
PEL33_1	2443	-	2445
PEL34_1	2446	-	2448
PEL31_2	2449	-	2451
PEL32_2	2452	-	2454
PEL33_2	2455	-	2457
PEL34_2	2458	-	2460
PEL31_3	2461	-	2463
PEL32_3	2464	-	2466
PEL33_3	2467	-	2469
PEL34_3	2470	-	2472
PEL31_4	2473	-	2475
PEL32_4	2476	-	2478
PEL33_4	2479	-	2481
PEL34_4	2482	-	2484
PEL31_5	2485	-	2487
PEL32_5	2488	-	2490
PEL33_5	2491	-	2493
PEL34_5	2494	-	2496
PEL31_6	2497	-	2499
PEL32_6	2500	-	2502
PEL33_6	2503	-	2505
PEL34_6	2506	-	2508
PEL31_7	2509	-	2511
PEL32_7	2512	-	2514
PEL33_7	2515	-	2517
PEL34_7	2518	-	2520
PEL31_8	2521	-	2523
PEL32_8	2524	-	2526
PEL33_8	2527	-	2529
PEL34_8	2530	-	2532
PEL31_9	2533	-	2535
PEL32_9	2536	-	2538
PEL33_9	2539	-	2541
PEL34_9	2542	-	2544
PEL31_10	2545	-	2547
PEL32_10	2548	-	2550
PEL33_10	2551	-	2553
PEL34_10	2554	-	2556
PEL31_11	2557	-	2559
PEL32_11	2560	-	2562
PEL33_11	2563	-	2565
PEL34_11	2566	-	2568
PEL31_12	2569	-	2571
PEL32_12	2572	-	2574
PEL33_12	2575	-	2577
PEL34_12	2578	-	2580
PEL31_13	2581	-	2583
PEL32_13	2584	-	2586
PEL33_13	2587	-	2589
PEL34_13	2590	-	2592
PEL31_14	2593	-	2595
PEL32_14	2596	-	2598
PEL33_14	2599	-	2601
PEL34_14	2602	-	2604
PEL31_15	2605	-	2607
PEL32_15	2608	-	2610
PEL33_15	2611	-	2613
PEL34_15	2614	-	2616
PEL31_16	2617	-	2619
PEL32_16	2620	-	2622
PEL33_16	2623	-	2625
PEL34_16	2626	-	2628
PEL31_17	2629	-	2631
PEL32_17	2632	-	2634
PEL33_17	2635	-	2637
PEL34_17	2638	-	2640
PEL31_18	2641	-	2643
PEL32_18	2644	-	2646
PEL33_18	2647	-	2649
PEL34_18	2650	-	2652
PEL31_19	2653	-	2655
PEL32_19	2656	-	2658
PEL33_19	2659	-	2661
PEL34_19	2662	-	2664
PEL31_20	2665	-	2667
PEL32_20	2668	-	2670
PEL33_20	2671	-	2673
PEL34_20	2674	-	2676
PEL34extra	2677	-	2679
PEL35a	2680	-	2682
PEL35b	2683	-	2685
PEL36a	2686	-	2688
PEL36b	2689	-	2691
PEL37	2692	-	2694
PEL38_1	2695	-	2697
PEL38_2	2698	-	2700
PEL38_3	2701	-	2703
PEL39_1	2704	-	2706
PEL39_2	2707	-	2709
PEL39_3	2710	-	2712
PEL39_4	2713	-	2715
PEL40_1	2716	-	2718
PEL40_2	2719	-	2721
PEL40_3	2722	-	2724
PEL40_4	2725	-	2727
PEL41	2728	-	2730
PEL42	2731	-	2733
PEL43	2734	-	2736
PEL44	2737	-	2739
PEL45	2740	-	2742
PEL46	2743	-	2745
PEL47	2746	-	2748
PEL48	2749	-	2751
PEL49	2752	-	2754
PEL50a	2755	-	2757
PEL50b	2758	-	2760
PEL50c	2761	-	2763
PEL51_1	2764	-	2766
PEL51_2	2767	-	2769
PEL51_3	2770	-	2772
PEL51_4	2773	-	2775
PEL51_5	2776	-	2778
PEL51_6	2779	-	2781
PEL51_7	2782	-	2784
PEL52_1	2785	-	2787
PEL52_2	2788	-	2790
PEL52_3	2791	-	2793
PEL52_4	2794	-	2796
PEL52_5	2797	-	2799
PEL52_6	2800	-	2802
PEL52_7	2803	-	2805
PEL53	2806	-	2808
PEL54a	2809	-	2811
PEL54b	2812	-	2814
PEL54c	2815	-	2817
PEL54d	2818	-	2820
PEL54e	2821	-	2823
PEL54f	2824	-	2826
PEL54g	2827	-	2829
PEL54h	2830	-	2832
PEL55a	2833	-	2835
PEL55b	2836	-	2838
PEL55c	2839	-	2841
PEL56	2842	-	2844
PEL57a	2845	-	2847
PEL57b	2848	-	2850
PEL57c	2851	-	2853
PEL57d	2854	-	2856
PEL57e	2857	-	2859
PEL57f	2860	-	2862
PEL57g	2863	-	2865
PEL57h	2866	-	2868
PEL57i	2869	-	2871
PEL57j	2872	-	2874
PEL58	2875	-	2877
PEL59	2878	-	2880
PEL60	2881	-	2883
PEL61	2884	-	2886
PEL62	2887	-	2889
PEL63	2890	-	2892
PEL64a	2893	-	2895
PEL64b	2896	-	2898
PEL64c	2899	-	2901
PEL64d	2902	-	2904
PEL65a	2905	-	2907
PEL65b	2908	-	2910
PEL65c	2911	-	2913
PEL65d	2914	-	2916
PEL65e	2917	-	2919
PEL65f	2920	-	2922
PEL65g	2923	-	2925
PEL65h	2926	-	2928
PEL65i	2929	-	2931
PEL65j	2932	-	2934
PEL65k	2935	-	2937
PEL65l	2938	-	2940
PEL65m	2941	-	2943
PEL65n	2944	-	2946
PEL65o	2947	-	2949
PEL66a	2950	-	2952
PEL66b	2953	-	2955
PEL66c	2956	-	2958
PEL66d	2959	-	2961
PEL66e	2962	-	2964
PEL66f	2965	-	2967
PEL66g	2968	-	2970
PEL66h	2971	-	2973
PEL66i	2974	-	2976
PEL67a	2977	-	2979
PEL67b	2980	-	2982
PEL67c	2983	-	2985
PEL68	2986	-	2988
PEL69a	2989	-	2991
PEL69b	2992	-	2994
PEL69c	2995	-	2997
PEL70a	2998	-	3000
PEL70b	3001	-	3003
PEL70c	3004	-	3006
PEL70d	3007	-	3009
PEL70e	3010	-	3012
PEL70f	3013	-	3015
PEL70g	3016	-	3018
PEL70h	3019	-	3021
PEL70i	3022	-	3024
PEL70j	3025	-	3027
PEL70k	3028	-	3030
PEL70l	3031	-	3033
PEL70m	3034	-	3036
PEL70n	3037	-	3039
PEL70o	3040	-	3042
PEL70p	3043	-	3045
PEL70q	3046	-	3048
PEL70r	3049	-	3051
PEL70s	3052	-	3054
PEL70t	3055	-	3057
PEL70u	3058	-	3060
PEL70v	3061	-	3063
PEL70w	3064	-	3066
PEL70x	3067	-	3069
PEL70y	3070	-	3072
PEL70z	3073	-	3075
PEL70aa	3076	-	3078
PEL70bb	3079	-	3081
PEL70cc	3082	-	3084
PEL70dd	3085	-	3087
PEL70ee	3088	-	3090
PEL70ff	3091	-	3093
PEL70gg	3094	-	3096
PEL70hh	3097	-	3099
PEL70extra	3100	-	3102
PEL71a	3103	-	3105
PEL71b	3106	-	3108
PEL72	3109	-	3111
PEL73	3112	-	3114
PEL74	3115	-	3117
PEL75	3118	-	3120
PEL76	3121	-	3123
PEL77	3124	-	3126
PEL78	3127	-	3129
PEL79	3130	-	3132
PEL80a	3133	-	3135
PEL80b	3136	-	3138
PEL80c	3139	-	3141
PEL81a	3142	-	3144
PEL81b	3145	-	3147
PEL81c	3148	-	3150
PEL81d	3151	-	3153
PEL81e	3154	-	3156
PEL82a	3157	-	3159
PEL82b	3160	-	3162
PEL82c	3163	-	3165
PEL83a	3166	-	3168
PEL83b	3169	-	3171
PEL83c	3172	-	3174
PEL83d	3175	-	3177
PEL83e	3178	-	3180
PEL84	3181	-	3183
PEL85a	3184	-	3186
PEL85b	3187	-	3189
PEL85c	3190	-	3192
PEL85d	3193	-	3195
PEL85e	3196	-	3198
PEL86	3199	-	3201
PEL87	3202	-	3204
PEL88	3205	-	3207
PEL89	3208	-	3210
PEL90	3211	-	3213
PEL91_1	3214	-	3216
PEL91_2	3217	-	3219
PEL91_3	3220	-	3222
PEL91_4	3223	-	3225
PEL91_5	3226	-	3228
PEL91_5SPEC	$3229	-	3269
PEL92	3270	-	3272
PEL93_1	3273	-	3275
PEL93_2	3276	-	3278
PEL93_3	3279	-	3281
PEL93_4	3282	-	3284
PEL93_5	3285	-	3287
PEL93_5SPEC	$3288	-	3328
PEL94	3329	-	3331
PEL95_1	3332	-	3334
PEL95_2	3335	-	3337
PEL95_3	3338	-	3340
PEL95_4	3341	-	3343
PEL95_5	3344	-	3346
PEL95_5SPEC	$3347	-	3387
PEL96a	3388	-	3390
PEL96b	3391	-	3393
PEL96c	3394	-	3396
PEL98	3397	-	3399
PEL99a	3400	-	3402
PEL99b	3403	-	3405
PEL99c	3406	-	3408
PEL99d	3409	-	3411
PEL99e	3412	-	3414
PEL99f	3415	-	3417
PEL99g	3418	-	3420
PEL99h	3421	-	3423
PEL99i	3424	-	3426
PEL99j	3427	-	3429
PEL99k	3430	-	3432
PEL99l	3433	-	3435
PEL99m	3436	-	3438
PEL99n	3439	-	3441
PEL99o	3442	-	3444
PEL99p	3445	-	3447
PEL99q	3448	-	3450
PEL99r	3451	-	3453
PEL99s	3454	-	3456
PEL99t	3457	-	3459
PEL99u	3460	-	3462
PEL99v	3463	-	3465
PEL99w	3466	-	3468
PEL99extra	3469	-	3471
PEL100a	3472	-	3474
PEL100b	3475	-	3477
PEL101	3478	-	3480
PEL102	3481	-	3483
PEL103	3484	-	3486
PEL104	3487	-	3489
PEL105	3490	-	3492
PEL106	3493	-	3495
PEL107	3496	-	3498
PEL108a	3499	-	3501
PEL108b	3502	-	3504
PEL108c	3505	-	3507
PEL108d	3508	-	3510
PEL108e	3511	-	3513
PEL108f	3514	-	3516
PEL108g	3517	-	3519
PEL108h	3520	-	3522
PEL108i	3523	-	3525
PEL108j	3526	-	3528
PEL109a	3529	-	3531
PEL109b	3532	-	3534
PEL110a	3535	-	3537
PEL110b	3538	-	3540
PEL110c	3541	-	3543
PEL110d	3544	-	3546
PEL110e	3547	-	3549
PEL110f	3550	-	3552
PEL110g	3553	-	3555
PEL110h	3556	-	3558
PEL110i	3559	-	3561
PEL111	3562	-	3564
PEL112	3565	-	3567
PEL113a	3568	-	3570
PEL113b	3571	-	3573
PEL114	3574	-	3576
;
************************************
*  Assign formats to SAS variables.*
************************************;

format

PEL1 PEL98
jobtitle.


/*PHYSICAL EDUCATION SCHOOL*/
PEL2 PEL3A PEL3B PEL3C PEL4A PEL4B PEL4C PEL4D PEL4E PEL4F PEL5 PEL6A PEL6B PEL6C PEL6D PEL6E PEL6F PEL6G PEL6H PEL6I PEL6J
PEL6K PEL7 PEL8 PEL9A PEL9B PEL9C PEL9D PEL9E PEL10_1 PEL10_2 PEL10_3 PEL10_4 PEL10_5 PEL10_6 PEL10_7 PEL10_8 PEL10_9 PEL10_10 PEL10_11 
PEL10_12 PEL10_13 PEL10_14 PEL10_15 PEL10_16 PEL10_17 PEL10_18 PEL10_19 PEL10_20 PEL10_21 PEL10_22 PEL10_23 PEL10_24 PEL10_25 PEL10_26 PEL10_27 
PEL10_28 PEL10_29 PEL10_30 PEL10_31 PEL11_1 PEL11_2 PEL11_3 PEL11_4 PEL11_5 PEL11_6 PEL11_7 PEL11_8 PEL11_9 PEL11_10 PEL11_11 PEL11_12
PEL12_1 PEL12_2 PEL12_3 PEL12_4 PEL12_5 PEL12_6 PEL13_1 PEL13_2 PEL13_3 PEL13_4 PEL13_5 PEL14_1 PEL14_2 PEL14_3 PEL15 PEL27
PEL35A PEL35B PEL36A PEL36B PEL37 PEL38_1 PEL38_2 PEL38_3 PEL39_1 PEL39_2 PEL39_3 PEL39_4 PEL40_1 PEL40_2 PEL40_3 PEL40_4 PEL42 PEL44
PEL45 PEL46 PEL47 PEL48 PEL49 PEL50A PEL50B PEL50C PEL51_1 PEL51_2 PEL51_3 PEL51_4 PEL51_5 PEL51_6 PEL51_7 PEL52_1 PEL52_2 PEL52_3 
PEL52_4 PEL52_5 PEL52_6 PEL52_7 PEL53 PEL57A PEL57B PEL57C PEL57D PEL57E 
PEL57F PEL57G PEL57H PEL57I PEL57J PEL58 PEL59 PEL61 PEL63 PEL65A PEL65B PEL65C PEL65D PEL65E PEL65F PEL65G PEL65H PEL65I 
PEL65J PEL65K PEL65L PEL65M PEL65N PEL65O PEL66A PEL66B PEL66C PEL66D PEL66E PEL66F PEL66G PEL66H PEL66I PEL67A PEL67B PEL67C
PEL68 PEL69A PEL69B PEL69C PEL70A PEL70B PEL70C PEL70D PEL70E PEL70F PEL70G PEL70H PEL70I PEL70J PEL70K PEL70L PEL70M 
PEL70N PEL70O PEL70P PEL70Q PEL70R PEL70S PEL70T PEL70U PEL70V PEL70W PEL70X PEL70Y PEL70Z PEL70AA PEL70BB PEL70CC PEL70DD 
PEL70EE PEL70FF PEL70GG PEL70HH PEL71A PEL71B PEL73 PEL74 PEL75 PEL76 PEL77 PEL78 PEL80A PEL80B PEL80C PEL81A PEL81B PEL81C 
PEL81D PEL81E PEL82A PEL82B PEL82C PEL83A PEL83B PEL83C PEL83D PEL83E PEL85A PEL85B PEL85C PEL85D PEL85E PEL86 PEL87 PEL89
PEL90 PEL91_1 PEL91_2 PEL91_3 PEL91_4 PEL91_5 PEL92 PEL93_1 PEL93_2 PEL93_3 PEL93_4 PEL93_5 PEL94 PEL95_1 PEL95_2 PEL95_3 PEL95_4 PEL95_5
PEL99A PEL99B PEL99C PEL99D PEL99E PEL99F PEL99G PEL99H PEL99I PEL99J PEL99K PEL99L PEL99M PEL99N PEL99O PEL99P PEL99Q PEL99R PEL99S PEL99T
PEL99U PEL99V PEL99W  PEL100A  PEL100B PEL102 PEL103 PEL104 PEL105 PEL106 PEL109A PEL109B PEL110A PEL110B PEL110C PEL110E
PEL110F PEL110G PEL110H PEL110I PEL112 PEL113A PEL113B PEL114 PEL20 PEL110d PEL34extra PEL70extra PEL99extra
PEL54a PEL54B PEL54C PEL54D PEL54E PEL54F PEL54G PEL54H
yesno.

PEL16_0 PEL16_1 PEL16_2 PEL16_3 PEL16_4 PEL16_5 PEL16_6 PEL16_7 PEL16_8 PEL16_9 PEL16_10 PEL16_11 PEL16_12  yesno.
PEL18_0 PEL18_1 PEL18_2 PEL18_3 PEL18_4 PEL18_5 PEL18_6 PEL18_7 PEL18_8 PEL18_9 PEL18_10 PEL18_11 PEL18_12 PEL18F.
PEL23_1 PEL23_2 PEL23_3 PEL23_4 PEL23_5 PEL23_6 PEL23_7 PEL23_8 PEL23_9 PEL23_10 PEL23_11 PEL23_12 PEL23_13 PEL23_14 PEL23_15 PEL23_16 PEL23_17 PEL23_18 PEL23_19
PEL23_20 PEL23F.
PEL25_1 PEL25_2 PEL25_3 PEL25_4 PEL25_5 PEL25_6 PEL25_7 PEL25_8 PEL25_9 PEL25_10 PEL25_11 
PEL25_12 PEL25_13 PEL25_14 PEL25_15 PEL25_16 PEL25_17 PEL25_18 PEL25_19 PEL25_20  PEL25F.
PEL31_1 PEL31_2 PEL31_3 PEL31_4 PEL31_5 PEL31_6 PEL31_7 PEL31_8 PEL31_9 PEL31_10 PEL31_11 PEL31_12 PEL31_13 
PEL31_14 PEL31_15 PEL31_16 PEL31_17 PEL31_18 PEL31_19 PEL31_20
PEL31F.
PEL33_1 PEL33_2 PEL33_3 PEL33_4 PEL33_5 PEL33_6 PEL33_7 PEL33_8 PEL33_9 PEL33_10 PEL33_11 
PEL33_12 PEL33_13 PEL33_14 PEL33_15 PEL33_16 PEL33_17 PEL33_18 PEL33_19 PEL33_20 PEL33F. 
PEL38_1 PEL38_2 PEL38_3 yesno. 
PEL41 PEL41F.
PEL43 PEL43F. PEL56 PEL56F. PEL62 PEL62F. PEL64A PEL64AF. PEL64B PEL64BF. PEL64C PEL64CF. PEL64D PEL64DF. 
PEL72 PEL72F. PEL79 PEL79F. PEL84 PEL84F. PEL96A PEL96B PEL96C PEL96F. PEL107 PEL107F. PEL111 PEL111F.

PEL101 PEL101F.

PEL55A PEL55B PEL55C
yesnona.

PEL108A PEL108B PEL108C PEL108D PEL108E PEL108F PEL108G PEL108H PEL108I PEL108J 
howoften.



SPAN
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

PELM1PAP
PELM2PAP
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
PELM1PAP	=	'Mail - CAPI Complete Module 1'
PELM2PAP	=	'Mail - CAPI Complete Module1 2'
PEL1	=	'Job title'
PEL2	=	'Sch follow national, state, or district PE stds'
PEL3a	=	'PE staff prov w - 1+ PE curricula'
PEL3b	=	'PE staff prov w - Lesson plans or lrning activ for PE'
PEL3c	=	'PE staff prov w - Plans for assessing students in PE'
PEL4a	=	'PE stds - Motor skills/movement patterns'
PEL4b	=	'PE stds - Movement concepts/principles'
PEL4c	=	'PE stds - Reg partic in PA'
PEL4d	=	'PE stds - Achieve/maint fitness'
PEL4e	=	'PE stds - Resp personal/soc behav '
PEL4f	=	'PE stds - Value PA'
PEL5	=	'PE req for gradn/promo'
PEL6a	=	'PE exempt - Religious '
PEL6b	=	'PE exempt - Phys/Medical disability'
PEL6c	=	'PE exempt - Cognitive disability'
PEL6d	=	'PE exempt - High fitness test scores'
PEL6e	=	'ES/MS PE exempt - Partic in sch activ'
PEL6f	=	'HS PE exempt - Partic in sch activ'
PEL6g	=	'PE exempt - Partic in cmty sports '
PEL6h	=	'PE exempt - Partic in cmty serv '
PEL6i	=	'MS/HS PE exempt - Enrollment in other courses'
PEL6j	=	'MS/HS PE exempt - Partic in sch sports'
PEL6k	=	'MS/HS PE exempt - Partic in voc training'
PEL7	=	'Prohib PE exempt >1 grading period'
PEL8	=	'PE excused for instr time'
PEL9a	=	'ES Req instr - Movement concepts'
PEL9b	=	'Req instr - Indv/paired activ'
PEL9c	=	'Req instr - Group/team activ'
PEL9d	=	'Req instr - Aquatic activ'
PEL9e	=	'Req instr - Dance activ'
PEL10_1	=	'Req instr - Aerobics'
PEL10_2	=	'Req instr - Archery'
PEL10_3	=	'Req instr - Badminton'
PEL10_4	=	'Req instr - Bowling'
PEL10_5	=	'Req instr - Canoeing/kayaking'
PEL10_6	=	'Req instr - Cardio machines'
PEL10_7	=	'Req instr - Climbing ropes'
PEL10_8	=	'Req instr - Climbing walls'
PEL10_9	=	'Req instr - Frisbee/frisbee golf'
PEL10_10	=	'Req instr - Golf'
PEL10_11	=	'Req instr - Gymnastics'
PEL10_12	=	'Req instr - Hiking/backpacking/orienteering'
PEL10_13	=	'Req instr - Jumping rope'
PEL10_14	=	'Req instr - Martial arts'
PEL10_15	=	'Req instr - Non-stationary bicycling'
PEL10_16	=	'Req instr - Phys activ/fitness stations'
PEL10_17	=	'Req instr - Pilates'
PEL10_18	=	'Req instr - Racquet sports other than tennis'
PEL10_19	=	'Req instr - Rock climbing'
PEL10_20	=	'Req instr - Running/jogging'
PEL10_21	=	'Req instr - Skating'
PEL10_22	=	'Req instr - Skiing'
PEL10_23	=	'Req instr - Student-designed games'
PEL10_24	=	'Req instr - Table tennis/Ping-Pong'
PEL10_25	=	'Req instr - Tennis'
PEL10_26	=	'Req instr - Track and field'
PEL10_27	=	'Req instr - Walking'
PEL10_28	=	'Req instr - Weight training'
PEL10_29	=	'Req instr - Wrestling'
PEL10_30	=	'Req instr - Yoga'
PEL10_31	=	'Req instr - None of above'
PEL11_1	=	'Req instr - Baseball/softball/whiffleball'
PEL11_2	=	'Req instr - Basketball'
PEL11_3	=	'Req instr - Dodgeball/bombardment'
PEL11_4	=	'Req instr - Football'
PEL11_5	=	'Req instr - Hockey'
PEL11_6	=	'Req instr - Kickball'
PEL11_7	=	'Req instr - Lacrosse'
PEL11_8	=	'Req instr - Soccer'
PEL11_9	=	'Req instr - Student-designed games'
PEL11_10	=	'Req instr - Ultimate frisbee'
PEL11_11	=	'Req instr - Volleyball'
PEL11_12	=	'Req instr - None of above'
PEL12_1	=	'ES req instr - Duck-duck-goose'
PEL12_2	=	'ES req instr - Elimination tag'
PEL12_3	=	'ES req instr - King of the hill/capture the flag'
PEL12_4	=	'ES req instr - Red rover'
PEL12_5	=	'ES req instr - Relay races'
PEL12_6	=	'ES req instr - None of above'
PEL13_1	=	'Req instr - Folk/multi-cultural dances'
PEL13_2	=	'Req instr - Performing art dances'
PEL13_3	=	'Req instr - Social dances'
PEL13_4	=	'Req instr - Square dances'
PEL13_5	=	'Req instr - None of above'
PEL14_1	=	'PE - Req, but not in specific grade'
PEL14_2	=	'PE - Req in specific grade'
PEL14_3	=	'PE - Not req'
PEL15	=	'Confirm PE  req'
PEL16_0	=	'PE req - K '
PEL16_1	=	'PE req -  1st grade'
PEL16_2	=	'PE req -  2nd grade'
PEL16_3	=	'PE req -  3rd grade'
PEL16_4	=	'PE req -  4th grade'
PEL16_5	=	'PE req -  5th grade'
PEL16_6	=	'PE req -  6th grade'
PEL16_7	=	'PE req -  7th grade'
PEL16_8	=	'PE req -  8th grade'
PEL16_9	=	'PE req -  9th grade '
PEL16_10	=	'PE req -  10th grade'
PEL16_11	=	'PE req -  11th grade'
PEL16_12	=	'PE req -  12th grade'
PEL17_0	=	'Weeks PE req - K'
PEL18_0	=	'Days/Week PE req - K'
PEL19_0	=	'Minutes/Day PE req - K'
PEL17_1	=	'Weeks PE req - 1st grade'
PEL18_1	=	'Days/Week PE req - 1st grade'
PEL19_1	=	'Minutes/Day PE req - 1st grade'
PEL17_2	=	'Weeks PE req - 2nd grade'
PEL18_2	=	'Days/Week PE req - 2nd grade'
PEL19_2	=	'Minutes/Day PE req - 2nd grade'
PEL17_3	=	'Weeks PE req - 3rd grade'
PEL18_3	=	'Days/Week PE req - 3rd grade'
PEL19_3	=	'Minutes/Day PE req - 3rd grade'
PEL17_4	=	'Weeks PE req - 4th grade'
PEL18_4	=	'Days/Week PE req - 4th grade'
PEL19_4	=	'Minutes/Day PE req - 4th grade'
PEL17_5	=	'Weeks PE req - 5th grade'
PEL18_5	=	'Days/Week PE req - 5th grade'
PEL19_5	=	'Minutes/Day PE req - 5th grade'
PEL17_6	=	'Weeks PE req - 6th grade'
PEL18_6	=	'Days/Week PE req - 6th grade'
PEL19_6	=	'Minutes/Day PE req - 6th grade'
PEL17_7	=	'Weeks PE req - 7th grade'
PEL18_7	=	'Days/Week PE req - 7th grade'
PEL19_7	=	'Minutes/Day PE req - 7th grade'
PEL17_8	=	'Weeks PE req - 8th grade'
PEL18_8	=	'Days/Week PE req - 8th grade'
PEL19_8	=	'Minutes/Day PE req - 8th grade'
PEL17_9	=	'Weeks PE req - 9th grade'
PEL18_9	=	'Days/Week PE req - 9th grade'
PEL19_9	=	'Minutes/Day PE req - 9th grade'
PEL17_10	=	'Weeks PE req - 10th grade'
PEL18_10	=	'Days/Week PE req - 10th grade'
PEL19_10	=	'Minutes/Day PE req - 10th grade'
PEL17_11	=	'Weeks PE req - 11th grade'
PEL18_11	=	'Days/Week PE req - 11th grade'
PEL19_11	=	'Minutes/Day PE req - 11th grade'
PEL17_12	=	'Weeks PE req - 12th grade'
PEL18_12	=	'Days/Week PE req - 12th grade'
PEL19_12	=	'Minutes/Day PE req - 12th grade'
PEL20	=	'Req PE courses'
PEL21_1	=	'Req PE course - Course 1'
PEL21_2	=	'Req PE course - Course 2'
PEL21_3	=	'Req PE course - Course 3'
PEL21_4	=	'Req PE course - Course 4'
PEL21_5	=	'Req PE course - Course 5'
PEL21_6	=	'Req PE course - Course 6'
PEL21_7	=	'Req PE course - Course 7'
PEL21_8	=	'Req PE course - Course 8'
PEL21_9	=	'Req PE course - Course 9'
PEL21_10	=	'Req PE course - Course 10'
PEL21_11	=	'Req PE course - Course 11'
PEL21_12	=	'Req PE course - Course 12'
PEL21_13	=	'Req PE course - Course 13'
PEL21_14	=	'Req PE course - Course 14'
PEL21_15	=	'Req PE course - Course 15'
PEL21_16	=	'Req PE course - Course 16'
PEL22_17	=	'Req PE course - Course 17'
PEL22_18	=	'Req PE course - Course 18'
PEL22_19	=	'Req PE course - Course 19'
PEL22_20	=	'Req PE course - Course 20'
PEL23_1	=	'Course 1 - Usual Grade'
PEL24_1	=	'Course 1 - Weeks'
PEL25_1	=	'Course 1 - Days/week'
PEL26_1	=	'Course 1 - Minutes/day'
PEL23_2	=	'Course 2 - Usual Grade'
PEL24_2	=	'Course 2 - Weeks'
PEL25_2	=	'Course 2 - Days/week'
PEL26_2	=	'Course 2 - Minutes/day'
PEL23_3	=	'Course 3 - Usual Grade'
PEL24_3	=	'Course 3 - Weeks'
PEL25_3	=	'Course 3 - Days/week'
PEL26_3	=	'Course 3 - Minutes/day'
PEL23_4	=	'Course 4 - Usual Grade'
PEL24_4	=	'Course 4 - Weeks'
PEL25_4	=	'Course 4 - Days/week'
PEL26_4	=	'Course 4 - Minutes/day'
PEL23_5	=	'Course 5 - Usual Grade'
PEL24_5	=	'Course 5 - Weeks'
PEL25_5	=	'Course 5 - Days/week'
PEL26_5	=	'Course 5 - Minutes/day'
PEL23_6	=	'Course 6 - Usual Grade'
PEL24_6	=	'Course 6 - Weeks'
PEL25_6	=	'Course 6 - Days/week'
PEL26_6	=	'Course 6 - Minutes/day'
PEL23_7	=	'Course 7 - Usual Grade'
PEL24_7	=	'Course 7 - Weeks'
PEL25_7	=	'Course 7 - Days/week'
PEL26_7	=	'Course 7 - Minutes/day'
PEL23_8	=	'Course 8 - Usual Grade'
PEL24_8	=	'Course 8 - Weeks'
PEL25_8	=	'Course 8 - Days/week'
PEL26_8	=	'Course 8 - Minutes/day'
PEL23_9	=	'Course 9 - Usual Grade'
PEL24_9	=	'Course 9 - Weeks'
PEL25_9	=	'Course 9 - Days/week'
PEL26_9	=	'Course 9 - Minutes/day'
PEL23_10	=	'Course 10 - Usual Grade'
PEL24_10	=	'Course 10 - Weeks'
PEL25_10	=	'Course 10 - Days/week'
PEL26_10	=	'Course 10 - Minutes/day'
PEL23_11	=	'Course 11 - Usual Grade'
PEL24_11	=	'Course 11 - Weeks'
PEL25_11	=	'Course 11 - Days/week'
PEL26_11	=	'Course 11 - Minutes/day'
PEL23_12	=	'Course 12 - Usual Grade'
PEL24_12	=	'Course 12 - Weeks'
PEL25_12	=	'Course 12 - Days/week'
PEL26_12	=	'Course 12 - Minutes/day'
PEL23_13	=	'Course 13 - Usual Grade'
PEL24_13	=	'Course 13 - Weeks'
PEL25_13	=	'Course 13 - Days/week'
PEL26_13	=	'Course 13 - Minutes/day'
PEL23_14	=	'Course 14 - Usual Grade'
PEL24_14	=	'Course 14 - Weeks'
PEL25_14	=	'Course 14 - Days/week'
PEL26_14	=	'Course 14 - Minutes/day'
PEL23_15	=	'Course 15 - Usual Grade'
PEL24_15	=	'Course 15 - Weeks'
PEL25_15	=	'Course 15 - Days/week'
PEL26_15	=	'Course 15 - Minutes/day'
PEL23_16	=	'Course 16 - Usual Grade'
PEL24_16	=	'Course 16 - Weeks'
PEL25_16	=	'Course 16 - Days/week'
PEL26_16	=	'Course 16 - Minutes/day'
PEL23_17	=	'Course 17 - Usual Grade'
PEL24_17	=	'Course 17 - Weeks'
PEL25_17	=	'Course 17 - Days/week'
PEL26_17	=	'Course 17 - Minutes/day'
PEL23_18	=	'Course 18 - Usual Grade'
PEL24_18	=	'Course 18 - Weeks'
PEL25_18	=	'Course 18 - Days/week'
PEL26_18	=	'Course 18 - Minutes/day'
PEL23_19	=	'Course 19 - Usual Grade'
PEL24_19	=	'Course 19 - Weeks'
PEL25_19	=	'Course 19 - Days/week'
PEL26_19	=	'Course 19 - Minutes/day'
PEL23_20	=	'Course 20 - Usual Grade'
PEL24_20	=	'Course 20 - Weeks'
PEL25_20	=	'Course 20 - Days/week'
PEL26_20	=	'Course 20 - Minutes/day'
PEL27	=	'Req Elective PE courses'
PEL28_1	=	'Req Elective PE courses - Course 1'
PEL28_2	=	'Req Elective PE courses - Course 2'
PEL28_3	=	'Req Elective PE courses - Course 3'
PEL28_4	=	'Req Elective PE courses - Course 4'
PEL28_5	=	'Req Elective PE courses - Course 5'
PEL28_6	=	'Req Elective PE courses - Course 6'
PEL28_7	=	'Req Elective PE courses - Course 7'
PEL28_8	=	'Req Elective PE courses - Course 8'
PEL28_9	=	'Req Elective PE courses - Course 9'
PEL28_10	=	'Req Elective PE courses - Course 10'
PEL28_11	=	'Req Elective PE courses - Course 11'
PEL28_12	=	'Req Elective PE courses - Course 12'
PEL28_13	=	'Req Elective PE courses - Course 13'
PEL28_14	=	'Req Elective PE courses - Course 14'
PEL28_15	=	'Req Elective PE courses - Course 15'
PEL28_16	=	'Req Elective PE courses - Course 16'
PEL29_17	=	'Req Elective PE courses - Course 17'
PEL29_18	=	'Req Elective PE courses - Course 18'
PEL29_19	=	'Req Elective PE courses - Course 19'
PEL29_20	=	'Req Elective PE courses - Course 20'
PEL30	=	'Number elective PE courses req'
PEL31_1	=	'Elective course 1 - Usual Grade'
PEL32_1	=	'Elective course 1 - Weeks'
PEL33_1	=	'Elective course 1 - Days/week'
PEL34_1	=	'Elective course 1 - Minutes/day'
PEL31_2	=	'Elective course 2 - Usual Grade'
PEL32_2	=	'Elective course 2 - Weeks'
PEL33_2	=	'Elective course 2 - Days/week'
PEL34_2	=	'Elective course 2 - Minutes/day'
PEL31_3	=	'Elective course 3 - Usual Grade'
PEL32_3	=	'Elective course 3 - Weeks'
PEL33_3	=	'Elective course 3 - Days/week'
PEL34_3	=	'Elective course 3 - Minutes/day'
PEL31_4	=	'Elective course 4 - Usual Grade'
PEL32_4	=	'Elective course 4 - Weeks'
PEL33_4	=	'Elective course 4 - Days/week'
PEL34_4	=	'Elective course 4 - Minutes/day'
PEL31_5	=	'Elective course 5 - Usual Grade'
PEL32_5	=	'Elective course 5 - Weeks'
PEL33_5	=	'Elective course 5 - Days/week'
PEL34_5	=	'Elective course 5 - Minutes/day'
PEL31_6	=	'Elective course 6 - Usual Grade'
PEL32_6	=	'Elective course 6 - Weeks'
PEL33_6	=	'Elective course 6 - Days/week'
PEL34_6	=	'Elective course 6 - Minutes/day'
PEL31_7	=	'Elective course 7 - Usual Grade'
PEL32_7	=	'Elective course 7 - Weeks'
PEL33_7	=	'Elective course 7 - Days/week'
PEL34_7	=	'Elective course 7 - Minutes/day'
PEL31_8	=	'Elective course 8 - Usual Grade'
PEL32_8	=	'Elective course 8 - Weeks'
PEL33_8	=	'Elective course 8 - Days/week'
PEL34_8	=	'Elective course 8 - Minutes/day'
PEL31_9	=	'Elective course 9 - Usual Grade'
PEL32_9	=	'Elective course 9 - Weeks'
PEL33_9	=	'Elective course 9 - Days/week'
PEL34_9	=	'Elective course 9 - Minutes/day'
PEL31_10	=	'Elective course 10 - Usual Grade'
PEL32_10	=	'Elective course 10 - Weeks'
PEL33_10	=	'Elective course 10 - Days/week'
PEL34_10	=	'Elective course 10 - Minutes/day'
PEL31_11	=	'Elective course 11 - Usual Grade'
PEL32_11	=	'Elective course 11 - Weeks'
PEL33_11	=	'Elective course 11 - Days/week'
PEL34_11	=	'Elective course 11 - Minutes/day'
PEL31_12	=	'Elective course 12 - Usual Grade'
PEL32_12	=	'Elective course 12 - Weeks'
PEL33_12	=	'Elective course 12 - Days/week'
PEL34_12	=	'Elective course 12 - Minutes/day'
PEL31_13	=	'Elective course 13 - Usual Grade'
PEL32_13	=	'Elective course 13 - Weeks'
PEL33_13	=	'Elective course 13 - Days/week'
PEL34_13	=	'Elective course 13 - Minutes/day'
PEL31_14	=	'Elective course 14 - Usual Grade'
PEL32_14	=	'Elective course 14 - Weeks'
PEL33_14	=	'Elective course 14 - Days/week'
PEL34_14	=	'Elective course 14 - Minutes/day'
PEL31_15	=	'Elective course 15 - Usual Grade'
PEL32_15	=	'Elective course 15 - Weeks'
PEL33_15	=	'Elective course 15 - Days/week'
PEL34_15	=	'Elective course 15 - Minutes/day'
PEL31_16	=	'Elective course 16 - Usual Grade'
PEL32_16	=	'Elective course 16 - Weeks'
PEL33_16	=	'Elective course 16 - Days/week'
PEL34_16	=	'Elective course 16 - Minutes/day'
PEL31_17	=	'Elective course 17 - Usual Grade'
PEL32_17	=	'Elective course 17 - Weeks'
PEL33_17	=	'Elective course 17 - Days/week'
PEL34_17	=	'Elective course 17 - Minutes/day'
PEL31_18	=	'Elective course 18 - Usual Grade'
PEL32_18	=	'Elective course 18 - Weeks'
PEL33_18	=	'Elective course 18 - Days/week'
PEL34_18	=	'Elective course 18 - Minutes/day'
PEL31_19	=	'Elective course 19 - Usual Grade'
PEL32_19	=	'Elective course 19 - Weeks'
PEL33_19	=	'Elective course 19 - Days/week'
PEL34_19	=	'Elective course 19 - Minutes/day'
PEL31_20	=	'Elective course 20 - Usual Grade'
PEL32_20	=	'Elective course 20 - Weeks'
PEL33_20	=	'Elective course 20 - Days/week'
PEL34_20	=	'Elective course 20 - Minutes/day'
PEL34extra	=	'Single sex school'
PEL35a	=	'Boys only PE'
PEL35b	=	'Girls only PE'
PEL36a	=	'Sch off online PE'
PEL36b	=	'Sch off partial online/in-person'
PEL37	=	'Sch off non-req PE electives'
PEL38_1	=	'Who teaches ES PE - PE teach/specialist'
PEL38_2	=	'Who teaches ES PE - Reg teach'
PEL38_3	=	'Who teaches ES PE - Other(s)'
PEL39_1	=	'Who teaches MS/HS PE - PE teach'
PEL39_2	=	'Who teaches MS/HS PE - HE teach'
PEL39_3	=	'Who teaches MS/HS PE - Other teach'
PEL39_4	=	'Who teaches MS/HS PE - Other(s)'
PEL40_1	=	'Type of grade - Letter or numerical'
PEL40_2	=	'Type of grade - Pass/fail'
PEL40_3	=	'Type of grade - Other'
PEL40_4	=	'Type of grade - No grades given'
PEL41	=	'PE grade counted same as other subjects'
PEL42	=	'If fail PE, repeat'
PEL43	=	'Protective gear during PE'
PEL44	=	'Prohib/discour PA as punish - Bad behav in PE'
PEL45	=	'Prohib/discour excl as punish - Bad behav in PE'
PEL46	=	'Prohib/discour excl as punish - Bad behav/incomp work'
PEL47	=	'Students w disabilities enrolled'
PEL48	=	'PE incl in IEPs/504 plans'
PEL49	=	'Students w disabilities partic in PE'
PEL50a	=	'Partic - Adapted PE only'
PEL50b	=	'Partic - Reg PE only'
PEL50c	=	'Partic - Both adapted/reg PE'
PEL51_1	=	'Who assists students - Spec ed teach'
PEL51_2	=	'Who assists students - Spec ed teach aide'
PEL51_3	=	'Who assists students - Adapted PE teach/specialist'
PEL51_4	=	'Who assists students - Phys/Occupational therapist'
PEL51_5	=	'Who assists students - PE teach/specialist'
PEL51_6	=	'Who assists students  - Reg classroom teach'
PEL51_7	=	'Who assists students - Other(s)'
PEL52_1	=	'Who teach adapted PE - Reg PE teach'
PEL52_2	=	'Who teach adapted PE - Adapted PE teach/specialist'
PEL52_3	=	'Who teach adapted PE - Spec ed teach'
PEL52_4	=	'Who teach adapted PE - Spec ed teach aide'
PEL52_5	=	'Who teach adapted PE - Phys/Occupational therapist'
PEL52_6	=	'Who teach adapted PE - Reg clasroom teach'
PEL52_7	=	'Who teach adapted PE - Other(s)'
PEL53	=	'Sch has locker room w showers'
PEL54a	=	'Access to - Gymnasium'
PEL54b	=	'Access to - Indoor track'
PEL54c	=	'Access to - Indoor pool'
PEL54d	=	'Access to - Weight room'
PEL54e	=	'Access to - Cardio fitness center'
PEL54f	=	'Access to - Wrestling room'
PEL54g	=	'Access to - Dance studio'
PEL54h	=	'Access to - Racquetball/squash court'
PEL55a	=	'Indoor PE sch use - Reg classroom '
PEL55b	=	'Indoor PE sch use - Cafeteria/auditorium/multi-purpose room '
PEL55c	=	'Indoor PE sch use - Trailers/mobile bldg'
PEL56	=	'How crowded during PE'
PEL57a	=	'Access to - Track for walking/jogging/running'
PEL57b	=	'Access to - Outdoor pool'
PEL57c	=	'Access to - Outdoor volleyball court'
PEL57d	=	'Access to - Outdoor basketball court'
PEL57e	=	'Access to - Outdoor tennis court'
PEL57f	=	'Access to - Baseball/softball field'
PEL57g	=	'Access to - Soccer/football field'
PEL57h	=	'Access to - General use field'
PEL57i	=	'Access to - PA/fitness stations'
PEL57j	=	'ES access to - Playground equipment'
PEL58	=	'Parking lot/black top for outdoor PE'
PEL59	=	'Sch has max student-to-teach ratio'
PEL60	=	'Max student-to-teach ratio'
PEL61	=	'Newly hired PE staff req undergrad/grad in PE'
PEL62	=	'Newly hired PE staff req cert/lic/endrs by st in PE'
PEL63	=	'PE staff req to earn cont ed credits in PE'
PEL64a	=	'Past 12 months PE staff worked w HE staff'
PEL64b	=	'Past 12 months PE staff worked w HSV staff'
PEL64c	=	'Past 12 months  PE staff worked w MHSS staff'
PEL64d	=	'Past 12 months  PE staff worked w NS staff'
PEL65a	=	'Past 12 months PE staff worked w AFHG'
PEL65b	=	'Past 12 months PE staff worked  w AHA or ACS'
PEL65c	=	'Past 12 months PE staff worked w Hlth dept'
PEL65d	=	'Past 12 months PE staff worked w MH/SS agency'
PEL65e	=	'Past 12 months PE staff worked w College or university'
PEL65f	=	'Past 12 months PE staff worked w Business'
PEL65g	=	'Past 12 months PE staff worked w AFHK'
PEL65h	=	'Past 12 months PE staff worked w Park/recreation dept'
PEL65i	=	'Past 12 months PE staff worked w DOT/public works'
PEL65j	=	'Past 12 months PE staff worked w Prof sports team'
PEL65k	=	'Past 12 months PE staff worked w Hospital'
PEL65l	=	'Past 12 months PE staff worked w Law enf agency'
PEL65m	=	'Past 12 months PE staff worked w Serv club'
PEL65n	=	'Past 12 months PE staff worked w Youth org'
PEL65o	=	'Past 12 months PE staff worked w Hlth/fitness club'
PEL66a	=	'Past 12 months - Met w PTA to discuss PE'
PEL66b	=	'Past 12 months - Prov families w info on PE'
PEL66c	=	'Past 12 months - Prov families w info on PA'
PEL66d	=	'Past 12 months - Discussed PE in parent-teach conf'
PEL66e	=	'Past 12 months - Invited families to attend PE class/activ'
PEL66f	=	'Past 12 months - Collect suggestions from students '
PEL66g	=	'Past 12 months - Collect suggestions from families '
PEL66h	=	'Past 12 months - Off PA/sport events'
PEL66i	=	'Past 12 months - Invited families to volunteer at PA prog'
PEL67a	=	'Past 2 years students helped dev/communic/impl PE pol/activ '
PEL67b	=	'Past 2 years families helped dev/communic/impl PE pol/activ'
PEL67c	=	'Past 2 years cmty members helped dev/communic/impl PE pol/activ'
PEL68	=	'Off PA clubs/intramural sports prog'
PEL69a	=	'Prov PA clubs prog info - Sch announcements'
PEL69b	=	'Prov PA clubs prog info - Sch Web site/publication'
PEL69c	=	'Prov PA clubs prog info - Posters/display'
PEL70a	=	'Club off - Aerobics'
PEL70b	=	'Club off - Archery'
PEL70c	=	'Club off - Badminton'
PEL70d	=	'Club off - Baseball/softball/whiffleball'
PEL70e	=	'Club off - Basketball'
PEL70f	=	'Club off - Bowling'
PEL70g	=	'Club off - Canoeing/kayaking'
PEL70h	=	'Club off - Cardio fitness'
PEL70i	=	'Club off - Dance'
PEL70j	=	'Club off - Football'
PEL70k	=	'Club off - Frisbee'
PEL70l	=	'Club off - Golf'
PEL70m	=	'Club off - Gymnastics'
PEL70n	=	'Club off - Hiking/backpacking/orienteering'
PEL70o	=	'Club off - Hockey'
PEL70p	=	'Club off - Jump rope'
PEL70q	=	'Club off - Lacrosse'
PEL70r	=	'Club off - Martial arts'
PEL70s	=	'Club off - Non-stationary bicycling'
PEL70t	=	'Club off - Pilates'
PEL70u	=	'Club off - Racquet sports other than tennis'
PEL70v	=	'Club off - Rock climbing'
PEL70w	=	'Club off - Running/jogging'
PEL70x	=	'Club off - Skating'
PEL70y	=	'Club off - Skiing'
PEL70z	=	'Club off - Soccer'
PEL70aa	=	'Club off - Swimming/diving/water polo'
PEL70bb	=	'Club off - Table tennis/Ping-Pong'
PEL70cc	=	'Club off - Tennis'
PEL70dd	=	'Club off - Volleyball'
PEL70ee	=	'Club off - Walking'
PEL70ff	=	'Club off - Weight training'
PEL70gg	=	'Club off - Wrestling'
PEL70hh	=	'Club off - Yoga'
PEL70extra	=	'Single sex school'
PEL71a	=	'Boys only PA clubs'
PEL71b	=	'Girls only PA clubs'
PEL72	=	'Transportation prov for after-sch PA club'
PEL73	=	'Activ fee for PA club'
PEL74	=	'Fee waived if cannot pay'
PEL75	=	'Staff paid to supervise/lead/coach PA'
PEL76	=	'Cmty members supervise/lead/coach PA'
PEL77	=	'Training prov by district to supervise/lead/coach PA'
PEL78	=	'Sch follow natl/state/dist PA club guidelines '
PEL79	=	'Req protective gear for PA clubs'
PEL80a	=	'Youth use facil after hours - Cmty-sponsored sports teams '
PEL80b	=	'Youth use facil after hours - Cmty-sponsored classes/lessons'
PEL80c	=	'Youth use facil after hours - Cmty-sponsored open-gym'
PEL81a	=	'Youth PA prog off - Before sch'
PEL81b	=	'Youth PA prog off - After sch'
PEL81c	=	'Youth PA prog off - Evenings'
PEL81d	=	'Youth PA prog off - Weekends'
PEL81e	=	'Youth PA prog off - Sch vacations'
PEL82a	=	'Adult use facil after hours - Cmty-sponsored sports teams '
PEL82b	=	'Adult use facil after hours - Cmty-sponsored PA classes/lessons'
PEL82c	=	"Adult use facil after hours - Cmty-sponsored 'open-gym'"
PEL83a	=	'Adult PA prog off - Before sch'
PEL83b	=	'Adult PA prog off - After sch'
PEL83c	=	'Adult PA prog off - Evenings'
PEL83d	=	'Adult PA prog off - Weekends'
PEL83e	=	'Adult PA prog off - Sch vacations'
PEL84	=	'Cmty use outdoor facil w/o supervised prog'
PEL85a	=	'Cmty use outdoor facil w/o supervised prog - Before sch'
PEL85b	=	'Cmty use outdoor facil w/o supervised prog - After sch'
PEL85c	=	'Cmty use outdoor facil w/o supervised prog - Evenings'
PEL85d	=	'Cmty use outdoor facil w/o supervised prog - Weekends'
PEL85e	=	'Cmty use outdoor facil w/o supervised prog - Sch vacations'
PEL86	=	'Sch person oversee/coordinate PE'
PEL87	=	'R is person'
PEL88	=	'R years of exp teaching PE'
PEL89	=	'R coach intersch sports'
PEL90	=	'R has undergrad degree'
PEL91_1	=	'R major - PE '
PEL91_2	=	'R major - HE'
PEL91_3	=	'R major - Other ed'
PEL91_4	=	'R major - Kinesiology'
PEL91_5	=	'R major - Other'
PEL91_5SPEC	=	'R major - Specify'
PEL92	=	'R has undergrad minor'
PEL93_1	=	'R minor - PE '
PEL93_2	=	'R minor - HE'
PEL93_3	=	'R minor - Other ed'
PEL93_4	=	'R minor - Kinesiology'
PEL93_5	=	'R minor - Other'
PEL93_5SPEC	=	'R minor - Specify'
PEL94	=	'R has grad degree'
PEL95_1	=	'R grad degree - PE '
PEL95_2	=	'R grad degree - HE'
PEL95_3	=	'R grad degree - Other ed'
PEL95_4	=	'R grad degree - Kinesiology'
PEL95_5	=	'R grad degree - Other'
PEL95_5SPEC	=	'R grad degree - Specify'
PEL96a	=	'R cert/lic to teach PE in ES'
PEL96b	=	'R cert/lic to teach PE in MS'
PEL96c	=	'R cert/lic to teach PE in HS'
PEL98	=	'Job title'
PEL99a	=	'Intersch sports off - Badminton'
PEL99b	=	'Intersch sports off - Baseball'
PEL99c	=	'Intersch sports off - Basketball'
PEL99d	=	'Intersch sports off - Bowling'
PEL99e	=	'Intersch sports off - Cheerleading/comptetitive spirits'
PEL99f	=	'Intersch sports off - Cross country'
PEL99g	=	'Intersch sports off - Downhill/cross-country skiing'
PEL99h	=	'Intersch sports off - Fast pitch/slow pitch softball'
PEL99i	=	'Intersch sports off - Field hockey'
PEL99j	=	'Intersch sports off - Football'
PEL99k	=	'Intersch sports off - Golf'
PEL99l	=	'Intersch sports off - Gymnastics'
PEL99m	=	'Intersch sports off - Ice hockey'
PEL99n	=	'Intersch sports off - Lacrosse'
PEL99o	=	'Intersch sports off - Riflery'
PEL99p	=	'Intersch sports off - Soccer'
PEL99q	=	'Intersch sports off - Swimming/diving'
PEL99r	=	'Intersch sports off - Tennis'
PEL99s	=	'Intersch sports off - Track and field'
PEL99t	=	'Intersch sports off - Volleyball'
PEL99u	=	'Intersch sports off - Water polo'
PEL99v	=	'Intersch sports off - Weight lifting'
PEL99w	=	'Intersch sports off - Wrestling'
PEL99extra	=	'Single sex school'
PEL100a	=	'Boys only intersch sports'
PEL100b	=	'Girls only intersch sports'
PEL101	=	'Tryout proc for intersch sports'
PEL102	=	'Handbook for intersch sports'
PEL103	=	'Coaches prohib/discour PA as punishment '
PEL104	=	'Transportation prov for intersch sports'
PEL105	=	'Activ fee for intersch sports'
PEL106	=	'Fee waived if cannot pay'
PEL107	=	'Req protective gear for intersch sports'
PEL108a	=	'Phys exam before intersch sports partic'
PEL108b	=	'Neurocog testing before intersch sports partic'
PEL108c	=	'Concussion info sheet before intersch sport partic'
PEL108d	=	'Avoid excesses in training '
PEL108e	=	'Reward for good sportsmanship'
PEL108f	=	'Prohib alcohol/drug use'
PEL108g	=	'Discour steroids/hormones'
PEL108h	=	'Prohib violence and aggression'
PEL108i	=	'Prohib dangerous athletic behav'
PEL108j	=	'Report sports-related injuries'
PEL109a	=	'Hlthcare provider clearance for concussed reentry'
PEL109b	=	'Safe playing conditions established'
PEL110a	=	'Head coaches will - Have prev exp coaching any sport'
PEL110b	=	'Head coaches will - Have prev exp coaching sport they will coach'
PEL110c	=	'Head coaches will - Have teaching cert'
PEL110d	=	'Head coaches will - Complete training course'
PEL110e	=	'Head coaches will - Complete sports safety course'
PEL110f	=	'Head coaches will - Be cert in first aid'
PEL110g	=	'Head coaches will - Be cert in CPR'
PEL110h	=	'Head coaches will - Have concussion training'
PEL110i	=	'Head coaches will - Be employ by sch/dist'
PEL111	=	'Asst coaches will - Complete training course'
PEL112	=	'Athletic trainers prov serv for intersch sports'
PEL113a	=	'Past 12 months - Prov ed materials on concussions'
PEL113b	=	'Past 12 months - Prov ed sessions on concussions'
PEL114	=	"CDC 'Heads Up' materials included"
;
run;

