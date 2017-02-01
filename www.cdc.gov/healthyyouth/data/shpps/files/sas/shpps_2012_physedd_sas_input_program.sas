
/****************************************************************************************/
/*  This SAS program reads ASCII format (text format) 2012 SHPPS data and creates a     */
/*  formatted and labeled SAS dataset.                                                  */
/*                                                                                      */
/*  Change the file location specifications from "c:\shpps2012" to the location where   */
/*  you have stored the SHPPS ASCII data file and the format library before you run this*/
/*  program.  Change the location specification in three places - in the "filename"     */
/*  statement and in the two "libname" statements at the top of the program.            */
/*                                                                                      */
/*  Note: Run "SHPPS Formats Program.sas" BEFORE you run                                */
/*  "PHYSEDD_SAS_Input_Program.sas" to create the 2012 SHPPS dataset.                   */
/****************************************************************************************/

filename datain 'c:\shpps2012\physedd2012.dat';

libname dataout 'c:\shpps2012';

libname library 'c:\shpps2012';

data dataout.physedd2012 ;
infile datain lrecl=2000;
missing A C F N M ;
input
STCMSID	1-2
STATENAME	$3-30
DISTCMSID	31-35
@47 DISTWT 12.7
PSU	    60-67
SAMPSTRA 72-72
CTYPEM1	$73-103
CTYPEM2	$104-134
CTYPEM3	$135-165
CTYPEM4	$166-196
CTYPEM5	$197-227
RTITLE1	$228-298
RTITLE2	$299-369
RTITLE3	$370-440
RTITLE4	$441-511
RTITLE5	$512-582
PED1	583-583
PED2	584-584
PED3	585-585
PED4	586-586
PED5	587-587
PED6a	588-588
PED6b	589-589
PED6c	590-590
PED6d	591-591
PED6e	592-592
PED6f	593-593
PED7	594-594
PED8	595-595
PED9	596-596
PED10a	597-597
PED10b	598-598
PED10c	599-599
PED10d	600-600
PED10e	601-601
PED10f	602-602
PED10g	603-603
PED11	604-604
PED12	605-605
PED13	606-606
PED14_1	607-607
PED14_2	608-608
PED14_3	609-609
PED14_4	610-610
PED14_5	611-611
PED14_6	612-612
PED14_7	613-613
PED15a	614-614
PED15b	615-615
PED15c	616-616
PED16	617-617
PED17a	618-618
PED17b	619-619
PED18	620-620
PED19	621-621
PED20a	622-622
PED20b	623-623
PED20c	624-624
PED20cSPEC	$625-725
PED21	726-726
PED22	727-727
PED23	728-728
PED24	729-729
PED25	730-730
PED26	731-731
PED27	732-732
PED28	733-733
PED29	734-734
PED30a	735-735
PED30b	736-736
PED30c	737-737
PED30d	738-738
PED30e	739-739
PED30f	740-740
PED31	741-741
PED32	742-742
PED33	743-743
PED34a	744-744
PED34b	745-745
PED34c	746-746
PED34d	747-747
PED34e	748-748
PED34f	749-749
PED34g	750-750
PED34h	751-751
PED34i	752-752
PED34j	753-753
PED35	754-754
PED36	755-755
PED37	756-756
PED38_1	757-757
PED38_2	758-758
PED38_3	759-759
PED38_4	760-760
PED38_5	761-761
PED38_6	762-762
PED38_7	763-763
PED39a	764-764
PED39b	765-765
PED39c	766-766
PED40	767-767
PED41a	768-768
PED41b	769-769
PED42	770-770
PED43	771-771
PED44a	772-772
PED44b	773-773
PED44c	774-774
PED44cSPEC	$775-875
PED45	876-876
PED46	877-877
PED47	878-878
PED48	879-879
PED49	880-880
PED50	881-881
PED51a	882-882
PED51b	883-883
PED51c	884-884
PED51d	885-885
PED51e	886-886
PED51f	887-887
PED52	888-888
PED53	889-889
PED54	890-890
PED55a	891-891
PED55b	892-892
PED55c	893-893
PED55d	894-894
PED55e	895-895
PED55f	896-896
PED55g	897-897
PED55h	898-898
PED55i	899-899
PED55j	900-900
PED56	901-901
PED57	902-902
PED58	903-903
PED59_1	904-904
PED59_2	905-905
PED59_3	906-906
PED59_4	907-907
PED59_5	908-908
PED59_6	909-909
PED59_7	910-910
PED60a	911-911
PED60b	912-912
PED60c	913-913
PED61	914-914
PED62a	915-915
PED62b	916-916
PED63	917-917
PED64	918-918
PED65a	919-919
PED65b	920-920
PED65c	921-921
PED65cSPEC	$922-1022
PED66	1023-1023
PED67	1024-1024
PED68	1025-1025
PED69	1026-1026
PED70	1027-1027
PED71a	1028-1028
PED71b	1029-1029
PED71c	1030-1030
PED71d	1031-1031
PED71e	1032-1032
PED71f	1033-1033
PED71g	1034-1034
PED72a	1035-1035
PED72b	1036-1036
PED72c	1037-1037
PED73	1038-1038
PED74	1039-1039
PED75	1040-1040
PED76	1041-1041
PED77	1042-1042
PED78	1043-1043
PED79a	1044-1044
PED79b	1045-1045
PED79c	1046-1046
PED79d	1047-1047
PED79e	1048-1048
PED79f	1049-1049
PED79g	1050-1050
PED79h	1051-1051
PED79i	1052-1052
PED79j	1053-1053
PED79k	1054-1054
PED79l	1055-1055
PED79m	1056-1056
PED79n	1057-1057
PED79o	1058-1058
PED79p	1059-1059
PED79q	1060-1060
PED79r	1061-1061
PED79s	1062-1062
PED79t	1063-1063
PED79u	1064-1064
PED79v	1065-1065
PED79w	1066-1066
PED79x	1067-1067
PED79y	1068-1068
PED79z	1069-1069
PED80a	1070-1070
PED80b	1071-1071
PED80c	1072-1072
PED80d	1073-1073
PED80e	1074-1074
PED81a	1075-1075
PED81b	1076-1076
PED81c	1077-1077
PED81d	1078-1078
PED81e	1079-1079
PED81f	1080-1080
PED81g	1081-1081
PED81h	1082-1082
PED81i	1083-1083
PED81j	1084-1084
PED81k	1085-1085
PED81l	1086-1086
PED81m	1087-1087
PED81n	1088-1088
PED81o	1089-1089
PED82a	1090-1090
PED82b	1091-1091
PED82c	1092-1092
PED82d	1093-1093
PED82e	1094-1094
PED83a	1095-1095
PED83b	1096-1096
PED83c	1097-1097
PED83d	1098-1098
PED84a	1099-1099
PED84b	1100-1100
PED84c	1101-1101
PED85a	1102-1102
PED85b	1103-1103
PED85c	1104-1104
PED85d	1105-1105
PED85e	1106-1106
PED85f	1107-1107
PED85g	1108-1108
PED85h	1109-1109
PED85i	1110-1110
PED86	1111-1111
PED87	1112-1112
PED88	1113-1113
PED89	1114-1114
PED90	1115-1115
PED91a	1116-1116
PED91b	1117-1117
PED92	1118-1118
PED93	1119-1119
PED94	1120-1120
PED95_1	1121-1121
PED95_2	1122-1122
PED95_3	1123-1123
PED95_4	1124-1124
PED95_5	1125-1125
PED95_5SPEC	$1126-1226
PED96	1227-1227
PED97_1	1228-1228
PED97_2	1229-1229
PED97_3	1230-1230
PED97_4	1231-1231
PED97_5	1232-1232
PED97_5SPEC	$1233-1333
PED98	1334-1334
PED99_1	1335-1335
PED99_2	1336-1336
PED99_3	1337-1337
PED99_4	1338-1338
PED99_5	1339-1339
PED99_5SPEC	$1340-1440
PED100a	1441-1441
PED100b	1442-1442
PED100c	1443-1443;

