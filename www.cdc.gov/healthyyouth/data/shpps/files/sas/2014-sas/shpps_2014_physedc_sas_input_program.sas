
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
/*  "PHYSEDC_SAS_Input_Program.sas" to create the 2014 SHPPS dataset.                   */
/****************************************************************************************/

filename datain 'c:\shpps2014\physedc2014.dat';

libname dataout 'c:\shpps2014';

libname library 'c:\shpps2014';

data dataout.physedc2014;
infile datain lrecl=2000;
missing A C F N M ;
input
STATENAME	$1 	-	30
STCMSID	31	-	35
DISTCMSID	36	-	40
SCHCMSID	44	-	52
PECAGGWT 	12.7 @68		
SPAN	84	-	89
ENROLL	90	-	95
HIGHGRADE	96	-	101
LOWGRADE	102	-	107
REGION	108	-	113
SAMPSTRA	114	-	119
DISTTYPE	120	-	125
LEVEL	126	-	131
PSU	132	-	142
PECWT 	12.7@143		
CLCMSID	158	-	168
PECPAP	169	-	172
PEC1	173	-	177
PEC2	178	-	182
PEC3a	183	-	187
PEC3b	188	-	192
PEC3c	193	-	197
PEC3d	198	-	202
PEC3e	203	-	207
PEC4a	208	-	212
PEC4b	213	-	217
PEC4c	218	-	222
PEC4d	223	-	227
PEC4e	228	-	232
PEC5a	233	-	237
PEC5b	238	-	242
PEC5c	243	-	247
PEC5d	248	-	252
PEC5e	253	-	257
PEC5f	258	-	262
PEC5g	263	-	267
PEC5h	268	-	272
PEC5i	273	-	277
PEC5j	278	-	282
PEC5k	283	-	287
PEC5l	288	-	292
PEC5m	293	-	297
PEC5n	298	-	302
PEC5o	303	-	307
PEC5p	308	-	312
PEC5q	313	-	317
PEC5r	318	-	322
PEC5s	323	-	327
PEC5t	328	-	332
PEC5u	333	-	337
PEC5v	338	-	342
PEC5w	343	-	347
PEC5x	348	-	352
PEC5y	353	-	357
PEC5z	358	-	362
PEC5aa	363	-	367
PEC5bb	368	-	372
PEC5cc	373	-	377
PEC5dd	378	-	382
PEC6a	383	-	387
PEC6b	388	-	392
PEC6c	393	-	397
PEC6d	398	-	402
PEC6e	403	-	407
PEC6f	408	-	412
PEC6g	413	-	417
PEC6h	418	-	422
PEC6i	423	-	427
PEC6j	428	-	432
PEC6k	433	-	437
PEC7a	438	-	442
PEC7b	443	-	447
PEC7c	448	-	452
PEC7d	453	-	457
PEC7e	458	-	462
PEC8a	463	-	467
PEC8b	468	-	472
PEC8c	473	-	477
PEC8d	478	-	482
PEC9a	483	-	487
PEC9b	488	-	492
PEC9c	493	-	497
PEC9d	498	-	502
PEC9e	503	-	507
PEC9f	508	-	512
PEC9g	513	-	517
PEC9h	518	-	522
PEC10a	523	-	527
PEC10b	528	-	532
PEC10c	533	-	537
PEC10d	538	-	542
PEC10e	543	-	547
PEC10f	548	-	552
PEC10g	553	-	557
PEC10h	558	-	562
PEC10i	563	-	567
PEC10j	568	-	572
PEC10k	573	-	577
PEC10l	578	-	582
PEC10m	583	-	587
PEC10n	588	-	592
PEC10o	593	-	597
PEC10p	598	-	602
PEC10q	603	-	607
PEC10r	608	-	612
PEC10s	613	-	617
PEC10t	618	-	622
PEC11a	623	-	627
PEC11b	628	-	632
PEC11c	633	-	637
PEC11d	638	-	642
PEC11e	643	-	647
PEC11f	648	-	652
PEC11g	653	-	657
PEC11h	658	-	662
PEC11i	663	-	667
PEC11j	668	-	672
PEC12	673	-	677
PEC13a	678	-	682
PEC13b	683	-	687
PEC13c	688	-	692
PEC13d	693	-	697
PEC13e	698	-	702
PEC13f	703	-	707
PEC13g	708	-	712
PEC13h	713	-	717
PEC13i	718	-	722
PEC13j	723	-	727
PEC13k	728	-	732
PEC13l	733	-	737
PEC13m	738	-	742
PEC13n	743	-	747
PEC13o	748	-	752
PEC13p	753	-	757
PEC14a	758	-	762
PEC14b	763	-	767
PEC14c	768	-	772
PEC14d	773	-	777
PEC15a	778	-	782
PEC15b	783	-	787
PEC15c	788	-	792
PEC15d	793	-	797
PEC15e	798	-	802
PEC15f	803	-	807
PEC15g	808	-	812
PEC15h	813	-	817
PEC15i	818	-	822
PEC15j	823	-	827
PEC15k	828	-	832
PEC15l	833	-	837
PEC16a	838	-	842
PEC16b	843	-	847
PEC16c	848	-	852
PEC17a	853	-	857
PEC17b	858	-	862
PEC17c	863	-	867
PEC17d	868	-	872
PEC17e	873	-	877
PEC17f	878	-	882
PEC18	883	-	887
PEC19a	888	-	892
PEC19b	893	-	897
PEC19c	898	-	902
PEC20	903	-	907
PEC21_1	908	-	912
PEC21_2	913	-	917
PEC21_3	918	-	922
PEC21_3SPEC	$923	-	983
PEC22	984	-	988
PEC23a	989	-	993
PEC23b	994	-	998
PEC23c	999	-	1003
PEC23d	1004	-	1008
PEC24	1009	-	1013
PEC25a	1014	-	1018
PEC25b	1019	-	1023
PEC26	1024	-	1028
PEC27	1029	-	1033
PEC28	1034	-	1038
PEC29	1039	-	1043
PEC30a	1044	-	1048
PEC30b	1049	-	1053
PEC30c	1054	-	1058
PEC30d	1059	-	1063
PEC30e	1064	-	1068
PEC30f	1069	-	1073
PEC31	1074	-	1078
PEC32a	1079	-	1083
PEC32b	1084	-	1088
PEC32c	1089	-	1093
PEC32d	1094	-	1098
PEC32e	1099	-	1103
PEC32f	1104	-	1108
PEC32g	1109	-	1113
PEC32h	1114	-	1118
PEC33	1119	-	1123
PEC34	1124	-	1128
PEC35a	1129	-	1133
PEC35b	1134	-	1138
PEC35c	1139	-	1143
PEC35d	1144	-	1148
PEC36a	1149	-	1153
PEC36b	1154	-	1158
PEC36c	1159	-	1163
PEC36d	1164	-	1168
PEC36e	1169	-	1173
PEC36f	1174	-	1178
PEC37	1179	-	1183
PEC38	1184	-	1188
PEC39	1189	-	1193
PEC40	1194	-	1198
PEC41_1	1199	-	1203
PEC41_2	1204	-	1208
PEC41_3	1209	-	1213
PEC41_4	1214	-	1218
PEC41_5	1219	-	1223
PEC41_5SPEC	$1224	-	1284
PEC42	1285	-	1289
PEC43_1	1290	-	1294
PEC43_2	1295	-	1299
PEC43_3	1300	-	1304
PEC43_4	1305	-	1309
PEC43_5	1310	-	1314
PEC43_5SPEC	$1315	-	1375
PEC44	1376	-	1380
PEC45_1	1381	-	1385
PEC45_2	1386	-	1390
PEC45_3	1391	-	1395
PEC45_4	1396	-	1400
PEC45_5	1401	-	1405
PEC45_5SPEC	$1406	-	1466
PEC46a	1467	-	1471
PEC46b	1472	-	1476
PEC46c	1477	-	1481
PEC47a	1482	-	1486
PEC47b	1487	-	1491
PEC47c	1492	-	1496
PEC47d	1497	-	1501
PEC47e	1502	-	1506
PEC47f	1507	-	1511
PEC47g	1512	-	1516
PEC47h	1517	-	1521
PEC47i	1522	-	1526
PEC47j	1527	-	1531
PEC47k	1532	-	1536
PEC47l	1537	-	1541
PEC47m	1542	-	1546
PEC47n	1547	-	1551
PEC47o	1552	-	1556
PEC47p	1557	-	1561
PEC47q	1562	-	1566
PEC47r	1567	-	1571
PEC47s	1572	-	1576
PEC47t	1577	-	1581
PEC47u	1582	-	1586
PEC47v	1587	-	1591
PEC47w	1592	-	1596
PEC47x	1597	-	1601
PEC48_1	1602	-	1606
PEC48_2	1607	-	1611
PEC48_3	1612	-	1616
PEC48_4	1617	-	1621
PEC48_5	1622	-	1626
PEC48_6	1627	-	1631
PEC48_7	1632	-	1636
PEC48_8	1637	-	1641
PEC48_9	1642	-	1646
PEC48_10	1647	-	1651
PEC48_11	1652	-	1656
PEC48_12	1657	-	1661
PEC48_13	1662	-	1666
PEC48_14	1667	-	1671
PEC48_15	1672	-	1676
PEC48_16	1677	-	1681
PEC48_17	1682	-	1686
PEC48_18	1687	-	1691
PEC48_19	1692	-	1696
PEC48_20	1697	-	1701
PEC48_21	1702	-	1706
PEC48_22	1707	-	1711
PEC48_23	1712	-	1716
PEC48_24	1717	-	1721
PEC48_25	1722	-	1726
CLASSFORMAT 1727-1728
;
************************************
*  Assign formats to SAS variables.*
************************************;

