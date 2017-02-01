
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
/*  "HLTHEDC_SAS_Input_Program.sas" to create the 2014 SHPPS dataset.                   */
/****************************************************************************************/

filename datain 'c:\shpps2014\hlthedc2014.dat';

libname dataout 'c:\shpps2014';

libname library 'c:\shpps2014';

data dataout.hlthedc2014;
infile datain lrecl=3000;
missing A C F N M ;
input
STATENAME	$1 	-	30
STCMSID	31	-	35
DISTCMSID	36	-	40
SCHCMSID	44	-	52
HECAGGWT	12.7 @68		
SPAN	84	-	89
ENROLL	90	-	95
HIGHGRADE	96	-	101
LOWGRADE	102	-	107
REGION	108	-	113
SAMPSTRA	114	-	119
DISTTYPE	120	-	125
LEVEL	126	-	131
PSU	132	-	142
HECWT	12.7@143		
CLCMSID	158	-	168
HECPAP	169	-	172
HEC1	173	-	176
HEC2	177	-	180
HEC3a	181	-	184
HEC3b	185	-	188
HEC3c	189	-	192
HEC3d	193	-	196
HEC3e	197	-	200
HEC3f	201	-	204
HEC3g	205	-	208
HEC3h	209	-	212
HEC3i	213	-	216
HEC3j	217	-	220
HEC3k	221	-	224
HEC3l	225	-	228
HEC3m	229	-	232
HEC3n	233	-	236
HEC3o	237	-	240
HEC4a	241	-	244
HEC4b	245	-	248
HEC4c	249	-	252
HEC4d	253	-	256
HEC4e	257	-	260
HEC4f	261	-	264
HEC4g	265	-	268
HEC5a	269	-	272
HEC5b	273	-	276
HEC5c	277	-	280
HEC5d	281	-	284
HEC5e	285	-	288
HEC5f	289	-	292
HEC5g	293	-	296
HEC5h	297	-	300
HEC5i	301	-	304
HEC5j	305	-	308
HEC5k	309	-	312
HEC5l	313	-	316
HEC6a	317	-	320
HEC6b	321	-	324
HEC6c	325	-	328
HEC6d	329	-	332
HEC6e	333	-	336
HEC6f	337	-	340
HEC6g	341	-	344
HEC6h	345	-	348
HEC6i	349	-	352
HEC6j	353	-	356
HEC7	357	-	360
HEC8	361	-	364
HEC9a	365	-	368
HEC9b	369	-	372
HEC9c	373	-	376
HEC9d	377	-	380
HEC9e	381	-	384
HEC9f	385	-	388
HEC9g	389	-	392
HEC9h	393	-	396
HEC9i	397	-	400
HEC9j	401	-	404
HEC9k	405	-	408
HEC9l	409	-	412
HEC9m	413	-	416
HEC10a	417	-	420
HEC10b	421	-	424
HEC10c	425	-	428
HEC10d	429	-	432
HEC10e	433	-	436
HEC10f	437	-	440
HEC10g	441	-	444
HEC10h	445	-	448
HEC10i	449	-	452
HEC10j	453	-	456
HEC10k	457	-	460
HEC10l	461	-	464
HEC11	465	-	468
HEC12	469	-	472
HEC13a	473	-	476
HEC13b	477	-	480
HEC13c	481	-	484
HEC13d	485	-	488
HEC13e	489	-	492
HEC13f	493	-	496
HEC13g	497	-	500
HEC13h	501	-	504
HEC13i	505	-	508
HEC13j	509	-	512
HEC13k	513	-	516
HEC13l	517	-	520
HEC13m	521	-	524
HEC13n	525	-	528
HEC13o	529	-	532
HEC13p	533	-	536
HEC13q	537	-	540
HEC13r	541	-	544
HEC13s	545	-	548
HEC14	549	-	552
HEC15a	553	-	556
HEC15b	557	-	560
HEC15c	561	-	564
HEC15d	565	-	568
HEC15e	569	-	572
HEC15f	573	-	576
HEC15g	577	-	580
HEC16	581	-	584
HEC17	585	-	588
HEC18a	589	-	592
HEC18b	593	-	596
HEC18c	597	-	600
HEC18d	601	-	604
HEC18e	605	-	608
HEC18f	609	-	612
HEC18g	613	-	616
HEC18h	617	-	620
HEC18i	621	-	624
HEC18j	625	-	628
HEC18k	629	-	632
HEC18l	633	-	636
HEC18m	637	-	640
HEC18n	641	-	644
HEC18o	645	-	648
HEC19a	649	-	652
HEC19b	653	-	656
HEC19c	657	-	660
HEC19d	661	-	664
HEC19e	665	-	668
HEC19f	669	-	672
HEC19g	673	-	676
HEC20	677	-	680
HEC21	681	-	684
HEC22a	685	-	688
HEC22b	689	-	692
HEC22c	693	-	696
HEC22d	697	-	700
HEC22e	701	-	704
HEC22f	705	-	708
HEC22g	709	-	712
HEC22h	713	-	716
HEC22i	717	-	720
HEC22j	721	-	724
HEC22k	725	-	728
HEC22l	729	-	732
HEC23a	733	-	736
HEC23b	737	-	740
HEC23c	741	-	744
HEC23d	745	-	748
HEC23e	749	-	752
HEC23f	753	-	756
HEC23g	757	-	760
HEC24	761	-	764
HEC25	765	-	768
HEC26a	769	-	772
HEC26b	773	-	776
HEC26c	777	-	780
HEC26d	781	-	784
HEC26e	785	-	788
HEC26f	789	-	792
HEC26g	793	-	796
HEC26h	797	-	800
HEC27	801	-	804
HEC28a	805	-	808
HEC28b	809	-	812
HEC28c	813	-	816
HEC28d	817	-	820
HEC28e	821	-	824
HEC28f	825	-	828
HEC28g	829	-	832
HEC28h	833	-	836
HEC29	837	-	840
HEC30a	841	-	844
HEC30b	845	-	848
HEC30c	849	-	852
HEC30d	853	-	856
HEC30e	857	-	860
HEC30f	861	-	864
HEC31	865	-	868
HEC32_1	869	-	872
HEC32_2	873	-	876
HEC32_3	877	-	880
HEC32_4	881	-	884
HEC32_5	885	-	888
HEC33	889	-	892
HEC34	893	-	896
HEC35a	897	-	900
HEC35b	901	-	904
HEC35c	905	-	908
HEC35d	909	-	912
HEC35e	913	-	916
HEC36a	917	-	920
HEC36b	921	-	924
HEC36c	925	-	928
HEC36d	929	-	932
HEC36e	933	-	936
HEC36f	937	-	940
HEC36g	941	-	944
HEC36h	945	-	948
HEC36i	949	-	952
HEC36j	953	-	956
HEC36k	957	-	960
HEC36l	961	-	964
HEC36m	965	-	968
HEC36n	969	-	972
HEC36o	973	-	976
HEC36p	977	-	980
HEC36q	981	-	984
HEC37a	985	-	988
HEC37b	989	-	992
HEC37c	993	-	996
HEC37d	997	-	1000
HEC37e	1001	-	1004
HEC37f	1005	-	1008
HEC37g	1009	-	1012
HEC38	1013	-	1016
HEC39	1017	-	1020
HEC40a	1021	-	1024
HEC40b	1025	-	1028
HEC40c	1029	-	1032
HEC40d	1033	-	1036
HEC40e	1037	-	1040
HEC41a	1041	-	1044
HEC41b	1045	-	1048
HEC41c	1049	-	1052
HEC41d	1053	-	1056
HEC41e	1057	-	1060
HEC41f	1061	-	1064
HEC41g	1065	-	1068
HEC41h	1069	-	1072
HEC42	1073	-	1076
HEC43a	1077	-	1080
HEC43b	1081	-	1084
HEC43c	1085	-	1088
HEC43d	1089	-	1092
HEC43e	1093	-	1096
HEC43f	1097	-	1100
HEC43g	1101	-	1104
HEC43h	1105	-	1108
HEC43i	1109	-	1112
HEC43j	1113	-	1116
HEC43k	1117	-	1120
HEC43l	1121	-	1124
HEC43m	1125	-	1128
HEC43n	1129	-	1132
HEC43o	1133	-	1136
HEC43p	1137	-	1140
HEC43q	1141	-	1144
HEC43r	1145	-	1148
HEC43s	1149	-	1152
HEC43t	1153	-	1156
HEC44a	1157	-	1160
HEC44b	1161	-	1164
HEC44c	1165	-	1168
HEC44d	1169	-	1172
HEC44e	1173	-	1176
HEC44f	1177	-	1180
HEC44g	1181	-	1184
HEC44h	1185	-	1188
HEC44i	1189	-	1192
HEC45	1193	-	1196
HEC46	1197	-	1200
HEC47a	1201	-	1204
HEC47b	1205	-	1208
HEC47c	1209	-	1212
HEC47d	1213	-	1216
HEC47e	1217	-	1220
HEC47f	1221	-	1224
HEC47g	1225	-	1228
HEC47h	1229	-	1232
HEC47i	1233	-	1236
HEC47j	1237	-	1240
HEC47k	1241	-	1244
HEC48a	1245	-	1248
HEC48b	1249	-	1252
HEC48c	1253	-	1256
HEC48d	1257	-	1260
HEC48e	1261	-	1264
HEC48f	1265	-	1268
HEC48g	1269	-	1272
HEC48h	1273	-	1276
HEC48i	1277	-	1280
HEC49	1281	-	1284
HEC50	1285	-	1288
HEC51a	1289	-	1292
HEC51b	1293	-	1296
HEC51c	1297	-	1300
HEC51d	1301	-	1304
HEC51e	1305	-	1308
HEC51f	1309	-	1312
HEC51g	1313	-	1316
HEC51h	1317	-	1320
HEC51i	1321	-	1324
HEC51j	1325	-	1328
HEC51k	1329	-	1332
HEC51l	1333	-	1336
HEC51m	1337	-	1340
HEC51n	1341	-	1344
HEC51o	1345	-	1348
HEC51p	1349	-	1352
HEC52a	1353	-	1356
HEC52b	1357	-	1360
HEC52c	1361	-	1364
HEC52d	1365	-	1368
HEC52e	1369	-	1372
HEC52f	1373	-	1376
HEC53a	1377	-	1380
HEC53b	1381	-	1384
HEC53c	1385	-	1388
HEC53d	1389	-	1392
HEC53e	1393	-	1396
HEC53f	1397	-	1400
HEC53g	1401	-	1404
HEC53h	1405	-	1408
HEC53i	1409	-	1412
HEC53j	1413	-	1416
HEC53k	1417	-	1420
HEC53l	1421	-	1424
HEC53m	1425	-	1428
HEC54a	1429	-	1432
HEC54b	1433	-	1436
HEC54c	1437	-	1440
HEC54d	1441	-	1444
HEC54e	1445	-	1448
HEC54f	1449	-	1452
HEC54g	1453	-	1456
HEC54h	1457	-	1460
HEC54i	1461	-	1464
HEC55a	1465	-	1468
HEC55b	1469	-	1472
HEC55c	1473	-	1476
HEC55d	1477	-	1480
HEC55e	1481	-	1484
HEC56a	1485	-	1488
HEC56b	1489	-	1492
HEC56c	1493	-	1496
HEC56d	1497	-	1500
HEC56e	1501	-	1504
HEC56f	1505	-	1508
HEC56g	1509	-	1512
HEC57a	1513	-	1516
HEC57b	1517	-	1520
HEC57c	1521	-	1524
HEC57d	1525	-	1528
HEC57e	1529	-	1532
HEC57f	1533	-	1536
HEC58a	1537	-	1540
HEC58b	1541	-	1544
HEC58c	1545	-	1548
HEC58d	1549	-	1552
HEC58e	1553	-	1556
HEC59a	1557	-	1560
HEC59b	1561	-	1564
HEC59c	1565	-	1568
HEC60a	1569	-	1572
HEC60b	1573	-	1576
HEC60c	1577	-	1580
HEC61	1581	-	1584
HEC62	1585	-	1588
HEC63a	1589	-	1592
HEC63b	1593	-	1596
HEC63c	1597	-	1600
HEC63d	1601	-	1604
HEC63e	1605	-	1608
HEC63f	1609	-	1612
HEC63g	1613	-	1616
HEC63h	1617	-	1620
HEC64	1621	-	1624
HEC65	1625	-	1628
HEC66	1629	-	1632
HEC67	1633	-	1636
HEC68_1	1637	-	1640
HEC68_2	1641	-	1644
HEC68_3	1645	-	1648
HEC68_4	1649	-	1652
HEC68_5	1653	-	1656
HEC68_6	1657	-	1660
HEC68_7SPEC	$1661	-	1721
HEC69	1722	-	1725
HEC70_1	1726	-	1729
HEC70_2	1730	-	1733
HEC70_3	1734	-	1737
HEC70_4	1738	-	1741
HEC70_5	1742	-	1745
HEC70_6	1746	-	1749
HEC70_7SPEC	$1750	-	1810
HEC71	1811	-	1814
HEC72_1	1815	-	1818
HEC72_2	1819	-	1822
HEC72_3	1823	-	1826
HEC72_4	1827	-	1830
HEC72_5	1831	-	1834
HEC72_6	1835	-	1838
HEC72_7SPEC	$1839	-	1899
HEC73a	1900	-	1903
HEC73b	1904	-	1907
HEC73c	1908	-	1911
HEC74	1912	-	1915
HEC75a	1916	-	1919
HEC75b	1920	-	1923
HEC75c	1924	-	1927
HEC75d	1928	-	1931
HEC75e	1932	-	1935
HEC75f	1936	-	1939
HEC75g	1940	-	1943
HEC75h	1944	-	1947
HEC75i	1948	-	1951
HEC75j	1952	-	1955
HEC75k	1956	-	1959
HEC75l	1960	-	1963
HEC75m	1964	-	1967
HEC75n	1968	-	1971
HEC75o	1972	-	1975
HEC76_1	1976	-	1979
HEC76_2	1980	-	1983
HEC76_3	1984	-	1987
HEC76_4	1988	-	1991
HEC76_5	1992	-	1995
HEC76_6	1996	-	1999
HEC76_7	2000	-	2003
HEC76_8	2004	-	2007
HEC76_9	2008	-	2011
HEC76_10	2012	-	2015
HEC76_11	2016	-	2019
HEC76_12	2020	-	2023
HEC76_13	2024	-	2027
HEC76_14	2028	-	2031
HEC76_15	2032	-	2035
HEC76_16	2036	-	2039
HEC77a	2040	-	2043
HEC77b	2044	-	2047
HEC77c	2048	-	2051
HEC77d	2052	-	2055
HEC77e	2056	-	2059
HEC77f	2060	-	2063
HEC77g	2064	-	2067
HEC77h	2068	-	2071
HEC77i	2072	-	2075
HEC77j	2076	-	2079
HEC77k	2080	-	2083
HEC77l	2084	-	2087
HEC77m	2088	-	2091
HEC78_1	2092	-	2095
HEC78_2	2096	-	2099
HEC78_3	2100	-	2103
HEC78_4	2104	-	2107
HEC78_5	2108	-	2111
HEC78_6	2112	-	2115
HEC78_7	2116	-	2119
HEC78_8	2120	-	2123
HEC78_9	2124	-	2127
HEC78_10	2128	-	2131
HEC78_11	2132	-	2135
HEC78_12	2136	-	2139
HEC78_13	2140	-	2143
HEC78_14	2144	-	2147
CLASSFORMAT 2148-2149
;
************************************
*  Assign formats to SAS variables.*
************************************;

