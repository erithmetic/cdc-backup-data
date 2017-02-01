
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
/*  "HLTHEDL_SAS_Input_Program.sas" to create the 2014 SHPPS dataset.                   */
/****************************************************************************************/

filename datain 'c:\shpps2014\hlthedl2014.dat';

libname dataout 'c:\shpps2014';

libname library 'c:\shpps2014';

data dataout.hlthedl2014;
infile datain lrecl=3000;
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
HELPAP	122	-	123
HEL1	124	-	126
HEL2	127	-	129
HEL3a	130	-	132
HEL3b	133	-	135
HEL3c	136	-	138
HEL4a	139	-	141
HEL4b	142	-	144
HEL4c	145	-	147
HEL4d	148	-	150
HEL4e	151	-	153
HEL4f	154	-	156
HEL4g	157	-	159
HEL4h	160	-	162
HEL5a	163	-	165
HEL5b	166	-	168
HEL5c	169	-	171
HEL5d	172	-	174
HEL5e	175	-	177
HEL5f	178	-	180
HEL5g	181	-	183
HEL5h	184	-	186
HEL5i	187	-	189
HEL5j	190	-	192
HEL5k	193	-	195
HEL5l	196	-	198
HEL5m	199	-	201
HEL5n	202	-	204
HEL5o	205	-	207
HEL6	208	-	210
HEL7	211	-	213
HEL8_1	214	-	216
HEL8_2	217	-	219
HEL8_3	220	-	222
HEL9	223	-	225
HEL10_0	226	-	228
HEL10_1	229	-	231
HEL10_2	232	-	234
HEL10_3	235	-	237
HEL10_4	238	-	240
HEL10_5	241	-	243
HEL10_6	244	-	246
HEL10_7	247	-	249
HEL10_8	250	-	252
HEL10_9	253	-	255
HEL10_10	256	-	258
HEL10_11	259	-	261
HEL10_12	262	-	264
HEL11_0	265	-	267
HEL12_0	268	-	270
HEL13_0	271	-	273
HEL11_1	274	-	276
HEL12_1	277	-	279
HEL13_1	280	-	282
HEL11_2	283	-	285
HEL12_2	286	-	288
HEL13_2	289	-	291
HEL11_3	292	-	294
HEL12_3	295	-	297
HEL13_3	298	-	300
HEL11_4	301	-	303
HEL12_4	304	-	306
HEL13_4	307	-	309
HEL11_5	310	-	312
HEL12_5	313	-	315
HEL13_5	316	-	318
HEL11_6	319	-	321
HEL12_6	322	-	324
HEL13_6	325	-	327
HEL11_7	328	-	330
HEL12_7	331	-	333
HEL13_7	334	-	336
HEL11_8	337	-	339
HEL12_8	340	-	342
HEL13_8	343	-	345
HEL11_9	346	-	348
HEL12_9	349	-	351
HEL13_9	352	-	354
HEL11_10	355	-	357
HEL12_10	358	-	360
HEL13_10	361	-	363
HEL11_11	364	-	366
HEL12_11	367	-	369
HEL13_11	370	-	372
HEL11_12	373	-	375
HEL12_12	376	-	378
HEL13_12	379	-	381
HEL14	382	-	384
HEL15_1	$385	-	435
HEL15_2	$436	-	486
HEL15_3	$487	-	537
HEL15_4	$538	-	588
HEL15_5	$589	-	639
HEL15_6	$640	-	690
HEL15_7	$691	-	741
HEL15_8	$742	-	792
HEL15_9	$793	-	843
HEL15_10	$844	-	894
HEL15_11	$895	-	945
HEL15_12	$946	-	996
HEL15_13	$997	-	1047
HEL15_14	$1048	-	1098
HEL15_15	$1099	-	1149
HEL15_16	$1150	-	1200
HEL15_17	$1201	-	1251
HEL15_18	$1252	-	1302
HEL15_19	$1303	-	1353
HEL15_20	$1354	-	1404
HEL16_1	1405	-	1407
HEL17_1	1408	-	1410
HEL18_1	1411	-	1413
HEL19_1	1414	-	1416
HEL16_2	1417	-	1419
HEL17_2	1420	-	1422
HEL18_2	1423	-	1425
HEL19_2	1426	-	1428
HEL16_3	1429	-	1431
HEL17_3	1432	-	1434
HEL18_3	1435	-	1437
HEL19_3	1438	-	1440
HEL16_4	1441	-	1443
HEL17_4	1444	-	1446
HEL18_4	1447	-	1449
HEL19_4	1450	-	1452
HEL16_5	1453	-	1455
HEL17_5	1456	-	1458
HEL18_5	1459	-	1461
HEL19_5	1462	-	1464
HEL16_6	1465	-	1467
HEL17_6	1468	-	1470
HEL18_6	1471	-	1473
HEL19_6	1474	-	1476
HEL16_7	1477	-	1479
HEL17_7	1480	-	1482
HEL18_7	1483	-	1485
HEL19_7	1486	-	1488
HEL16_8	1489	-	1491
HEL17_8	1492	-	1494
HEL18_8	1495	-	1497
HEL19_8	1498	-	1500
HEL16_9	1501	-	1503
HEL17_9	1504	-	1506
HEL18_9	1507	-	1509
HEL19_9	1510	-	1512
HEL16_10	1513	-	1515
HEL17_10	1516	-	1518
HEL18_10	1519	-	1521
HEL19_10	1522	-	1524
HEL16_11	1525	-	1527
HEL17_11	1528	-	1530
HEL18_11	1531	-	1533
HEL19_11	1534	-	1536
HEL16_12	1537	-	1539
HEL17_12	1540	-	1542
HEL18_12	1543	-	1545
HEL19_12	1546	-	1548
HEL16_13	1549	-	1551
HEL17_13	1552	-	1554
HEL18_13	1555	-	1557
HEL19_13	1558	-	1560
HEL16_14	1561	-	1563
HEL17_14	1564	-	1566
HEL18_14	1567	-	1569
HEL19_14	1570	-	1572
HEL16_15	1573	-	1575
HEL17_15	1576	-	1578
HEL18_15	1579	-	1581
HEL19_15	1582	-	1584
HEL16_16	1585	-	1587
HEL17_16	1588	-	1590
HEL18_16	1591	-	1593
HEL19_16	1594	-	1596
HEL16_17	1597	-	1599
HEL17_17	1600	-	1602
HEL18_17	1603	-	1605
HEL19_17	1606	-	1608
HEL16_18	1609	-	1611
HEL17_18	1612	-	1614
HEL18_18	1615	-	1617
HEL19_18	1618	-	1620
HEL16_19	1621	-	1623
HEL17_19	1624	-	1626
HEL18_19	1627	-	1629
HEL19_19	1630	-	1632
HEL16_20	1633	-	1635
HEL17_20	1636	-	1638
HEL18_20	1639	-	1641
HEL19_20	1642	-	1644
HEL20_a	1645	-	1647
HEL20_b	1648	-	1650
HEL21	1651	-	1653
HEL22	1654	-	1656
HEL23	1657	-	1659
HEL24_1	1660	-	1662
HEL24_2	1663	-	1665
HEL24_3	1666	-	1668
HEL24_4	1669	-	1671
HEL24_5	1672	-	1674
HEL24_6	1675	-	1677
HEL25_1	1678	-	1680
HEL25_2	1681	-	1683
HEL25_3	1684	-	1686
HEL25_4	1687	-	1689
HEL25_5	1690	-	1692
HEL25_6	1693	-	1695
HEL26_1	1696	-	1698
HEL26_2	1699	-	1701
HEL26_3	1702	-	1704
HEL26_4	1705	-	1707
HEL27	1708	-	1710
HEL28	1711	-	1713
HEL29	1714	-	1716
HEL30	1717	-	1719
HEL31	1720	-	1722
HEL32	1723	-	1725
HEL33	1726	-	1728
HEL34	1729	-	1731
HEL35	1732	-	1734
HEL36a	1735	-	1737
HEL36b	1738	-	1740
HEL36c	1741	-	1743
HEL36d	1744	-	1746
HEL37a	1747	-	1749
HEL37b	1750	-	1752
HEL37c	1753	-	1755
HEL37d	1756	-	1758
HEL37e	1759	-	1761
HEL37f	1762	-	1764
HEL37g	1765	-	1767
HEL37h	1768	-	1770
HEL37i	1771	-	1773
HEL37j	1774	-	1776
HEL37k	1777	-	1779
HEL37l	1780	-	1782
HEL37m	1783	-	1785
HEL38a	1786	-	1788
HEL38b	1789	-	1791
HEL38c	1792	-	1794
HEL38d	1795	-	1797
HEL38e	1798	-	1800
HEL38f	1801	-	1803
HEL38g	1804	-	1806
HEL39	1807	-	1809
HEL40	1810	-	1812
HEL41	1813	-	1815
HEL42	1816	-	1818
HEL43	1819	-	1821
HEL44_1	1822	-	1824
HEL44_2	1825	-	1827
HEL44_3	1828	-	1830
HEL44_4	1831	-	1833
HEL44_5	1834	-	1836
HEL44_6	1837	-	1839
HEL44_6SPEC	$1840	-	1900
HEL45	1901	-	1903
HEL46_1	1904	-	1906
HEL46_2	1907	-	1909
HEL46_3	1910	-	1912
HEL46_4	1913	-	1915
HEL46_5	1916	-	1918
HEL46_6	1919	-	1921
HEL46_6SPEC	$1922	-	1982
HEL47	1983	-	1985
HEL48_1	1986	-	1988
HEL48_2	1989	-	1991
HEL48_3	1992	-	1994
HEL48_4	1995	-	1997
HEL48_5	1998	-	2000
HEL48_6	2001	-	2003
HEL48_6SPEC	$2004	-	2064
HEL49a	2065	-	2067
HEL49b	2068	-	2070
HEL49c	2071	-	2073
HEL50	2074	-	2076