************************************
*  Assign formats to SAS variables.*
************************************;
format
PED1	   
PED2	   
PED3	   
PED4	   
PED71a	   
PED71b	   
PED71c	   
PED71d	   
PED71e	   
PED71f	   
PED71g	   
PED72a	   
PED72b	   
PED72c	   
PED73	   
PED74	   
PED75	   
PED76	   
PED77	   
PED78	   
PED79a	   
PED79b	   
PED79c	   
PED79d	   
PED79e	   
PED79f	   
PED79g	   
PED79h	   
PED79i	   
PED79j	   
PED79k	   
PED79l	   
PED79m	   
PED79n	   
PED79o	   
PED79p	   
PED79q	   
PED79r	   
PED79s	   
PED79t	   
PED79u	   
PED79v	   
PED79w	   
PED79x	   
PED79y	   
PED79z	   
PED81a	   
PED81b	   
PED81c	   
PED81d	   
PED81e	   
PED81f	   
PED81g	   
PED81h	   
PED81i	   
PED81j	   
PED81k	   
PED81l	   
PED81m	   
PED81n	   
PED81o	   
PED82a	   
PED82b	   
PED82c	   
PED82d	   
PED82e	   
PED84a	   
PED84b	   
PED84c	   
PED85a	   
PED85b	   
PED85c	   
PED85d	   
PED85e	   
PED85f	   
PED85g	   
PED85h	   
PED85i	   
PED87	   
PED88	   
PED89	   
PED90	   
PED91a	   
PED91b	   
PED5	   
PED6a	   
PED6b	   
PED6c	   
PED6d	   
PED6e	   
PED6f	   
PED7	   
PED8	   
PED9	   
PED10a	   
PED10b	   
PED10c	   
PED10d	   
PED10e	   
PED10f	   
PED10g	   
PED11	   
PED12	   
PED14_1	   
PED14_2	   
PED14_3	   
PED14_4	   
PED14_5	   
PED14_6	   
PED14_7	   
PED15a	   
PED15b	   
PED15c	   
PED16	   
/* PED20cSPEC	*/   
PED21	   
PED22	   
PED23	   
PED28	   
PED36	   
PED38_1	   
PED38_2	   
PED38_3	   
PED38_4	   
PED38_5	   
PED38_6	   
PED38_7	   
PED39a	   
PED39b	   
PED39c	   
PED40	   
/* PED44cSPEC */	   
PED45	   
PED46	   
PED47	   
	   
