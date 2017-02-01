
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
/*  "HLTHEDD_SAS_Input_Program.sas" to create the 2012 SHPPS dataset.                   */
/****************************************************************************************/

filename datain 'c:\shpps2012\hlthedd2012.dat';

libname dataout 'c:\shpps2012';

libname library 'c:\shpps2012';

data dataout.hlthedd2012 ;
infile datain lrecl=2000;
missing A C F N M;
input
STCMSID	1-2
STATENAME	$3-30
DISTCMSID	31-35
@47 DISTWT 12.7
PSU	    61-71
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
HED1	583-583
HED2	584-584
HED3	585-585
HED4	586-586
HED5a	587-587
HED5b	588-588
HED5c	589-589
HED5d	590-590
HED5e	591-591
HED5f	592-592
HED5g	593-593
HED5h	594-594
HED6a	595-595
HED6b	596-596
HED6c	597-597
HED6d	598-598
HED6e	599-599
HED6f	600-600
HED6g	601-601
HED6h	602-602
HED6i	603-603
HED6j	604-604
HED6k	605-605
HED6l	606-606
HED6m	607-607
HED6n	608-608
HED6o	609-609
HED7	610-610
HED8	611-611
HED9a	612-612
HED9b	613-613
HED9c	614-614
HED9d	615-615
HED10	616-616
HED11	617-617
HED12	618-618
HED13	619-619
HED14	620-620
HED15a	621-621
HED15b	622-622
HED15c	623-623
HED15d	624-624
HED15e	625-625
HED15f	626-626
HED15g	627-627
HED15h	628-628
HED16a	629-629
HED16b	630-630
HED16c	631-631
HED16d	632-632
HED16e	633-633
HED16f	634-634
HED16g	635-635
HED16h	636-636
HED16i	637-637
HED16j	638-638
HED16k	639-639
HED16l	640-640
HED16m	641-641
HED16n	642-642
HED16o	643-643
HED17	644-644
HED18	645-645
HED19a	646-646
HED19b	647-647
HED19c	648-648
HED19d	649-649
HED20	650-650
HED21	651-651
HED22	652-652
HED23	653-653
HED24	654-654
HED25	655-655
HED26a	656-656
HED26b	657-657
HED26c	658-658
HED26d	659-659
HED26e	660-660
HED26f	661-661
HED26g	662-662
HED26h	663-663
HED27a	664-664
HED27b	665-665
HED27c	666-666
HED27d	667-667
HED27e	668-668
HED27f	669-669
HED27g	670-670
HED27h	671-671
HED27i	672-672
HED27j	673-673
HED27k	674-674
HED27l	675-675
HED27m	676-676
HED27n	677-677
HED27o	678-678
HED28	679-679
HED29	680-680
HED30a	681-681
HED30b	682-682
HED30c	683-683
HED30d	684-684
HED31	685-685
HED32	686-686
HED33	687-687
HED34	688-688
HED35	689-689
HED36	690-690
HED37	691-691
HED38a	692-692
HED38b	693-693
HED38c	694-694
HED38d	695-695
HED38e	696-696
HED38f	697-697
HED38g	698-698
HED38h	699-699
HED38i	700-700
HED38j	701-701
HED38k	702-702
HED38l	703-703
HED38m	704-704
HED38n	705-705
HED38o	706-706
HED39a	707-707
HED39b	708-708
HED39c	709-709
HED39d	710-710
HED39e	711-711
HED39f	712-712
HED39g	713-713
HED39h	714-714
HED39i	715-715
HED39j	716-716
HED39k	717-717
HED39l	718-718
HED39m	719-719
HED39n	720-720
HED39o	721-721
HED40a	722-722
HED40b	723-723
HED40c	724-724
HED40d	725-725
HED40e	726-726
HED41a	727-727
HED41b	728-728
HED41c	729-729
HED41d	730-730
HED41e	731-731
HED41f	732-732
HED41g	733-733
HED41h	734-734
HED41i	735-735
HED41j	736-736
HED41k	737-737
HED41l	738-738
HED41m	739-739
HED42a	740-740
HED42b	741-741
HED42c	742-742
HED42d	743-743
HED43a	744-744
HED43b	745-745
HED43c	746-746
HED43d	747-747
HED44	748-748
HED45	749-749
HED46	750-750
HED47_1	751-751
HED47_2	752-752
HED47_3	753-753
HED47_4	754-754
HED47_5	755-755
HED47_6	756-756
HED47_6SPEC	$757-857
HED48	858-858
HED49_1	859-859
HED49_2	860-860
HED49_3	861-861
HED49_4	862-862
HED49_5	863-863
HED49_6	864-864
HED49_6SPEC	$865-965
HED50	966-966
HED51_1	967-967
HED51_2	968-968
HED51_3	969-969
HED51_4	970-970
HED51_5	971-971
HED51_6	972-972
HED51_6SPEC	$973-1073
HED52a	1074-1074
HED52b	1075-1075
HED52c	1076-1076
HED53	1077-1077
;