;
************************************
*  Assign formats to SAS variables.*
************************************;

format

HEL1
jobtitle.

/*HEALTH EDUCATION SERVICE*/
HEL2  HEL3A  HEL3B  HEL3C  HEL4A  HEL4B  HEL4C  HEL4D  HEL4E  HEL4F HEL4G HEL4H HEL5A HEL5B HEL5C HEL5D HEL5E HEL5F HEL5G
HEL5H HEL5I HEL5J HEL5K HEL5L HEL5M HEL5N HEL5O HEL6 HEL7 HEL8_1 HEL8_2 HEL8_3 HEL9 HEL14 HEL20_A HEL20_B HEL21 HEL22 
HEL23 HEL24_1 HEL24_2 HEL24_3 HEL24_4 HEL24_5 HEL24_6 HEL25_1 HEL25_2 HEL25_3 HEL25_4 HEL25_5 HEL25_6 HEL25_6 HEL26_1 HEL26_2
HEL26_3 HEL26_4 HEL28 HEL29 HEL30 HEL31 HEL32 HEL34 HEL35 HEL37A HEL37B HEL37C HEL37D HEL37E HEL37F HEL37G HEL37H 
HEL37I HEL37J HEL37K HEL37L HEL37M HEL38A HEL38B HEL38C HEL38D HEL38E HEL38F HEL38G HEL39 HEL40 HEL42 HEL43 HEL44_1
HEL44_2 HEL44_3 HEL44_4 HEL44_5 HEL44_6 HEL45 HEL46_1 HEL46_2 HEL46_3 HEL46_4 HEL46_5 HEL46_6 HEL47 HEL48_1 HEL48_2 HEL48_3 HEL48_4
HEL48_5 HEL48_6 HEL50
yesno. 

