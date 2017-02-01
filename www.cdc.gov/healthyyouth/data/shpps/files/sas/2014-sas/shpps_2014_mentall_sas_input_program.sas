
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
/*  "MENTALL_SAS_Input_Program.sas" to create the 2014 SHPPS dataset.                   */
/****************************************************************************************/

filename datain 'c:\shpps2014\mentall2014.dat';

libname dataout 'c:\shpps2014';

libname library 'c:\shpps2014';

data dataout.mentall2014;
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
MHLPAP	122	-	123
MHL1	124	-	126
MHL2	127	-	129
MHL3	130	-	132
MHL4_1	133	-	135
MHL4_2	136	-	138
MHL4_3	139	-	141
MHL4_4	142	-	144
MHL4_5	145	-	147
MHL4_6	148	-	150
MHL4_7	151	-	153
MHL4_8	154	-	156
MHL4_9	157	-	159
MHL5	160	-	162
MHL5SPEC	$163	-	223
MHL6	224	-	226
MHL7	227	-	229
MHL8	230	-	232
MHL9_1	233	-	235
MHL9_2	236	-	238
MHL9_3	239	-	241
MHL9_4	242	-	244
MHL9_5	245	-	247
MHL9_6	248	-	250
MHL9_7	251	-	253
MHL9_8	254	-	256
MHL9_9	257	-	259
MHL10	260	-	262
MHL10SPEC	$263	-	323
MHL11	324	-	326
MHL12	327	-	329
MHL13	330	-	332
MHL14_1	333	-	335
MHL14_2	336	-	338
MHL14_3	339	-	341
MHL14_4	342	-	344
MHL14_5	345	-	347
MHL14_6	348	-	350
MHL14_7	351	-	353
MHL14_8	354	-	356
MHL14_9	357	-	359
MHL15	360	-	362
MHL15SPEC	$363	-	423
MHL16	424	-	426
MHL17	427	-	429
MHL18a	430	-	432
MHL18b	433	-	435
MHL18c	436	-	438
MHL18d	439	-	441
MHL19a	442	-	444
MHL19b	445	-	447
MHL19c	448	-	450
MHL19d	451	-	453
MHL19e	454	-	456
MHL20a	457	-	459
MHL20b	460	-	462
MHL20c	463	-	465
MHL20d	466	-	468
MHL20e	469	-	471
MHL20f	472	-	474
MHL20g	475	-	477
MHL20h	478	-	480
MHL20i	481	-	483
MHL20j	484	-	486
MHL20k	487	-	489
MHL21a	490	-	492
MHL21b	493	-	495
MHL21c	496	-	498
MHL21d	499	-	501
MHL22a	502	-	504
MHL22b	505	-	507
MHL22c	508	-	510
MHL22d	511	-	513
MHL22e	514	-	516
MHL23a	517	-	519
MHL23b	520	-	522
MHL23c	523	-	525
MHL23d	526	-	528
MHL24	529	-	531
MHL25a	532	-	534
MHL26a_1	535	-	537
MHL26a_2	538	-	540
MHL26a_3	541	-	543
MHL26a_4	544	-	546
MHL26a_4SPEC	$547	-	607
MHL25b	608	-	610
MHL26b_1	611	-	613
MHL26b_2	614	-	616
MHL26b_3	617	-	619
MHL26b_4	620	-	622
MHL26b_4SPEC	$623	-	683
MHL25c	684	-	686
MHL26c_1	687	-	689
MHL26c_2	690	-	692
MHL26c_3	693	-	695
MHL26c_4	696	-	698
MHL26c_4SPEC	$699	-	759
MHL25d	760	-	762
MHL26d_1	763	-	765
MHL26d_2	766	-	768
MHL26d_3	769	-	771
MHL26d_4	772	-	774
MHL26d_4SPEC	$775	-	835
MHL25e	836	-	838
MHL26e_1	839	-	841
MHL26e_2	842	-	844
MHL26e_3	845	-	847
MHL26e_4	848	-	850
MHL26e_4SPEC	$851	-	911
MHL25f	912	-	914
MHL26f_1	915	-	917
MHL26f_2	918	-	920
MHL26f_3	921	-	923
MHL26f_4	924	-	926
MHL26f_4SPEC	$927	-	987
MHL25g	988	-	990
MHL26g_1	991	-	993
MHL26g_2	994	-	996
MHL26g_3	997	-	999
MHL26g_4	1000	-	1002
MHL26g_4SPEC	$1003	-	1063
MHL27_1	1064	-	1066
MHL27_2	1067	-	1069
MHL27_3	1070	-	1072
MHL27_4	1073	-	1075
MHL27_5	1076	-	1078
MHL27_6	1079	-	1081
MHL27_7	1082	-	1084
MHL28	1085	-	1087
MHL29	1088	-	1090
MHL30	1091	-	1093
MHL31	1094	-	1096
MHL32	1097	-	1099
MHL33	1100	-	1102
MHL34	1103	-	1105
MHL35	1106	-	1108
MHL36	1109	-	1111
MHL37_1	1112	-	1114
MHL37_2	1115	-	1117
MHL37_3	1118	-	1120
MHL37_4	1121	-	1123
MHL37_5	1124	-	1126
MHL37_6	1127	-	1129
MHL37_7	1130	-	1132
MHL37_8	1133	-	1135
MHL37_9	1136	-	1138
MHL37_10	1139	-	1141
MHL37_11	1142	-	1144
MHL38a	1145	-	1147
MHL38b	1148	-	1150
MHL38c	1151	-	1153
MHL38d	1154	-	1156
MHL38e	1157	-	1159
MHL38f	1160	-	1162
MHL38g	1163	-	1165
MHL38h	1166	-	1168
MHL38i	1169	-	1171
MHL38j	1172	-	1174
MHL38k	1175	-	1177
MHL38l	1178	-	1180
MHL38m	1181	-	1183
MHL38n	1184	-	1186
MHL38o	1187	-	1189
MHL38p	1190	-	1192
MHL38q	1193	-	1195
MHL38r	1196	-	1198
MHL38s	1199	-	1201
MHL38t	1202	-	1204
MHL39a	1205	-	1207
MHL39b	1208	-	1210
MHL39c	1211	-	1213
MHL39d	1214	-	1216
MHL39e	1217	-	1219
MHL39f	1220	-	1222
MHL39g	1223	-	1225
MHL40	1226	-	1228
MHL41	1229	-	1231
MHL42_1	1232	-	1234
MHL42_2	1235	-	1237
MHL42_3	1238	-	1240
MHL42_4	1241	-	1243
MHL43	1244	-	1246
MHL44_1	1247	-	1249
MHL44_2	1250	-	1252
MHL44_3	1253	-	1255
MHL44_4	1256	-	1258
MHL44_5	1259	-	1261
MHL44_5SPEC	$1262	-	1322
MHL45	1323	-	1325
MHL46_1	1326	-	1328
MHL46_2	1329	-	1331
MHL46_3	1332	-	1334
MHL46_4	1335	-	1337
MHL46_5	1338	-	1340
MHL46_5SPEC	$1341	-	1401
MHL47	1402	-	1404
MHL48_1	1405	-	1407
MHL48_2	1408	-	1410
MHL48_3	1411	-	1413
MHL48_4	1414	-	1416
MHL48_5	1417	-	1419
MHL48_5SPEC	$1420	-	1480
MHL49	1481	-	1483
MHL50a	1484	-	1486
MHL50b	1487	-	1489
MHL50c	1490	-	1492
MHL50d	1493	-	1495
MHL50e	1496	-	1498
MHL50f	1499	-	1501
MHL50g	1502	-	1504
MHL50h	1505	-	1507
MHL50i	1508	-	1510
MHL50j	1511	-	1513
MHL50k	1514	-	1516
MHL50l	1517	-	1519
MHL50m	1520	-	1522
MHL50n	1523	-	1525
MHL50o	1526	-	1528
MHL50p	1529	-	1531
MHL50q	1532	-	1534
MHL50r	1535	-	1537
MHL50s	1538	-	1540
MHL50t	1541	-	1543
MHL50u	1544	-	1546
MHL51_1	1547	-	1549
MHL51_2	1550	-	1552
MHL51_3	1553	-	1555
MHL51_4	1556	-	1558
MHL51_5	1559	-	1561
MHL51_6	1562	-	1564
MHL51_7	1565	-	1567
MHL51_8	1568	-	1570
MHL51_9	1571	-	1573
MHL51_10	1574	-	1576
MHL51_11	1577	-	1579
MHL51_12	1580	-	1582
MHL51_13	1583	-	1585
MHL51_14	1586	-	1588
MHL51_15	1589	-	1591
MHL51_16	1592	-	1594
MHL51_17	1595	-	1597
MHL51_18	1598	-	1600
MHL51_19	1601	-	1603
MHL51_20	1604	-	1606
MHL51_21	1607	-	1609
MHL51_22	1610	-	1612
MHL52a	1613	-	1615
MHL52b	1616	-	1618
MHL52c	1619	-	1621
MHL52d	1622	-	1624
MHL52e	1625	-	1627
MHL52f	1628	-	1630
MHL52g	1631	-	1633
MHL52h	1634	-	1636
MHL52i	1637	-	1639
MHL52j	1640	-	1642
MHL53_1	1643	-	1645
MHL53_2	1646	-	1648
MHL53_3	1649	-	1651
MHL53_4	1652	-	1654
MHL53_5	1655	-	1657
MHL53_6	1658	-	1660
MHL53_7	1661	-	1663
MHL53_8	1664	-	1666
MHL53_9	1667	-	1669
MHL53_10	1670	-	1672
MHL53_11	1673	-	1675
MHL54a	1676	-	1678
MHL54b	1679	-	1681
MHL54c	1682	-	1684
MHL54d	1685	-	1687
MHL54e	1688	-	1690
MHL54f	1691	-	1693
MHL54g	1694	-	1696
MHL54h	1697	-	1699
MHL54i	1700	-	1702
MHL55_1	1703	-	1705
MHL55_2	1706	-	1708
MHL55_3	1709	-	1711
MHL55_4	1712	-	1714
MHL55_5	1715	-	1717
MHL55_6	1718	-	1720
MHL55_7	1721	-	1723
MHL55_8	1724	-	1726
MHL55_9	1727	-	1729
MHL55_10	1730	-	1732
;
************************************
*  Assign formats to SAS variables.*
************************************;

