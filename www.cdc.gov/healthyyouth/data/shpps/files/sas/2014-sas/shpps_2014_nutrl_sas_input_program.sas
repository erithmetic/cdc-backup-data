
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
/*  "NUTRL_SAS_Input_Program.sas" to create the 2014 SHPPS dataset.                     */
/****************************************************************************************/

filename datain 'c:\shpps2014\nutrl2014.dat';

libname dataout 'c:\shpps2014';

libname library 'c:\shpps2014';

data dataout.nutrl2014;
infile datain lrecl=2000;
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
FSLPAP	122	-	123
FSL1	124	-	125
FSL2	126	-	127
FSL3a	128	-	129
FSL3b	130	-	131
FSL3c	132	-	133
FSL4_1	134	-	135
FSL4_2	136	-	137
FSL4_3	138	-	139
FSL4_3SPEC	$140	-	200
FSL5	201	-	202
FSL6	203	-	204
FSL7	205	-	206
FSL8	207	-	208
FSL9a	209	-	210
FSL9b	211	-	212
FSL9c	213	-	214
FSL10_HOUR	215	-	225
FSL10_MIN	226	-	236
FSL11_HOUR	237	-	247
FSL11_MIN	248	-	258
FSL12	259	-	260
FSL13a	261	-	262
FSL13b	263	-	264
FSL13c	265	-	266
FSL14	267	-	268
FSL15	269	-	270
FSL16	271	-	272
FSL17	273	-	274
FSL18	275	-	276
FSL19	277	-	278
FSL20a	279	-	280
FSL20b	281	-	282
FSL20c	283	-	284
FSL20d	285	-	286
FSL21	287	-	288
FSL22	289	-	290
FSL23	291	-	292
FSL24	293	-	294
FSL25a	295	-	305
FSL25b	306	-	316
FSL25c	317	-	327
FSL25d	328	-	338
FSL25e	339	-	349
FSL25f	350	-	360
FSL25g	361	-	371
FSL25h	372	-	382
FSL25i	383	-	393
FSL25j	394	-	404
FSL25k	405	-	415
FSL25l	416	-	426
FSL26	427	-	428
FSL27	429	-	430
FSL28	431	-	432
FSL29	433	-	434
FSL30a	435	-	436
FSL30b	437	-	438
FSL30c	439	-	440
FSL30d	441	-	442
FSL30e	443	-	444
FSL30f	445	-	446
FSL30g	447	-	448
FSL30h	449	-	450
FSL30i	451	-	452
FSL30j	453	-	454
FSL30k	455	-	456
FSL31a	457	-	458
FSL31b	459	-	460
FSL31c	461	-	462
FSL32a	463	-	464
FSL32b	465	-	466
FSL32c	467	-	468
FSL32d	469	-	470
FSL32e	471	-	472
FSL32f	473	-	474
FSL32g	475	-	476
FSL33a	477	-	478
FSL33b	479	-	480
FSL33c	481	-	482
FSL34	483	-	484
FSL35a	485	-	486
FSL35b	487	-	488
FSL35c	489	-	490
FSL35d	491	-	492
FSL35e	493	-	494
FSL35f	495	-	496
FSL35g	497	-	498
FSL35h	499	-	500
FSL35i	501	-	502
FSL35j	503	-	504
FSL35k	505	-	506
FSL35l	507	-	508
FSL35m	509	-	510
FSL35n	511	-	512
FSL35o	513	-	514
FSL35p	515	-	516
FSL35q	517	-	518
FSL35r	519	-	520
FSL35s	521	-	522
FSL35t	523	-	524
FSL35u	525	-	526
FSL35v	527	-	528
FSL35w	529	-	530
FSL35x	531	-	532
FSL35y	533	-	534
FSL35z	535	-	536
FSL35aa	537	-	538
FSL36a	539	-	540
FSL36b	541	-	542
FSL37a	543	-	544
FSL37b	545	-	546
FSL38	547	-	548
FSL39a	549	-	550
FSL39b	551	-	552
FSL39c	553	-	554
FSL40	555	-	556
FSL41	557	-	558
FSL42	559	-	560
FSL43	561	-	562
FSL44	563	-	564
FSL45a	565	-	566
FSL45b	567	-	568
FSL46	569	-	570
FSL47	571	-	572
FSL48	573	-	574
FSL49	575	-	576
FSL50	577	-	578
FSL51	579	-	580
FSL52a	581	-	582
FSL52b	583	-	584
FSL53a	585	-	586
FSL53b	587	-	588
FSL53c	589	-	590
FSL53d	591	-	592
FSL53e	593	-	594
FSL54	595	-	596
FSL55	597	-	598
FSL56a	599	-	600
FSL56b	601	-	602
FSL56c	603	-	604
FSL57a	605	-	606
FSL57b	607	-	608
FSL57c	609	-	610
FSL57d	611	-	612
FSL58a	613	-	614
FSL58b	615	-	616
FSL58c	617	-	618
FSL58d	619	-	620
FSL59a	621	-	622
FSL59b	623	-	624
FSL59c	625	-	626
FSL59d	627	-	628
FSL59e	629	-	630
FSL59f	631	-	632
FSL59g	633	-	634
FSL59h	635	-	636
FSL59i	637	-	638
FSL59j	639	-	640
FSL59k	641	-	642
FSL59l	643	-	644
FSL59m	645	-	646
FSL59n	647	-	648
FSL59o	649	-	650
FSL60a	651	-	652
FSL60b	653	-	654
FSL60c	655	-	656
FSL60d	657	-	658
FSL60e	659	-	660
FSL61	661	-	662
FSL62a	663	-	664
FSL62b	665	-	666
FSL63a	667	-	668
FSL63b	669	-	670
FSL63c	671	-	672
FSL63d	673	-	674
FSL63e	675	-	676
FSL63f	677	-	678
FSL64a	679	-	680
FSL64b	681	-	682
FSL64c	683	-	684
FSL64d	685	-	686
FSL64e	687	-	688
FSL65	689	-	690
FSL66	691	-	692
FSL67a	693	-	694
FSL67b	695	-	696
FSL67c	697	-	698
FSL67d	699	-	700
FSL67e	701	-	702
FSL68	703	-	704
FSL69	705	-	706
FSL70_1	707	-	708
FSL70_2	709	-	710
FSL70_3	711	-	712
FSL70_4	713	-	714
FSL71	715	-	716
FSL72	717	-	718
FSL73_1	719	-	720
FSL73_2	721	-	722
FSL73_3	723	-	724
FSL73_4	725	-	726
FSL73_5	727	-	728
FSL73_6	729	-	730
FSL73_6SPEC	$731	-	831
FSL74	832	-	833
FSL75_1	834	-	835
FSL75_2	836	-	837
FSL75_3	838	-	839
FSL75_4	840	-	841
FSL75_5	842	-	843
FSL75_6	844	-	845
FSL75_6SPEC	$846	-	946
FSL76	947	-	948
FSL77_1	949	-	950
FSL77_2	951	-	952
FSL77_3	953	-	954
FSL77_4	955	-	956
FSL77_5	957	-	958
FSL77_6	959	-	960
FSL77_6SPEC	$961	-	1061
FSL78	1062	-	1063
FSL79	1064	-	1065
FSL80	1066	-	1067
FSL81	1068	-	1069
FSL82	1070	-	1071
FSL83	1072	-	1073
FSL84	1074	-	1075
FSL84_SPEC	$1076	-	1176
FSL85a	1177	-	1178
FSL85b	1179	-	1180
FSL85c	1181	-	1182
FSL85d	1183	-	1184
FSL85e	1185	-	1186
FSL85f	1187	-	1188
FSL85g	1189	-	1190
FSL85h	1191	-	1192
FSL85i	1193	-	1194
FSL85j	1195	-	1196
FSL85k	1197	-	1198
FSL85l	1199	-	1200
FSL85m	1201	-	1202
FSL85n	1203	-	1204
FSL85o	1205	-	1206
FSL85p	1207	-	1208
FSL85q	1209	-	1210
FSL85r	1211	-	1212
FSL85s	1213	-	1214
FSL85t	1215	-	1216
FSL85u	1217	-	1218
FSL85v	1219	-	1220
FSL85w	1221	-	1222
FSL85x	1223	-	1224
FSL85y	1225	-	1226
FSL85z	1227	-	1228
FSL86_1	1229	-	1230
FSL86_2	1231	-	1232
FSL86_3	1233	-	1234
FSL86_4	1235	-	1236
FSL86_5	1237	-	1238
FSL86_6	1239	-	1240
FSL86_7	1241	-	1242
FSL86_8	1243	-	1244
FSL86_9	1245	-	1246
FSL86_10	1247	-	1248
FSL86_11	1249	-	1250
FSL86_12	1251	-	1252
FSL86_13	1253	-	1254
FSL86_14	1255	-	1256
FSL86_15	1257	-	1258
FSL86_16	1259	-	1260
FSL86_17	1261	-	1262
FSL86_18	1263	-	1264
FSL86_19	1265	-	1266
FSL86_20	1267	-	1268
FSL86_21	1269	-	1270
FSL86_22	1271	-	1272
FSL86_23	1273	-	1274
FSL86_24	1275	-	1276
FSL86_25	1277	-	1278
FSL86_26	1279	-	1280
FSL86_27	1281	-	1282
;
************************************
*  Assign formats to SAS variables.*
************************************;