PED50
PED51a
PED51b
PED51c
PED51d
PED51e
PED51f
PED52
PED53
PED54
PED55a
PED55b
PED55c
PED55d
PED55e
PED55f
PED55g
PED55h
PED55i
PED55j
PED56
PED57
PED59_1
PED59_2
PED59_3
PED59_4
PED59_5
PED59_6
PED59_7
PED60a	   
PED60b	   
PED60c	   
PED61	   
/* PED65cSPEC	*/   
PED66	   
PED67	   
PED68	   
PED92	   
PED93	   
PED94	   
PED95_1	   
PED95_2	   
PED95_3	   
PED95_4	   
PED95_5	   
/* PED95_5SPEC */	   
PED96	   
PED97_1	   
PED97_2	   
PED97_3	   
PED97_4	   
PED97_5	   
/* PED97_5SPEC */	   
PED98	   
PED99_1	   
PED99_2	   
PED99_3	   
PED99_4	   
PED99_5	   
PED29
PED30a
PED30b
PED30c
PED30d
PED30e
PED30f
PED31
PED32
PED33
PED34a
PED34b
PED34c
PED34d
PED34e
PED34f
PED34g
PED34h
PED34i
PED34j
PED35
   
YESNO.
	 
PED13
PED17a	   
PED17b	   
PED18	   
PED19
PED20a	   
PED20b	   
PED20c
PED25	   
PED27
PED37
PED41a	   
PED41b	   
PED42	   
PED43	   
PED44a	   
PED44b	   
PED44c
PED49
PED58
PED62a	   
PED62b	     
PED63	   
PED64	   
PED65a	   
PED65b	   
PED65c
PED70
REQUIRE.

PED24
PED24F.

PED26
PED26F.	 

PED69
PED69F.

PED80a	   
PED80b	   
PED80c	   
PED80d	   
PED80e
PED80F.

PED83a	   
PED83b	   
PED83c	   
PED83d
YESNONA.

PED48
PED48F.

PED86
PED86F.