format

/*PHYSICAL EDUCATION CLASS*/
PEC1 PEC3A PEC3B PEC3C PEC3D PEC3E PEC10A PEC10B PEC10C PEC10D PEC10E PEC10F PEC10G PEC10H PEC10I PEC10J PEC10K PEC10L PEC10M
PEC10N PEC10O PEC10P PEC10Q PEC10R PEC10S PEC10T PEC11A PEC11B PEC11C PEC11D PEC11E PEC11F PEC11G PEC11H PEC11I PEC11J PEC16A 
PEC16B PEC16C PEC17A PEC17B PEC17C PEC17D PEC17E PEC17F PEC18 PEC19A PEC19B PEC19C PEC22 PEC23A PEC23B 
PEC23C PEC23D PEC24 PEC25A PEC25B PEC26 PEC27 PEC28 PEC29 PEC30A PEC30B PEC30C PEC30D PEC30E PEC30F PEC31 PEC32A PEC32B PEC32C PEC32D
PEC32E PEC32F PEC32G PEC32H PEC33 PEC34 PEC35A PEC35B PEC35C PEC35D PEC36A PEC36B PEC36C PEC36D PEC36E PEC36F PEC38 
PEC39 PEC40 PEC42 PEC44 
PEC47A PEC47B PEC47C PEC47D PEC47E PEC47F PEC47G PEC47H PEC47I PEC47J PEC47K PEC47L PEC47M PEC47N PEC47O PEC47P PEC47Q PEC47R 
PEC47S PEC47T PEC47U PEC47V PEC47W PEC47X  CLASSFORMAT
yesno. 

