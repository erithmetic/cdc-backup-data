
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
/*  "MENTALS_SAS_Input_Program.sas" to create the 2012 SHPPS dataset.                   */
/****************************************************************************************/

filename datain 'c:\shpps2012\mentals2012.dat';

libname dataout 'c:\shpps2012';

libname library 'c:\shpps2012';

data dataout.mentals2012 ;
infile datain lrecl=500;
missing A C F;

input
SNAME	$1-20
STCMSID	22-25
RTITLE1	$27-110
CTYPEM1	$112-115
RTITLE2	$117-200
CTYPEM2	$201-204
MHS1a	205-205
MHS1b	206-206
MHS1c	207-207
MHS1d	208-208
MHS2a	209-209
MHS2b	210-210
MHS2c	211-211
MHS2d	212-212
MHS3a	213-213
MHS3b	214-214
MHS3c	215-215
MHS3d	216-216
MHS4_1	217-217
MHS4_2	218-218
MHS4_3	219-219
MHS4_4	220-220
MHS4_5	221-221
MHS4_6	222-222
MHS4_7	223-223
MHS4_8	224-224
MHS5	225-225
MHS6a	226-226
MHS6b	227-227
MHS6c	228-228
MHS6d	229-229
MHS6e	230-230
MHS7a	231-231
MHS7b	232-232
MHS7c	233-233
MHS7d	234-234
MHS7e	235-235
MHS7f	236-236
MHS7g	237-237
MHS7h	238-238
MHS7i	239-239
MHS7j	240-240
MHS7k	241-241
MHS7l	242-242
MHS8a	243-243
MHS8b	244-244
MHS8c	245-245
MHS8d	246-246
MHS8e	247-247
MHS9a	248-248
MHS9b	249-249
MHS9c	250-250
MHS9d	251-251
MHS9e	252-252
MHS9f	253-253
MHS9g	254-254
MHS9h	255-255
MHS9i	256-256
MHS9j	257-257
MHS9k	258-258
MHS9l	259-259
MHS9m	260-260
MHS9n	261-261
MHS9o	262-262
MHS9p	263-263
MHS9q	264-264
MHS9r	265-265
MHS9s	266-266
MHS9t	267-267
MHS9u	268-268
MHS10a	269-269
MHS10b	270-270
MHS10c	271-271
MHS10d	272-272
MHS10e	273-273
MHS10f	274-274
MHS10g	275-275
MHS10h	276-276
MHS10i	277-277
MHS10j	278-278
MHS11a	279-279
MHS11b	280-280
MHS11c	281-281
MHS11d	282-282
MHS11e	283-283
MHS11f	284-284
MHS11g	285-285
MHS11h	286-286
MHS11i	287-287
MHS12a	288-288
MHS12b	289-289
MHS12c	290-290
MHS12d	291-291
MHS12e	292-292
MHS12f	293-293
MHS12g	294-294
MHS13	295-295
MHS14	296-296
MHS15_1	297-297
MHS15_2	298-298
MHS15_3	299-299
MHS15_4	300-300
MHS16	301-301
MHS17_1	302-302
MHS17_2	303-303
MHS17_3	304-304
MHS17_4	305-305
MHS17_5	306-306
MHS17_5SPEC	$307-357
MHS18	358-358
MHS19_1	359-359
MHS19_2	360-360
MHS19_3	361-361
MHS19_4	362-362
MHS19_5	363-363
MHS19_5SPEC	$364-414
MHS20	415-415
MHS21_1	416-416
MHS21_2	417-417
MHS21_3	418-418
MHS21_4	419-419
MHS21_5	420-420
MHS21_5SPEC	$421-471
MHS22	472-472
;

************************************
*  Assign formats to SAS variables.*
************************************;
format

MHS1a
MHS1b
MHS1c
MHS1d
MHS2a
MHS2b
MHS2c
MHS2d
MHS3a
MHS3b
MHS3c
MHS3d
MHS4_1
MHS4_2
MHS4_3
MHS4_4
MHS4_5
MHS4_6
MHS4_7
MHS4_8
MHS5

MHS7a
MHS7b
MHS7c
MHS7d
MHS7e
MHS7f
MHS7g
MHS7h
MHS7i
MHS7j
MHS7k
MHS7l
MHS8a
MHS8b
MHS8c
MHS8d
MHS8e
MHS9a
MHS9b
MHS9c
MHS9d
MHS9e
MHS9f
MHS9g
MHS9h
MHS9i
MHS9j
MHS9k
MHS9l
MHS9m
MHS9n
MHS9o
MHS9p
MHS9q
MHS9r
MHS9s
MHS9t
MHS9u
MHS10a
MHS10b
MHS10c
MHS10d
MHS10e
MHS10f
MHS10g
MHS10h
MHS10i
MHS10j
MHS11a
MHS11b
MHS11c
MHS11d
MHS11e
MHS11f
MHS11g
MHS11h
MHS11i
MHS12a
MHS12b
MHS12c
MHS12d
MHS12e
MHS12f
MHS12g
MHS13
MHS14
MHS15_1
MHS15_2
MHS15_3
MHS15_4
MHS16
MHS17_1
MHS17_2
MHS17_3
MHS17_4
MHS17_5
MHS18
MHS19_1
MHS19_2
MHS19_3
MHS19_4
MHS19_5
MHS20
MHS21_1
MHS21_2
MHS21_3
MHS21_4
MHS21_5