format

FSL1    
jobtitle.

/*NUTRITION SERVICE*/
FSL2 FSL3A FSL3B FSL3C FSL4_1 FSL4_2 FSL4_3 FSL5 FSL7 FSL8 FSL9A FSL9B FSL9C  FSL13A FSL13B FSL13C
FSL14 FSL15 FSL17 FSL18 FSL19 FSL19 FSL21 FSL22 FSL23 FSL27 FSL29 FSL35A FSL35B 
FSL35C FSL35D FSL35E FSL35F FSL35G FSL35H FSL35I FSL35J FSL35K FSL35L FSL35M FSL35N FSL35O FSL35P FSL35Q FSL35R 
FSL35S FSL35T FSL35U FSL35V FSL35W FSL35X FSL35Y FSL35Z FSL35AA FSL36A FSL36B FSL37A FSL37B FSL38 
FSL39A FSL39B FSL39C FSL40 FSL42 FSL43 FSL45A FSL45B FSL47 FSL48 FSL49 FSL51 FSL52A FSL52B FSL53A FSL53B 
FSL53C FSL53D FSL53E FSL54 FSL55 FSL56A FSL56B FSL56C FSL57A FSL57B FSL57C FSL57D FSL59A FSL59B FSL59C FSL59D 
FSL59E FSL59F FSL59G FSL59H FSL59I FSL59J FSL59K FSL59L FSL59M FSL59N FSL59O FSL60A FSL60B FSL60C FSL60D FSL60E 
FSL61 FSL63A FSL63B FSL63C FSL63D FSL63E FSL63F FSL64A FSL64B FSL64C FSL64D FSL64E FSL65 FSL67A FSL67B FSL67C 
FSL67D FSL67E FSL68 FSL69 FSL70_1 FSL70_2 FSL70_3 FSL70_4 FSL72 FSL73_1 FSL73_2 FSL73_3 FSL73_4 FSL73_5 FSL73_6 FSL74 
FSL75_1 FSL75_2 FSL75_3 FSL75_4 FSL75_5 FSL75_6 FSL76 FSL77_1 FSL77_2 FSL77_3 FSL77_4 FSL77_5 FSL77_6 FSL78 FSL79 FSL80 
FSL81 FSL82 FSL83 FSL84 FSL85A FSL85B FSL85C FSL85D FSL85E FSL85F FSL85G FSL85H FSL85I FSL85J FSL85K FSL85L 
FSL85M FSL85N FSL85O FSL85P FSL85Q FSL85R FSL85S FSL85T FSL85U FSL85V FSL85W FSL85X FSL85Y FSL85Z FSL86_1 FSL86_2
FSL86_3 FSL86_4 FSL86_5 FSL86_6 FSL86_7 FSL86_8 FSL86_9 FSL86_10 FSL86_11 FSL86_12 FSL86_13 FSL86_14 FSL86_15 FSL86_16 FSL86_17 
FSL86_18 FSL86_19 FSL86_20 FSL86_21 FSL86_22 FSL86_23 FSL86_24 FSL86_25 FSL86_26 FSL86_27
yesno. 
 
 FSL62A FSL62B  