PEC15A PEC15B PEC15C PEC15D PEC15E PEC15F PEC15G PEC15H PEC15I PEC15J PEC15K PEC15L 
often.

PEC13A PEC13B PEC13C PEC13D PEC13E PEC13F PEC13G PEC13H PEC13I PEC13J PEC13K PEC13L
PEC13M PEC13N PEC13O PEC13P PEC14A PEC14B PEC14C PEC14D
howoften.


PEC21_1 PEC21_2 PEC21_3 yesno.
PEC12 PEC12F. PEC20 PEC20F. PEC46A PEC46B PEC46C PEC46F.
PEC41_1 PEC41_2 PEC41_3 PEC41_4 PEC41_5 PEC43_1 PEC43_2 PEC43_3 PEC43_4 PEC43_5 
PEC45_1 PEC45_2 PEC45_3 PEC45_4 PEC45_5 PEC48_1 PEC48_2 PEC48_3 PEC48_4 PEC48_5 PEC48_6 PEC48_7 PEC48_8 PEC48_9 PEC48_10 PEC48_11 PEC48_12 PEC48_13 PEC48_14 
PEC48_15 PEC48_16 PEC48_17 PEC48_18 PEC48_19 PEC48_20 PEC48_21 PEC48_22 PEC48_23 PEC48_24 PEC48_25 yesno.

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

