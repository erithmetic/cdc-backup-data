
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
/*  "MENTALD_SAS_Input_Program.sas" to create the 2012 SHPPS dataset.                   */
/****************************************************************************************/

filename datain 'c:\shpps2012\mentald2012.dat';

libname dataout 'c:\shpps2012';

libname library 'c:\shpps2012';

data dataout.mentald2012 ;
infile datain lrecl=2000;
missing A C F N M ;
input
STCMSID			1-2
STATENAME			$3-30
DISTCMSID			31-35
@47 DISTWT 12.7
PSU			     61-69
SAMPSTRA		 72-72
CTYPEM1			$73-95
CTYPEM2			$96-118
RTITLE1			$119-185
RTITLE2			$186-256
MHD1			257-257
MHD2			258-258
MHD3			259-259
MHD4			260-260
MHD5			261-261
MHD6_1			262-262
MHD6_2			263-263
MHD6_3			264-264
MHD6_4			265-265
MHD6_5			266-266
MHD6_6			267-267
MHD6_7			268-268
MHD7a			269-269
MHD7b			270-270
MHD7c			271-271
MHD7d			272-272
MHD7e			273-273
MHD8a			274-274
MHD8b			275-275
MHD8c			276-276
MHD8d			277-277
MHD8e			278-278
MHD8f			279-279
MHD8g			280-280
MHD8h			281-281
MHD8i			282-282
MHD8j			283-283
MHD8k			284-284
MHD9			285-285
MHD10a			286-286
MHD10b			287-287
MHD10c			288-288
MHD10d			289-289
MHD10e			290-290
MHD11			291-291
MHD11SPEC		$292-392
MHD12			393-393
MHD13			394-394
MHD13SPEC		$395-495
MHD14			496-496
MHD15			497-497
MHD15SPEC		$498-598
MHD16			599-599
MHD17			600-600
MHD18			601-601
MHD19			602-602
MHD20			603-603
MHD21			604-604
MHD22a			605-605
MHD22b			606-606
MHD22c			607-607
MHD22d			608-608
MHD22e			609-609
MHD22f			610-610
MHD22g			611-611
MHD22h			612-612
MHD22i			613-613
MHD22j			614-614
MHD23a			615-615
MHD23b			616-616
MHD23c			617-617
MHD23d			618-618
MHD23e			619-619
MHD23f			620-620
MHD23g			621-621
MHD23h			622-622
MHD23i			623-623
MHD23j			624-624
MHD23k			625-625
MHD23l			626-626
MHD23m			627-627
MHD23n			628-628
MHD23o			629-629
MHD23p			630-630
MHD23q			631-631
MHD23r			632-632
MHD23s			633-633
MHD23t			634-634
MHD23u			635-635
MHD24a			636-636
MHD24b			637-637
MHD24c			638-638
MHD24d			639-639
MHD24e			640-640
MHD24f			641-641
MHD24g			642-642
MHD24h			643-643
MHD24i			644-644
MHD25a			645-645
MHD25b			646-646
MHD25c			647-647
MHD25d			648-648
MHD25e			649-649
MHD25f			650-650
MHD25g			651-651
MHD26			652-652
MHD27a			653-653
MHD27b			654-654
MHD27c			655-655
MHD27d			656-656
MHD27e			657-657
MHD27f			658-658
MHD27g			659-659
MHD27h			660-660
MHD27i			661-661
MHD27j			662-662
MHD27k			663-663
MHD28a			664-664
MHD28b			665-665
MHD28c			666-666
MHD28d			667-667
MHD28e			668-668
MHD28f			669-669
MHD28g			670-670
MHD28h			671-671
MHD28i			672-672
MHD28j			673-673
MHD28k			674-674
MHD28l			675-675
MHD28m			676-676
MHD28n			677-677
MHD28o			678-678
MHD28p			679-679
MHD28q			680-680
MHD28r			681-681
MHD28s			682-682
MHD28t			683-683
MHD29a			684-684
MHD29b			685-685
MHD29c			686-686
MHD29d			687-687
MHD29e			688-688
MHD29f			689-689
MHD29g			690-690
MHD30			691-691
MHD31			692-692
MHD32			693-693
MHD33			694-694
MHD34_1			695-695
MHD34_2			696-696
MHD34_3			697-697
MHD34_4			698-698
MHD34_5			699-699
MHD34_5SPEC		$700-800
MHD35			801-801
MHD36_1			802-802
MHD36_2			803-803
MHD36_3			804-804
MHD36_4			805-805
MHD36_5			806-806
MHD36_5SPEC		$807-907
MHD37			908-908
MHD38_1			909-909
MHD38_2			910-910
MHD38_3			911-911
MHD38_4			912-912
MHD38_5			913-913
MHD38_5SPEC		$914-1014
MHD39			1015-1015
;
************************************
*  Assign formats to SAS variables.*
************************************;
format 
MHD1	   
MHD2	   
MHD3	   
MHD4	   
MHD5	   
MHD6_1	   
MHD6_2	   
MHD6_3	   
MHD6_4	   
MHD6_5	   
MHD6_6	   
MHD6_7	   
MHD8a	   
MHD8b	   
MHD8c	   
MHD8d	   
MHD8e	   
MHD8f	   
MHD8g	   
MHD8h	   
MHD8i	   
MHD8j	   
MHD8k	   
MHD9	   
MHD10a	   
MHD10b	   
MHD10c	   
MHD10d	   
MHD10e	   
  