************************************
*  Assign formats to SAS variables.*
************************************;
format
HED1 
HED2 
HED3 
HED4 
HED5a 
HED5b 
HED5c 
HED5d 
HED5e 
HED5f 
HED5g 
HED5h 
HED6a 
HED6b 
HED6c 
HED6d 
HED6e 
HED6f 
HED6g 
HED6h 
HED6i 
HED6j 
HED6k 
HED6l 
HED6m 
HED6n 
HED6o 
HED7 
HED8 
HED9a 
HED9b 
HED9c
HED9d 
HED10
HED11 
HED12
HED14 
HED15a 
HED15b 
HED15c 
HED15d 
HED15e 
HED15f 
HED15g 
HED15h 
HED16a 
HED16b 
HED16c 
HED16d 
HED16e 
HED16f 
HED16g 
HED16h 
HED16i 
HED16j 
HED16k 
HED16l 
HED16m 
HED16n 
HED16o 
HED17 
HED18 
HED19a 
HED19b 
HED19c 
HED19d 
HED20 
HED21 
HED22 
HED24 
HED25 
HED26a 
HED26b 
HED26c 
HED26d 
HED26e 
HED26f 
HED26g 
HED26h 
HED27a 
HED27b 
HED27c
HED27d 
HED27e 
HED27f 
HED27g 
HED27h 
HED27i 
HED27j 
HED27k 
HED27l 
HED27m 
HED27n 
HED27o 
HED28 
HED29
HED30a 
HED30b 
HED30c 
HED30d 
HED31 
HED32 
HED33 
HED34 
HED35 
HED36 
HED37 
HED38a 
HED38b 
HED38c 
HED38d 
HED38e
HED38f 
HED38g 
HED38h 
HED38i 
HED38j 
HED38k 
HED38l 
HED38m 
HED38n 
HED38o 
HED39a 
HED39b 
HED39c
HED22
HED39d
HED39e 
HED39f 
HED39h 
HED39g
HED39i 
HED39j  
HED39k 
HED39l 
HED39m  
HED39n 
HED39o 
HED41a 
HED41b 
HED41c 
HED41d 
HED41e 
HED41f 
HED41g 
HED41h 
HED41i 
HED41j 
HED41k 
HED41l 
HED41m 
HED42a 
HED42b 
HED42c 
HED42d 
HED44 
HED45 
HED46 
HED47_1 
HED47_2
HED47_3 
HED47_4 
HED47_5
HED47_6 
HED48 
HED49_1 
HED49_2 
HED49_3 
HED49_4 
HED49_5 
HED49_6 
HED50
HED51_1 
HED51_2 
HED51_3 
HED51_4 
HED51_5 
HED51_6 
HED53 
YESNO.

HED13 
HED13HE.

HED40a 
HED40b 
HED40c 
HED40d 
HED40e 
HED40HE.

HED43a 
HED43b 
HED43c 
HED43d 
HED43HE.

HED52a 
HED52b 
HED52c 
HED52HE.

SAMPSTRA
SAMPSTRAFD.

