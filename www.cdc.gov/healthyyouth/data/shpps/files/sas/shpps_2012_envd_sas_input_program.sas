
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
/*  "ENVD_SAS_Input_Program.sas" to create the 2012 SHPPS dataset.                      */
/****************************************************************************************/

filename datain 'c:\shpps2012\envd2012.dat';

libname dataout 'c:\shpps2012';

libname library 'c:\shpps2012';

data dataout.envd2012 ;
infile datain lrecl=2000;
missing A C F N M ;
input
STCMSID	1-2
STATENAME	$3-30
DISTCMSID	31-35
@47 DISTWT 12.7
PSU	  60-67
SAMPSTRA	72-72
CTYPEM1	$73-103
CTYPEM2	$104-134
CTYPEM3	$135-165
CTYPEM4	$166-196
RTITLE1	$197-263
RTITLE2	$264-330
RTITLE3	$331-400
RTITLE4	$401-471
END1	472-472
END2a	473-473
END2b	474-474
END2c	475-475
END2d	476-476
END3	477-477
END4	478-478
END5a	479-479
END5b	480-480
END5c	481-481
END6a	482-482
END6b	483-483
END6c	484-484
END7	485-485
END8	486-486
END9	487-487
END10	488-488
END11a	489-489
END11b	490-490
END11c	491-491
END11d	492-492
END12	493-493
END13	494-494
END14	495-495
END15a	496-496
END15b	497-497
END15c	498-498
END16a	499-499
END16b	500-500
END16c	501-501
END17	502-502
END18	503-503
END19	504-504
END20	505-505
END21a	506-506
END21b	507-507
END21c	508-508
END21d	509-509
END22	510-510
END23	511-511
END24	512-512
END25a	513-513
END25b	514-514
END25c	515-515
END26a	516-516
END26b	517-517
END26c	518-518
END27	519-519
END28	520-520
END29	521-521
END30	522-522
END31	523-523
END32	524-524
END33	525-525
END34a	526-526
END34b	527-527
END34c	528-528
END34d	529-529
END34e	530-530
END34f	531-531
END34g	532-532
END34h	533-533
END35a	534-534
END35b	535-535
END35c	536-536
END35d	537-537
END35e	538-538
END35f	539-539
END35g	540-540
END35gSPEC	$541-641
END36	642-642
END37	643-643
END38	644-644
END39	645-645
END40	646-646
END41	647-647
END42	648-648
END43a	649-649
END43b	650-650
END43c	651-651
END44	652-652
END45a	653-653
END45b	654-654
END45c	655-655
END45d	656-656
END46	657-657
END47	658-658
END48a	659-659
END48b	660-660
END48c	661-661
END48d	662-662
END49a	663-663
END49b	664-664
END49c	665-665
END49d	666-666
END50	667-667
END51	668-668
END52	669-669
END53a	670-670
END53b	671-671
END53c	672-672
END53d	673-673
END54	674-674
END55	675-675
END56a	676-676
END56b	677-677
END56c	678-678
END56d	679-679
END57	680-680
END58a	681-681
END58b	682-682
END58c	683-683
END58d	684-684
END59	685-685
END60	686-686
END61a	687-687
END61b	688-688
END61c	689-689
END61d	690-690
END62	691-691
END63a	692-692
END63b	693-693
END63c	694-694
END63d	695-695
END64a	696-696
END64b	697-697
END64c	698-698
END64d	699-699
END64e	700-700
END64f	701-701
END64g	702-702
END64h	703-703
END64i	704-704
END64j	705-705
END64k	706-706
END65a	707-707
END65b	708-708
END66	709-709
END67a	710-710
END67b	711-711
END67c	712-712
END67d	713-713
END67e	714-714
END67f	715-715
END67g	716-716
END67h	717-717
END67i	718-718
END67j	719-719
END68	720-720
END69	721-721
END70	722-722
END71a	723-723
END71b	724-724
END71c	725-725
END71d	726-726
END71e	727-727
END72a	728-728
END72b	729-729
END72c	730-730
END72d	731-731
END72e	732-732
END72f	733-733
END72g	734-734
END73	735-735
END74	736-736
END75	737-737
END76	738-738
END77	739-739
END78	740-740
END79a	741-741
END79b	742-742
END79c	743-743
END79d	744-744
END79e	745-745
END79f	746-746
END79g	747-747
END79h	748-748
END79i	749-749
END80	750-750
END81	751-751
END82	752-752
END83	753-753
END84	754-754
END85	755-755
END86	756-756
END87	757-757
END88a	758-758
END88b	759-759
END88c	760-760
END89	761-761
END90a	762-762
END90b	763-763
END90c	764-764
END91	765-765
END92	766-766
END93a	767-767
END93b	768-768
END93c	769-769
END94a	770-770
END94b	771-771
END94c	772-772
END94d	773-773
END94e	774-774
END94f	775-775
END94g	776-776
END94h	777-777
END94i	778-778
END94j	779-779
END95	780-780
END96	781-781
END97a	782-782
END97b	783-783
END97c	784-784
END97d	785-785
END97e	786-786
END97f	787-787
END97g	788-788
END97h	789-789
END97i	790-790
END97j	791-791
END97k	792-792
END97l	793-793
END97m	794-794
END98	795-795
END99a	796-796
END99b	797-797
END99c	798-798
END99d	799-799
END99e	800-800
END99f	801-801
END99g	802-802
END99h	803-803
END100a	804-804
END100b	805-805
END100c	806-806
END100d	807-807
END100e	808-808
END100f	809-809
END100g	810-810
END100h	811-811
END100i	812-812
END100j	813-813
END100k	814-814
END100l	815-815
END100m	816-816
END101a	817-817
END101b	818-818
END101c	819-819
END101d	820-820
END101e	821-821
END102a	822-822
END102b	823-823
END102c	824-824
END102d	825-825
END102e	826-826
END103a	827-827
END103b	828-828
END103c	829-829
END103d	830-830
END103e	831-831
END104	832-832
END105	833-833
END106	834-834
END107	835-835
END108a	836-836
END108b	837-837
END108c	838-838
END108d	839-839
END108e	840-840
END108f	841-841
END108g	842-842
END108h	843-843
END108i	844-844
END108j	845-845
END108k	846-846
END108l	847-847
END108m	848-848
END108n	849-849
END108o	850-850
END109	851-851
END110a	852-852
END110b	853-853
END110c	854-854
END110d	855-855
END110e	856-856
END110f	857-857
END110g	858-858
END110h	859-859
END110i	860-860
END110j	861-861
END110k	862-862
END110l	863-863
END110m	864-864
END110n	865-865
END110o	866-866
END110p	867-867
END111a	868-868
END111b	869-869
END111c	870-870
END112	871-871
END113a	872-872
END113b	873-873
END113c	874-874
END113d	875-875
END113e	876-876
END113f	877-877
END113g	878-878
END113h	879-879
END113i	880-880
END113j	881-881
END113k	882-882
END114	883-883
END115	884-884
END116	885-885
END117	886-886
END118	887-887
END119	888-888
END120a	889-889
END120b	890-890
END120c	891-891
END121	892-892
END122	893-893
END123	894-894
END124	895-895
END125	896-896
END126	897-897
END127	898-898
END128	899-899
END129	900-900
END130a	901-901
END130b	902-902
END131a	903-903
END131b	904-904
END131c	905-905
END131d	906-906
END131e	907-907
END131f	908-908
END131g	909-909
END131h	910-910
END131i	911-911
END131j	912-912
END131k	913-913
END131l	914-914
END131m	915-915
END131n	916-916
END131o	917-917
END131p	918-918
END131q	919-919
END132	920-920
END133a	921-921
END133b	922-922
END133c	923-923
END133d	924-924
END133e	925-925
END133f	926-926
END133g	927-927
END133h	928-928
END133i	929-929
END133j	930-930
END133k	931-931
END133l	932-932
END133m	933-933
END133n	934-934
END133o	935-935
END133p	936-936
END133q	937-937
END133r	938-938
END133s	939-939
END133t	940-940
END133u	941-941
END133v	942-942
END134a	943-943
END134b	944-944
END134c	945-945
END134d	946-946
END134e	947-947
END134f	948-948
END134g	949-949
END134h	950-950
END134i	951-951
END134j	952-952
END134k	953-953
END134l	954-954
END134m	955-955
END135a	956-956
END135b	957-957
END135c	958-958
END135d	959-959
END135e	960-960
END135f	961-961
END135g	962-962
END135h	963-963
END135i	964-964
END135j	965-965
END135k	966-966
END136a	967-967
END136b	968-968
END136c	969-969
END136d	970-970
END136e	971-971
END137	972-972
END138	973-973
END139	974-974
END140	975-975
END141	976-976
END142	977-977
END143	978-978
END144a	979-979
END144b	980-980
END144c	981-981
END144d	982-982
END144e	983-983
END144f	984-984
END144g	985-985
END144h	986-986
END145	987-1000
END146	1001-1001
END147_1	1002-1002
END147_2	1003-1003
END147_3	1004-1004
END147_4	1005-1005
END147_5	1006-1006
END147_6	1007-1007
END147_7	1008-1008
END147_8	1009-1009
END147_9	1010-1010
END147_10	1011-1011
END147_10SPEC	$1012-1112
END148	1113-1113
END149_1	1114-1114
END149_2	1115-1115
END149_3	1116-1116
END149_4	1117-1117
END149_5	1118-1118
END149_6	1119-1119
END149_7	1120-1120
END149_8	1121-1121
END149_9	1122-1122
END149_10	1123-1123
END149_10SPEC	$1124-1224
END150	1225-1225
END151_1	1226-1226
END151_2	1227-1227
END151_3	1228-1228
END151_4	1229-1229
END151_5	1230-1230
END151_6	1231-1231
END151_7	1232-1232
END151_8	1233-1233
END151_9	1234-1234
END151_10	1235-1235
END151_11	1236-1236
END151_11SPEC	$1237-1337
;