MHD17	   
MHD18	   
MHD19	   
MHD20	   
MHD21	   
MHD22a	   
MHD22b	   
MHD22c	   
MHD22d	   
MHD22e	   
MHD22f	   
MHD22g	   
MHD22h	   
MHD22i	   
MHD22j	   
MHD23a	   
MHD23b	   
MHD23c	   
MHD23d	   
MHD23e	   
MHD23f	   
MHD23g	   
MHD23h	   
MHD23i	   
MHD23j	   
MHD23k	   
MHD23l	   
MHD23m	   
MHD23n	   
MHD23o	   
MHD23p	   
MHD23q	   
MHD23r	   
MHD23s	   
MHD23t	   
MHD23u	   
MHD24a	   
MHD24b	   
MHD24c	   
MHD24d	   
MHD24e	   
MHD24f	   
MHD24g	   
MHD24h	   
MHD24i	   
MHD25a	   
MHD25b	   
MHD25c	   
MHD25d	   
MHD25e	   
MHD25f	   
MHD25g	   
MHD26	   
MHD27a	   
MHD27b	   
MHD27c	   
MHD27d	   
MHD27e	   
MHD27f	   
MHD27g	   
MHD27h	   
MHD27i	   
MHD27j	   
MHD27k	   
MHD28a	   
MHD28b	   
MHD28c	   
MHD28d	   
MHD28e	   
MHD28f	   
MHD28g	   
MHD28h	   
MHD28i	   
MHD28j	   
MHD28k	   
MHD28l	   
MHD28m	   
MHD28n	   
MHD28o	   
MHD28p	   
MHD28q	   
MHD28r	   
MHD28s	   
MHD28t	   
MHD29a	   
MHD29b	   
MHD29c	   
MHD29d	   
MHD29e	   
MHD29f	   
MHD29g
MHD30
MHD31
MHD32
MHD33
MHD34_1
MHD34_2
MHD34_3
MHD34_4
MHD34_5

MHD35
MHD36_1
MHD36_2
MHD36_3
MHD36_4
MHD36_5

MHD37
MHD38_1
MHD38_2
MHD38_3
MHD38_4
MHD38_5

YESNO.

MHD7a	   
MHD7b	   
MHD7c	   
MHD7d	   
MHD7e
YESNOFS.

MHD11
MHD11F.

MHD12
MHD12F.

MHD13
MHD13F.

MHD14
MHD14F.

MHD15
MHD15F.

MHD16
MHD16F.