format

MHL1
jobtitle.

/*MENTAL HEALTH AND SOCIAL SERVICE*/
MHL2 MHL7 MHL12 MHL17 MHL18A MHL18B MHL18C MHL18D MHL20A MHL20B MHL20C MHL20D MHL20E MHL20F MHL20G MHL20H MHL20I MHL20J MHL20K
MHL21A MHL21B MHL21C MHL21D MHL23A MHL23B MHL23C MHL23D MHL25A MHL25B MHL25C MHL25D MHL25E MHL25F MHL25G  MHL27_1 MHL27_2 MHL27_3 MHL27_4 MHL27_5 MHL27_6 MHL27_7 MHL28 MHL29 MHL30 MHL31 MHL32 MHL33 MHL34 MHL35 MHL35 MHL37_1 MHL37_2
MHL37_3 MHL37_4 MHL37_5 MHL37_6 MHL37_7 MHL37_8 MHL37_9 MHL37_10 MHL37_11 MHL38A MHL38B MHL38C MHL38D MHL38E MHL38F MHL38G MHL38H MHL38I 
MHL38J MHL38K MHL38L MHL38M MHL38N MHL38O MHL38P MHL38Q MHL38R MHL38S MHL38T MHL39A MHL39B MHL39C MHL39D MHL39E MHL39F MHL39G
MHL40 MHL41 MHL42_1 MHL42_2 MHL42_3 MHL42_4 MHL43 MHL44_1 MHL44_2 MHL44_3 MHL44_4 MHL44_5 MHL45 MHL46_1 MHL46_2 MHL46_3 MHL46_4 MHL46_5 MHL47
MHL48_1 MHL48_2 MHL48_3 MHL48_4 MHL48_5 MHL45 MHL50A MHL50B MHL50C MHL50D MHL50E MHL50F MHL50G MHL50H MHL50I MHL50J MHL50K MHL50L 
MHL50M MHL50N MHL50O MHL50P MHL50Q MHL50R MHL50S MHL50T MHL50U MHL51_1 MHL51_2 MHL51_3 MHL51_4 MHL51_5 MHL51_6 MHL51_7 MHL51_8 MHL51_9 
MHL51_10 MHL51_11 MHL51_12 MHL51_13 MHL51_14 MHL51_15 MHL51_16 MHL51_17 MHL51_18 MHL51_19 MHL51_20 MHL51_21 MHL51_22 MHL52A MHL52B MHL52C MHL52D 
MHL52E MHL52F MHL52G MHL52H MHL52I MHL52J MHL53_1 MHL53_2 MHL53_3 MHL53_4 MHL53_5 MHL53_6 MHL53_7 MHL53_8 MHL53_9 MHL53_10 MHL53_11 MHL54A 
MHL54B MHL54C MHL54D MHL54E MHL54F MHL54G MHL54H MHL54I MHL55_1 MHL55_2 MHL55_3 MHL55_4 MHL55_5 MHL55_6 MHL55_7 MHL55_8 MHL55_9 MHL55_10
yesno.