format

/*HEALTH EDUCATION CLASS*/
HEC3A HEC3B HEC3C HEC3D HEC3E HEC3F HEC3G HEC3H HEC3I HEC3J HEC3K HEC3L HEC3M HEC3N HEC3O HEC4A HEC4B HEC4C HEC4D HEC4E HEC4F 
HEC4G HEC5A HEC5B HEC5C HEC5D HEC5E HEC5F HEC5G HEC5H HEC5I HEC5J HEC5K HEC5L HEC6A HEC6B HEC6C HEC6D HEC6E HEC6F HEC6G HEC6H HEC6I HEC6J HEC7
HEC9A HEC9B HEC9C HEC9D HEC9E HEC9F HEC9G HEC9H HEC9I HEC9J HEC9K HEC9L HEC9M HEC10A HEC10B HEC10C HEC10D HEC10E HEC10F HEC10G 
HEC10H HEC10I HEC10J HEC10K HEC10L HEC11 HEC13A HEC13B HEC13C HEC13D HEC13E HEC13F HEC13G HEC13H HEC13I HEC13J HEC13K HEC13L 
HEC13M HEC13N HEC13O HEC13P HEC13Q HEC13R HEC13S HEC14 HEC15A HEC15B HEC15C HEC15D HEC15E HEC15F HEC15G HEC16 HEC18A HEC18B HEC18C 
HEC18D HEC18E HEC18F HEC18G HEC18H HEC18I HEC18J HEC18K HEC18L HEC18M HEC18N HEC18O HEC19A HEC19B HEC19C HEC19D HEC19E HEC19F HEC19G 
HEC20 HEC22A HEC22B HEC22C HEC22D HEC22E HEC22F HEC22G HEC22H HEC22I HEC22J HEC22K HEC22L HEC23A HEC23B HEC23C HEC23D HEC23E HEC23F
HEC23G HEC24 HEC26A HEC26B HEC26C HEC26D HEC26E HEC26F HEC26G HEC26H HEC28A HEC28B HEC28C HEC28D HEC28E HEC28F HEC28G HEC28H 
HEC30A HEC30B HEC30C HEC30D HEC30E HEC30F HEC33 HEC35A HEC35B HEC35C HEC35D HEC35E HEC36A 
HEC36B HEC36C HEC36D HEC36E HEC36F HEC36G HEC36H HEC36I HEC36J HEC36K HEC36L HEC36M HEC36N HEC36O HEC36P HEC36Q HEC37A HEC37B
HEC37C HEC37D HEC37E HEC37F HEC37G HEC38 HEC40A HEC40B HEC40C HEC40D HEC40E HEC41A HEC41B HEC41C HEC41D HEC41E HEC41F HEC41G HEC41H 
HEC43A HEC43B HEC43C HEC43D HEC43E HEC43F HEC43G HEC43H HEC43I HEC43J HEC43K HEC43L HEC43M HEC43N HEC43O HEC43P HEC43Q HEC43R 
HEC43S HEC43T HEC44A HEC44B HEC44C HEC44D HEC44E HEC44F HEC44G HEC44H HEC44I HEC45 HEC47A HEC47B HEC47C HEC47D HEC47E HEC47F
HEC47G HEC47H HEC47I HEC47J HEC47K HEC48A HEC48B HEC48C HEC48D HEC48E HEC48F HEC48G HEC48H HEC48I HEC49 HEC51A HEC51B HEC51C 
HEC51D HEC51E HEC51F HEC51G HEC51H HEC51I HEC51J HEC51K HEC51L HEC51M HEC51N HEC51O HEC51P HEC52A HEC52B HEC52C HEC52D HEC52E HEC52F 
HEC43G HEC43H HEC43I HEC43J HEC43K HEC43L HEC43M HEC43N HEC43O HEC43P HEC56A HEC56B HEC56C HEC56D HEC56E HEC56F HEC56G 
HEC57A HEC57B HEC57C HEC57D HEC57E HEC57F HEC58A HEC58B HEC58C HEC58D HEC58E HEC59A HEC59B HEC59C HEC61 HEC62 HEC63A HEC63B
HEC63C HEC63D HEC63E HEC63F HEC63G HEC63H HEC65 HEC66 HEC67 HEC68_1 HEC68_2 HEC68_3 HEC68_4 HEC68_5 HEC68_6 HEC69 HEC70_1 HEC70_2 
HEC70_3 HEC70_4 HEC70_5 HEC70_6 HEC71 HEC72_1 HEC72_2 HEC72_3 HEC72_4 HEC72_5 HEC72_6  HEC73A HEC73B HEC73C
HEC74 HEC75A HEC75B HEC75C HEC75D HEC75E HEC75F HEC75G 
HEC75H HEC75I HEC75J HEC75K HEC75L HEC75M HEC75N HEC75O HEC76_1 HEC76_2 HEC76_3 HEC76_4 HEC76_5 HEC76_6 HEC76_7 HEC76_8 HEC76_9 HEC76_10 
HEC76_11 HEC76_12 HEC76_13 HEC76_14 HEC76_15 HEC76_16 HEC77A HEC77B HEC77C HEC77D HEC77E HEC77F HEC77G HEC77H HEC77I HEC77J HEC77K 
HEC77L HEC77M CLASSFORMAT
yesno.