HEL10_0 HEL10_1 HEL10_2 HEL10_3 HEL10_4 HEL10_5 HEL10_6 HEL10_7 HEL10_8 HEL10_9 HEL10_10 HEL10_11 HEL10_12  YESNO.
HEL12_0 HEL12_1 HEL12_2 HEL12_3 HEL12_4 HEL12_5 HEL12_6 HEL12_7 HEL12_8 HEL12_9 HEL12_10 HEL12_11 HEL12_12 HEL12F.
HEL16_1 HEL16_2 HEL16_3 HEL16_4 HEL16_5 HEL16_6 HEL16_7 HEL16_8 HEL16_9 HEL16_10 HEL16_11 HEL16_12 HEL16_13 HEL16F.
HEL18_1 HEL18_2 HEL18_3 HEL18_4 HEL18_5 HEL18_6 HEL18_7 HEL18_8 HEL18_9 HEL18_10 HEL18_11  
HEL18_12 HEL18_13 HEL18_14 HEL18_15 HEL18_16 HEL18_17 HEL18_18  HEL18_19 HEL18_20 HEL18F.
HEL49A HEL49B HEL49C hel49f.
HEL27 HEL27F. HEL33 HEL33F. HEL36A HEL36AF. HEL36B HEL36BF.
HEL36C HEL36CF. HEL36D HEL36DF. 

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