************************************
*  Assign formats to SAS variables.*
************************************;

format
END1
END2a
END2b
END2c
END2d
END3
END4
END5a
END5b
END5c
END6a
END6b
END6c
END7
END8
END10
END11a
END11b
END11c
END11d
END12
END13
END14
END15a
END15b
END15c
END16a
END16b
END16c
END17
END18
END20
END21a
END21b
END21c
END21d
END22
END23
END24
END25a
END25b
END25c
END26a
END26b
END26c
END27
END28
END30
END33
END34a
END34b
END34c
END34d
END34e
END34f
END34g
END34h
END35a
END35b
END35c
END35d
END35e
END35f
END35g
END36
END37
END38
END39
END40
END41
END42
END43a
END43b
END43c
END44
END45a
END45b
END45c
END45d
END46
END47
END48a
END48b
END48c
END48d
END49a
END49b
END49c
END49d
END50
END51
END52
END53a
END53b
END53c
END53d
END54
END55
END56a
END56b
END56c
END56d
END57
END58a
END58b
END58c
END58d
END59
END60
END61a
END61b
END61c
END61d
END62
END63a
END63b
END63c
END63d
END64a
END64b
END64c
END64d
END64e
END64f
END64g
END64h
END64i
END64j
END64k
END66
END67a
END67b
END67c
END67d
END67e
END67f
END67g
END67h
END67i
END67j
END68
END69
END70
END72a
END72b
END72c
END72d
END72e
END72f
END72g
END73
END79a
END79b
END79c
END79d
END79e
END79f
END79g
END79h
END79i
END80
END81
END82
END83
END84
END85
END86
END87
END88a
END88b
END88c
END89
END90b
END90c
END91
END92
END93a
END93b
END93c
END94a
END94b
END94c
END94d
END94e
END94f
END94g
END94h
END94i
END94j
END95
END96
END97a
END97b
END97c
END97d
END97e
END97f
END97g
END97h
END97i
END97j
END97k
END97l
END97m
END98
END101a