PED100a	   
PED100b	   
PED100c
PED100F.

SAMPSTRA
SAMPSTRAFD.
;	   
***********************************
*  Assign labels to SAS variables.*
***********************************;
label
STCMSID	=	'STCMSID - State CMS ID'
STATENAME	=	'STATENAME - State Name'
DISTCMSID	=	'DISTCMSID - District CMS ID'
DISTWT	=	'DISTWT - Analysis Weight for District'
PSU	=	'PSU - Sampled Primary Sampling Unit'
SAMPSTRA	=	'SAMPSTRA - Stratum 1-Urbanicity and Poverty'
CTYPEM1	=	'CTYPEM1 - Web - Paper Complete Module1'
CTYPEM2	=	'CTYPEM2 - Web - Paper Complete Module2'
CTYPEM3	=	'CTYPEM3 - Web - Paper Complete Module3'
CTYPEM4	=	'CTYPEM4 - Web - Paper Complete Module4'
CTYPEM5	=	'CTYPEM5 - Web - Paper Complete Module5'
RTITLE1	=	'RTITLE1 - RESPONDENT TITLE MODULE1'
RTITLE2	=	'RTITLE2 - RESPONDENT TITLE MODULE2'
RTITLE3	=	'RTITLE3 - RESPONDENT TITLE MODULE3'
RTITLE4	=	'RTITLE4 - RESPONDENT TITLE MODULE4'
RTITLE5	=	'RTITLE5 - RESPONDENT TITLE MODULE5'
PED1	=	'PED1 - Dist adopt PE stds'
PED2	=	'PED2 - Dist encourage PE stds'
PED3	=	'PED3 - PE stds based on NSPE from NASPE'
PED4	=	'PED4 - Assess student achieve of PE stds'
PED71a	=	'PED71a - Prov adapted PE for students w disab'
PED71b	=	'PED71b - Mainstreaming for students w disab'
PED71c	=	'PED71c - Modified equip/facilities for students w disab'
PED71d	=	'PED71d - Teaching assistants for students w disab'
PED71e	=	'PED71e - PE in 504s or IEPs for students w disab'
PED71f	=	'PED71f - Modified instr strategies for students w disab'
PED71g	=	'PED71g - Modified assessment for students w disab'
PED72a	=	'PED72a - Protective gear - During PE'
PED72b	=	'PED72b - Protective gear - During PA clubs/intramurals'
PED72c	=	'PED72c - Protective gear - During intersch sports'
PED73	=	'PED73 - Prohib/discour PA as punishment - Bad behav in PE'
PED74	=	'PED74 - Prohib/discour PA as punishment - Poor performance/bad behav in intersch sports'
PED75	=	'PED75 - Prohib/discour excl as punishment - Bad behav/failure to complete work '
PED76	=	'PED76 - Prohib/discour excl as punishment - Bad behav in PE'
PED77	=	'PED77 - PE teach req to earn cont ed credits'
PED78	=	'PED78 - Each school has PE coord '
PED79a	=	'PED79a - Prof dev - Methods increased MVPA'
PED79b	=	'PED79b - Prof dev - Gender equity'
PED79c	=	'PED79c - Prof dev - Using technology'
PED79d	=	'PED79d - Prof dev - Using monitoring devices'
PED79e	=	'PED79e - Prof dev - Family involvement'
PED79f	=	'PED79f - Prof dev - Fitness tests'
PED79g	=	'PED79g - Prof dev - Individual PA plan'
PED79h	=	'PED79h - Prof dev - Injury prev'
PED79i	=	'PED79i - Prof dev - Concussions'
PED79j	=	'PED79j - Prof dev - PE for long-term disabilities'
PED79k	=	'PED79k - Prof dev - Individual/paired sports'
PED79l	=	'PED79l - Prof dev - Team/group sports'
PED79m	=	'PED79m - Prof dev - Movement skills/concepts'
PED79n	=	'PED79n - Prof dev - Eval student performance'
PED79o	=	'PED79o - Prof dev - Student portfolios'
PED79p	=	'PED79p - Prof dev - Promote inclusion'
PED79q	=	'PED79q - Prof dev - Chronic hlth conditions'
PED79r	=	'PED79r - Prof dev - PA clubs/intramural sport prog'
PED79s	=	'PED79s - Prof dev - School PA prog'
PED79t	=	'PED79t - Prof dev - Walk/bike prog'
PED79u	=	'PED79u - Prof dev - Assess weight status'
PED79v	=	'PED79v - Prof dev - PE stds to curric'
PED79w	=	'PED79w - Prof dev - Online/distance education'
PED79x	=	'PED79x - Prof dev - PECAT'
PED79y	=	'PED79y - Prof dev - Data to plan PE'
PED79z	=	'PED79z - Prof dev - Teach use PA in class'
PED80a	=	'PED80a - Dist PE staff w HE staff'
PED80b	=	'PED80b - Dist PE staff w HS staff'
PED80c	=	'PED80c - Dist PE staff w MH/SS staff'
PED80d	=	'PED80d - Dist PE staff w Nutr staff'
PED80e	=	'PED80e - Dist PE staff w curric coord/supervisors'
PED81a	=	'PED81a - Dist PE staff w AFHG'
PED81b	=	'PED81b - Dist PE staff w hlth org'
PED81c	=	'PED81c - Dist PE staff w hlth dept'
PED81d	=	'PED81d - Dist PE staff w MH/SS agency'
PED81e	=	'PED81e - Dist PE staff w college/university'
PED81f	=	'PED81f - Dist PE staff w business'
PED81g	=	'PED81g - Dist PE staff w AFHK'
PED81h	=	'PED81h - Dist PE staff w parks and rec dept'
PED81i	=	'PED81i - Dist PE staff w DOT or public works'
PED81j	=	'PED81j - Dist PE staff w prof sports team'
PED81k	=	'PED81k - Dist PE staff w hosp'
PED81l	=	'PED81l - Dist PE staff w law enforcement agency'
PED81m	=	'PED81m - Dist PE staff w service club'
PED81n	=	'PED81n - Dist PE staff w youth org'
PED81o	=	'PED81o - Dist PE staff w hlth/fitness club'
PED82a	=	'PED82a - Dist prov families w info on school PE'
PED82b	=	'PED82b - Dist prov families w info on PA'
PED82c	=	'PED82c - Dist prov dist/school personnel w info on school PE'
PED82d	=	'PED82d - Dist sought positive media attention for school PE'
PED82e	=	'PED82e - Dist prov awards for PA prog'
PED83a	=	'PED83a - Dist eval - PE pol'
PED83b	=	'PED83b - Dist eval - PE curricula'
PED83c	=	'PED83c - Dist eval - PE prof dev'
PED83d	=	'PED83d - Dist eval - PE teach'
PED84a	=	'PED84a - Dist req report - PE minutes req'
PED84b	=	'PED84b - Dist req report - Minutes ES recess'
PED84c	=	'PED84c - Dist req report - Minutes classroom PA breaks'
PED85a	=	'PED85a - Head coaches will - Have prev exp coaching any sport'
PED85b	=	'PED85b - Head coaches will - Have prev exp coaching sport they will coach'
PED85c	=	'PED85c - Head coaches will - Have teaching cert'
PED85d	=	'PED85d - Head coaches will - Complete training course'
PED85e	=	'PED85e - Head coaches will - Complete sports safety course'
PED85f	=	'PED85f - Head coaches will - Be certified in first aid'
PED85g	=	'PED85g - Head coaches will - Be certified in CPR'
PED85h	=	'PED85h - Head coaches will - Have concussion training'
PED85i	=	'PED85i - Head coaches will - Be employ by school/dist'
PED86	=	'PED86 - Asst coaches will - Complete training course'
PED87	=	'PED87 - Dist prof dev to coaches'
PED88	=	'PED88 - Remove concussed students'
PED89	=	'PED89 - Hlthcare provider clearance for concussed reentry'
PED90	=	'PED90 - Neurocognitive testing before sports partic'
PED91a	=	'PED91a - Dist prov ed materials on concussions'
PED91b	=	'PED91b - Dist prov ed sessions on concussions'
PED5	=	'PED5 - Dist stds for ES PE'
PED6a	=	'PED6a - ES PE stds - Motor skills/movement patterns'
PED6b	=	'PED6b - ES PE stds - Movement concepts/principles'
PED6c	=	'PED6c - ES PE stds - Reg partic in PA'
PED6d	=	'PED6d - ES PE stds - Achieve/maint fitness'
PED6e	=	'PED6e - ES PE stds - Resp personal/social behav'
PED6f	=	'PED6f - ES PE stds - Value PA'
PED7	=	'PED7 - ES teach PE'
PED8	=	'PED8 - ES PE time reqs'
PED9	=	'PED9 - ES PE exempt'
PED10a	=	'PED10a - ES PE exempt - Religious'
PED10b	=	'PED10b - ES PE exempt - Phys/medical disability'
PED10c	=	'PED10c - ES PE exempt - Cognitive disability'
PED10d	=	'PED10d - ES PE exempt - High fitness test scores'
PED10e	=	'PED10e - ES PE exempt - Partic in non-sports'
PED10f	=	'PED10f - ES PE exempt - Partic in cmty sports'
PED10g	=	'PED10g - ES PE exempt - Partic in cmty service'
PED11	=	'PED11 - Prohib ES PE exempt >1 grading period'
PED12	=	'PED12 - ES PE excused for instr time'
PED13	=	'PED13 - Req/rec ES PE curriculum'
PED14_1	=	'PED14_1 - ES PE curriculum develop - SEA'
PED14_2	=	'PED14_2 - ES PE curriculum develop - Other st agency'
PED14_3	=	'PED14_3 - ES PE curriculum develop - School dist'
PED14_4	=	'PED14_4 - ES PE curriculum develop - Commercial company'
PED14_5	=	'PED14_5 - ES PE curriculum develop - College or university'
PED14_6	=	'PED14_6 - ES PE curriculum develop - National/st hlth org'
PED14_7	=	'PED14_7 - ES PE curriculum develop - Other'
PED15a	=	'PED15a - Dist prov - List of rec ES PE curric'
PED15b	=	'PED15b - Dist prov - Lsn plans/lrning act for ES PE'
PED15c	=	'PED15c - Dist prov - Plans/tools assess/eval students in ES PE'
PED16	=	'PED16 - Dist uses PECAT to assess ES PE curric '
PED17a	=	'PED17a - Dist req/rec written tests for ES PE'
PED17b	=	'PED17b - Dist req/rec skill performance tests for ES PE'
PED18	=	'PED18 - Dist req/rec assess PA levels with logs/pedometers for ES PE'
PED19	=	"PED19 - Dist req/rec test ES students' fitness levels"
PED20a	=	'PED20a - Dist req/rec - Fitnessgram'
PED20b	=	"PED20b - Dist req/rec - Phys Fitness Test from President's Challenge"
PED20c	=	'PED20c - Dist req/rec - Any other fitness test '
PED20cSPEC	=	'PED20cSPEC - Dist req/rec - Specify'
PED21	=	'PED21 - ES req to submit fitness test results to st or dist'
PED22	=	'PED22 - Specifying max student-teach ratio for ES PE'
PED23	=	'PED23 - ES PE teach will have undergrad/grad in PE/related field'
PED24	=	'PED24 - ES PE teach will be cert/lic/endrs by st to teach PE'
PED25	=	'PED25 - Dist req/rec ES prov students with reg scheduled recess'
PED26	=	"PED26 - Minutes/day req/rec for ES students' recess"
PED27	=	'PED27 - Dist req/rec ES prov reg PA breaks during school day'
PED28	=	'PED28 - Dist prohib/discour ES excl students from recess as punishment'
PED29	=	'PED29 -  Dist stds for MS PE'
PED30a	=	'PED30a - MS PE stds - Motor skills/movement patterns'
PED30b	=	'PED30b - MS PE stds - Movement concepts/principles'
PED30c	=	'PED30c - MS PE stds - Reg partic in PA'
PED30d	=	'PED30d - MS PE stds - Achieve/maint fitness'
PED30e	=	'PED30e - MS PE stds - Responsible personal/social behav'
PED30f	=	'PED30f - MS PE stds - Value PA'
PED31	=	'PED31 - MS teach PE'
PED32	=	'PED32 - MS PE time reqs'
PED33	=	'PED33 - MS PE exempt'
PED34a	=	'PED34a - MS PE exempt - Religious'
PED34b	=	'PED34b - MS PE exempt - Phys/medical disability'
PED34c	=	'PED34c - MS PE exempt - Cognitive disability'
PED34d	=	'PED34d - MS PE exempt - High fitness test scores'
PED34e	=	'PED34e - MS PE exempt - Partic in non-sports'
PED34f	=	'PED34f - MS PE exempt - Partic in cmty sports'
PED34g	=	'PED34g - MS PE exempt - Partic in cmty service'
PED34h	=	'PED34h - MS PE exempt - Enrollment in other courses'
PED34i	=	'PED34i - MS PE exempt - Partic in school sports'
PED34j	=	'PED34j - MS PE exempt - Partic in voc training'
PED35	=	'PED35 - Prohib MS PE exempt >1 grading period'
PED36	=	'PED36 - MS PE excused for instr time'
PED37	=	'PED37 - Req/rec MS PE curriculum'
PED38_1	=	'PED38_1 - MS PE curriculum develop - SEA'
PED38_2	=	'PED38_2 - MS PE curriculum develop - Other st agency'
PED38_3	=	'PED38_3 - MS PE curriculum develop - School dist'
PED38_4	=	'PED38_4 - MS PE curriculum develop - Commercial company'
PED38_5	=	'PED38_5 - MS PE curriculum develop - College/university'
PED38_6	=	'PED38_6 - MS PE curriculum develop - National/st hlth org'
PED38_7	=	'PED38_7 - MS PE curriculum develop - Other'
PED39a	=	'PED39a - Dist prov - List of rec MS PE curricula'
PED39b	=	'PED39b - Dist prov - Lesson plans or lrning act for MS PE'
PED39c	=	'PED39c - Dist prov - Plans or tools assess or eval students in MS PE'
PED40	=	'PED40 - Dist uses PECAT to assess PE curric for MS'
PED41a	=	'PED41a - Dist req/rec written tests for MS PE'
PED41b	=	'PED41b - Dist req/rec skill performance tests for MS PE'
PED42	=	'PED42 - Dist req/rec assess PA levels with logs/pedometers for MS PE'
PED43	=	"PED43 - Dist req/rec test MS students' fitness levels"
PED44a	=	'PED44a - Dist req/rec - Fitnessgram'
PED44b	=	"PED44b - Dist req/rec - Phys Fitness Test from President's Challenge"
PED44c	=	'PED44c - Dist req/rec - Any other fitness test '
PED44cSPEC	=	'PED44cSPEC - Dist req/rec - Specify'
PED45	=	'PED45 - MS required to submit fitness test results to st or dist'
PED46	=	'PED46 - Specifying max student-teacher ratio for MS PE'
PED47	=	'PED47 - MS PE teach will have undergrad/grad training in PE/related field'
PED48	=	'PED48 - MS PE teach will be cert/lic/endrs by st to teach PE'
PED49	=	'PED49 - Dist req/rec MS prov reg PA breaks during school day'
PED50	=	'PED50 -  Dist stds for HS PE'
PED51a	=	'PED51a - HS PE stds - Motor skills/movement patterns'
PED51b	=	'PED51b - HS PE stds - Movement concepts/principles'
PED51c	=	'PED51c - HS PE stds - Reg partic in PA'
PED51d	=	'PED51d - HS PE stds - Achieve/maint fitness'
PED51e	=	'PED51e - HS PE stds - Responsible personal/soc behav'
PED51f	=	'PED51f - HS PE stds - Value PA'
PED52	=	'PED52 - HS teach PE'
PED53	=	'PED53 - HS PE time requirements'
PED54	=	'PED54 - HS PE exempt'
PED55a	=	'PED55a - HS PE exempt - Religious'
PED55b	=	'PED55b - HS PE exempt - Phys/medical disability'
PED55c	=	'PED55c - HS PE exempt - Cognitive disability'
PED55d	=	'PED55d - HS PE exempt - High fitness test scores'
PED55e	=	'PED55e -  HS PE exempt - Partic in non-sports'
PED55f	=	'PED55f - HS PE exempt - Partic in cmty sports'
PED55g	=	'PED55g - HS PE exempt - Partic in cmty service'
PED55h	=	'PED55h - HS PE exempt - Enrollment in other courses'
PED55i	=	'PED55i - HS PE exempt - Partic in school sports'
PED55j	=	'PED55j - HS PE exempt - Partic in voc training'
PED56	=	'PED56 - Prohib HS PE exempt >1 grading period'
PED57	=	'PED57 -  HS PE excused for instr time'
PED58	=	'PED58 - Req/rec HS PE curriculum'
PED59_1	=	'PED59_1 - HS PE curriculum develop - SEA'
PED59_2	=	'PED59_2 - HS PE curriculum develop - Other state agency'
PED59_3	=	'PED59_3 - HS PE curriculum develop - School dist'
PED59_4	=	'PED59_4 - HS PE curriculum develop - Commercial company'
PED59_5	=	'PED59_5 - HS PE curriculum develop - College or university'
PED59_6	=	"PED59_6 - HS PE curriculum develop - Nat'l/state hlth org"
PED59_7	=	'PED59_7 - HS PE curriculum develop - Other'
PED60a	=	'PED60a - Dist prov - List of rec HS PE curricula'
PED60b	=	'PED60b - Dist prov - Lsn plans or lrning act for HS PE'
PED60c	=	'PED60c - Dist prov - Plans or tools assess or eval students in HS PE'
PED61	=	'PED61 - Dist uses PECAT to assess PE curric for HS'
PED62a	=	'PED62a - Dist req/rec written tests for HS PE'
PED62b	=	'PED62b - Dist req/rec skill performance tests for HS PE'
PED63	=	'PED63 - Dist req/rec assess PA levels with logs/pedometers for HS PE'
PED64	=	"PED64 - Dist req/rec test HS students' fitness levels"
PED65a	=	'PED65a - Dist req/rec - Fitnessgram'
PED65b	=	"PED65b - Dist req/rec - Phys Fitness Test from President's Challenge"
PED65c	=	'PED65c - Dist req/rec - Any other fitness test '
PED65cSPEC	=	'PED65cSPEC - Specify'
PED66	=	'PED66 - HS required to submit fitness test results to state or dist'
PED67	=	'PED67 - Specifying max student-teach ratio for HS PE'
PED68	=	'PED68 - HS PE teach will have undergrad/grad training in PE/related field'
PED69	=	'PED69 - HS PE will be cert/lic/endrs by st to teach PE'
PED70	=	'PED70 - Dist req/rec HS prov reg PA breaks during school day'
PED92	=	'PED92 - Dist person oversee/coord PE'
PED93	=	'PED93 - R is person'
PED94	=	'PED94 - R has undergrad degree'
PED95_1	=	'PED95_1 - R major - PE'
PED95_2	=	'PED95_2 - R major - HE'
PED95_3	=	'PED95_3 - R major - Other ed'
PED95_4	=	'PED95_4 - R major - Kinesiology'
PED95_5	=	'PED95_5 - R major - Other (specify)'
PED95_5SPEC	=	'PED95_5 - R major - Specify'
PED96	=	'PED96 - R has undergrad minor'
PED97_1	=	'PED97_1 - R minor - PE'
PED97_2	=	'PED97_2 - R minor - HE'
PED97_3	=	'PED97_3 - R minor - Other ed'
PED97_4	=	'PED97_4 - R minor - Kinesiology'
PED97_5	=	'PED97_5 - R minor - Other (specify)'
PED97_5SPEC	=	'PED97_5 - R minor -Specify'
PED98	=	'PED98 - R has grad degree'
PED99_1	=	'PED99_1 - R grad degree - PE'
PED99_2	=	'PED99_2 - R grad degree - HE'
PED99_3	=	'PED99_3 - R grad degree - Other ed'
PED99_4	=	'PED99_4 - R grad degree - Kinesiology'
PED99_5	=	'PED99_5 - R grad degree - Other (specify)'
PED99_5SPEC	=	'PED99_5SPEC - R grad degree - Specify'
PED100a	=	'PED100a - R cert/lic ES PE'
PED100b	=	'PED100b - R cert/lic MS PE'
PED100c	=	'PED100c - R cert/lic HS PE';

run;