PECPAP
method.; 


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
PECAGGWT  = 'PEC School-level physical education classroom weight'
CLCMSID ='Class CMS ID'
PECWT  ='PEC Course-level physical education classroom weight'
PSU	=	'Sampled Primary Sampling Unit'
PECPAP	=	'Mail - CAPI Complete '
PEC1	=	'MS/HS Combined HE/PE class'
PEC2	=	'Class enrollment'
PEC3a	=	'ES teach - Movement concepts/skills'
PEC3b	=	'Teach - Indv/paired activ'
PEC3c	=	'Teach - Group/team activ'
PEC3d	=	'Teach - Aquatic activ'
PEC3e	=	'Teach - Dance activ'
PEC4a	=	'Contact hours - Space awareness'
PEC4b	=	'Contact hours - Locomotor skills'
PEC4c	=	'Contact hours - Manipualtive skills'
PEC4d	=	'Contact hours - Non-locomotor skills'
PEC4e	=	'Contact hours - Combo movement skills'
PEC5a	=	'Contact hours - Aerobics'
PEC5b	=	'Contact hours - Archery'
PEC5c	=	'Contact hours - Badminton'
PEC5d	=	'Contact hours - Bowling'
PEC5e	=	'Contact hours - Canoeing/kayaking'
PEC5f	=	'Contact hours - Cardio machines'
PEC5g	=	'Contact hours - Climbing ropes/wall ladders'
PEC5h	=	'Contact hours - Climbing walls'
PEC5i	=	'Contact hours - PA/fitness stations'
PEC5j	=	'Contact hours - Frisbee/frisbee golf'
PEC5k	=	'Contact hours - Golf'
PEC5l	=	'Contact hours - Gymnastics'
PEC5m	=	'Contact hours - Hiking/backpacking/orienteering'
PEC5n	=	'Contact hours - Jumping rope'
PEC5o	=	'Contact hours - Martial arts'
PEC5p	=	'Contact hours - Non-stationary bicycling'
PEC5q	=	'Contact hours - Pilates'
PEC5r	=	'Contact hours - Racquet sports other than tennis'
PEC5s	=	'Contact hours - Rock climbing'
PEC5t	=	'Contact hours - Running/jogging'
PEC5u	=	'Contact hours - Skating'
PEC5v	=	'Contact hours - Skiing'
PEC5w	=	'Contact hours - Student-designed games'
PEC5x	=	'Contact hours - Table tennis/Ping-Pong'
PEC5y	=	'Contact hours - Tennis'
PEC5z	=	'Contact hours - Track/field'
PEC5aa	=	'Contact hours - Walking'
PEC5bb	=	'Contact hours - Weight training'
PEC5cc	=	'Contact hours - Wrestling'
PEC5dd	=	'Contact hours - Yoga'
PEC6a	=	'Contact hours - Baseball/softball/whiffleball'
PEC6b	=	'Contact hours - Basketball'
PEC6c	=	'Contact hours - Dodgeball/bombardment'
PEC6d	=	'Contact hours - Touch/flag football'
PEC6e	=	'Contact hours - Hockey'
PEC6f	=	'Contact hours - Kickball'
PEC6g	=	'Contact hours - Lacrosse'
PEC6h	=	'Contact hours - Soccer'
PEC6i	=	'Contact hours - Student-designed games'
PEC6j	=	'Contact hours - Ultimate frisbee'
PEC6k	=	'Contact hours - Volleyball'
PEC7a	=	'ES contact hours  - Duck-duck-goose'
PEC7b	=	'ES contact hours  - Elimination tag'
PEC7c	=	'ES contact hours  - King of the hill/capture the flag'
PEC7d	=	'ES contact hours  - Red rover'
PEC7e	=	'ES contact hours  - Relay races'
PEC8a	=	'Contact hours - Folk/multicultural dances'
PEC8b	=	'Contact hours - Performing arts dances'
PEC8c	=	'Contact hours - Social dances'
PEC8d	=	'Contact hours - Square dances'
PEC9a	=	'Minutes - Change clothes before class'
PEC9b	=	'Minutes - Take roll/announcements'
PEC9c	=	'Minutes -  Warm-up activ'
PEC9d	=	'Minutes - Instr through lecture/demo'
PEC9e	=	'Minutes - Skills drills'
PEC9f	=	'Minutes - Partic in games/sports/dance'
PEC9g	=	'Minutes - Cool-down activ'
PEC9h	=	'Minutes - Shower/change clothes after activ'
PEC10a	=	'Teach about - Difference between PA/exericise/fitness'
PEC10b	=	'Teach about - Difference between moderate/vigorous PA'
PEC10c	=	'Teach about - Phys/psych/soc benefits of PA'
PEC10d	=	'Teach about - Role of PA in reducing chronic disease'
PEC10e	=	'Teach about - Hlth-related fitness'
PEC10f	=	'Teach about - Skill-related fitness'
PEC10g	=	'Teach about - Phases of exercise session'
PEC10h	=	'Teach about - How much PA is enough'
PEC10i	=	'Teach about - Mechanics of movement'
PEC10j	=	'Teach about - Setting personal goals for PA partic'
PEC10k	=	'MS/HS teach about - Dev indv PA plan'
PEC10l	=	'MS/HS teach about - Monitoring indv PA plan progress '
PEC10m	=	'Teach about - Identifying/overcoming barriers to PA'
PEC10n	=	'Teach about - Opportunities for PA in cmty'
PEC10o	=	'Teach about - Finding valid info/serv/products for PA/fitness'
PEC10p	=	'Teach about - Balancing food intake and PA'
PEC10q	=	'Teach about - Importance of hlthy eating'
PEC10r	=	'Teach about - Prev injury during PA'
PEC10s	=	'Teach about - Weather-related safety'
PEC10t	=	'Teach about - Dangers of using perf-enhancing drugs'
PEC11a	=	'When teaching use - St-dev curricula/stds for PE'
PEC11b	=	'When teaching use - Dist-dev curricula/stds for PE'
PEC11c	=	'When teaching use  - Sch-dev curricula/stds for PE'
PEC11d	=	'When teaching use  - Internet resources'
PEC11e	=	'When teaching use  - Commercially dev curricula'
PEC11f	=	'When teaching use  - Commercially dev student txtbk'
PEC11g	=	"When teaching use - Comercially dev teacher's guide"
PEC11h	=	'When teaching use - PE student perf assessment materials'
PEC11i	=	'When teaching use  - Materials from health orgs'
PEC11j	=	'When teaching use  - Pres Council material'
PEC12	=	'Percent time allocated for PA'
PEC13a	=	'How often - Practice active supervision'
PEC13b	=	'How often - Call students by name'
PEC13c	=	'How often - Engage in PA w students'
PEC13d	=	'How often - Select team captains'
PEC13e	=	'How often - Team captains choose teams'
PEC13f	=	'How often - Encourage prosoc behav'
PEC13g	=	'How often - Organize games that eliminate students'
PEC13h	=	'How often - Use protective clothing/safety gear'
PEC13i	=	'How often - Students stand awaiting turn'
PEC13j	=	'How often - Use safe/age-appropriate equipment'
PEC13k	=	'How often - Fewer than half students phys active at same time'
PEC13l	=	'How often - Minimize exposure to sun/smog/extreme temp'
PEC13m	=	'How often - Allow highly skilled students to dominate'
PEC13n	=	'How often - Off activ that account for gender/cultural differences'
PEC13o	=	'How often - Prov students w options to perform at varying levels'
PEC13p	=	'How often - Use infection control pract for handling blood/bodily fluids'
PEC14a	=	'How often - Use alt/modifying rules'
PEC14b	=	'How often - Use smaller but more teams'
PEC14c	=	'How often - Ensure all students have PA/fitness equipment'
PEC14d	=	'How often - Keep students active when checking attendance'
PEC15a	=	'How often use - Competitive group activ'
PEC15b	=	'How often use - Cooperative group activ'
PEC15c	=	'How often use - Skills drills'
PEC15d	=	'How often use  - PA/fitness stations'
PEC15e	=	'How often use - Pledges/contracts for behav change'
PEC15f	=	'How often use - Guest speakers'
PEC15g	=	'How often use- Peer teach'
PEC15h	=	'How often use - Heart rate monitors'
PEC15i	=	'How often use - PA monitors'
PEC15j	=	'How often use - Internet'
PEC15k	=	'How often use - Student PA logs/journals'
PEC15l	=	'How often use - Field trips as instr method'
PEC16a	=	'Students asked - Perform vol work w PA prog/event'
PEC16b	=	'Students asked - Partic/attend cmty hlth fair'
PEC16c	=	'Students asked - Gather info about PA prog in cmty'
PEC17a	=	'Prov families w class info'
PEC17b	=	'Give homework/projects involving family'
PEC17c	=	'Invite families to attend class'
PEC17d	=	'Prov strategies promo PA among family'
PEC17e	=	'Collect suggestions from students'
PEC17f	=	'Collect suggestions from families'
PEC18	=	'Principal invited to observe class'
PEC19a	=	'Gave written tests'
PEC19b	=	'Gave skill performance tests'
PEC19c	=	'Gave fitness tests'
PEC20	=	'How often fitness tests given'
PEC21_1	=	'Fitness test used - Fitnessgram'
PEC21_2	=	'Fitness test used - Phys Fitness Test '
PEC21_3	=	'Fitness test used - Other'
PEC21_3SPEC	=	'Fitness test used - Specify'
PEC22	=	'Schedule time for students practice fitness tests'
PEC23a	=	'Compare scores to - National/st/local criterion stds'
PEC23b	=	'Compare scores to - National/st/local normative stds'
PEC23c	=	'Compare scores to - Prior fitness scores'
PEC23d	=	"Compare scores to - Students' fitness goals"
PEC24	=	'Prov explanation of fitness scores to students'
PEC25a	=	'Fitness scores shared w parent'
PEC25b	=	'Fitness scores shared w principal/sch admin'
PEC26	=	'Indv PA plan req'
PEC27	=	'Fitness scores used to dev indv PA plans'
PEC28	=	'Prov indv feedback on PA plans'
PEC29	=	'Prov instr on monitoring adherence to PA plans'
PEC30a	=	'Req PA plans include - PA goals'
PEC30b	=	'Req PA plans include - Fitness goals'
PEC30c	=	'Req PA plans include - Rewards for meeting goals'
PEC30d	=	'Req PA plans include - Scheduled PA times'
PEC30e	=	'Req PA plans include - Process for assessing goal progress'
PEC30f	=	'Req PA plans include - ID barriers to PA/strategies to overcome'
PEC31	=	'PA log req'
PEC32a	=	'Students assessed on attendance'
PEC32b	=	'Students assessed  on wearing appropriate clothing'
PEC32c	=	'Students assessed on level of partic'
PEC32d	=	'Students assessed on attitude'
PEC32e	=	'Students assessed on knowledge tests'
PEC32f	=	'Students assessed on movement skills performance tests'
PEC32g	=	'Students assessed on level of PA outside PE '
PEC32h	=	'Students assessed on phys fitness test scores'
PEC33	=	'Students assessed on quality of indv PA plan '
PEC34	=	'Students w long-term disabilities in class'
PEC35a	=	'Assistance for students w disabilities - Adapted PE teach/specialist'
PEC35b	=	'Assistance for students w disabilities - Spec ed teach'
PEC35c	=	'Assistance for students w disabilities - Phys/occupational therapist'
PEC35d	=	'Assistance for students w disabilities - Teach/aide'
PEC36a	=	'Teach student w disability - Simplified instr content'
PEC36b	=	'Teach student w disability - Skill modeling'
PEC36c	=	'Teach student w disability - Modified equipment/facil'
PEC36d	=	'Teach student w disability - Modified instr strategies'
PEC36e	=	'Teach student w disability - Modified assessment'
PEC36f	=	'Teach student w disability - Peer teaching/coaching'
PEC37	=	'R years of experience teaching PE'
PEC38	=	'R ever taught online PE class'
PEC39	=	'R coach intersch sports'
PEC40	=	'R has undergrad degree'
PEC41_1	=	'R major - PE'
PEC41_2	=	'R major - HE'
PEC41_3	=	'R major - Other ed'
PEC41_4	=	'R major - Kinesiology'
PEC41_5	=	'R major - Other'
PEC41_5SPEC	=	'R major - Specify'
PEC42	=	'R has undergrad minor'
PEC43_1	=	'R minor - PE'
PEC43_2	=	'R minor - HE'
PEC43_3	=	'R minor - Other ed'
PEC43_4	=	'R minor - Kinesiology'
PEC43_5	=	'R minor - Other'
PEC43_5SPEC	=	'R minor - Specify'
PEC44	=	'R has grad degree'
PEC45_1	=	'R grad degree - PE'
PEC45_2	=	'R grad degree - HE'
PEC45_3	=	'R grad degree - Other ed'
PEC45_4	=	'R grad degree - Kinesiology'
PEC45_5	=	'R grad degree - Other'
PEC45_5SPEC	=	'R grad degree - Specify '
PEC46a	=	'R cert/lic to teach PE in ES'
PEC46b	=	'R cert/lic to teach PE in MS'
PEC46c	=	'R cert/lic to teach PE in HS'
PEC47a	=	'Past 2 years receive prof dev - Methods to increase time engaged in MVPA'
PEC47b	=	'Past 2 years receive prof dev - Methods to promo gender equity in PA'
PEC47c	=	'Past 2 years receive prof dev - Using technology for PE'
PEC47d	=	'Past 2 years receive prof dev - Using PA monitoring devices'
PEC47e	=	'Past 2 years receive prof dev - Encouraging family involvement'
PEC47f	=	'Past 2 years receive prof dev - Administering/using fitness tests'
PEC47g	=	'Past 2 years receive prof dev - Helping students dev indv PA plans'
PEC47h	=	'Past 2 years receive prof dev - Injury prev/first aid'
PEC47i	=	'Past 2 years receive prof dev - Prev/recognize/respond to concussions'
PEC47j	=	'Past 2 years receive prof dev - Teaching PE to students w disabilities'
PEC47k	=	'Past 2 years receive prof dev - Teaching indv/paried activ/sports'
PEC47l	=	'Past 2 years receive prof dev - Teaching team/group activ/sports'
PEC47m	=	'Past 2 years receive prof dev - Teaching movement skills/concepts'
PEC47n	=	'Past 2 years receive prof dev - Assessing/eval student performance in PE'
PEC47o	=	'Past 2 years receive prof dev - Dev/using student portfolios for PE'
PEC47p	=	'Past 2 years receive prof dev - Methods to promo inclusion obese children'
PEC47q	=	'Past 2 years receive prof dev - Chronic hlth conditions'
PEC47r	=	'Past 2 years receive prof dev - Dev/impl/eval PA clubs/intramural sports'
PEC47s	=	'Past 2 years receive prof dev - Dev/impl/eval comprehensive sch PA prog'
PEC47t	=	'Past 2 years receive prof dev - Establishing walking/biking to sch prog'
PEC47u	=	'Past 2 years receive prof dev - Assessing student weight status'
PEC47v	=	'Past 2 years receive prof dev - Aligning PE stds to curriculum/instr/student assessment'
PEC47w	=	'Past 2 years receive prof dev - Teaching online/distance ed courses'
PEC47x	=	'Past 2 years receive prof dev - Helping classroom teach integrate PA'
PEC48_1	=	'Wanted prof dev - Methods to increase time engaged in MVPA'
PEC48_2	=	'Wanted prof dev - Methods to promo gender equity in PA'
PEC48_3	=	'Wanted prof dev - Using technology for PE'
PEC48_4	=	'Wanted prof dev - Using PA monitoring devices'
PEC48_5	=	'Wanted prof dev - Encouraging family involvement'
PEC48_6	=	'Wanted prof dev - Administering/using fitness tests'
PEC48_7	=	'Wanted prof dev - Helping students dev indv PA plans'
PEC48_8	=	'Wanted prof dev - Injury prev/first aid'
PEC48_9	=	'Wanted prof dev - Prev/recognize/respond to concussions'
PEC48_10	=	'Wanted prof dev - Teaching PE to students w disabilities'
PEC48_11	=	'Wanted prof dev - Teaching indv/paried activ/sports'
PEC48_12	=	'Wanted prof dev - Teaching team/group activ/sports'
PEC48_13	=	'Wanted prof dev - Teaching movement skills/concepts'
PEC48_14	=	'Wanted prof dev - Assessing/eval student performance in PE'
PEC48_15	=	'Wanted prof dev - Dev/using student portfolios for PE'
PEC48_16	=	'Wanted prof dev - Methods to promo inclusion obese children'
PEC48_17	=	'Wanted prof dev - Chronic hlth conditions'
PEC48_18	=	'Wanted prof dev - Dev/impl/eval PA clubs/intramural sports'
PEC48_19	=	'Wanted prof dev - Dev/impl/eval comprehensive sch PA prog'
PEC48_20	=	'Wanted prof dev - Establishing walking/biking to sch prog'
PEC48_21	=	'Wanted prof dev - Assessing student weight status'
PEC48_22	=	'Wanted prof dev - Aligning PE stds to curriculum/instr/student assessment'
PEC48_23	=	'Wanted prof dev - Teaching online/distance ed courses'
PEC48_24	=	'Wanted prof dev - Helping classroom teach integrate PA'
PEC48_25	=	'Wanted prof dev - None'
CLASSFORMAT='Class Taught Online'
;
run;