HED23
HED23F.
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
HED1	=	'HED1 - Dist adopt HE stds'
HED2	=	'HED2 - Dist encourage schools to adopt stds'
HED3	=	'HED3 - HE stds are based on NHES'
HED36	=	'HED36 - HE teach req to earn cont ed credits '
HED37	=	'HED37 - Each school HE coord'
HED38a	=	'HED38a - Prof dev - Alcohol/drug prev'
HED38b	=	'HED38b - Prof dev - Tobacco use prev'
HED38c	=	'HED38c - Prof dev - Nutr/dietary behav'
HED38d	=	'HED38d - Prof dev - PA/fitness'
HED38e	=	'HED38e - Prof dev - Pregnancy prev'
HED38f	=	'HED38f - Prof dev - HIV prev'
HED38g	=	'HED38g - Prof dev - STD prev'
HED38h	=	'HED38h - Prof dev - Human sexuality'
HED38i	=	'HED38i - Prof dev - Emot/MH'
HED38j	=	'HED38j - Prof dev - Suicide prev'
HED38k	=	'HED38k - Prof dev - Violence prev'
HED38l	=	'HED38l - Prof dev - Injury prev/safety'
HED38m	=	'HED38m - Prof dev - Asthma'
HED38n	=	'HED38n - Prof dev - Disease prev'
HED38o	=	'HED38o - Prof dev - Foodborne illness prev'
HED39a	=	'HED39a - Prof dev - Disabilities'
HED39b	=	'HED39b - Prof dev - Cultural bkgd'
HED39c	=	'HED39c - Prof dev - Limited Eng'
HED39d	=	'HED39d - Prof dev - Interactive'
HED39e	=	'HED39e - Prof dev - Peer ed'
HED39f	=	'HED39f - Prof dev - Families'
HED39g	=	'HED39g - Prof dev - Community'
HED39h	=	'HED39h - Prof dev - Behav change'
HED39i	=	'HED39i - Prof dev - Class mgmt'
HED39j	=	'HED39j  - Prof dev - Assessment'
HED39k	=	'HED39k - Prof dev - Alignment'
HED39l	=	'HED39l - Prof dev - Online'
HED39m	=	'HED39m  - Prof dev - Technology'
HED39n	=	'HED39n - Prof dev - HECAT'
HED39o	=	'HED39o - Prof dev -  Using data'
HED40a	=	'HED40a - Dist HE staff w PE staff'
HED40b	=	'HED40b - Dist HE staff w HSV staff'
HED40c	=	'HED40c - Dist HE staff w MH/SS staff'
HED40d	=	'HED40d - Dist HE staff w nutr staff'
HED40e	=	'HED40e - Dist HE staff w curric coord/supervisor '
HED41a	=	'HED41a - Dist HE staff w AHFG'
HED41b	=	'HED41b -  Dist HE staff w hlth org'
HED41c	=	'HED41c - Dist HE staff w hlth dept'
HED41d	=	'HED41d - Dist HE staff w MH/SS agency'
HED41e	=	'HED41e - Dist HE staff w juv just dept'
HED41f	=	'HED41f - Dist HE staff w colleges/universities'
HED41g	=	'HED41g - Dist HE staff w businesses'
HED41h	=	'HED41h - Dist HE staff w AFHK'
HED41i	=	'HED41i - Dist HE staff w hosp'
HED41j	=	'HED41j - Dist HE staff w law enforcement agency'
HED41k	=	'HED41k - Dist HE staff w service club'
HED41l	=	'HED41l - Dist HE staff w fire/EMS'
HED41m	=	'HED41m - Dist HE staff w youth org'
HED42a	=	'HED42a - Dist prov families w HE info '
HED42b	=	'HED42b - Dist off HE to students families '
HED42c	=	'HED42c - Dist/school personnel prov w info on school HE '
HED42d	=	'HED42d - Dist sought positive media attention for school HE'
HED43a	=	'HED43a - Dist eval - HE pol'
HED43b	=	'HED43b - Dist eval - HE curric'
HED43c	=	'HED43c - Dist eval - HE prof dev/in-service prog'
HED43d	=	'HED43d - Dist eval - HE teach'
HED4	=	'HED4 - Dist follow stds for ES HE'
HED5a	=	'HED5a - ES HE stds - Comprehending concepts'
HED5b	=	'HED5b - ES HE stds - Analyzing influences'
HED5c	=	'HED5c - ES HE stds - Accessing info/services'
HED5d	=	'HED5d - ES HE stds - Using communic skills'
HED5e	=	'HED5e - ES HE stds - Decision skills'
HED5f	=	'HED5f - ES HE stds  -Goal-setting skills'
HED5g	=	'HED5g - ES HE stds - Pract behav/reduc risks'
HED5h	=	'HED5h - ES HE stds - Advocating hlth'
HED6a	=	'HED6a - ES teach - Alcohol/drug prev'
HED6b	=	'HED6b - ES teach - Tobacco use prev'
HED6c	=	'HED6c - ES teach - Nutr/dietary behav'
HED6d	=	'HED6d - ES teach - PA/fitness'
HED6e	=	'HED6e - ES teach - Pregnancy prev'
HED6f	=	'HED6f - ES teach - HIV prev'
HED6g	=	'HED6g - ES  teach - STD prev'
HED6h	=	'HED6h - ES teach - Human sexuality'
HED6i	=	'HED6i - ES teach - Emot/MH'
HED6j	=	'HED6j - ES teach - Suicide prev'
HED6k	=	'HED6k - ES teach - Violence prev'
HED6l	=	'HED6l - ES teach - Injury prev/safety'
HED6m	=	'HED6m - ES teach - Asthma'
HED6n	=	'HED6n - ES teach - Disease prev'
HED6o	=	'HED6o - ES teach - Foodborne illness prev'
HED7	=	'HED7 - ES parents notified about human sexuality instr'
HED8	=	'HED8 - ES parents can exclude children from human sexuality instr'
HED9a	=	'HED9a - Dist prov -List of rec ES HE curric'
HED9b	=	'HED9b - Dist prov - Lsn plans/lrning act for ES HE'
HED9c	=	'HED9c - Dist prov - Plans/strategies assess/eval students in ES HE'
HED9d	=	'HED9d - Dist prov - List ES HE rec txtbk'
HED10	=	'HED10 - Dist used HECAT to assess ES curric'
HED11	=	'HED11 - ES HE time reqs'
HED12	=	'HED12 - ES HE teach will have undergrad/grad in HE'
HED13	=	'HED13 - ES HE teach will be cert/lic/endrs by st to teach HE'
HED14	=	'HED14 - Dist follow stds for MS HE'
HED15a	=	'HED15a - MS HE stds - Comprehending concepts'
HED15b	=	'HED15b - MS HE stds - Analyzing influences'
HED15c	=	'HED15c - MS HE stds - Accessing info/services'
HED15d	=	'HED15d - MS HE stds - Using communic skills'
HED15e	=	'HED15e - MS HE stds - Decision skills'
HED15f	=	'HED15f - MS HE stds - Goal-setting skills'
HED15g	=	'HED15g - MS HE stds - Pract behav/reduc risks'
HED15h	=	'HED15h - MS HE stds - Advocating hlth'
HED16a	=	'HED16a - MS teach - Alcohol/drug prev'
HED16b	=	'HED16b - MS teach -Tobacco use prev'
HED16c	=	'HED16c - MS teach - Nutr/dietary behav'
HED16d	=	'HED16d - MS teach - PA/fitness'
HED16e	=	'HED16e - MS teach - Pregnancy prev'
HED16f	=	'HED16f - MS teach - HIV prev'
HED16g	=	'HED16g - MS teach - STD prev'
HED16h	=	'HED16h - MS teach - Human sexuality'
HED16i	=	'HED16i - MS teach - Emot/MH'
HED16j	=	'HED16j - MS teach - Suicide prevention'
HED16k	=	'HED16k - MS teach - Violence prev'
HED16l	=	'HED16l - MS teach - Injury prev/safety'
HED16m	=	'HED16m - MS teach - Asthma'
HED16n	=	'HED16n - MS teach - Disease prev'
HED16o	=	'HED16o - MS teach - Foodborne illness prev'
HED17	=	'HED17 -  MS parents notified about human sexuality instr'
HED18	=	'HED18 -  MS parents can exclude children from human sexuality instr'
HED19a	=	'HED19a - Dist prov -List of rec MS HE curric'
HED19b	=	'HED19b - Dist prov - Lsn plans/lrning act for MS HE'
HED19c	=	'HED19c - Dist prov - Plans/strategies assess/eval students in MS HE'
HED19d	=	'HED19d - Dist prov - List MS HE rec txtbk'
HED20	=	'HED20 - Dist used HECAT to assess MS curric'
HED21	=	'HED21 - MS HE time reqs'
HED22	=	'HED22 - MS HE teach will have undergrad/grad in HE'
HED23	=	'HED23 - MS HE teach will be cert/lic/endrs by st to teach HE'
HED24	=	'HED24 - MS HE teach will be CHES'
HED25	=	'HED25 - Dist follow stds for HS HE'
HED26a	=	'HED26a - HS HE stds - Comprehending concepts'
HED26b	=	'HED26b - HS HE stds - Analyzing influences'
HED26c	=	'HED26c - HS HE stds - Accessing info/services'
HED26d	=	'HED26d - HS HE stds - Using communic skills'
HED26e	=	'HED26e - HS HE stds  -Decision skills'
HED26f	=	'HED26f - HS HE stds - Goal-setting skills'
HED26g	=	'HED26g - HS HE stds - Pract behav/reduc risks'
HED26h	=	'HED26h - HS HE stds - Advocating hlth'
HED27a	=	'HED27a - HS teach - Alcohol/drug prev'
HED27b	=	'HED27b - HS teach - Tobacco use prev'
HED27c	=	'HED27c - HS teach - Nutr/dietary behav'
HED27d	=	'HED27d - HS teach - PA/fitness'
HED27e	=	'HED27e - HS teach - Pregnancy prev'
HED27f	=	'HED27f - HS teach - HIV prevention'
HED27g	=	'HED27g - HS teach - STD prevention'
HED27h	=	'HED27h - HS teach - Human sexuality'
HED27i	=	'HED27i - HS teach - Emot/MH'
HED27j	=	'HED27j - HS teach - Suicide prev'
HED27k	=	'HED27k - HS teach - Violence prev'
HED27l	=	'HED27l - HS teach - Injury prev/safety'
HED27m	=	'HED27m - HS teach - Asthma'
HED27n	=	'HED27n - HS teach - Disease prev'
HED27o	=	'HED27o - HS teach - Foodborne illness prev'
HED28	=	'HED28 - HS parents notified about human sexuality instr'
HED29	=	'HED29 - HS parents can exclude children from human sexuality instr'
HED30a	=	'HED30a - Dist prov -List of rec HS HE curric'
HED30b	=	'HED30b - Dist prov - Lsn plans/lrning act for HS HE'
HED30c	=	'HED30c - Dist prov - Plans/strategies assess/eval students in HS HE'
HED30d	=	'HED30d - Dist prov - List HS HE rec txtbk'
HED31	=	'HED31 - Dist used HECAT to assess HS curric'
HED32	=	'HED32 - HS HE time reqs'
HED33	=	'HED33 - HS HE teach will have undergrad/grad in HE'
HED34	=	'HED34 - New hire HS HE teach will be cert/lic/endrs by st to teach HE'
HED35	=	'HED35 - New hire HS HE teach will be CHES'
HED44	=	'HED44 - Dist person oversee/coord HE'
HED45	=	'HED45 - R is person'
HED46	=	'HED46 - R has undergrad degree'
HED47_1	=	'HED47_1 - R major - HE'
HED47_2	=	'HED47_2 - R major - PE'
HED47_3	=	'HED47_3 - R major - Other ed'
HED47_4	=	'HED47_4 - R major - Nursing'
HED47_5	=	'HED47_5 - R major - Biology or other science'
HED47_6	=	'HED47_6 - R major - Other (Specify)'
HED47_6SPEC	=	'HED47_6SPEC - R major - Specify'
HED48	=	'HED48 - R has undergrad minor'
HED49_1	=	'HED49_1 - R minor - HE '
HED49_2	=	'HED49_2 - R minor - PE '
HED49_3	=	'HED49_3 - R minor - Other ed'
HED49_4	=	'HED49_4 - R minor - Nursing'
HED49_5	=	'HED49_5 - R minor - Biology or other science'
HED49_6	=	'HED49_6 - R minor - Other (Specify)'
HED49_6SPEC	=	'HED49_6SPEC - R minor - Specify'
HED50	=	'HED50 - R has grad degree'
HED51_1	=	'HED51_1 - R grad degree - HE '
HED51_2	=	'HED51_2 - R grad degree - PE '
HED51_3	=	'HED51_3 - R grad degree - Other ed'
HED51_4	=	'HED51_4 - R grad degree - Nursing'
HED51_5	=	'HED51_5 - R grad degree - Biology or other science'
HED51_6	=	'HED51_6 - R grad degree - Other (Specify)'
HED51_6SPEC	=	'HED51_6SPEC - R grad degree - Specify'
HED52a	=	'HED52a - R cert/lic ES HE'
HED52b	=	'HED52b - R cert/lic MS HE'
HED52c	=	'HED52c - R cert/lic HS HE'
HED53	=	'HED53 - R CHES';
run;