shppsyesno.

MHS6a
MHS6b
MHS6c
MHS6d
MHS6e
shppsynstaff.


MHS22
mhsscert.
;

***********************************
*  Assign labels to SAS variables.*
***********************************;
label 
SNAME="STATE NAME"
STCMSID="STATE ID" 
CTYPEM1="WEB-PAPER COMPLETE  MODULE1"
RTITLE1="RESPONDENT TITLE MODULE1"
CTYPEM2="WEB-PAPER COMPLETE  MODULE2"
RTITLE2="RESPONDENT TITLE MODULE2"
MHS1a	=	"MHS1a - St pol - Prov MH/SS care"
MHS1b	=	"MHS1b - St pol - Student assistance prog"
MHS1c	=	"MHS1c - St pol - Student support teams"
MHS1d	=	"MHS1d - St pol - Link to comm MH/SS providers"
MHS2a	=	"MHS2a - Distrib - Prov MH/SS "
MHS2b	=	"MHS2b - Distrib - Student assistance prog"
MHS2c	=	"MHS2c - Distrib - Student support teams"
MHS2d	=	"MHS2d - Distrib - Link to comm MH/SS providers"
MHS3a	=	"MHS3a - St TA - Prov MH/SS care"
MHS3b	=	"MHS3b - St TA - Student assistance prog"
MHS3c	=	"MHS3c - St TA - Student support teams"
MHS3d	=	"MHS3d - St TA - Link to comm MH/SS providers"
MHS4_1	=	"MHS4_1 - MH/SS funding from st budget"
MHS4_2	=	"MHS4_2 - MH/SS funding from school district budgets"
MHS4_3	=	"MHS4_3 - MH/SS funding from Medicaid"
MHS4_4	=	"MHS4_4 - MH/SS funding from SCHIP"
MHS4_5	=	"MHS4_5 - MH/SS funding from private ins"
MHS4_6	=	"MHS4_6 - MH/SS funding from public grants"
MHS4_7	=	"MHS4_7 - MH/SS funding from private grants"
MHS4_8	=	"MHS4_8 - MH/SS funding from other"
MHS5	=	"MHS5 - Schools as Medicaid providers"
MHS6a	=	"MHS6a - St MH/SS staff w HE staff"
MHS6b	=	"MHS6b - St MH/SS staff w PE staff"
MHS6c	=	"MHS6c - St MH/SS staff w Nutr staff"
MHS6d	=	"MHS6d - St MH/SS staff w HSV staff"
MHS6e	=	"MHS6e - St MH/SS staff w special ed staff"
MHS7a	=	"MHS7a - St MH/SS staff w st sch nurses assoc"
MHS7b	=	"MHS7b - St MH/SS staff w st physicans org"
MHS7c	=	"MHS7c - St MH/SS staff w st hlth org"
MHS7d	=	"MHS7d - St MH/SS staff w st parents org"
MHS7e	=	"MHS7e - St MH/SS staff w st hlth dept"
MHS7f	=	"MHS7f - St MH/SS staff w st MH/SS agency"
MHS7g	=	"MHS7g - St MH/SS staff w st juv just dept"
MHS7h	=	"MHS7h - St MH/SS staff w colleges/universities"
MHS7i	=	"MHS7i - St MH/SS staff w businesses"
MHS7j	=	"MHS7j - St MH/SS staff w child welfare agency"
MHS7k	=	"MHS7k - St MH/SS staff w foster care system"
MHS7l	=	"MHS7l - St MH/SS staff w counselors/psych/soc workers org"
MHS8a	=	"MHS8a - St eval - MH/SS prog"
MHS8b	=	"MHS8b - St eval - School MH/SS pol"
MHS8c	=	"MHS8c - St eval - MH/SS prof dev"
MHS8d	=	"MHS8d -St eval - MH/SS use"
MHS8e	=	"MHS8e - St eval - Student/family satisfaction "
MHS9a	=	"MHS9a - Prof dev - Tobacco use cessation"
MHS9b	=	"MHS9b - Prof dev - Alcohol/drug use treatment"
MHS9c	=	"MHS9c - Prof dev - Counseling after natural disaster"
MHS9d	=	"MHS9d - Prof dev - Crisis intervention for personal problems"
MHS9e	=	"MHS9e - Prof dev - Emergency preparedness"
MHS9f	=	"MHS9f - Prof dev - ID of emot/behav disorders"
MHS9g	=	"MHS9g - Prof dev - Counsel for emot/behav disorders"
MHS9h	=	"MHS9h - Prof dev - Stress mgmt"
MHS9i	=	"MHS9i - Prof dev - Weight mgmt"
MHS9j	=	"MHS9j - Prof dev - Eating disorder ID/referral"
MHS9k	=	"MHS9k - Prof dev - HIV counseling/testing/referral"
MHS9l	=	"MHS9l - Prof dev - Physical/Sexual/Emot abuse ID/referral"
MHS9m	=	"MHS9m - Prof dev - Family problems ID/referral"
MHS9n	=	"MHS9n - Prof dev - After-school prog"
MHS9o	=	"MHS9o - Prof dev - Child care options"
MHS9p	=	"MHS9p - Prof dev - LGBT services"
MHS9q	=	"MHS9q - Prof dev - WIC enrollment/food stamps/banks"
MHS9r	=	"MHS9r - Prof dev - Temporary/permanent housing"
MHS9s	=	"MHS9s - Prof dev - Medicaid/SCHIP"
MHS9t	=	"MHS9t - Prof dev - Accessing benefits students w disab"
MHS9u	=	"MHS9u - Prof dev - Job readiness skills prog"
MHS10a	=	"MHS10a -Prof dev - Nutr/dietary behav counseling"
MHS10b	=	"MHS10b -Prof dev - PA/fitness counseling"
MHS10c	=	"MHS10c - Prof dev - Pregnancy prev"
MHS10d	=	"MHS10d - Prof dev - HIV prev"
MHS10e	=	"MHS10e - Prof dev - STD prev"
MHS10f	=	"MHS10f - Prof dev - Suicide prev"
MHS10g	=	"MHS10g - Prof dev - Tobacco use prev"
MHS10h	=	"MHS10h - Prof dev - Alcohol/drug use prev"
MHS10i	=	"MHS10i - Prof dev - Violence prev"
MHS10j	=	"MHS10j - Prof dev - Injury prev"
MHS11a	=	"MHS11a - Prof dev - Case mgmt"
MHS11b	=	"MHS11b - Prof dev - Family counseling"
MHS11c	=	"MHS11c - Prof dev - Group counseling"
MHS11d	=	"MHS11d - Prof dev - Individual counseling"
MHS11e	=	"MHS11e - Prof dev -  Comp assessment/intake eval"
MHS11f	=	"MHS11f - Prof dev - Peer counseling/mediation"
MHS11g	=	"MHS11g - Prof dev - Self-help/support groups"
MHS11h	=	"MHS11h - Prof dev - Student assistance prog"
MHS11i	=	"MHS11i - Prof dev - Student support teams"
MHS12a	=	"MHS12a - Training - Signs/symptoms of physical/sexual/emot abuse"
MHS12b	=	"MHS12b - Training - Signs/symptoms of substance abuse"
MHS12c	=	"MHS12c - Training - Signs/symptoms of depression/suicidality"
MHS12d	=	"MHS12d - Training - Signs/symptoms of dating violence"
MHS12e	=	"MHS12e - Training - Signs/symptoms of bullying victimization"
MHS12f	=	"MHS12f - Training - Appropriate referrals"
MHS12g	=	"MHS12g - Training - Managing students with emot/behav problems"
MHS13	=	"MHS13 - St person oversee/coord MH/SS"
MHS14	=	"MHS14 - R is person"
MHS15_1	=	"MHS15_1 - R works for st ed agency"
MHS15_2	=	"MHS15_2 - R works for st MH/SS agency"
MHS15_3	=	"MHS15_3 - R works for st public hlth agency"
MHS15_4	=	"MHS15_4 - R works for other"
MHS16	=	"MHS16 - R has undergrad degree"
MHS17_1	=	"MHS17_1 - R major - Counseling"
MHS17_2	=	"MHS17_2 - R major - Psych"
MHS17_3	=	"MHS17_3 - R major  - Soc work"
MHS17_4	=	"MHS17_4 - R major - Ed"
MHS17_5	=	"MHS17_5 - R major - Other (Specify)"
MHS17_5SPEC	=	"MHS17_5SPEC - R major - Specify"
MHS18	=	"MHS18 - R has minor"
MHS19_1	=	"MHS19_1 - R minor - Counseling"
MHS19_2	=	"MHS19_2 - R minor -  Psych"
MHS19_3	=	"MHS19_3 - R minor - Soc work"
MHS19_4	=	"MHS19_4 - R minor - Ed"
MHS19_5	=	"MHS19_5 - R minor - Other (Specify)"
MHS19_5SPEC	=	"MHS19_5SPEC - R minor - Specify"
MHS20	=	"MHS20 - R has grad degree"
MHS21_1	=	"MHS21_1 - R grad degree - Counseling"
MHS21_2	=	"MHS21_2 - R grad degree - Psych"
MHS21_3	=	"MHS21_3 - R grad degree - Soc work"
MHS21_4	=	"MHS21_4 - R grad degree -Ed"
MHS21_5	=	"MHS21_5 - R grad degree - Other (Specify)"
MHS21_5SPEC	=	"MHS21_5SPEC - R grad degree - Specify"
MHS22	=	"MHS22 - R lic/cert/cred to provide MH/SS"
;
run;