END101e
END102a
END102e
END103a
END103e
END105
END106
END107
END108a
END108b
END108c
END108d
END108e
END108f
END108g
END108h
END108i
END108j
END108k
END108l
END108m
END108n
END108o
END109
END110a
END110b
END110c
END110d
END110e
END110f
END110g
END110h
END110i
END110j
END110k
END110l
END110m
END110n
END110o
END110p
END111a
END111b
END111c
END112
END113a
END113b
END113c
END113d
END113e
END113g
END113h
END113i
END113k
END114
END116
END117
END118
END120a
END120b
END120c
END126
END127
END128
END129
END130a
END130b
END131a
END131b
END131c
END131d
END131e
END131f
END131g
END131h
END131i
END131j
END131k
END131l
END131m
END131n
END131o
END131p
END131q
END132
END133a
END133b
END133c
END133d
END133e
END133f
END133g
END133h
END133i
END133j
END133k
END133l
END133m
END133n
END133o
END133p
END133q
END133r
END133s
END133t
END133u
END133v
END134j
END134k
END134l
END134m
END135a
END135b
END135c
END135d
END135e
END135f
END135g
END135h
END135i
END135j
END135k
END136a
END136b
END136c
END136d
END136e
END138
END139
END142
END143
END144a
END144b
END144c
END144d
END144e
END144f
END146
END147_1
END147_2
END147_3
END147_4
END147_5
END147_6
END147_7
END147_8
END147_9
END147_10
END148
END149_1
END149_2
END149_3
END149_4
END149_5
END149_6
END149_7
END149_8
END149_9
END149_10
END150
END151_1
END151_2
END151_3
END151_4
END151_5
END151_6
END151_7
END151_8
END151_9
END151_10
END151_11
YESNO.

END9
END19
END29
ELEGTRN.

END31
END32
SUPTRAN.

END65a
END65b
END113f
END113j
END144g
END144h
YESNONA.

END71a
END71b
END71c
END71d
END71e
END71AE.

END74
END74AE.

END75
END75AE.

END76
END76AE.

END77
END77AE.

END78
END78AE.

END90a
END90A.

END99a
END99b
END99c
END99d
END99e
END99f
END99g
END99h
END100a
END100b
END100c
END100d
END100e
END100f
END100g
END100h
END100i
END100j
END100k
END100l
END100m
END99AH.

END101b
END102b
END103b
END102B.

END101C
END102c
END103c
END102C.

END101d
END102d
END103d
END102D.

END104
END104A.

END115
END115A.

END119
END121
END122
END123
END124
END125
END119A.


END134a
END134b
END134c
END134d
END134e
END134f
END134g
END134h
END134i
END134A.

END137
END137A.