HEC1 HEC1F. HEC60A HEC60AF. HEC60B HEC60BF. HEC60C HEC60CF. HEC73A HEC73B  HEC73C HEC73CF.

HEC8 HEC12 HEC17 HEC21 HEC25 HEC27 HEC29 HEC31 HEC39 HEC42 HEC46 HEC50 hours.

HEC32_1 HEC32_2 HEC32_2 HEC32_3 HEC32_4 HEC32_5 yesno.

HEC55A HEC55B HEC55C HEC55D HEC55E yesnona.

HEC53A HEC53B HEC53C HEC53D HEC53E HEC53F HEC53G HEC53H HEC53I HEC53J HEC53K HEC53L HEC53M
HEC54A HEC54B HEC54C HEC54D HEC54E HEC54F HEC54G HEC54H HEC54I 
often.

HEC78_1 HEC78_2 HEC78_3 HEC78_4 HEC78_5 HEC78_6 HEC78_7 HEC78_8 HEC78_9 HEC78_10 HEC78_11 HEC78_12 HEC78_13 HEC78_14 yesno.


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

HECPAP
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
HECAGGWT = 'HEC School-level health education classroom weight'
CLCMSID ='Class CMS ID'
HECWT ='HEC Course-level health education classroom weight'
PSU	=	'Sampled Primary Sampling Unit'
HECPAP	=	'Mail - CAPI Complete '
HEC1	=	'MS/HS general course characteristics/content '
HEC2	=	'Class enrollment'
HEC3a	=	'Teach about  - Alcohol/drug use prev'
HEC3b	=	'Teach about  - Tobacco use prev'
HEC3c	=	'Teach about  - Nutr/dietary behav'
HEC3d	=	'Teach about  - PA/fitness'
HEC3e	=	'Teach about  - Preg prev'
HEC3f	=	'Teach about  - HIV prev'
HEC3g	=	'Teach about  - STD prev'
HEC3h	=	'Teach about  - Human sexuality'
HEC3i	=	'Teach about  - Emot/MH'
HEC3j	=	'Teach about  - Suicide prev'
HEC3k	=	'Teach about  - Violence prev'
HEC3l	=	'Teach about  - Injury prev/safety'
HEC3m	=	'Teach about  - Asthma'
HEC3n	=	'Teach about  - Infectious disease prev'
HEC3o	=	'Teach about  - Foodborne illness prev'
HEC4a	=	'When teaching use - Internet'
HEC4b	=	'When teaching use - St/Dist/Sch - dev curricula '
HEC4c	=	'When teaching use - Commercially dev curricula'
HEC4d	=	'When teaching use - Commercially dev student txtbk'
HEC4e	=	"When teaching use - Commercially dev teacher's guide"
HEC4f	=	'When teaching use - HE student perf assessment materials'
HEC4g	=	'Teach use - Materials from health orgs'
HEC5a	=	'Teach sh-term hlth conseq alcohol use/addiction'
HEC5b	=	'Teach long-term hlth conseq alcohol use/addiction'
HEC5c	=	'Teach benefits no alcohol'
HEC5d	=	'Teach drink equivalents/blood alcohol content'
HEC5e	=	'Teach legal conseq underage drinking'
HEC5f	=	'Teach sh-term hlth conseq drug use/addiction'
HEC5g	=	'Teach long-term hlth conseq drug use/addiction'
HEC5h	=	'Teach benefits no drugs'
HEC5i	=	'Teach medicinal v non-medicinal drug use'
HEC5j	=	"Teach conseq of Rx drug use w/o doctor's Rx"
HEC5k	=	'Teach conseq of inhalant use'
HEC5l	=	'Teach effects of alcohol/drug use on decision-making'
HEC6a	=	'Teach how many young ppl use alcohol/drugs'
HEC6b	=	"Teach families' influence on alcohol/drug use"
HEC6c	=	'Teach media influence on alcohol/drug use'
HEC6d	=	'Teach soc/cultural influence on alcohol/drug use'
HEC6e	=	'Teach peer influence on alcohol/drug use'
HEC6f	=	'Teach finding info/serv on alcohol/drug use prev/cessation'
HEC6g	=	'Teach resisting peer pressure to use alcohol/drugs'
HEC6h	=	'Teach commitment not to use alcohol/drugs'
HEC6i	=	'Teach how students influence/support/advocate for alcohol/drug prev'
HEC6j	=	'Teach how students influence/support others to quit alcohol/drugs'
HEC7	=	'Opportunity to practice skills on alcohol/drug prev'
HEC8	=	'Hours spent teaching alcohol/drug use prev'
HEC9a	=	'Teach sh-term hlth conseq of cig'
HEC9b	=	'Teach long-term hlth conseq of cig'
HEC9c	=	'Teach benefits no smoking cig'
HEC9d	=	'Teach sh-term hlth conseq of cigar '
HEC9e	=	'Teach long-term hlth conseq of cigar'
HEC9f	=	'Teach benefits no smoking cigar'
HEC9g	=	'Teach sh-term hlth conseq of smokeless tobacco'
HEC9h	=	'Teach long-term htlth conseq of smokeless tobacco'
HEC9i	=	'Teach benefits no smokeless tobacco'
HEC9j	=	'Teach risks use other tobacco'
HEC9k	=	'Teach importance of quitting'
HEC9l	=	'Teach addictive effects of nicotine'
HEC9m	=	'Teach hlth effects of ETS'
HEC10a	=	'Teach how many young ppl use tobacco'
HEC10b	=	"Teach families' influence on tobacco use"
HEC10c	=	'Teach media influence on tobacco use'
HEC10d	=	'Teach soc/cultural influence on tobacco use'
HEC10e	=	'Teach peer influence on tobacco use'
HEC10f	=	'Teach finding info/serv related to tobacco use prev/cessation'
HEC10g	=	'Teach resisting peer pressure to use tobacco'
HEC10h	=	'Teach commitment not to use tobacco'
HEC10i	=	'Teach supporting sch/cmty action tobacco-free env'
HEC10j	=	'Teach how students influence/support/advocate for tobacco prev'
HEC10k	=	'Teach how students influence/support others to quit tobacco'
HEC10l	=	'Teach avoiding ETS/second-hand smoke'
HEC11	=	'Opportunity to practice skills on tobacco use prev'
HEC12	=	'Hours spent teaching tobacco use prev'
HEC13a	=	'Teach relationship btwn hlthy eating/personal hlth'
HEC13b	=	'Teach food guidance using MyPlate/MyPyramid'
HEC13c	=	'Teach reading/using food labels'
HEC13d	=	'Teach eating variety of foods'
HEC13e	=	'Teach balancing food intake and PA'
HEC13f	=	'Teach eating more fruits/veg/whole grain'
HEC13g	=	'Teach choosing foods low in fat'
HEC13h	=	'Teach choosing foods/bev w little added sugar'
HEC13i	=	'Teach eating more calcium-rich foods'
HEC13j	=	'Teach prep hlthy meals/snacks'
HEC13k	=	'Teach risks of unhlthy weight control practices'
HEC13l	=	'MS/HS teach eating disorders'
HEC13m	=	'Teach accepting body size differences'
HEC13n	=	'Teach food safety'
HEC13o	=	'Teach importance of water consumption'
HEC13p	=	'Teach importance of eating bfast'
HEC13q	=	'Teach making hlthy choices at restaurants'
HEC13r	=	'MS/HS teach Dietary Guidelines for Americans'
HEC13s	=	'MS/HS teach using salt/sodium in moderation'
HEC14	=	'Opportunity to taste new foods'
HEC15a	=	"Teach families' influence on dietary behav"
HEC15b	=	'Teach media influence on dietary behav'
HEC15c	=	'Teach soc/cultural influences on dietary behav'
HEC15d	=	'Teach peer influence on dietary behav'
HEC15e	=	'Teach finding info/serv related to nutr/dietary behav'
HEC15f	=	'Teach resisting peer pressure related to unhlthy dietary behav'
HEC15g	=	'Teach how students influence/support/advocate for hlthy dietary behav'
HEC16	=	'Opportunity to practice skills on nutr/dietary behav'
HEC17	=	'Hours spent teaching nutr/dietary behav'
HEC18a	=	'Teach phys/psych/soc benefits of PA'
HEC18b	=	'Teach how PA contributes to hlthy weight'
HEC18c	=	'Teach how inactive lifestyle contributes to chronic disease'
HEC18d	=	'Teach hlth-related fitness'
HEC18e	=	'Teach difference between PA/exericise/fitness'
HEC18f	=	'Teach phases of exercise session'
HEC18g	=	'Teach overcoming barriers to PA'
HEC18h	=	'Teach decreasing sedentary activ'
HEC18i	=	'Teach opportunities for PA in cmty'
HEC18j	=	'Teach prev injury during PA'
HEC18k	=	'Teach weather-related safety'
HEC18l	=	'MS/HS  teach how much PA is enough'
HEC18m	=	'MS/HS  teach dev indv PA plan'
HEC18n	=	'MS/HS teach monitoring indv PA plan progress'
HEC18o	=	'MS/HS teach dangers of using perf-enhancing drugs'
HEC19a	=	"Teach families' influence on PA"
HEC19b	=	'Teach media influence on PA'
HEC19c	=	'Teach soc/cultural influence on PA'
HEC19d	=	'Teach peer influence on PA'
HEC19e	=	'Teach finding info/serv related to PA/fitness'
HEC19f	=	'Teach resisting peer pressure that discourages PA'
HEC19g	=	'Teach how students influence/support/advocate for PA'
HEC20	=	'Teach opportunities to practice skills on PA'
HEC21	=	'Hours spent teaching PA'
HEC22a	=	'Teach abstinence'
HEC22b	=	'Teach relationship among HIV/STDs/preg'
HEC22c	=	'Teach dating/hlthy relationships'
HEC22d	=	'Teach marriage/commitment'
HEC22e	=	'Teach human dev issues'
HEC22f	=	'MS/HS teach  risks associated w multiple sexual partners'
HEC22g	=	'MS/HS teach condom efficacy'
HEC22h	=	'MS/HS teach how to correctly use condoms'
HEC22i	=	'MS/HS teach how to obtain condoms'
HEC22j	=	'MS/HS teach importance of using condoms consistently/correctly'
HEC22k	=	'MS/HS teach importance using condom w another contraception '
HEC22l	=	'MS/HS teach sexual identity/orientation'
HEC23a	=	"Teach families' influence on sexual behav"
HEC23b	=	'Teach media influence on sexual behav'
HEC23c	=	'Teach soc/cultural influences on sexual behav'
HEC23d	=	'Teach peer influence on sexual behav'
HEC23e	=	'Teach resisting peer pressure to engage in sexual behav'
HEC23f	=	'Teach how students influence/support/advocate for hlthy sexual behav'
HEC23g	=	'Teach relationship between alcohol/drug use and  risk for HIV/STDs/preg'
HEC24	=	'Opportunity to practice skills on human sexuality'
HEC25	=	'Hours spent teaching human sexuality'
HEC26a	=	'Teach how to prev preg'
HEC26b	=	'Teach risks associated w teen preg'
HEC26c	=	'Teach ed/soc impact of teen preg'
HEC26d	=	'Teach finding info/serv related to preg/preg testing'
HEC26e	=	'MS/HS teach contraception methods'
HEC26f	=	'MS/HS teach importance of using contraception consistently/correctly'
HEC26g	=	'MS/HS teach how to obtain contraception'
HEC26h	=	'MS/HS teach contraception efficacy'
HEC27	=	'Hours spent teaching preg prev'
HEC28a	=	'Teach how to prevent HIV infection '
HEC28b	=	'Teach signs/symptoms of HIV/AIDS'
HEC28c	=	'Teach how HIV transmitted'
HEC28d	=	'Teach how HIV affects body'
HEC28e	=	'Teach long-term hlth conseq of HIV/AIDS'
HEC28f	=	'Teach compassion for persons with HIV/AIDS'
HEC28g	=	'Teach finding valid info/serv related to HIV/HIV counseling/testing'
HEC28h	=	'Teach how HIV is diagnosed/treated'
HEC29	=	'Hours spent teaching HIV prev'
HEC30a	=	'Teach how to prevent STDs '
HEC30b	=	'Teach how STDs transmitted'
HEC30c	=	'Teach signs/symptoms of STDs'
HEC30d	=	'Teach finding valid info/serv related to STDs/STD screening'
HEC30e	=	'Teach how STDs are diagnosed/treated'
HEC30f	=	'Teach long-term hlth conseq of STDs'
HEC31	=	'Hours spent teaching STD prev'
HEC32_1	=	'No specific human sexuality curriculum used'
HEC32_2	=	'Used human sexuality curriculum req by st/dist/sch'
HEC32_3	=	'Used human sexuality curriculum rec by st/dist/sch '
HEC32_4	=	'Used human sexuality curriculum from other source'
HEC32_5	=	'Dev own human sexuality curriculum'
HEC33	=	'Any student excused by parent during human sexuality topics'
HEC34	=	'How many students excused from human sexuality topics'
HEC35a	=	'When excused, students partic - Related assignment/project '
HEC35b	=	'When excused, students partic - Another HE assignment/project'
HEC35c	=	'When excused, students partic - Study hall'
HEC35d	=	'When excused, students partic - Additional PE time'
HEC35e	=	'When excused, students partic - Another activ'
HEC36a	=	'Emot/MH - Feelings/emot associated w loss/grief'
HEC36b	=	'MS/HS teach how emot change during adolescence'
HEC36c	=	'Teach appropriate ways express emotions'
HEC36d	=	'Teach relationship btwn feelings/behav'
HEC36e	=	'Teach importance of talking w trusted adults about emot/feelings'
HEC36f	=	'Teach causes/signs/effects of stress'
HEC36g	=	'Teach positive/negative ways to deal w stress'
HEC36h	=	'Teach causes/signs/effects of depression'
HEC36i	=	'Teach where to seek help for MH problems'
HEC36j	=	'Teach interrelationship of phys/mental/emot/soc/spiritual hlth'
HEC36k	=	'Teach strategies for controlling impulsive behav'
HEC36l	=	'Teach strategies for controlling anger'
HEC36m	=	'Teach strategies for coping w loss/grief'
HEC36n	=	'Teach being sensitive to feelings of others'
HEC36o	=	'Teach establ/maint hlthy relationships'
HEC36p	=	'Teach hlthy ways to express affection/love/friendship/concern'
HEC36q	=	'Teach how mental illness is diagnosed/treated'
HEC37a	=	"Teach families' influence on emot/MH"
HEC37b	=	'Teach media influence on emot/MH'
HEC37c	=	'Teach soc/cultural influence on emot/MH'
HEC37d	=	'Teach peer influence on emot/MH'
HEC37e	=	'Teach finding info/serv related to emot/MH'
HEC37f	=	'Teach how students influence/support/advocate for emot/MH'
HEC37g	=	'Teach relationship btwn alcohol/drug use and emot/MH'
HEC38	=	'Opportunity to practice skills on emot/MH'
HEC39	=	'Hours spent teaching emot/MH'
HEC40a	=	'Teach signs/symptoms of people in danger of hurting self'
HEC40b	=	'Teach what to do if someone thinking of hurting self'
HEC40c	=	'Teach relationship btwn suicide/other violence'
HEC40d	=	'Teach relationship btwn suicide and emot/MH'
HEC40e	=	'Teach when to seek help for suicidal thoughts'
HEC41a	=	"Teach families' influence on suicidal behav"
HEC41b	=	'Teach media influence on suicidal behav'
HEC41c	=	'Teach soc/cultural influence on suicidal behav'
HEC41d	=	'Teach peer influence on suicidal behav'
HEC41e	=	'Teach finding info/serv to prev suicidal behav'
HEC41f	=	'Teach resisting peer pressure that increases suicidal behav'
HEC41g	=	'Teach how students influence/support/advocate to prev suicidal behav'
HEC41h	=	'Teach relationship btwn alcohol/drug use and suicidal behav'
HEC42	=	'Hours spent teaching suicide prev'
HEC43a	=	'Teach anger mgmt'
HEC43b	=	'Teach bullying'
HEC43c	=	'Teach what to do when bullied'
HEC43d	=	'ES teach teasing'
HEC43e	=	'ES teach personal safety/dealing with strangers'
HEC43f	=	'ES teach inappropriate touching'
HEC43g	=	'Teach techniques to resolve conflicts'
HEC43h	=	'Teach prosocial behav'
HEC43i	=	'MS/HS teach personal safety'
HEC43j	=	'MS/HS teach sexual harassment'
HEC43k	=	'MS/HS teach dating violence'
HEC43l	=	'MS/HS teach sexual assault/rape'
HEC43m	=	'MS/HS teach gangs'
HEC43n	=	'Teach signs/symptoms of people in danger of hurting others'
HEC43o	=	'Teach what to do if someone thinking of hurting others'
HEC43p	=	'Teach prejudice/discrimination/bias'
HEC43q	=	'Teach empathy'
HEC43r	=	'Teach perspective-taking'
HEC43s	=	'Teach sh-term conseq of violence'
HEC43t	=	'Teach long-term conseq of violence'
HEC44a	=	"Teach families' influence on violence behav"
HEC44b	=	'Teach media influence on violence behav'
HEC44c	=	'Teach soc/cultural influence on violence behav'
HEC44d	=	'Teach peer influence on violence behav'
HEC44e	=	'Teach finding info/serv to prevent violence'
HEC44f	=	'Teach resisting peer pressure to engage in violent behav'
HEC44g	=	'Teach how students influence/support/advocate to prev violence'
HEC44h	=	'Teach relationship btwn alcohol/drug use and violence'
HEC44i	=	'Teach relationship btwn anger/violence'
HEC45	=	'Opportunity to practice skills on violence prev'
HEC46	=	'Hours spent teaching violence prev'
HEC47a	=	'Teach fire safety'
HEC47b	=	'Teach water safety'
HEC47c	=	'Teach emerg prep'
HEC47d	=	'Teach pedestrian safety'
HEC47e	=	'Teach motor vehicle occupant safety'
HEC47f	=	'MS/HS teach state laws related to teen driving'
HEC47g	=	'Teach use of protective equipment'
HEC47h	=	'Teach first aid'
HEC47i	=	'Teach CPR'
HEC47j	=	'Teach poisoning prev'
HEC47k	=	'ES teach playground safety'
HEC48a	=	"Teach families' influence on safety behav"
HEC48b	=	'Teach media influence on safety behav'
HEC48c	=	'Teach technology influence on safety behav'
HEC48d	=	'Teach soc/cultural influence on safety behav'
HEC48e	=	'Teach peer influence on safety behav'
HEC48f	=	'Teach finding info/serv to prevent injuries'
HEC48g	=	'Teach resisting peer pressure that increase risk of injuries'
HEC48h	=	'Teach how students influence/support/advocate to prev injuries'
HEC48i	=	'Teach relationship btwn alcohol/drug use and injuries'
HEC49	=	'Opportunity to practice skills on injury prev/safety'
HEC50	=	'Hours spent teaching injury prev/safety'
HEC51a	=	'Teach hand washing/hygiene'
HEC51b	=	'Teach dental/oral hlth'
HEC51c	=	'Teach consumer hlth'
HEC51d	=	'Teach env hlth'
HEC51e	=	'Teach growth/dev'
HEC51f	=	'Teach immunizations'
HEC51g	=	'Teach sun safety/skin cancer prev'
HEC51h	=	'Teach difference btwn infectious disease/chronic disease'
HEC51i	=	'Teach how infectious illness transmitted'
HEC51j	=	'Teach how to cover mouth/nose when sneezing/coughing'
HEC51k	=	'Teach importance of staying home when sick'
HEC51l	=	'Teach benefits of rest/sleep'
HEC51m	=	'Teach preventing vision/hearing loss'
HEC51n	=	'Teach importance of hlth screenings/checkups'
HEC51o	=	'Teach benefits of positive hlth behav '
HEC51p	=	'Teach potential hlth/soc conseq of popular fads/trends'
HEC52a	=	'Teach families influence on personal hlth/wellness'
HEC52b	=	'Teach media influence on personal hlth/wellness'
HEC52c	=	'Teach soc/cultural influence on personal hlth/wellness'
HEC52d	=	'Teach peer influence on personal hlth/wellness'
HEC52e	=	'Teach finding info/serv to promote personal hlth/wellness'
HEC52f	=	'Teach how students influence/support/advocate for personal hlth/wellness'
HEC53a	=	'How often use - Audiovisual media'
HEC53b	=	'How often use - Group discussions'
HEC53c	=	'How often use - Cooperative group activ'
HEC53d	=	'How often use - Role play/simulations/practice'
HEC53e	=	'How often use - Visual/performing/language arts'
HEC53f	=	'How often use - Pledges/contracts for behav change'
HEC53g	=	'How often use - Guest speakers'
HEC53h	=	'How often use - Peer teaching'
HEC53i	=	'How often use - Internet'
HEC53j	=	'How often use - HE prog available through videoconferencing'
HEC53k	=	'How often use - Student logs/journals'
HEC53l	=	'How often use - Games to reinforce concepts'
HEC53m	=	'How often use - Field trips for instr'
HEC54a	=	'Online course, how often use - Group discussion'
HEC54b	=	'Online course, how often use - Cooperative group activ'
HEC54c	=	'Online course, how often use - Role play/simulations/practice'
HEC54d	=	'Online course, how often use - Visual/performing/language arts'
HEC54e	=	'Online course, how often use - Pledges/contracts for behav change'
HEC54f	=	'Online course, how often use - Guest speakers'
HEC54g	=	'Online course, how often use - Peer teaching'
HEC54h	=	'Online course, how often use - Student logs/journals'
HEC54i	=	'Online course, how often use - Games to reinforce concepts'
HEC55a	=	'Use txtbk/curricular materials of various cultures'
HEC55b	=	'Use txtbk/curricular materials for limited English proficiency'
HEC55c	=	'Ask students/families to share cultural experience'
HEC55d	=	'Teach cultural differences/similarities'
HEC55e	=	'Modify methods to match styles/hlth beliefs/cultural values'
HEC56a	=	'Students asked - Perform vol work at hosp/local hlth dept/other org'
HEC56b	=	'Students asked - Partic/attend cmty hlth fair'
HEC56c	=	'Students asked - Gather hlth serv info'
HEC56d	=	'Students asked - Visit store to compare prices of hlth products'
HEC56e	=	'Students asked - Identify injury sites at school/home/cmty'
HEC56f	=	'Students asked - Identify ads in cmty that influence hlth behav'
HEC56g	=	'Students asked - Advocate for hlth-related issue'
HEC57a	=	'Prov families with class info'
HEC57b	=	'Give homework/projects involving family'
HEC57c	=	'Invite families to attend class/hlth ed activ'
HEC57d	=	'Prov strategies to promo hlth of family'
HEC57e	=	'Collect suggestions from students'
HEC57f	=	'Collect suggestions from families'
HEC58a	=	'Students assessed on attendance'
HEC58b	=	'Students assessed on level of partic'
HEC58c	=	'Students assessed on knowledge tests'
HEC58d	=	'Students assessed on skills performance tests'
HEC58e	=	'Students assessed on portfolio'
HEC59a	=	'ES students washed hands - Before lunch'
HEC59b	=	'ES students washed hands - Before snacks'
HEC59c	=	'ES students washed hands - After recess'
HEC60a	=	'ES students used sanitizer - Before lunch'
HEC60b	=	'ES students used sanitizer - Before snacks'
HEC60c	=	'ES students used sanitizer - After recess'
HEC61	=	'ES supply list incl hand cleaning products'
HEC62	=	'Students w long-term disabilities in class'
HEC63a	=	'Assistance for students w disabilities - Spec ed teacher'
HEC63b	=	'Assistance for students w disabilities - Teacher/aide'
HEC63c	=	'Assistance for students w disabilities - Assigned note taker'
HEC63d	=	'Assistance for students w disabilities - Simplified instr content'
HEC63e	=	'Assistance for students w disabilities - Skill modeling'
HEC63f	=	'Assistance for students w disabilities - Modified instr strategies'
HEC63g	=	'Assistance for students w disabilities - Preferential seating'
HEC63h	=	'Assistance for students w disabilities - Modified assessment'
HEC64	=	'R years of exp teaching HE '
HEC65	=	'R ever taught online HE'
HEC66	=	'R coach intersch sports'
HEC67	=	'R has undergrad degree'
HEC68_1	=	'R major - HE'
HEC68_2	=	'R major - PE'
HEC68_3	=	'R major - Other ed'
HEC68_4	=	'R major - Nursing'
HEC68_5	=	'R major - Biology'
HEC68_6	=	'R major - Other'
HEC68_7SPEC	=	'R major - Specify'
HEC69	=	'R has undergrad minor'
HEC70_1	=	'R minor - HE'
HEC70_2	=	'R minor - PE'
HEC70_3	=	'R minor - Other ed'
HEC70_4	=	'R minor - Nursing'
HEC70_5	=	'R minor - Biology'
HEC70_6	=	'R minor - Other'
HEC70_7SPEC	=	'R minor - Specify'
HEC71	=	'R has grad degree'
HEC72_1	=	'R grad degree - HE'
HEC72_2	=	'R grad degree - PE'
HEC72_3	=	'R grad degree - Other ed'
HEC72_4	=	'R grad degree - Nursing'
HEC72_5	=	'R grad degree - Biology'
HEC72_6	=	'R grad degree - Other '
HEC72_7SPEC	=	'R grad degree - Specify'
HEC73a	=	'R cert/lic to teach HE in ES'
HEC73b	=	'R cert/lic to teach HE in MS'
HEC73c	=	'R cert/lic to teach HE in HS'
HEC74	=	'R has CHES'
HEC75a	=	'Past 2 years receive prof dev - Alcohol/drug use prev'
HEC75b	=	'Past 2 years receive prof dev - Tobacco use prev'
HEC75c	=	'Past 2 years receive prof dev - Nutr/dietary behav'
HEC75d	=	'Past 2 years receive prof dev - PA/fitness'
HEC75e	=	'Past 2 years receive prof dev - Preg prev'
HEC75f	=	'Past 2 years receive prof dev - HIV prev'
HEC75g	=	'Past 2 years receive prof dev - STD prev'
HEC75h	=	'Past 2 years receive prof dev - Human sexuality'
HEC75i	=	'Past 2 years receive prof dev - Emot/MH'
HEC75j	=	'Past 2 years receive prof dev - Suicide prev'
HEC75k	=	'Past 2 years receive prof dev - Violence prev'
HEC75l	=	'Past 2 years receive prof dev - Injury prev/safety'
HEC75m	=	'Past 2 years receive prof dev - Asthma'
HEC75n	=	'Past 2 years receive prof dev - Infectious disease prev'
HEC75o	=	'Past 2 years receive prof dev - Foodborne illness prev'
HEC76_1	=	'Wanted prof dev - Alcohol/drug use prev'
HEC76_2	=	'Wanted prof dev - Tobacco use prev'
HEC76_3	=	'Wanted prof dev - Nutr/dietary behav'
HEC76_4	=	'Wanted prof dev - PA/fitness'
HEC76_5	=	'Wanted prof dev - Preg prev'
HEC76_6	=	'Wanted prof dev - HIV prev'
HEC76_7	=	'Wanted prof dev - STD prev'
HEC76_8	=	'Wanted prof dev - Human sexuality'
HEC76_9	=	'Wanted prof dev - Emot/MH'
HEC76_10	=	'Wanted prof dev - Suicide prev'
HEC76_11	=	'Wanted prof dev - Violence prev'
HEC76_12	=	'Wanted prof dev - Injury prev/safety'
HEC76_13	=	'Wanted prof dev - Asthma'
HEC76_14	=	'Wanted prof dev - Infectious disease prev'
HEC76_15	=	'Wanted prof dev - Foodborne illness prev'
HEC76_16	=	'Wanted prof dev - None'
HEC77a	=	'Past 2 years receive prof dev - Teaching students w disabilities'
HEC77b	=	'Past 2 years receive prof dev - Teaching students w various cultural backgrounds'
HEC77c	=	'Past 2 years receive prof dev - Teaching students w limited English '
HEC77d	=	'Past 2 years receive prof dev - Using interactive teaching methods'
HEC77e	=	'Past 2 years receive prof dev - Using peer educators'
HEC77f	=	'Past 2 years receive prof dev - Involve families in HE'
HEC77g	=	'Past 2 years receive prof dev - Involve cmty in HE'
HEC77h	=	'Past 2 years receive prof dev - Teaching behav change skills'
HEC77i	=	'Past 2 years receive prof dev - Classroom mgmt techniques'
HEC77j	=	'Past 2 years receive prof dev - Assessing/eval students in HE'
HEC77k	=	'Past 2 years receive prof dev - Aligning HE stds to curriculum/instr/student assessment'
HEC77l	=	'Past 2 years receive prof dev - Teaching online/distance ed courses'
HEC77m	=	'Past 2 years receive prof dev - Technology'
HEC78_1	=	'Wanted prof dev - Students w disabilities'
HEC78_2	=	'Wanted prof dev - Students w various cultural backgrounds'
HEC78_3	=	'Wanted prof dev - Students w limited English '
HEC78_4	=	'Wanted prof dev - Using interactive teaching methods'
HEC78_5	=	'Wanted prof dev - Using peer educators'
HEC78_6	=	'Wanted prof dev - Involve families in HE'
HEC78_7	=	'Wanted prof dev - Involve cmty in HE'
HEC78_8	=	'Wanted prof dev - Teaching behav change skills'
HEC78_9	=	'Wanted prof dev - Classroom mgmt techniques'
HEC78_10	=	'Wanted prof dev - Assessing/eval students in HE'
HEC78_11	=	'Wanted prof dev - Aligning HE stds to curriculum/instr/student assessment'
HEC78_12	=	'Wanted prof dev - Teaching online/distance ed courses'
HEC78_13	=	'Wanted prof dev - Technology'
HEC78_14	=	'Wanted prof dev - None'
CLASSFORMAT='Class Taught Online'
;
run;