MHL5 MHL5F. MHL6 MHL6F. MHL10 MHL10F. MHL11 MHL11F. MHL15 MHL15F. MHL16 MHL16F.
MHL19A MHL19AF. MHL19B MHL19BF. MHL19C MHL19CF. MHL19D MHL19DF. MHL19E MHL19EF.
MHL24 MHL24F. MHL34 MHL34F. MHL49 MHL49F. 

MHL26A_1 MHL26A_2 MHL26A_3 MHL26A_4
MHL26B_1 MHL26B_2 MHL26B_3 MHL26B_4
MHL26C_1 MHL26C_2 MHL26C_3 MHL26C_4
MHL26D_1 MHL26D_2 MHL26D_3 MHL26D_4
MHL26E_1 MHL26E_2 MHL26E_3 MHL26E_4
MHL26F_1 MHL26F_2 MHL26F_3 MHL26F_4
MHL26G_1 MHL26G_2 MHL26G_3 MHL26G_4
MHL36
yesno.

MHL22A MHL22B MHL22C MHL22D MHL22E 
yesnona.

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

MHLPAP
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
MHLPAP	=	'Mail - CAPI Complete '
MHL1	=	'Job title'
MHL2	=	'Part-time/full-time cnslr'
MHL3	=	'Number of cnslrs'
MHL4_1	=	'Past 30 days - Hours/week cnslr 1'
MHL4_2	=	'Past 30 days - Hours/week cnslr 2'
MHL4_3	=	'Past 30 days - Hours/week cnslr 3'
MHL4_4	=	'Past 30 days - Hours/week cnslr 4'
MHL4_5	=	'Past 30 days - Hours/week cnslr 5'
MHL4_6	=	'Past 30 days - Hours/week cnslr 6'
MHL4_7	=	'Past 30 days - Hours/week cnslr 7'
MHL4_8	=	'Past 30 days - Hours/week cnslr 8'
MHL4_9	=	'Past 30 days - Hours/week cnslr 9'
MHL5	=	'Min level ed req newly hired cnslr'
MHL5SPEC	=	'Min level ed req newly hired cnslr - Specify'
MHL6	=	'Newly hired cnslr req cert/lic/cred by state'
MHL7	=	'Part-time/full-time psych'
MHL8	=	'Number of psychs'
MHL9_1	=	'Past 30 days - Hours/week psych 1'
MHL9_2	=	'Past 30 days - Hours/week psych 2'
MHL9_3	=	'Past 30 days - Hours/week psych 3'
MHL9_4	=	'Past 30 days - Hours/week psych 4'
MHL9_5	=	'Past 30 days - Hours/week psych 5'
MHL9_6	=	'Past 30 days - Hours/week psych 6'
MHL9_7	=	'Past 30 days - Hours/week psych 7'
MHL9_8	=	'Past 30 days - Hours/week psych 8'
MHL9_9	=	'Past 30 days - Hours/week psych 9'
MHL10	=	'Min level ed req newly hired psych'
MHL10SPEC	=	'Min level ed req newly hired psych - Specify'
MHL11	=	'Newly hired psych req lic/cert/cred by state'
MHL12	=	'Part-time/full-time soc wrkr'
MHL13	=	'Number of soc wrkrs'
MHL14_1	=	'Past 30 days - Hours/week soc wrkr 1'
MHL14_2	=	'Past 30 days - Hours/week soc wrkr 2'
MHL14_3	=	'Past 30 days - Hours/week soc wrkr 3'
MHL14_4	=	'Past 30 days - Hours/week soc wrkr 4'
MHL14_5	=	'Past 30 days - Hours/week soc wrkr 5'
MHL14_6	=	'Past 30 days - Hours/week soc wrkr 6'
MHL14_7	=	'Past 30 days - Hours/week soc wrkr 7'
MHL14_8	=	'Past 30 days - Hours/week soc wrkr 8'
MHL14_9	=	'Past 30 days - Hours/week soc wrkr 9'
MHL15	=	'Min level ed req newly hired soc wrkr'
MHL15SPEC	=	'Min level ed req newly hired soc wrkr - Specify'
MHL16	=	'Newly hired soc wrkr req lic/cert/cred by state'
MHL17	=	'All MH/SS staff req cont ed credits in MH/SS '
MHL18a	=	'Past 12 months MH/SS staff taught MS/HS HE class'
MHL18b	=	'Past 12 months MH/SS staff taught other MS/HS class'
MHL18c	=	'Past 12 months MH/SS staff taught ES HE lsn/unit'
MHL18d	=	'Past 12 months MH/SS staff taught other ES lsn/unit'
MHL19a	=	'Past 12 months MH/SS staff worked w HE staff'
MHL19b	=	'Past 12 months MH/SS staff worked w PE staff'
MHL19c	=	'Past 12 months MH/SS staff worked w NS staff'
MHL19d	=	'Past 12 months MH/SS staff worked w HSV staff'
MHL19e	=	'Past 12 months MH/SS staff worked w SBHC staff'
MHL20a	=	'Past 12 months MH/SS staff worked w AHA or ARC'
MHL20b	=	'Past 12 months MH/SS staff worked w Hlth dept'
MHL20c	=	'Past 12 months MH/SS staff worked w MH/SS agency'
MHL20d	=	'Past 12 months MH/SS staff worked w Juv just dept'
MHL20e	=	'Past 12 months MH/SS staff worked w College or univ'
MHL20f	=	'Past 12 months MH/SS staff worked w Business'
MHL20g	=	'Past 12 months MH/SS staff worked w Child welfare agency'
MHL20h	=	'Past 12 months MH/SS staff worked w Hosp'
MHL20i	=	'Past 12 months MH/SS staff worked w Law enf agency'
MHL20j	=	'Past 12 months MH/SS staff worked w Serv club'
MHL20k	=	'Past 12 months MH/SS staff worked w Cmty in Schs'
MHL21a	=	'Past 2 yrs students helped dev/communic/impl MH/SS pol/activ '
MHL21b	=	'Past 2 yrs families helped dev/communic/impl MH/SS pol/activ '
MHL21c	=	'Past 2 yrs teach helped dev/communic/impl MH/SS pol/activ '
MHL21d	=	'Past 2 yrs cmty members helped dev/communic/impl MH/SS pol/activ '
MHL22a	=	'Past 12 months - Met w PTA to discuss MH/SS'
MHL22b	=	'Past 12 months - Prov families w info on MH/SS'
MHL22c	=	'Past 12 months - Invited families to tour MH/SS fac'
MHL22d	=	'Past 12 months - Collect suggestions from students '
MHL22e	=	'Past 12 months - Collect suggestions from families '
MHL23a	=	'Sch has - Private room for cnsling students'
MHL23b	=	'Sch has - Dedicated phone for MH/SS staff'
MHL23c	=	'Sch has - MH/SS answering machine'
MHL23d	=	'Sch has - Locked storage space for MH/SS files'
MHL24	=	'Where MH/SS office in relation to main office'
MHL25a	=	'MH/SS staff prov case mgmt'
MHL26a_1	=	'Prov case mgmt - Cnslr'
MHL26a_2	=	'Prov case mgmt - Psych'
MHL26a_3	=	'Prov case mgmt - Soc Wrkr'
MHL26a_4	=	'Prov case mgmt - Other'
MHL26a_4SPEC	=	'Prov case mgmt - Specify'
MHL25b	=	'MH/SS staff prov family cnsling'
MHL26b_1	=	'Prov family cnsling - Cnslr'
MHL26b_2	=	'Prov family cnsling - Psych'
MHL26b_3	=	'Prov family cnsling - Soc Wrkr'
MHL26b_4	=	'Prov family cnsling - Other'
MHL26b_4SPEC	=	'Prov family cnsling - Specify'
MHL25c	=	'MH/SS staff prov grp cnsling'
MHL26c_1	=	'Prov grp cnsling - Cnslr'
MHL26c_2	=	'Prov grp cnsling - Psych'
MHL26c_3	=	'Prov grp cnsling - Soc Wrkr'
MHL26c_4	=	'Prov grp cnsling - Other'
MHL26c_4SPEC	=	'Prov grp cnsling - Specify'
MHL25d	=	'MH/SS staff prov indv cnsling'
MHL26d_1	=	'Prov indv cnsling - Cnslr'
MHL26d_2	=	'Prov indv cnsling - Psych'
MHL26d_3	=	'Prov indv cnsling - Soc Wrkr'
MHL26d_4	=	'Prov indv  cnsling - Other'
MHL26d_4SPEC	=	'Prov indv cnsling - Specify'
MHL25e	=	'MH/SS staff prov assess/intake eval'
MHL26e_1	=	'Prov assess/intake eval - Cnslr'
MHL26e_2	=	'Prov assess/intake eval - Psych'
MHL26e_3	=	'Prov assess/intake eval - Soc Wrkr'
MHL26e_4	=	'Prov assess/intake eval - Other'
MHL26e_4SPEC	=	'Prov assess/intake eval - Specify'
MHL25f	=	'MH/SS staff prov peer cnsling/mediation'
MHL26f_1	=	'Prov peer cnsling/mediation - Cnslr'
MHL26f_2	=	'Prov peer cnsling/mediation - Psych'
MHL26f_3	=	'Prov peer cnsling/mediation - Soc Wrkr'
MHL26f_4	=	'Prov peer cnsling/mediation - Other'
MHL26f_4SPEC	=	'Prov peer cnsling/mediation - Specify'
MHL25g	=	'MH/SS staff prov self help/sup grp'
MHL26g_1	=	'Prov self help/sup grp - Cnslr'
MHL26g_2	=	'Prov self help/sup grp - Psych'
MHL26g_3	=	'Prov self help/sup grp - Soc Wrkr'
MHL26g_4	=	'Prov self help/sup grp - Other'
MHL26g_4SPEC	=	'Prov self help/sup grp - Specify'
MHL27_1	=	'MH/SS funded - Dist budget'
MHL27_2	=	'MH/SS funded - Medicaid'
MHL27_3	=	'MH/SS funded - SCHIP'
MHL27_4	=	'MH/SS funded - Private ins'
MHL27_5	=	'MH/SS funded - Pub grants'
MHL27_6	=	'MH/SS funded - Private grants'
MHL27_7	=	'MH/SS funded - Other'
MHL28	=	'Student assistance prog offered'
MHL29	=	'Student support team'
MHL30	=	'Team incl staff from cmty agencies'
MHL31	=	'MH/SS staff help develop IEP'
MHL32	=	'MH/SS staff help develop IHP'
MHL33	=	'MH/SS staff help develop 504 plan'
MHL34	=	'Past 12 months review MH/SS records'
MHL35	=	'After hours/weekend coverage '
MHL36	=	'Outside org has arrange to prov services'
MHL37_1	=	'Arrange w  - Sch-linked hlth center'
MHL37_2	=	'Arrange w - Cmty hlth clinic'
MHL37_3	=	'Arrange w  - Hlth dept'
MHL37_4	=	'Arrange w  - Hosp'
MHL37_5	=	'Arrange w  - MH/SS agency'
MHL37_6	=	'Arrange w  - University/med sch'
MHL37_7	=	'Arrange w  - Managed care org'
MHL37_8	=	'Arrange w  - Private psychologist'
MHL37_9	=	'Arrange w  - Private psychiatrist'
MHL37_10	=	'Arrange w  - Private soc wrkr'
MHL37_11	=	'Arrange w  - Private cnslr'
MHL38a	=	'Outside org prov - Tobacco use cessation'
MHL38b	=	'Outside org prov - Alcohol/drug tx'
MHL38c	=	'Outside org prov - Cnsling after emerg'
MHL38d	=	'Outside org prov - Crisis intervention for personal prob'
MHL38e	=	'Outside org prov - ID emot/behav disorders'
MHL38f	=	'Outside org prov - Cnsling emot/behav disorders'
MHL38g	=	'Outside org prov - Stress mgmt'
MHL38h	=	'Outside org prov - Weight mgmt'
MHL38i	=	'Outside org prov - ID/ref for eating disorders'
MHL38j	=	'Outside org prov - HIV cnsling/test/ref'
MHL38k	=	'Outside org prov - Phys/sexual/emot abuse ID/ref'
MHL38l	=	'Outside org prov - Family prob ID/ref'
MHL38m	=	'Outside org prov - Ref for after-sch progs'
MHL38n	=	'Outside org prov - Ref for child care for teen moms'
MHL38o	=	'Outside org prov - LGB services'
MHL38p	=	'Outside org prov - Job readiness skills prog'
MHL38q	=	'Outside org prov - Enrolling in WIC/access food stamps/banks'
MHL38r	=	'Outside org prov - Securing temp/perm housing'
MHL38s	=	'Outside org prov - Enrolling in Medicaid/SCHIP'
MHL38t	=	'Outside org prov - Accessing benefits for disabled'
MHL39a	=	'Outside org prov - Case mgmt for students w emot/behav probs'
MHL39b	=	'Outside org prov - Family cnsling'
MHL39c	=	'Outside org prov - Grp cnsling'
MHL39d	=	'Outside org prov - Indv cnsling'
MHL39e	=	'Outside org prov - Assess/intake eval'
MHL39f	=	'Outside org prov - Peer cnsling/mediation'
MHL39g	=	'Outside org prov - Self-help/support grp'
MHL40	=	'Someone oversee or coordinate MH/SS'
MHL41	=	'R is person'
MHL42_1	=	'R works for - Sch dist'
MHL42_2	=	'R works for - Sch'
MHL42_3	=	'R works for - MH/SS agency'
MHL42_4	=	'R works for - Other'
MHL43	=	'R has undergrad degree'
MHL44_1	=	'R major - Cnsling'
MHL44_2	=	'R major - Psych'
MHL44_3	=	'R major - Soc wrk'
MHL44_4	=	'R major - Ed'
MHL44_5	=	'R major - Other'
MHL44_5SPEC	=	'R major - Specify'
MHL45	=	'R has undergrad minor'
MHL46_1	=	'R minor - Cnsling'
MHL46_2	=	'R minor - Psych'
MHL46_3	=	'R minor - Soc wrk'
MHL46_4	=	'R minor - Ed'
MHL46_5	=	'R minor - Other'
MHL46_5SPEC	=	'R minor - Specify'
MHL47	=	'R has graduate degree'
MHL48_1	=	'R grad degree - Cnsling'
MHL48_2	=	'R grad degree - Psych'
MHL48_3	=	'R grad degree - Soc wrk'
MHL48_4	=	'R grad degree - Ed'
MHL48_5	=	'R grad degree - Other'
MHL48_5SPEC	=	'R grad degree - Specify'
MHL49	=	'R lic/cert/cred to prov school MH/SS'
MHL50a	=	'Past 2 years receive prof dev - Tobacco use cessation'
MHL50b	=	'Past 2 years receive prof dev - Alcohol/drug tx'
MHL50c	=	'Past 2 years receive prof dev - Cnsling after emerg'
MHL50d	=	'Past 2 years receive prof dev - Crisis intervention for personal prob'
MHL50e	=	'Past 2 years receive prof dev - Emerg preparedness'
MHL50f	=	'Past 2 years receive prof dev - ID emot/behav disorders'
MHL50g	=	'Past 2 years receive prof dev - Cnsling emot/behav disorders'
MHL50h	=	'Past 2 years receive prof dev - Stress mgmt'
MHL50i	=	'Past 2 years receive prof dev - Weight mgmt'
MHL50j	=	'Past 2 years receive prof dev - ID/ref for eating disorders'
MHL50k	=	'Past 2 years receive prof dev - HIV cnsling/test/ref'
MHL50l	=	'Past 2 years receive prof dev - Phys/sexual/emot abuse ID/ref'
MHL50m	=	'Past 2 years receive prof dev - Family prob ID/ref'
MHL50n	=	'Past 2 years receive prof dev - After-sch progs'
MHL50o	=	'Past 2 years receive prof dev - Child care for teen moms'
MHL50p	=	'Past 2 years receive prof dev - LGB services'
MHL50q	=	'Past 2 years receive prof dev - Enrolling in WIC/access food stamps/banks'
MHL50r	=	'Past 2 years receive prof dev - Securing temp/perm housing'
MHL50s	=	'Past 2 years receive prof dev - Enrolling in Medicaid/SCHIP'
MHL50t	=	'Past 2 years receive prof dev - Accessing benefits for disabled'
MHL50u	=	'Past 2 years receive prof dev - Job readiness skills prog'
MHL51_1	=	'Wanted prof dev - Tobacco use cessation'
MHL51_2	=	'Wanted prof dev - Alcohol/drug tx'
MHL51_3	=	'Wanted prof dev - Cnsling after emerg'
MHL51_4	=	'Wanted prof dev - Crisis intervention for personal prob'
MHL51_5	=	'Wanted prof dev - Emerg preparedness'
MHL51_6	=	'Wanted prof dev - ID emot/behav disorders'
MHL51_7	=	'Wanted prof dev - Cnsling emot/behav disorders'
MHL51_8	=	'Wanted prof dev - Stress mgmt'
MHL51_9	=	'Wanted prof dev - Weight mgmt'
MHL51_10	=	'Wanted prof dev - ID/ref for eating disorders'
MHL51_11	=	'Wanted prof dev - HIV cnsling/test/ref'
MHL51_12	=	'Wanted prof dev - Phys/sexual/emot abuse ID/ref'
MHL51_13	=	'Wanted prof dev - ID/ref for students w fam probs'
MHL51_14	=	'Wanted prof dev - After-sch progs'
MHL51_15	=	'Wanted prof dev - Child care for teen moms'
MHL51_16	=	'Wanted prof dev - LGB services'
MHL51_17	=	'Wanted prof dev - Enrolling in WIC/access food stamps/banks'
MHL51_18	=	'Wanted prof dev - Securing temp/perm housing'
MHL51_19	=	'Wanted prof dev - Enrolling in Medicaid/SCHIP'
MHL51_20	=	'Wanted prof dev - Accessing benefits for disabled'
MHL51_21	=	'Wanted prof dev - Job readiness skills prog'
MHL51_22	=	'Wanted prof dev - None'
MHL52a	=	'Past 2 years receive prof dev - Nutr and diet behav cnsling'
MHL52b	=	'Past 2 years receive prof dev - PA and fitness cnsling'
MHL52c	=	'Past 2 years receive prof dev - Preg prev'
MHL52d	=	'Past 2 years receive prof dev - HIV prev'
MHL52e	=	'Past 2 years receive prof dev - STD prev'
MHL52f	=	'Past 2 years receive prof dev - Suicide prev'
MHL52g	=	'Past 2 years receive prof dev - Tobacco use prev'
MHL52h	=	'Past 2 years receive prof dev - Alcohol/drug use prev'
MHL52i	=	'Past 2 years receive prof dev - Violence prev'
MHL52j	=	'Past 2 years receive prof dev - Injury prev/safety cnsling'
MHL53_1	=	'Wanted prof dev - Nutr and diet behav cnsling'
MHL53_2	=	'Wanted prof dev - PA and fitness cnsling'
MHL53_3	=	'Wanted prof dev - Preg prev'
MHL53_4	=	'Wanted prof dev - HIV prev'
MHL53_5	=	'Wanted prof dev - STD prev'
MHL53_6	=	'Wanted prof dev - Suicide prev'
MHL53_7	=	'Wanted prof dev - Tobacco use prev'
MHL53_8	=	'Wanted prof dev - Alcohol/drug use prev'
MHL53_9	=	'Wanted prof dev - Violence prev'
MHL53_10	=	'Wanted prof dev - Injury prev/safety cnsling'
MHL53_11	=	'Wanted prof dev - None'
MHL54a	=	'Past 2 years receive prof dev - Case mgmt for emot/behav probs'
MHL54b	=	'Past 2 years receive prof dev - Fam cnsling'
MHL54c	=	'Past 2 years receive prof dev - Grp cnsling'
MHL54d	=	'Past 2 years receive prof dev - Indv cnsling'
MHL54e	=	'Past 2 years receive prof dev - Assess/intake eval'
MHL54f	=	'Past 2 years receive prof dev - Peer cnsling/mediation'
MHL54g	=	'Past 2 years receive prof dev - Self-help/support grp'
MHL54h	=	'Past 2 years receive prof dev - Student assistance progs'
MHL54i	=	'Past 2 years receive prof dev - Student support teams'
MHL55_1	=	'Wanted prof dev - Case mgmt for emot/behav probs'
MHL55_2	=	'Wanted prof dev - Fam cnsling'
MHL55_3	=	'Wanted prof dev - Grp cnsling'
MHL55_4	=	'Wanted prof dev - Indv cnsling'
MHL55_5	=	'Wanted prof dev - Assess/intake eval'
MHL55_6	=	'Wanted prof dev - Peer cnsling/mediation'
MHL55_7	=	'Wanted prof dev - Self-help/support grp'
MHL55_8	=	'Wanted prof dev - Student assistance progs'
MHL55_9	=	'Wanted prof dev - Student support teams'
MHL55_10	=	'Wanted prof dev - None'
;
run;