END140
END140A.
END141
END141A.

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
RTITLE1	=	'RTITLE1 - RESPONDENT TITLE MODULE1'
RTITLE2	=	'RTITLE2 - RESPONDENT TITLE MODULE2'
RTITLE3	=	'RTITLE3 - RESPONDENT TITLE MODULE3'
RTITLE4	=	'RTITLE4 - RESPONDENT TITLE MODULE4'
END1	=	'END1 - ES - Closed campuses'
END2a	=	'END2a - ES - Monitor - School halls during classes'
END2b	=	'END2b - ES - Monitor - School halls between classes'
END2c	=	'END2c - ES - Monitor - Restrooms'
END2d	=	'END2d - ES - Monitor - School grounds'
END3	=	'END3 - ES - Students wear uniforms'
END4	=	'END4 - ES - Student dress code'
END5a	=	'END5a - ES - Students wear ID badges'
END5b	=	'END5b - ES - Fac/staff wear ID badges'
END5c	=	'END5c - ES - Visitors wear ID badges'
END6a	=	'END6a - ES - Use security cameras'
END6b	=	'END6b - ES - Use metal detectors'
END6c	=	'END6c - ES - Use communic devices for security'
END7	=	'END7 - ES - Students refrain from using personal communic devices'
END8	=	'END8 - ES - Use police/security guards during day'
END9	=	'END9 - Std distance for ES busing eligibility'
END10	=	'END10 - MS - Closed campuses'
END11a	=	'END11a - MS - Monitor - School halls during classes'
END11b	=	'END11b - MS - Monitor - School halls between classes'
END11c	=	'END11c - MS - Monitor - Restrooms'
END11d	=	'END11d - MS - Monitor - School grounds'
END12	=	'END12 - MS - Conduct locker searches'
END13	=	'END13 - MS - Students wear uniforms'
END14	=	'END14 - MS - Student dress code'
END15a	=	'END15a - MS - Students wear ID badges'
END15b	=	'END15b - MS - Fac/staff wear ID badges'
END15c	=	'END15c - MS - Visitors wear ID badges'
END16a	=	'END16a - MS - Use security cameras'
END16b	=	'END16b - MS - Use metal detectors'
END16c	=	'END16c - MS - Use communic devices for security'
END17	=	'END17 - MS - Students refrain from using personal communic devices'
END18	=	'END18 - MS - Use police/security guards during day'
END19	=	'END19 - Std distance for MS busing eligibility'
END20	=	'END20 - HS - Closed campuses'
END21a	=	'END21a - HS - Monitor - School halls during classes'
END21b	=	'END21b - HS - Monitor - School halls between classes'
END21c	=	'END21c - HS - Monitor - Restrooms'
END21d	=	'END21d - HS - Monitor - School grounds'
END22	=	'END22 - HS - Conduct locker searches'
END23	=	'END23 - HS - Students wear uniforms'
END24	=	'END24 - HS - Student dress code'
END25a	=	'END25a - HS - Students wear ID badges'
END25b	=	'END25b - HS - Fac/staff wear ID badges'
END25c	=	'END25c - HS - Visitors wear ID badges'
END26a	=	'END26a - HS - Use security cameras'
END26b	=	'END26b - HS - Use metal detectors'
END26c	=	'END26c - HS - Use communic devices for security'
END27	=	'END27 - HS - Students refrain from using personal communic devices'
END28	=	'END28 - HS - Use police/security guards during day'
END29	=	'END29 - Std distance for HS busing eligibility'
END30	=	'END30 - Promo walking/biking to/from school'
END31	=	'END31 - Promo use of public trans by students '
END32	=	'END32 - Promo use of public trans by fac/staff'
END33	=	'END33 - Dist has joint use agreement'
END34a	=	'END34a - Dist agree applies to - Indoor recreation/PA'
END34b	=	'END34b - Dist agree applies to - Outdoor recreation/PA'
END34c	=	'END34c - Dist agree applies to - Library services'
END34d	=	'END34d - Dist agree applies to - Preschool/infant child care prog'
END34e	=	'END34e - Dist agree applies to - Before/after-school prog'
END34f	=	'END34f - Dist agree applies to - Adult ed prog'
END34g	=	'END34g - Dist agree applies to - Hlthcare services'
END34h	=	'END34h - Dist agree applies to - Other activ/prog'
END35a	=	'END35a - Dist agree w Parks and recreation'
END35b	=	'END35b - Dist agree w Youth org'
END35c	=	'END35c - Dist agree w Faith-based org'
END35d	=	'END35d - Dist agree w Hlth club'
END35e	=	'END35e - Dist agree w Hlthcare facility'
END35f	=	'END35f - Dist agree w Library system'
END35g	=	'END35g - Dist agree w Other public/private entity '
END35gSPEC	=	'END35gSPEC - Specify'
END36	=	'END36 - Prohib gang activity'
END37	=	'END37 - Prohib bullying on school property'
END38	=	'END38 - Prohib bullying at off-campus events'
END39	=	'END39 - Prohib cyber-bullying on school property'
END40	=	'END40 - Prohib cyber-bullying at off-campus events'
END41	=	'END41 - Prohib cyber-bullying interfering with ed env'
END42	=	'END42 - Action plan for suicide risk'
END43a	=	"END43a - Suicide plan - Inform student's family"
END43b	=	'END43b - Suicide plan - Student ref to MH provider'
END43c	=	'END43c - Suicide plan - Document visit to MH provider '
END44	=	'END44 - Prohib cig smoking by students'
END45a	=	'END45a - Prohib cig smoking by students - School buildings'
END45b	=	'END45b - Prohib cig smoking by students - Outside on school grounds'
END45c	=	'END45c - Prohib cig smoking by students - School buses'
END45d	=	'END45d - Prohib cig smoking by students - Off-campus school-sponsored events'
END46	=	'END46 - Prohib cigar/pipe smoking by students'
END47	=	'END47 - Prohib smokeless tobacco use by students'
END48a	=	'END48a - Prohib smokeless tobacco use by students - School buildings'
END48b	=	'END48b - Prohib smokeless tobacco use by students - Outside on school grounds'
END48c	=	'END48c - Prohib smokeless tobacco use by students - School buses'
END48d	=	'END48d - Prohib smokeless tobacco use by students - Off-campus school-sponsored events'
END49a	=	'END49a - Prohib tobacco ads - School buildings'
END49b	=	'END49b - Prohib tobacco ads - Outside on school grounds'
END49c	=	'END49c - Prohib tobacco ads - School buses'
END49d	=	'END49d - Prohib tobacco ads - School publications'
END50	=	'END50 - Prohib students wearing tobacco brand apparel'
END51	=	'END51 - Prohib tobacco advertising through sponsorship'
END52	=	'END52 - Prohib cig smoking by fac/staff'
END53a	=	'END53a - Prohib cig smoking by fac/staff - School buildings'
END53b	=	'END53b - Prohib cig smoking by fac/staff - Outside on school grounds'
END53c	=	'END53c - Prohib cig smoking by fac/staff - School buses'
END53d	=	'END53d - Prohib cig smoking by fac/staff - Off-campus school-sponsored events'
END54	=	'END54 - Prohib cigar/pipe smoking by fac/staff'
END55	=	'END55 - Prohib smokeless tobacco use by fac/staff'
END56a	=	'END56a - Prohib smokeless tobacco use by fac/staff - School buildings'
END56b	=	'END56b - Prohib smokeless tobacco use by fac/staff - Outside on school grounds'
END56c	=	'END56c - Prohib smokeless tobacco use by fac/staff - School buses'
END56d	=	'END56d - Prohib smokeless tobacco use by fac/staff - Off-campus school-sponsored events'
END57	=	'END57 - Prohib cig smoking by visitors'
END58a	=	'END58a - Prohib cig smoking by school visitors - School buildings'
END58b	=	'END58b - Prohib cig smoking by school visitors - Outside on school grounds'
END58c	=	'END58c - Prohib cig smoking by school visitors - School buses'
END58d	=	'END58d - Prohib cig smoking by school visitors - Off-campus school-sponsored events'
END59	=	'END59 - Prohib cigar/pipe smoking by school visitors'
END60	=	'END60 - Prohib smokeless tobacco use by school visitors'
END61a	=	'END61a - Prohib smokeless tobacco use by school visitors - School buildings'
END61b	=	'END61b - Prohib smokeless tobacco use by school visitors - Outside on school grounds'
END61c	=	'END61c - Prohib smokeless tobacco use by school visitors - School buses'
END61d	=	'END61d - Prohib smokeless tobacco use by school visitors - Off-campus school-sponsored events'
END62	=	'END62 - Student drug testing'
END63a	=	'END63a - Student drug testing - Conducted randomly among members of specific groups'
END63b	=	'END63b - Student drug testing - Suspected of drug use'
END63c	=	'END63c - Student drug testing - Voluntary for all students or groups'
END63d	=	'END63d - Student drug testing - Any other criteria'
END64a	=	'END64a - Insp/maint - Playground facilities and equipment'
END64b	=	'END64b - Insp/maint - Indoor athletic facilities'
END64c	=	'END64c - Insp/maint - Outdoor athletic facilities'
END64d	=	'END64d - Insp/maint - Special classroom areas'
END64e	=	'END64e - Insp/maint - Other school areas'
END64f	=	'END64f - Insp/maint - Smoke alarms'
END64g	=	'END64g - Insp/maint - Fire extinguishers'
END64h	=	'END64h - Insp/maint - Sprinkler systems'
END64i	=	'END64i - Insp/maint - Lighting inside school buildings'
END64j	=	'END64j - Insp/maint - Lighting outside school buildings'
END64k	=	'END64k - Insp/maint - Automated external defibrillators'
END65a	=	'END65a - Protective gear - Wood shop/metal shop'
END65b	=	'END65b - Protective gear - Lab activ'
END66	=	'END66 - Hearing protection'
END67a	=	'END67a - Playground safety - Ratio of monitors to students'
END67b	=	'END67b - Playground safety - Criteria for monitor selection'
END67c	=	'END67c - Playground safety - Duties of playground monitors'
END67d	=	'END67d - Playground safety - Training for playground monitors'
END67e	=	'END67e - Playground safety - Discipline proc'
END67f	=	'END67f - Playground safety - Injury proc'
END67g	=	'END67g - Playground safety - Selection, placement, and installation of surfacing'
END67h	=	'END67h - Playground safety - Selection, placement, and installation of equipment'
END67i	=	'END67i - Playground safety - Rule posting'
END67j	=	'END67j - Playground safety - ID of person resp for enforcing pol'
END68	=	'END68 - Dist train - Playground monitors'
END69	=	'END69 - Schools req to use safety checklist '
END70	=	'END70 - Dist sued for injury occurring on school property'
END71a	=	'END71a - Dist req/rec - Schedule outdoor activ to avoid peak sun'
END71b	=	'END71b - Dist req/rec - Allow for sunscreen application'
END71c	=	'END71c - Dist req/rec - Encourage wearing protective clothing'
END71d	=	'END71d - Dist req/rec - Encourage hats/visors'
END71e	=	'END71e - Dist req/rec - Encourage wearing sunglasses'
END118	=	'END118 - Students req to partic in cmty service'
END119	=	'END119 - Dist req/rec schools prov service-learning opp'
END120a	=	'END120a - ES will partic in role model/mentor prog'
END120b	=	'END120b - MS will partic in role model/mentor prog'
END120c	=	'END120c - HS will partic in role model/mentor prog'
END121	=	'END121 - Dist  req/rec - Schools prohib ads for junk food/fast food '
END122	=	'END122 - Dist  req/rec - ES prohib student access to vending machines '
END123	=	'END123 - Dist  req/rec - MS prohib student access to vending machines '
END124	=	'END124 - Dist  req/rec - HS prohib student access to vending machines '
END125	=	'END125 - Dist req/rec - Schools restrict distrib of products promo junk food/fast food '
END126	=	'END126 - Dist allows schools to sell soft drinks '
END127	=	'END127 - Dist receives percentage of soft drink sales receipts'
END128	=	'END128 - Dist receives incentives once receipts total specified amount'
END129	=	'END129 - Dist prohib from selling soft drinks produced by more than one company'
END130a	=	'END130a - Soft drink companies allowed to advertise - In school buildings'
END130b	=	'END130b - Soft drink companies allowed to advertise - On school grounds'
END131a	=	'END131a - Prof dev - Classroom mgmt'
END131b	=	'END131b - Prof dev - Cyber-bullying prev'
END131c	=	'END131c - Prof dev - Other bullying prev'
END131d	=	'END131d - Prof dev - Dating violence prev'
END131e	=	'END131e - Prof dev - Other violence prev'
END131f	=	'END131f - Prof dev - Injury prev/safety'
END131g	=	'END131g - Prof dev - Sun safety'
END131h	=	'END131h - Prof dev - Tobacco use prev'
END131i	=	'END131i - Prof dev - Alcohol use prev'
END131j	=	'END131j - Prof dev -  Illegal drug use prev'
END131k	=	'END131k - Prof dev - Crisis prep/response/recovery'
END131l	=	'END131l - Prof dev - Indoor air qual'
END131m	=	'END131m - Prof dev - Drinking water qual'
END131n	=	'END131n - Prof dev - Integrated pest mgmt'
END131o	=	'END131o - Prof dev - Green cleaning products and practices'
END131p	=	'END131p - Prof dev - Radon testing'
END131q	=	'END131q - Prof dev - FSHP'
END132	=	'END132 - Dist-level school hlth group'
END133a	=	'END133a - Groups address - Tobacco use prev'
END133b	=	'END133b - Groups address - Alcohol/other drug use prev'
END133c	=	'END133c - Groups address - Food service/nutr'
END133d	=	'END133d - Groups address - PE/PA'
END133e	=	'END133e - Groups address - Preg prev'
END133f	=	'END133f - Groups address - HIV prev'
END133g	=	'END133g - Groups address - STD prev'
END133h	=	'END133h - Groups address - Violence prev'
END133i	=	'END133i - Groups address - Injury prev/safety'
END133j	=	'END133j - Groups address - HE'
END133k	=	'END133k - Groups address - HSV'
END133l	=	'END133l - Groups address - MH/SS'
END133m	=	'END133m - Groups address - Psych/soc env'
END133n	=	'END133n - Groups address - FSHP'
END133o	=	'END133o - Groups address - Family/cmty involv'
END133p	=	'END133p - Groups address -Phys school env'
END133q	=	'END133q - Groups address - Crisis prep/response/recovery'
END133r	=	'END133r - Groups address - Chronic hlth condition mgmt'
END133s	=	'END133s - Groups address - Infectious disease mgmt'
END133t	=	'END133t - Groups address - Foodborne illness mgmt'
END133u	=	'END133u - Groups address - Food allergy mgmt'
END133v	=	'END133v - Groups address - Local wellness pol'
END134a	=	'END134a - Groups incl - HE teach'
END134b	=	'END134b - Groups incl - PE teach'
END134c	=	'END134c - Groups incl - HSV staff'
END134d	=	'END134d - Groups incl - Nutr staff'
END134e	=	'END134e - Groups incl - MH/SS staff'
END134f	=	'END134f - Groups incl - Maint staff'
END134g	=	'END134g - Groups incl - Transportation staff'
END134h	=	'END134h - Groups incl - Technology staff'
END134i	=	'END134i - Groups incl - Library or media center staff'
END134j	=	'END134j - Groups incl - Dist admin'
END134k	=	'END134k - Groups incl - School-level admin'
END134l	=	'END134l - Groups incl - Students'
END134m	=	"END134m - Groups incl - Students' parents or families"
END135a	=	'END135a - Groups incl - Hlth dept'
END135b	=	'END135b - Groups incl - MH/SS agencies'
END135c	=	'END135c - Groups incl - Hlthcare providers'
END135d	=	'END135d - Groups incl - Hlth orgs'
END135e	=	'END135e - Groups incl - Youth orgs'
END135f	=	'END135f - Groups incl - Businesses'
END135g	=	'END135g - Groups incl - Hosp'
END135h	=	'END135h - Groups incl - Service clubs'
END135i	=	'END135i - Groups incl - Public safety agencies'
END135j	=	'END135j - Groups incl - Faith-based orgs'
END135k	=	'END135k - Groups incl - Other local govt agencies'
END136a	=	'END136a - Groups - ID student hlth needs '
END136b	=	'END136b - Groups - Rec new/revised pol/activ'
END136c	=	'END136c - Groups - Seek funding'
END136d	=	'END136d - Groups - Review curric'
END136e	=	'END136e - Groups - Communic importance of hlth and safety pol/activ '
END137	=	'END137 - How often group met'
END138	=	'END138 - Dist prov funding  - Establ group '
END139	=	'END139 - Dist used self-assessment tools'
END140	=	'END140 - Dist school improvement plan includes hlth and safety obj'
END141	=	'END141 - Dist req schools include hlth and safety obj in written SIP'
END72a	=	'END72a - Periodic insp - Condensation '
END72b	=	'END72b - Periodic insp - Building foundation/walls/roof '
END72c	=	'END72c - Periodic insp - Mold'
END72d	=	'END72d - Periodic insp - Plumbing system'
END72e	=	'END72e - Periodic insp - HVAC system'
END72f	=	'END72f - Periodic insp - Test drinking water for lead'
END72g	=	'END72g - Periodic insp - Clutter preventing cleaning/maint'
END73	=	'END73 - Schools have main instr building constructed before 1980'
END74	=	'END74 - Insp for lead paint'
END75	=	'END75 - Insp for PCBs in caulking'
END76	=	'END76 - Insp for PCBs in fluorescent light ballasts'
END77	=	'END77 - How often pest insp'
END78	=	'END78 - How often notification prior to pesticides'
END79a	=	'END79a - Dist req - Seal openings'
END79b	=	'END79b - Dist req - Keep vegetation at least 1 foot from buildings'
END79c	=	'END79c - Dist req - Allow eating only in designated areas'
END79d	=	'END79d - Dist req - Store waste in plastic/glass/metal containers w lids'
END79e	=	'END79e - Dist req - Repair cracks in pavements/sidewalks'
END79f	=	'END79f - Dist req - Remove infested/diseased plants'
END79g	=	'END79g - Dist req - Use spot Tx rather than widespread pesticides'
END79h	=	'END79h - Dist req - Mark indoor/outdoor areas treated with pesticides'
END79i	=	'END79i - Dist req - Store food in plastic/glass/metal containers with lids'
END80	=	'END80 - Dist uses outside company for pest mgmt'
END81	=	'END81 - Pest mgmt company 3rd party certified'
END82	=	'END82 - Addressing mold prob'
END83	=	'END83  - Respond to moisture within 48 hours'
END84	=	'END84 - Dist IAQ mgmt prog'
END85	=	'END85 - Dist IAQ mgmt prog based on EPA IAQ Tools for Schools'
END86	=	'END86 - Radon testing'
END87	=	'END87 - Schools have school-operated water system'
END88a	=	'END88a - Req test water for bacteria'
END88b	=	'END88b - Req test water for coliforms'
END88c	=	'END88c - Req test water for other contaminants'
END89	=	'END89 -  Req flush drinking water outlets'
END90a	=	'END90a - Dist engine idling prog - School buses'
END90b	=	'END90b - Dist engine idling prog - Commercial vehicles'
END90c	=	'END90c - Dist engine idling prog - Personal vehicles'
END91	=	'END91 - Dist prov bus drivers training for engine idling prog'
END92	=	'END92 - Purchase low-emitting products'
END93a	=	'END93a - Dist approval req - Cleaning/maint products'
END93b	=	'END93b - Dist approval req - Pesticides'
END93c	=	'END93c - Dist approval req - Chemicals'
END94a	=	'END94a - Training - Use of hazardous materials'
END94b	=	'END94b - Training - Labeling of hazardous materials'
END94c	=	'END94c - Training - Storage of hazardous materials'
END94d	=	'END94d - Training - Disposal of hazardous materials'
END94e	=	'END94e - Training - Reduc use of hazardous materials'
END94f	=	'END94f - Training - Addressing mold prob'
END94g	=	'END94g - Training - Indoor air qual'
END94h	=	'END94h - Training - Drinking water qual'
END94i	=	'END94i - Training - Pest mgmt pract limiting use of pesticides'
END94j	=	'END94j - Training - Green cleaning products/pract'
END95	=	'END95 - Green building design'
END96	=	'END96 - Dist req use of 3rd party cert'
END97a	=	'END97a - Natural light'
END97b	=	'END97b - Energy efficient lighting/electrical'
END97c	=	'END97c - Renewable energy'
END97d	=	'END97d - Conservation of water'
END97e	=	'END97e - Impl of recycling prog'
END97f	=	'END97f - Orienting buildings'
END97g	=	'END97g - Native landscaping'
END97h	=	'END97h - Alternative transportation'
END97i	=	'END97i - System for managing arrivals/departures '
END97j	=	'END97j - Preservation of green space'
END97k	=	'END97k - Use of low-/no-VOC building materials'
END97l	=	'END97l - Proc/systems to protect IAQ'
END97m	=	'END97m - Radon resistant new construction pract'
END98	=	'END98 - Dist initiated construction of school facility on new site'
END99a	=	'END99a - Influential factors - Accommodate population growth'
END99b	=	'END99b - Influential factors - School consolidation pol'
END99c	=	'END99c - Influential factors - Support current/future ed prog'
END99d	=	'END99d - Influential factors - Ease of obtaining funding '
END99e	=	'END99e - Influential factors - Ease of obtaining approvals'
END99f	=	'END99f - Influential factors - Cost of repairing existing facility'
END99g	=	'END99g - Influential factors - Desire to have more energy-efficient facility'
END99h	=	'END99h - Influential factors - Desire to accommodate cmty use of facility'
END100a	=	"END100a - Influential factors where - Local govt officials' input"
END100b	=	'END100b - Influential factors where - Need for athletic facilities'
END100c	=	'END100c - Influential factors where - Need for parking'
END100d	=	'END100d - Influential factors where - Avail/design of existing roads/infrastructure'
END100e	=	'END100e - Influential factors where - Land prices'
END100f	=	'END100f - Influential factors where - Site donated'
END100g	=	'END100g - Influential factors where - Site already owned'
END100h	=	'END100h - Influential factors where - Ability to walk/bike to/from school'
END100i	=	'END100i - Influential factors where - Demographics'
END100j	=	'END100j - Influential factors where - Compatibility with local growth plan'
END100k	=	'END100k - Influential factors where - Env concerns'
END100l	=	'END100l - Influential factors where - Potential clean up costs'
END100m	=	'END100m - Influential factors where - Desire to accommodate cmty use of facility'
END101a	=	'END101a - Require input - Public'
END101b	=	'END101b - Require input - Local govt transportation officials'
END101c	=	'END101c - Require input - Local govt land use or cmty planning officials'
END101d	=	'END101d - Require input - Public hlth/env hlth officials'
END101e	=	'END101e - Require input - St govt officials'
END102a	=	'END102a - Require input where - Public'
END102b	=	'END102b - Require input where - Local govt transportation officials'
END102c	=	'END102c - Require input where - Local govt land use or cmty planning officials'
END102d	=	'END102d - Require input where - Public hlth/env hlth officials'
END102e	=	'END102e - Require input where - St govt officials'
END103a	=	'END103a - Require input env review - Public'
END103b	=	'END103b - Require input env review - Local govt transportation officials'
END103c	=	'END103c - Require input env review - Local govt land use/cmty planning officials'
END103d	=	'END103d - Require input env review - Public hlth/env hlth officials'
END103e	=	'END103e - Require input env review - St govt officials'
END104	=	'END104 - Phase I env site assessments'
END105	=	'END105 - New hires trained in phys env issues'
END106	=	'END106 - Dist used materials from US DOE for crisis prep'
END107	=	'END107 - Dist has comp plan to address crisis prep'
END108a	=	'END108a - Dist crisis plan - Evac protocols for crises involv >1 school'
END108b	=	'END108b - Dist crisis plan - Protocols for communic with building-level mgr'
END108c	=	'END108c - Dist crisis plan - Plans for supplies for shelter-in-place'
END108d	=	'END108d - Dist crisis plan - Reqs to conduct dist-level drills '
END108e	=	'END108e - Dist crisis plan - Plans for training school staff'
END108f	=	'END108f - Dist crisis plan - Plans for serving as cmty shelter'
END108g	=	'END108g - Dist crisis plan - Plans to resume normal activ'
END108h	=	'END108h - Dist crisis plan - Mechanisms for eval outside offers'
END108i	=	'END108i - Dist crisis plan - Provision of MH/SS for students/fac/staff'
END108j	=	'END108j - Dist crisis plan - Establ of incident command system'
END108k	=	'END108k - Dist crisis plan - Mechanisms for communic with school personnel'
END108l	=	'END108l - Dist crisis plan - Proc for responding to media inquiries'
END108m	=	'END108m - Dist crisis plan - Reqs to review/revise emerg response plans'
END108n	=	'END108n - Dist crisis plan - Proc for responding to outbreaks'
END108o	=	'END108o - Dist crisis plan - Proc for impl unplanned school dismissal or closure'
END109	=	'END109 - Req comp plan to address crisis prep/response/recovery'
END110a	=	'END110a - School plan includes - Evacuation plans'
END110b	=	'END110b - School plan includes - Lock down plans'
END110c	=	'END110c - School plan includes - Proc to control exterior of building'
END110d	=	'END110d - School plan includes - Seek immediate shelter during chemical/biological emerg'
END110e	=	'END110e - School plan includes - Conduct reg emerg drills'
END110f	=	'END110f - School plan includes - Family reunification proc'
END110g	=	'END110g - School plan includes - Provisions for students and staff with special needs'
END110h	=	'END110h - School plan includes - Plans to resume normal activ'
END110i	=	'END110i - School plan includes - Provision of MH/SS for students, fac, and staff'
END110j	=	'END110j - School plan includes - Mechanisms for communic with school personnel'
END110k	=	'END110k - School plan includes - Establ of an incident command system'
END110l	=	'END110l - School plan includes - Proc for responding to media inquiries'
END110m	=	"END110m - School plan includes - Mechanisms for communic the plan to students' families"
END110n	=	'END110n - School plan includes - Reqs to review/revise emerg response plans'
END110o	=	'END110o - School plan includes - Proc for responding to pandemic flu or other infectious disease outbreaks'
END110p	=	'END110p - School plan includes - Proc for impl unplanned school dismissal or closure'
END111a	=	'END111a - Dist prov training - School fac/staff'
END111b	=	'END111b - Dist prov training - Students'
END111c	=	"END111c - Dist prov training - Students' families"
END112	=	"END112 - Dist off ed on crisis prep to students' families"
END113a	=	'END113a - Dist dev plan w staff from schools'
END113b	=	'END113b - Dist dev plan w students or their families'
END113c	=	'END113c - Dist dev plan w fire dept'
END113d	=	'END113d - Dist dev plan w law enforcement agency'
END113e	=	'END113e - Dist dev plan w emerg medical services'
END113f	=	'END113f - Dist dev plan w Public transportation dept'
END113g	=	'END113g - Dist dev plan w hlth dept'
END113h	=	'END113h - Dist dev plan w MH/SS agency'
END113i	=	'END113i - Dist dev plan w hosp'
END113j	=	'END113j - Dist dev plan w homeland security office or emerg mgmt agency'
END113k	=	'END113k - Dist dev plan w other cmty members'
END114	=	'END114 - Dist crisis plan eval or assessed'
END115	=	'END115 - Dist member of local emerg planning comm'
END116	=	'END116 - Schools in dist serve as staging areas/shelters'
END117	=	'END117 - Schools must have NOAA weather radio'
END142	=	'END142 - Dist person oversee/coord school hlth/safety pol/activ'
END143	=	'END143 - R is person'
END144a	=	'END144a - Coordinator - Develop hlth/safety pol'
END144b	=	'END144b - Coordinator - Securing funding '
END144c	=	'END144c - Coordinator - Communic priorities'
END144d	=	'END144d - Coordinator - Linking cmty-based hlth-related resources'
END144e	=	'END144e - Coordinator -  Facilitating collaboration'
END144f	=	'END144f - Coordinator - Liaison between dist office/overseers'
END144g	=	'END144g - Coordinator - Convening meetings '
END144h	=	'END144h - Coordinator - Coordinating prof dev'
END145	=	'END145 - Years responsible for coordinating'
END146	=	'END146 - R has undergrad degree'
END147_1	=	'END147_1 - R major - HE'
END147_2	=	'END147_2 - R major - PE'
END147_3	=	'END147_3 - R major - Other ed'
END147_4	=	'END147_4 - R major - Kinesiology'
END147_5	=	'END147_5 - R major - Nursing'
END147_6	=	'END147_6 - R major - Nutr'
END147_7	=	'END147_7 - R major - Public Hlth'
END147_8	=	'END147_8 - R major - Biology or other science'
END147_9	=	'END147_9 - R major - Home economics or family and consumer science'
END147_10	=	'END147_10 - R major - Other (Specify)'
END147_10SPEC	=	'END147_10SPEC - R major - Specify'
END148	=	'END148 - R has undergrad minor'
END149_1	=	'END149_1 - R minor - HE'
END149_2	=	'END149_2 - R minor - PE'
END149_3	=	'END149_3 - R minor - Other ed'
END149_4	=	'END149_4 - R minor - Kinesiology'
END149_5	=	'END149_5 - R minor - Nursing'
END149_6	=	'END149_6 - R minor - Nutr'
END149_7	=	'END149_7 - R minor - Public Hlth'
END149_8	=	'END149_8 - R minor - Biology or other science'
END149_9	=	'END149_9 - R minor - Home economics or family and consumer science'
END149_10	=	'END149_10 - R minor - Other (Specify)'
END149_10SPEC	=	'END149_10SPEC - R minor - Specify'
END150	=	'END150 - R has grad degree'
END151_1	=	'END151_1 - R grad degree - HE'
END151_2	=	'END151_2 - R grad degree - PE'
END151_3	=	'END151_3 - R grad degree - Ed admin'
END151_4	=	'END151_4 - R grad degree - Other ed'
END151_5	=	'END151_5 - R grad degree - Kinesiology'
END151_6	=	'END151_6 - R grad degree - Nursing'
END151_7	=	'END151_7 - R grad degree - Nutr'
END151_8	=	'END151_8 - R grad degree - Public Hlth'
END151_9	=	'END151_9 - R grad degree - Biology or other science'
END151_10	=	'END151_10 - R grad degree - Home economics or family and consumer science'
END151_11	=	'END151_11 - R grad degree - Other (Specify)'
END151_11SPEC	=	'END151_11SPEC - R grad degree - Specify'
;
run;