MHD39
MHD39F.

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
DISTWT	=	'DISTWT -  Analysis Weight for District'
PSU	=	'PSU -  Sampled Primary Sampling Unit'
SAMPSTRA	=	'SAMPSTRA -  Stratum 1-Urbanicity and Poverty'
CTYPEM1	=	'CTYPEM1 - Web - Paper Complete Module1'
CTYPEM2	=	'CTYPEM2 - Web - Paper Complete Module2'
RTITLE1	=	'RTITLE1 - RESPONDENT TITLE MODULE1'
RTITLE2	=	'RTITLE2 - RESPONDENT TITLE MODULE2'
MHD1	=	'MHD1 - Offer student assistance prog'
MHD2	=	'MHD2 - Create/maintain student assistance teams'
MHD3	=	'MHD3 - MH/SS staff will develop IEPs'
MHD4	=	'MHD4 - MH/SS staff will develop IHPs'
MHD5	=	'MHD5 - MH/SS staff will develop 504 plans'
MHD6_1	=	'HSS6_1 - MH/SS funding from dist budget'
MHD6_2	=	'HSS6_2 - MH/SS funding from Medicaid'
MHD6_3	=	'HSS6_3 - MH/SS funding from SCHIP'
MHD6_4	=	'HSS6_4 - MH/SS funding from private ins'
MHD6_5	=	'HSS6_5 - MH/SS funding from public grants'
MHD6_6	=	'HSS6_6 - MH/SS funding from private grants'
MHD6_7	=	'HSS6_7 - MH/SS funding from other'
MHD7a	=	'MHD7a - Dist MH/SS staff w HE staff'
MHD7b	=	'MHD7b - Dist MH/SS staff w PE staff'
MHD7c	=	'MHD7c - Dist MH/SS staff w Nutr staff'
MHD7d	=	'MHD7d - Dist MH/SS staff w HSV staff'
MHD7e	=	'MHD7e - Dist MH/SS staff w SBHC staff'
MHD8a	=	'MHD8a - Dist MH/SS staff w Hlth org'
MHD8b	=	'MHD8b - Dist MH/SS staff w Local hlth dept'
MHD8c	=	'MHD8c - Dist MH/SS staff w Local MH/SS agency'
MHD8d	=	'MHD8d - Dist MH/SS staff w Local juv jus department'
MHD8e	=	'MHD8e - Dist MH/SS staff w Local college/university'
MHD8f	=	'MHD8f - Dist MH/SS staff w Local business'
MHD8g	=	'MHD8g - Dist MH/SS staff w Local child welfare agency'
MHD8h	=	'MHD8h - Dist MH/SS staff w Local hospital'
MHD8i	=	'MHD8i - Dist MH/SS staff w Local law enforcement agency'
MHD8j	=	'MHD8j - Dist MH/SS staff w Local service club'
MHD8k	=	'MHD8k - Dist MH/SS staff w Communities in Schools'
MHD9	=	'MHD9 - Dist prov families info on MH/SS'
MHD10a	=	'MHD10a - Dist eval - MH/SS prog'
MHD10b	=	'MHD10b - Dist eval - MH/SS pol'
MHD10c	=	'MHD10c - Dist eval - MH/SS prof dev prog'
MHD10d	=	'MHD10d - Dist eval - Student use of school MH/SS'
MHD10e	=	'MHD10e - Dist eval -  Student/family satisfaction '
MHD11	=	'MHD11 - Min ed req newly hired counselor'
MHD11SPEC	=	'MHD11 - Min ed req newly hired counselor (Specify)'
MHD12	=	'MHD12 - New hire counselor will be st lic/cert/credentialed'
MHD13	=	'MHD13 - Min ed req newly hired school psych'
MHD13SPEC	=	'MHD13 - Min ed req newly hired school psych (Specify)'
MHD14	=	'MHD14 - New hired school psych will be st lic/cert/credentialed'
MHD15	=	'MHD15 - Min ed req newly hired soc worker'
MHD15SPEC	=	'MHD15 - Min ed req newly hired soc worker (Specify)'
MHD16	=	'MHD16 - New hire soc worker will be st lic/cert/credentialed'
MHD17	=	'MHD17 - MH/SS staff req to earn cont ed credits'
MHD18	=	'MHD18 - ES specified ratio counselors to students'
MHD19	=	'MHD19 - MS specified ratio counselors to students'
MHD20	=	'MHD20 - HS specified ratio counselors to students'
MHD21	=	'MHD21 - Each school has MH/SS coord'
MHD22a	=	'MHD22a - Prof dev - Nutr/dietary behav counseling'
MHD22b	=	'MHD22b - Prof dev - PA/fitness counseling'
MHD22c	=	'MHD22c - Prof dev - Preg prev'
MHD22d	=	'MHD22d - Prof dev - HIV prev'
MHD22e	=	'MHD22e - Prof dev - STD prev'
MHD22f	=	'MHD22f - Prof dev  - Suicide prev'
MHD22g	=	'MHD22g - Prof dev - Tobacco use prev'
MHD22h	=	'MHD22h - Prof dev - Alcohol/drug use prev'
MHD22i	=	'MHD22i - Prof dev - Violence prev'
MHD22j	=	'MHD22j - Prof dev - Injury prev/safety counseling'
MHD23a	=	'MHD23a - Prof dev - Tobacco use cessation'
MHD23b	=	'MHD23b - Prof dev - Alcohol/drug use tx'
MHD23c	=	'MHD23c - Prof dev - Counseling after natural disaster'
MHD23d	=	'MHD23d - Prof dev - Crisis intervention for personal prob'
MHD23e	=	'MHD23e - Prof dev - Emerg preparedness'
MHD23f	=	'MHD23f - Prof dev - ID emot/behav disorders'
MHD23g	=	'MHD23g - Prof dev - Counseling emot/behav disorders'
MHD23h	=	'MHD23h - Prof dev - Stress mgmt'
MHD23i	=	'MHD23i - Prof dev - Weight mgmt'
MHD23j	=	'MHD23j - Prof dev - Eating disorder ID/referral'
MHD23k	=	'MHD23k - Prof dev - HIV counseling/testing/ref'
MHD23l	=	'MHD23l - Prof dev - Phys/sexual/emotl abuse ID/ref'
MHD23m	=	'MHD23m - Prof dev - Family prob ID/referral'
MHD23n	=	'MHD23n - Prof dev - After-school prog'
MHD23o	=	'MHD23o - Prof dev - Child care options'
MHD23p	=	'MHD23p - Prof dev - LGBT services'
MHD23q	=	'MHD23q - Prof dev - WIC enrollment/food stamps/banks'
MHD23r	=	'MHD23r - Prof dev - Temporary/permanent housing'
MHD23s	=	'MHD23s - Prof dev - Medicaid/SCHIP'
MHD23t	=	'MHD23t - Prof dev - Accessing benefits students w/ disab'
MHD23u	=	'MHD23u - Prof dev - Job readiness skills prog'
MHD24a	=	'MHD24a - Prof dev - Case mgmt emot/behav prob'
MHD24b	=	'MHD24b - Prof dev - Family counseling'
MHD24c	=	'MHD24c - Prof dev - Group counseling'
MHD24d	=	'MHD24d - Prof dev - Individual counseling'
MHD24e	=	'MHD24e - Prof dev - Comprehensive assessment/intake evaluation'
MHD24f	=	'MHD24f - Prof dev - Peer counseling/mediation'
MHD24g	=	'MHD24g - Prof dev - Self-help/support groups'
MHD24h	=	'MHD24h - Prof dev - Student assistance prog'
MHD24i	=	'MHD24i - Prof dev - Student support teams'
MHD25a	=	'MHD25a - Training - Recog signs and sympt of phys/sexual/emot abuse'
MHD25b	=	'MHD25b - Training - Recog signs/sympt of substance abuse'
MHD25c	=	'MHD25c - Training - Recog signs/sympt of depression/suicidality'
MHD25d	=	'MHD25d -Training - Recog signs/sympt of dating violence'
MHD25e	=	'MHD25e - Training - Recog signs and sympt of bullying victimization'
MHD25f	=	'MHD25f - Training - Making appropriate ref to a school counselor/psych/soc worker'
MHD25g	=	'MHD25g -Training - Managing students w emot/behavioral problems'
MHD26	=	'MHD26 - Dist has arrange to prov MH/SS to dist students/families'
MHD27a	=	'MHD27a - Arrange to prov MH/SS - School-linked hlth center'
MHD27b	=	'MHD27b - Arrange to prov MH/SS - Community hlth clinic or hlth center'
MHD27c	=	'MHD27c - Arrange to prov MH/SS - Local hlth department'
MHD27d	=	'MHD27d - Arrange to prov MH/SS - Local hospital'
MHD27e	=	'MHD27e - Arrange to prov MH/SS - Local MH/SS agency'
MHD27f	=	'MHD27f - Arrange to prov MH/SS - University, med school, or nursing school'
MHD27g	=	'MHD27g - Arrange to prov MH/SS - Managed care org'
MHD27h	=	'MHD27h - Arrange to prov MH/SS - Private psych'
MHD27i	=	'MHD27i - Arrange to prov MH/SS - Private psychiatrist'
MHD27j	=	'MHD27j - Arrange to prov MH/SS - Private soc worker'
MHD27k	=	'MHD27k - Arrange to prov MH/SS - Private counselor'
MHD28a	=	'MHD28a - MH/SS other sites - Tobacco use cessation'
MHD28b	=	'MHD28b - MH/SS other sites - Alcohol/drug use treatment'
MHD28c	=	'MHD28c - MH/SS other sites - Counseling after natural disaster '
MHD28d	=	'MHD28d - MH/SS other sites - Crisis intervention for personal prob'
MHD28e	=	'MHD28e - MH/SS other sites - ID emot/behav disorders'
MHD28f	=	'MHD28f - MH/SS other sites - Counseling emot/behav disorders'
MHD28g	=	'MHD28g - MH/SS other sites - Stress mgmt'
MHD28h	=	'MHD28h - MH/SS other sites - Weight mgmt'
MHD28i	=	'MHD28i - MH/SS other sites - Eating disorder ID/referral'
MHD28j	=	'MHD28j - MH/SS other sites - HIV counseling/testing/ref'
MHD28k	=	'MHD28k - MH/SS other sites - Phys/sexual/emotl abuse ID/ref'
MHD28l	=	'MHD28l - MH/SS other sites - Family prob ID/referral'
MHD28m	=	'MHD28m - MH/SS other sites - After-school prog ref'
MHD28n	=	'MHD28n - MH/SS other sites - Child care ref'
MHD28o	=	'MHD28o - MH/SS other sites - LGBT services'
MHD28p	=	'MHD28p - MH/SS other sites - Job readiness skills prog'
MHD28q	=	'MHD28q - MH/SS other sites - WIC enrollment/food stamps/banks'
MHD28r	=	'MHD28r - MH/SS other sites - Temporary/permanent housing'
MHD28s	=	'MHD28s - MH/SS other sites - Medicaid/SCHIP'
MHD28t	=	'MHD28t - MH/SS other sites - Accessing benefits students w/ disab'
MHD29a	=	'MHD29a - MH/SS other sites - Case mgmt emot/behav prob'
MHD29b	=	'MHD29b - MH/SS other sites - Family counseling'
MHD29c	=	'MHD29c - MH/SS other sites - Group counseling'
MHD29d	=	'MHD29d - MH/SS other sites - Individual counseling'
MHD29e	=	'MHD29e - MH/SS other sites - Comprehensive assessment/intake evaluation'
MHD29f	=	'MHD29f - MH/SS other sites - Peer counseling/mediation'
MHD29g	=	'MHD29g - MH/SS other sites - Self-help/support groups'
MHD30	=	'MHD30 - Dist person oversee/coord MH/SS'
MHD31	=	'MHD31 - R is person'
MHD32	=	'MHD32 - R works for dist'
MHD33	=	'MHD33 - R has undergrad degree'
MHD34_1	=	'MHD34_1 - R major - Counseling'
MHD34_2	=	'MHD34_2 - R major - Psych'
MHD34_3	=	'MHD34_3 - R major - Soc work'
MHD34_4	=	'MHD34_4 - R major - Ed'
MHD34_5	=	'MHD34_5 - R major - Other (Specify)'
MHD34_5SPEC	=	'MHD34_5 - R major - Specify'
MHD35	=	'MHD35 - R has undergrad minor'
MHD36_1	=	'MHD36_1 - R minor - Counseling'
MHD36_2	=	'MHD36_2 - R minor - Psych'
MHD36_3	=	'MHD36_3 - R minor - Soc work'
MHD36_4	=	'MHD36_4 - R minor - Ed'
MHD36_5	=	'MHD36_5 - R minor - Other (Specify)'
MHD36_5SPEC	=	'MHD36_5SPEC - R minor - Specify'
MHD37	=	'MHD37 - R has grad degree'
MHD38_1	=	'MHD38_1 - R grad degree - Counseling'
MHD38_2	=	'MHD38_2 - R grad degree - Psych'
MHD38_3	=	'MHD38_3 - R grad degree - Soc work'
MHD38_4	=	'MHD38_4 - R grad degree - Ed'
MHD38_5	=	'MHD38_5 - R grad degree - Other (Specify)'
MHD38_5SPEC	=	'MHD38_5 - R grad degree - Specify'
MHD39	=	'MHD39 - R lic/cert/credentialed to prov school MH/SS'
;
run;