yesnona.

FSL16
deepfry.

FSL30A FSL30B FSL30C FSL30D FSL30E FSL30F FSL30G FSL30H FSL30I FSL30J FSL30K
FSL31A FSL31B FSL31C 
howoften.
 
FSL32A FSL32B FSL32C FSL32D FSL32E FSL32F FSL32G FSL33A FSL33B FSL33C FSL34 
fsl32f.


FSL24 FSL24F. FSL26 FSL26F. FSL28 FSL28F. FSL34 FSL34F. FSL41 FSL41F. FSL44 FSL44F. 
FSL46 FSL46F. FSL50 FSL50F. FSL58A FSL58AF. FSL58B FSL58BF. FSL58C FSL58CF. FSL58D FSL58DF. 
FSL66 FSL66F. FSL71 FSL71F.

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

FSLPAP
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
FSLPAP	=	'Mail - CAPI Complete '
FSL1	=	'Job title'
FSL2	=	'Sch offer bfast'
FSL3a	=	'Sch offer a la carte bfast'
FSL3b	=	'Sch partic in USDA Sch Bfast Prog'
FSL3c	=	'Sch offer other bfast meals'
FSL4_1	=	'Sch serve bfast - Cafeteria'
FSL4_2	=	'Sch serve bfast - Classrooms'
FSL4_3	=	'Sch serve bfast - Other '
FSL4_3SPEC	=	'Sch serve bfast - Specify'
FSL5	=	'Students allowed bfast into classrooms'
FSL6	=	'How long to eat bfast once seated'
FSL7	=	'Each day for bfast students off whole grain foods'
FSL8	=	'Sch offer lunch'
FSL9a	=	'Sch offer a la carte lunch'
FSL9b	=	'Sch partic in USDA NSLP'
FSL9c	=	'Sch offer other lunch meals'
FSL10_HOUR	=	'Time start serving lunch - hour'
FSL10_MIN	=	'Time start serving lunch - minute'
FSL11_HOUR	=	'Time stop serving lunch - hour'
FSL11_MIN	=	'Time stop serving lunch - minute'
FSL12	=	'How long to eat lunch once seated'
FSL13a	=	'Each day for lunch students off 2+ entrees'
FSL13b	=	'Each day for lunch students off 2+ non-fried veg'
FSL13c	=	'Each day for lunch students off 2+ fruits or 100% fruit juice'
FSL14	=	'Each day for lunch students off veg entrée '
FSL15	=	'Each day for lunch students off whole grain foods'
FSL16	=	'Describe sale of deep fried foods'
FSL17	=	'Low-fat salad dressing avail'
FSL18	=	'Outside food service mgmt operate NSP'
FSL19	=	'Sch offer brand-name fast foods '
FSL20a	=	'Days brand-name fast foods off - A la carte bfast'
FSL20b	=	'Days brand-name fast foods off - Bfast meals'
FSL20c	=	'Days brand-name fast foods off - A la carte lunch'
FSL20d	=	'Days brand-name fast foods off - Lunch meals'
FSL21	=	'Sch partic in NSLP After-School Snack Prog'
FSL22	=	'Sch offer supper in after-school prog'
FSL23	=	'Sch offer meals/snacks at summer sch prog'
FSL24	=	'Group w resp for foods to order'
FSL25a	=	'Half-pints of milk ordered - Whole white '
FSL25b	=	'Half-pints of milk ordered - 2% or one and half %'
FSL25c	=	'Half-pints of milk ordered - 1% or half-%'
FSL25d	=	'Half-pints of milk ordered - Skim white'
FSL25e	=	'Half-pints of milk ordered-  Whole chocolate or whole flavored'
FSL25f	=	'Half-pints of milk ordered - 2% or one and half % chocolate or flavored'
FSL25g	=	'Half-pints of milk ordered - 1% or half-% chocolate or flavored'
FSL25h	=	'Half-pints of milk ordered - Skim chocolate or flavored'
FSL25i	=	'Half-pints of milk ordered - Buttermilk'
FSL25j	=	'Half-pints of milk ordered - Lactose-free '
FSL25k	=	'Half-pints of milk ordered - Soy '
FSL25l	=	'Half-pints of milk ordered- Other'
FSL26	=	'NS prog use food grown in sch garden'
FSL27	=	'Food prep at sch for bfast or lunch '
FSL28	=	'Group w primary resp for cooking foods'
FSL29	=	'R can answer questions about food prep proc'
FSL30a	=	'Past 30 days use non-stick spray or pan liners vs grease or oil'
FSL30b	=	'Past 30 days use veg oil vs shortening, butter or margarine'
FSL30c	=	'Past 30 days use part-skim or low-fat cheese vs reg cheese'
FSL30d	=	'Past 30 days use skim, low-fat, soy, or nonfat dry milk vs whole milk'
FSL30e	=	'Past 30 days use ground turkey or lean ground beef vs reg ground beef'
FSL30f	=	'Past 30 days use beans, soy, other meat extenders vs meat'
FSL30g	=	'Past 30 days use fresh or frozen veg vs canned veg'
FSL30h	=	'Past 30 days use fresh or frozen fruit vs canned fruit'
FSL30i	=	'Past 30 days use low-sodium canned veg vs reg canned veg'
FSL30j	=	'Past 30 days use other seasoning vs salt'
FSL30k	=	'Past 30 days use low-fat or nonfat yogurt, mayo, or sour cream vs reg'
FSL31a	=	'Past 30 days sugar reduced or low-sugar recipes used'
FSL31b	=	'Past 30 days fats and oils reduced or low-fat recipes used'
FSL31c	=	'Past 30 days salt reduced or low-sodium recipes used'
FSL32a	=	'Past 30 days meat roasted, baked, or broiled vs fried'
FSL32b	=	'Past 30 days meat roasted on rack so fat drained'
FSL32c	=	'Past 30 days fat drained from browned meat'
FSL32d	=	'Past 30 days fat trimmed or lean meat used'
FSL32e	=	'Past 30 days skin removed or skinless poultry used'
FSL32f	=	'Past 30 days solid fat spooned'
FSL32g	=	'Past 30 days fat skimmed off broth, soup, stew or gravy'
FSL33a	=	'Past 30 days potatoes boiled, mashed or baked vs fried'
FSL33b	=	'Past 30 days other veg steamed or baked'
FSL33c	=	'Past 30 days veg prep without butter, margarine or sauce'
FSL34	=	'Past 30 days use HAACP- based recipes'
FSL35a	=	'Students off a la carte - 100% fruit juice or 100% veg juice'
FSL35b	=	'Students off a la carte - Soda or fruit drinks not 100% juice'
FSL35c	=	'Students off a la carte - Sports drinks'
FSL35d	=	'Students off a la carte - Coffee or any tea'
FSL35e	=	'Students off a la carte - Sugar-sweetened bev'
FSL35f	=	'Students off a la carte - Energy drinks'
FSL35g	=	'Students off a la carte - Fruit'
FSL35h	=	'Students off a la carte - Whole grain bread products'
FSL35i	=	'Students off a la carte - Bread products not whole grain'
FSL35j	=	'Students off a la carte - Low-fat baked goods'
FSL35k	=	'Students off a la carte - Baked goods not low in fat'
FSL35l	=	'Students off a la carte - Low-fat or nonfat yogurt'
FSL35m	=	'Students off a la carte - Pizza, hamburgers or sandwiches'
FSL35n	=	'Students off a la carte - Peanuts or peanut butter'
FSL35o	=	'Students off a la carte - Lettuce, veg, or bean salads'
FSL35p	=	'Students off a la carte - Veg with low-fat dip'
FSL35q	=	'Students off a la carte - Deep fried french fried potatoes'
FSL35r	=	'Students off a la carte - Oven-baked french fried potatoes'
FSL35s	=	'Students off a la carte - Other veg'
FSL35t	=	'Students off a la carte - Chocolate candy'
FSL35u	=	'Students off a la carte - Other candy'
FSL35v	=	'Students off a la carte - Salty snacks low in fat'
FSL35w	=	'Students off a la carte - Salty snacks not low in fat'
FSL35x	=	'Students off a la carte - Snacks low in sodium'
FSL35y	=	'Students off a la carte - Low-fat or fat-free ice cream, frozen yogurt or sherbet'
FSL35z	=	'Students off a la carte - Ice cream or frozen yogurt not low in fat'
FSL35aa	=	'Students off a la carte - Frozen water ices or slushes w/o juice'
FSL36a	=	'Butter or margarine avail in serving line or tables'
FSL36b	=	'Butter or margarine avail if students ask'
FSL37a	=	'Salt avail in serving line or tables'
FSL37b	=	'Salt avail if students ask'
FSL38	=	'Sch has self-serve salad bar'
FSL39a	=	'In serving line fruits and veg near cashier'
FSL39b	=	'In serving line attractive displays used for fruit and veg'
FSL39c	=	'In serving line hlth foods labeled w appealing names'
FSL40	=	'Sch has cafeteria'
FSL41	=	'Peak meal time how full is cafeteria '
FSL42	=	'Past 12 months students visited cafeteria to learn '
FSL43	=	'NS staff receive basic food safety training '
FSL44	=	'Basic food safety training prov in language other than English'
FSL45a	=	'Cert food safety mgr present while food prep'
FSL45b	=	'Cert food safety mgr present while food serv'
FSL46	=	'Past 12 months hlth dept inspect cafeteria'
FSL47	=	'Past 30 days staff conducted food safety self-inspection of cafeteria'
FSL48	=	'Sch use electronic point of sale system for foods or bev in cafeteria'
FSL49	=	'System allow parents to restrict food or bev purchased'
FSL50	=	'Past 12 months food stored in plastic, glass or metal containers '
FSL51	=	'Written plan for feeding students if unplanned sch dismissal or sch closure'
FSL52a	=	'Written plan for impl of HACCP-based prog'
FSL52b	=	'Written plan for students with severe food allergies'
FSL53a	=	'Food allergies-prov separate allergen-free table'
FSL53b	=	'Food allergies-use special sanitation proc in kitchen and dining area'
FSL53c	=	'Food allergies-identify students in serving line'
FSL53d	=	'Food allergies-make avail food ingredient list or food labels'
FSL53e	=	'Food allergies-make changes in foods off '
FSL54	=	'Cafeteria has hand washing facility or hand sanitizing stations '
FSL55	=	'Sch off free source of drinking water in cafeteria '
FSL56a	=	'Past 2 years helped develop, communic, or impl NS pol or activ - Students'
FSL56b	=	"Past 2 years helped dev, communic, or impl NS pol or activ - Students' families"
FSL56c	=	'Past 2 years  helped dev, communic, or impl NS pol or activ - Cmty members'
FSL57a	=	'Past 12 months sch NS staff talked/taught - HE class'
FSL57b	=	'Past 12 months sch NS staff talked/taught - Other class'
FSL57c	=	'Past 12 months sch NS staff talked/taught - HE lesson or unit'
FSL57d	=	'Past 12 months sch NS staff talked/taught - Other lesson or unit'
FSL58a	=	'Past 12 months sch NS staff worked w HE staff '
FSL58b	=	'Past 12 months sch NS staff worked w PE staff '
FSL58c	=	'Past 12 months sch NS staff worked w HSV staff '
FSL58d	=	'Past 12 months sch NS staff worked w MHSS staff '
FSL59a	=	'Past 12 months sch NS staff worked w AFHG'
FSL59b	=	'Past 12 months sch NS staff worked w AHA or ACS'
FSL59c	=	'Past 12 months sch NS staff worked w Hlth dept'
FSL59d	=	'Past 12 months sch NS staff worked w MH or SS agency'
FSL59e	=	'Past 12 months sch NS staff worked w College or university'
FSL59f	=	'Past 12 months sch NS staff worked w Business'
FSL59g	=	'Past 12 months sch NS staff worked w AFHK'
FSL59h	=	'Past 12 months sch NS staff worked w Food commodity org'
FSL59i	=	'Past 12 months sch NS staff worked w Non-govt org promo farm to sch'
FSL59j	=	'Past 12 months sch NS staff worked w County cooperative extensive office'
FSL59k	=	'Past 12 months sch NS staff worked w Food pol counsel'
FSL59l	=	'Past 12 months sch NS staff worked w Hospital'
FSL59m	=	'Past 12 months sch NS staff worked w Serv club'
FSL59n	=	'Past 12 months sch NS staff worked w Youth org'
FSL59o	=	'Past 12 months sch NS staff worked w Anti-hunger org'
FSL60a	=	'Past 12 months collected suggestions from students about sch NS prog'
FSL60b	=	'Past 12 months suggestions from sch staff about sch NS prog'
FSL60c	=	"Past 12 months suggestions from students' families about sch NS prog"
FSL60d	=	'Past 12 months conducted taste-tests with students'
FSL60e	=	"Past 12 months conducted taste-tests with students' families"
FSL61	=	'Sch have comm that includes students suggestions for sch NS prog'
FSL62a	=	'Sch NS staff make changes in foods off to students w chronic hlth conditions'
FSL62b	=	'Sch NS staff make changes in foods off to students who are vegetarians'
FSL63a	=	'Past 12 months made menus avilable'
FSL63b	=	'Past 12 months made info avail to students on nutr and caloric content '
FSL63c	=	'Past 12 months placed posters or materials promo hlth eating habits in cafeteria '
FSL63d	=	'Past 12 months placed posters or materials promo hlth eating habits in sch'
FSL63e	=	'Past 12 months NS topics during sch announcements'
FSL63f	=	'Past 12 months articles about sch NS prog in sch publication'
FSL64a	=	'Past 12 months made menus avail to families '
FSL64b	=	'Past 12 months made info avail to families on nutr and caloric content '
FSL64c	=	'Past 12 months made information avail to families on sch NS prog'
FSL64d	=	'Past 12 months met with PTA to discuss sch NS prog'
FSL64e	=	'Past 12 months invited family members to sch meal'
FSL65	=	'Someone oversee or coordinate NS'
FSL66	=	'Min level of ed req for newly hired food serv mgr'
FSL67a	=	'Req for newly hired food srv mgr - RD credential from ADA'
FSL67b	=	'Req for newly hired food srv mgr - SNS credential from SNA'
FSL67c	=	'Req for newly hired food srv mgr - SNA cert'
FSL67d	=	'Req for newly hired food srv mgr - Complete sch NS training prog off by state'
FSL67e	=	'Req for newly hired food srv mgr - Servsafe or other food safety cert'
FSL68	=	'NS staff req to earn continuing ed credits on NS'
FSL69	=	'R is person'
FSL70_1	=	'R works for - Sch dist'
FSL70_2	=	'R works for - Sch'
FSL70_3	=	'R works for - Food serv mgmt company'
FSL70_4	=	'R works for - Other'
FSL71	=	'R-Highest grade or year of ed completed '
FSL72	=	'R has undergrad degree'
FSL73_1	=	'R major - Business'
FSL73_2	=	'R major - Ed'
FSL73_3	=	'R major - Food serv admin or mgmt'
FSL73_4	=	'R major - Home econ or family and consumer science'
FSL73_5	=	'R major - Nutr or dietetics'
FSL73_6	=	'R major - Other'
FSL73_6SPEC	=	'R major - Specify'
FSL74	=	'R has undergrad minor'
FSL75_1	=	'R minor - Business'
FSL75_2	=	'R minor - Ed'
FSL75_3	=	'R minor - Food serv admin or mgmt'
FSL75_4	=	'R minor - Home econ or family and consumer science'
FSL75_5	=	'R minor - Nutr or dietetics'
FSL75_6	=	'R minor - Other'
FSL75_6SPEC	=	'R minor - Specify'
FSL76	=	'R has graduate degree'
FSL77_1	=	'R grad degree - Business'
FSL77_2	=	'R grad degree - Ed'
FSL77_3	=	'R grad degree - Food serv admin or mgmt'
FSL77_4	=	'R grad degree - Home econ or family and consumer science'
FSL77_5	=	'R grad degree - Nutr or dietetics'
FSL77_6	=	'R grad degree - Other'
FSL77_6SPEC	=	'R grad degree - Specify'
FSL78	=	'R has SNS cred from SNA'
FSL79	=	'R has SNA cert'
FSL80	=	'R has RD from ADA'
FSL81	=	'R has culinary arts degree'
FSL82	=	'R is cert dietary mgr'
FSL83	=	'R is cert food safety mgr'
FSL84	=	'R has other food serv cert '
FSL84_SPEC	=	'R has other food serv cert-Specify'
FSL85a	=	'Past 2 years receive prof dev - Menu planning for healthful meals'
FSL85b	=	'Past 2 years receive prof dev - Cultural diversity in meal planning'
FSL85c	=	'Past 2 years receive prof dev - Impl new USDA rules for sch meals'
FSL85d	=	'Past 2 years receive prof dev - Using cafeteria for nutr ed'
FSL85e	=	'Past 2 years receive prof dev - Prog reg and proc'
FSL85f	=	'Past 2 years receive prof dev - Selecting and ordering food'
FSL85g	=	'Past 2 years receive prof dev -  Hlth food prep methods'
FSL85h	=	'Past 2 years receive prof dev -  Increasing % of students partic in sch meals'
FSL85i	=	'Past 2 years receive prof dev - Making sch meals appealing'
FSL85j	=	'Past 2 years receive prof dev - Improving presentation of hlth foods '
FSL85k	=	'Past 2 years receive prof dev - Customer serv'
FSL85l	=	'Past 2 years receive prof dev - Competitive food pol to create hlth food env'
FSL85m	=	'Past 2 years receive prof dev - Financial mgmt'
FSL85n	=	'Past 2 years receive prof dev - Personnel mgmt'
FSL85o	=	'Past 2 years receive prof dev - Facility design and layout'
FSL85p	=	'Past 2 years receive prof dev - Food safety'
FSL85q	=	'Past 2 years receive prof dev - Proc for handling severe food allergy reactions'
FSL85r	=	'Past 2 years receive prof dev - Food prep methods for students with food allergies'
FSL85s	=	'Past 2 years receive prof dev - NS for students with dietary needs other than food allergies'
FSL85t	=	'Past 2 years receive prof dev - Using HACCP'
FSL85u	=	'Past 2 years receive prof dev - Proc for responding to food recalls'
FSL85v	=	'Past 2 years receive prof dev - Personal safety for NS staff'
FSL85w	=	'Past 2 years receive prof dev - Impl local wellness pol at sch level'
FSL85x	=	'Past 2 years receive prof dev - Sourcing foods locally or regionally'
FSL85y	=	'Past 2 years receive prof dev - Using produce from sch gardens'
FSL85z	=	'Past 2 years receive prof dev -  Culinary skills'
FSL86_1	=	'Wanted prof dev - Menu planning for hlth meals'
FSL86_2	=	'Wanted prof dev - Cultural diversity in meal planning'
FSL86_3	=	'Wanted prof dev - Impl new USDA rules for sch meal'
FSL86_4	=	'Wanted prof dev - Using cafeteria for nutr ed'
FSL86_5	=	'Wanted prof dev - Prog reg and proc'
FSL86_6	=	'Wanted prof dev - Selecting and ordering food'
FSL86_7	=	'Wanted prof dev - Hlth food prep methods'
FSL86_8	=	'Wanted prof dev - Increasing % of students partic in sch meals'
FSL86_9	=	'Wanted prof dev - Making sch meals appealing'
FSL86_10	=	'Wanted prof dev - Improving presentation of hlth foods '
FSL86_11	=	'Wanted prof dev - Customer serv'
FSL86_12	=	'Wanted prof dev - Competitive food pol to create hlth food env'
FSL86_13	=	'Wanted prof dev - Financial mgmt'
FSL86_14	=	'Wanted prof dev - Personnel mgmt'
FSL86_15	=	'Wanted prof dev - Facility design and layout'
FSL86_16	=	'Wanted prof dev - Food safety'
FSL86_17	=	'Wanted prof dev - Proc for handling severe food allergy reactions'
FSL86_18	=	'Wanted prof dev - Food prep methoths for students with allergies'
FSL86_19	=	'Wanted prof dev - NS for students with dietary needs other than food allergies'
FSL86_20	=	'Wanted prof dev - Using HACCP'
FSL86_21	=	'Wanted prof dev - Proc for responding to food recalls'
FSL86_22	=	'Wanted prof dev - Personal safety for NS staff'
FSL86_23	=	'Wanted prof dev - Impl local wellness pol at sch level'
FSL86_24	=	'Wanted prof dev - Sourcing foods locally and regionally'
FSL86_25	=	'Wanted prof dev - Using produce from sch gardens'
FSL86_26	=	'Wanted prof dev - Culinary skills'
FSL86_27	=	'Wanted prof dev - None'
;
run;