HELPAP
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
HELPAP	=	'Mail - CAPI Complete '
HEL1	=	'Job title'
HEL2	=	'Sch follow national, state, or district HE stds'
HEL3a	=	'HE staff prov with - 1+ HE curricula'
HEL3b	=	'HE staff prov with - Lesson plans or lrning activ for HE'
HEL3c	=	'HE staff prov with - Plans for assessing students in HE'
HEL4a	=	'HE stds - Comprehending concepts'
HEL4b	=	'HE stds - Analyzing influence'
HEL4c	=	'HE stds - Accessing info/services'
HEL4d	=	'HE stds - Using communic skills'
HEL4e	=	'HE stds - Using decision skills'
HEL4f	=	'HE stds - Using goal-setting skills '
HEL4g	=	'HE stds - Pract behav/reduc risks'
HEL4h	=	'HE stds - Advocating hlth'
HEL5a	=	'Req instr - Alcohol/drug prev'
HEL5b	=	'Req instr - Tobacco use prev'
HEL5c	=	'Req instr - Nutr/diet behav'
HEL5d	=	'Req instr - PA/fitness'
HEL5e	=	'Req instr - Preg prev'
HEL5f	=	'Req instr - HIV prev'
HEL5g	=	'Req instr - STD prev'
HEL5h	=	'Req instr - Human sexuality'
HEL5i	=	'Req instr - Emot/MH'
HEL5j	=	'Req instr - Suicide prev'
HEL5k	=	'Req instr - Violence prev'
HEL5l	=	'Req instr - Injury prev/safety'
HEL5m	=	'Req instr - Asthma'
HEL5n	=	'Req instr - Infectious disease prev'
HEL5o	=	'Req instr - Foodborne illness prev'
HEL6	=	'Parents notified about human sexuality instr'
HEL7	=	'Parents can exclude children from human sexuality instr'
HEL8_1	=	'Instr hlth topics - Req, but not in specific grade'
HEL8_2	=	'Instr hlth topics - Req in specific grade'
HEL8_3	=	'Instr hlth topics - Not req'
HEL9	=	'Confirm instr hlth topic req'
HEL10_0	=	'HE req - K'
HEL10_1	=	'HE req - 1st grade'
HEL10_2	=	'HE req - 2nd grade'
HEL10_3	=	'HE req - 3rd grade'
HEL10_4	=	'HE req - 4th grade'
HEL10_5	=	'HE req - 5th grade'
HEL10_6	=	'HE req - 6th grade'
HEL10_7	=	'HE req - 7th grade'
HEL10_8	=	'HE req - 8th grade'
HEL10_9	=	'HE req - 9th grade'
HEL10_10	=	'HE req - 10th grade'
HEL10_11	=	'HE req - 11th grade'
HEL10_12	=	'HE req - 12th grade'
HEL11_0	=	'Weeks HE req - K'
HEL12_0	=	'Days/Week HE req - K'
HEL13_0	=	'Minutes/Day HE req - K'
HEL11_1	=	'Weeks HE req - 1st grade'
HEL12_1	=	'Days/Week HE req - 1st grade'
HEL13_1	=	'Minutes/Day HE req - 1st grade'
HEL11_2	=	'Weeks HE req - 2nd grade'
HEL12_2	=	'Days/Week HE req - 2nd grade'
HEL13_2	=	'Minutes/Day HE req - 2nd grade'
HEL11_3	=	'Weeks HE req - 3rd grade'
HEL12_3	=	'Days/Week HE req - 3rd grade'
HEL13_3	=	'Minutes/Day HE req - 3rd grade'
HEL11_4	=	'Weeks HE req - 4th grade'
HEL12_4	=	'Days/Week HE req - 4th grade'
HEL13_4	=	'Minutes/Day HE req - 4th grade'
HEL11_5	=	'Weeks HE req - 5th grade'
HEL12_5	=	'Days/Week HE req - 5th grade'
HEL13_5	=	'Minutes/Day HE req - 5th grade'
HEL11_6	=	'Weeks HE req - 6th grade'
HEL12_6	=	'Days/Week HE req - 6th grade'
HEL13_6	=	'Minutes/Day HE req - 6th grade'
HEL11_7	=	'Weeks HE req - 7th grade'
HEL12_7	=	'Days/Week HE req - 7th grade'
HEL13_7	=	'Minutes/Day HE req - 7th grade'
HEL11_8	=	'Weeks HE req - 8th grade'
HEL12_8	=	'Days/Week HE req - 8th grade'
HEL13_8	=	'Minutes/Day HE req - 8th grade'
HEL11_9	=	'Weeks HE req - 9th grade'
HEL12_9	=	'Days/Week HE req - 9th grade'
HEL13_9	=	'Minutes/Day HE req - 9th grade'
HEL11_10	=	'Weeks HE req - 10th grade'
HEL12_10	=	'Days/Week HE req - 10th grade'
HEL13_10	=	'Minutes/Day HE req - 10th grade'
HEL11_11	=	'Weeks HE req - 11th grade'
HEL12_11	=	'Days/Week HE req - 11th grade'
HEL13_11	=	'Minutes/Day HE req - 11th grade'
HEL11_12	=	'Weeks HE req - 12th grade'
HEL12_12	=	'Days/Week HE req - 12th grade'
HEL13_12	=	'Minutes/Day HE req - 12th grade'
HEL14	=	'Req HE courses '
HEL15_1	=	'Req HE course - Course 1'
HEL15_2	=	'Req HE course - Course 2'
HEL15_3	=	'Req HE course - Course 3'
HEL15_4	=	'Req HE course - Course 4'
HEL15_5	=	'Req HE course - Course 5'
HEL15_6	=	'Req HE course - Course 6'
HEL15_7	=	'Req HE course - Course 7'
HEL15_8	=	'Req HE course - Course 8'
HEL15_9	=	'Req HE course - Course 9'
HEL15_10	=	'Req HE course - Course 10'
HEL15_11	=	'Req HE course - Course 11'
HEL15_12	=	'Req HE course - Course 12'
HEL15_13	=	'Req HE course - Course 13'
HEL15_14	=	'Req HE course - Course 14'
HEL15_15	=	'Req HE course - Course 15'
HEL15_16	=	'Req HE course - Course 16'
HEL15_17	=	'Req HE course - Course 17'
HEL15_18	=	'Req HE course - Course 18'
HEL15_19	=	'Req HE course - Course 19'
HEL15_20	=	'Req HE course - Course 20'
HEL16_1	=	'Course 1 - Usual grade '
HEL17_1	=	'Course 1 - Weeks'
HEL18_1	=	'Course 1 - Days/week '
HEL19_1	=	'Course 1 - Minutes/day'
HEL16_2	=	'Course 2 - Usual grade '
HEL17_2	=	'Course 2 - Weeks'
HEL18_2	=	'Course 2 - Days/week '
HEL19_2	=	'Course 2 - Minutes/day'
HEL16_3	=	'Course 3 - Usual grade '
HEL17_3	=	'Course 3 - Weeks'
HEL18_3	=	'Course 3 - Days/week '
HEL19_3	=	'Course 3 - Minutes/day'
HEL16_4	=	'Course 4 - Usual grade '
HEL17_4	=	'Course 4 - Weeks'
HEL18_4	=	'Course 4 - Days/week '
HEL19_4	=	'Course 4 - Minutes/day'
HEL16_5	=	'Course 5 - Usual grade '
HEL17_5	=	'Course 5 - Weeks'
HEL18_5	=	'Course 5 - Days/week '
HEL19_5	=	'Course 5 - Minutes/day'
HEL16_6	=	'Course 6 - Usual grade '
HEL17_6	=	'Course 6 - Weeks'
HEL18_6	=	'Course 6 - Days/week '
HEL19_6	=	'Course 6 - Minutes/day'
HEL16_7	=	'Course 7 - Usual grade '
HEL17_7	=	'Course 7 - Weeks'
HEL18_7	=	'Course 7 - Days/week '
HEL19_7	=	'Course 7 - Minutes/day'
HEL16_8	=	'Course 8 - Usual grade '
HEL17_8	=	'Course 8 - Weeks'
HEL18_8	=	'Course 8 - Days/week '
HEL19_8	=	'Course 8 - Minutes/day'
HEL16_9	=	'Course 9 - Usual grade '
HEL17_9	=	'Course 9 - Weeks'
HEL18_9	=	'Course 9 - Days/week '
HEL19_9	=	'Course 9 - Minutes/day'
HEL16_10	=	'Course 10 - Usual grade '
HEL17_10	=	'Course 10 - Weeks'
HEL18_10	=	'Course 10 - Days/week '
HEL19_10	=	'Course 10 - Minutes/day'
HEL16_11	=	'Course 11 - Usual grade '
HEL17_11	=	'Course 11 - Weeks'
HEL18_11	=	'Course 11 - Days/week '
HEL19_11	=	'Course 11 - Minutes/day'
HEL16_12	=	'Course 12 - Usual grade '
HEL17_12	=	'Course 12 - Weeks'
HEL18_12	=	'Course 12 - Days/week '
HEL19_12	=	'Course 12 - Minutes/day'
HEL16_13	=	'Course 13 - Usual grade '
HEL17_13	=	'Course 13 - Weeks'
HEL18_13	=	'Course 13 - Days/week '
HEL19_13	=	'Course 13 - Minutes/day'
HEL16_14	=	'Course 14 - Usual grade '
HEL17_14	=	'Course 14 - Weeks'
HEL18_14	=	'Course 14 - Days/week '
HEL19_14	=	'Course 14 - Minutes/day'
HEL16_15	=	'Course 15 - Usual grade '
HEL17_15	=	'Course 15 - Weeks'
HEL18_15	=	'Course 15 - Days/week '
HEL19_15	=	'Course 15 - Minutes/day'
HEL16_16	=	'Course 16 - Usual grade '
HEL17_16	=	'Course 16 - Weeks'
HEL18_16	=	'Course 16 - Days/week '
HEL19_16	=	'Course 16 - Minutes/day'
HEL16_17	=	'Course 17 - Usual grade '
HEL17_17	=	'Course 17 - Weeks'
HEL18_17	=	'Course 17 - Days/week '
HEL19_17	=	'Course 17 - Minutes/day'
HEL16_18	=	'Course 18 - Usual grade '
HEL17_18	=	'Course 18 - Weeks'
HEL18_18	=	'Course 18 - Days/week '
HEL19_18	=	'Course 18 - Minutes/day'
HEL16_19	=	'Course 19 - Usual grade '
HEL17_19	=	'Course 19 - Weeks'
HEL18_19	=	'Course 19 - Days/week '
HEL19_19	=	'Course 19 - Minutes/day'
HEL16_20	=	'Course 20 - Usual grade '
HEL17_20	=	'Course 20 - Weeks'
HEL18_20	=	'Course 20 - Days/week '
HEL19_20	=	'Course 20 - Minutes/day'
HEL20_a	=	'HE courses online only'
HEL20_b	=	'HE courses partially online'
HEL21	=	'Assemblies used to prov HE'
HEL22	=	'HE centers used to prov HE'
HEL23	=	'Hlth fairs used to prov HE'
HEL24_1	=	'Who teaches ES HE - HE teach/specialist'
HEL24_2	=	'Who teaches ES HE - PE teach/specialist'
HEL24_3	=	'Who teaches ES HE - Reg classroom teach'
HEL24_4	=	'Who teaches ES HE - Sch nurse'
HEL24_5	=	'Who teaches ES HE - Sch counselor'
HEL24_6	=	'Who teaches ES HE - Other(s)'
HEL25_1	=	'Who teaches MS/HS HE - HE teach'
HEL25_2	=	'Who teaches MS/HS HE - PE teach'
HEL25_3	=	'Who teaches MS/HS HE - Other teach'
HEL25_4	=	'Who teaches MS/HS HE - Sch nurse'
HEL25_5	=	'Who teaches MS/HS HE - Sch counselor'
HEL25_6	=	'Who teaches MS/HS HE - Other(s)'
HEL26_1	=	'Type of grade - Letter or numerical'
HEL26_2	=	'Type of grade - Pass/Fail'
HEL26_3	=	'Type of grade - Other'
HEL26_4	=	'Type of grade - No grades given'
HEL27	=	'HE grade counted same as other subjects'
HEL28	=	'If fail HE, repeat'
HEL29	=	'Elective HE course'
HEL30	=	'Students w diabilities enrolled'
HEL31	=	'HE incl in IEPs/504 plans'
HEL32	=	'Newly hired HE staff req undergrad/grad in HE'
HEL33	=	'Newly hired HE staff req cert/lic/endrs by state in HE'
HEL34	=	'Newly hired staff req CHES'
HEL35	=	'All HE staff req cont ed credits in HE'
HEL36a	=	'Past 12 months HE staff worked w PE staff'
HEL36b	=	'Past 12 months HE staff worked w HSV staff'
HEL36c	=	'Past 12 months  HE staff worked w MHSS staff'
HEL36d	=	'Past 12 months  HE staff worked w NS staff'
HEL37a	=	'Past 12 months HE staff worked w AFHG'
HEL37b	=	'Past 12 months HE staff worked  w AHA or ACS'
HEL37c	=	'Past 12 months HE staff worked w Hlth dept'
HEL37d	=	'Past 12 months HE staff worked w MH or SS agency'
HEL37e	=	'Past 12 months HE staff worked w Juvenile justice dept'
HEL37f	=	'Past 12 months HE staff worked w College or university'
HEL37g	=	'Past 12 months HE staff worked w Business'
HEL37h	=	'Past 12 months HE staff worked w AFHK'
HEL37i	=	'Past 12 months HE staff worked w Hospital'
HEL37j	=	'Past 12 months HE staff worked w Law enf agency'
HEL37k	=	'Past 12 months HE staff worked w Serv club'
HEL37l	=	'Past 12 months HE staff worked w Fire/emerg med serv'
HEL37m	=	'Past 12 months HE staff worked w Youth org'
HEL38a	=	'Past 12 months - Met w PTA to discuss HE'
HEL38b	=	'Past 12 months - Prov families w info on HE'
HEL38c	=	'Past 12 months - Discussed HE in parent-teach conf'
HEL38d	=	'Past 12 months - Invited families to attend HE class/activ'
HEL38e	=	'Past 12 months - Off HE to famlies'
HEL38f	=	'Past 12 months - Collect suggestions from students '
HEL38g	=	'Past 12 months - Collect suggestions from families '
HEL39	=	'Sch person oversee/coordinate HE'
HEL40	=	'R is person'
HEL41	=	'R years of exp teaching HE'
HEL42	=	'R coach intersch sports'
HEL43	=	'R has undergrad degree'
HEL44_1	=	'R major - HE '
HEL44_2	=	'R major - PE'
HEL44_3	=	'R major - Other ed'
HEL44_4	=	'R major - Nursing'
HEL44_5	=	'R major - Biology'
HEL44_6	=	'R major - Other'
HEL44_6SPEC	=	'R major - Specify'
HEL45	=	'R has undergrad minor'
HEL46_1	=	'R minor - HE '
HEL46_2	=	'R minor - PE'
HEL46_3	=	'R minor - Other ed'
HEL46_4	=	'R minor - Nursing'
HEL46_5	=	'R minor - Biology'
HEL46_6	=	'R minor - Other'
HEL46_6SPEC	=	'R minor - Specify'
HEL47	=	'R has grad degree'
HEL48_1	=	'R grad degree - HE '
HEL48_2	=	'R grad degree - PE'
HEL48_3	=	'R grad degree - Other ed'
HEL48_4	=	'R grad degree - Nursing'
HEL48_5	=	'R grad degree - Biology'
HEL48_6	=	'R grad degree - Other'
HEL48_6SPEC	=	'R grad degree - Specify'
HEL49a	=	'R cert/lic to teach HE in ES'
HEL49b	=	'R cert/lic to teach HE in MS'
HEL49c	=	'R cert/lic to teach HE in HS'
HEL50	=	'R is CHES'
;
run;
