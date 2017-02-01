
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
/*  "HLTHSERS_SAS_Input_Program.sas" to create the 2012 SHPPS dataset.                  */
/****************************************************************************************/

filename datain 'c:\shpps2012\hlthsers2012.dat';

libname dataout 'c:\shpps2012';

libname library 'c:\shpps2012';

data dataout.hlthsers2012 ;
infile datain lrecl=500;
missing A C F;

input
SNAME	$  1-20
STCMSID	22-25
RTITLE	$ 27-90
CTYPE	$ 92-100
HSS1a	102-102
HSS1b	103-103
HSS1c	104-104
HSS1d	105-105
HSS1e	106-106
HSS1f	107-107
HSS1g	108-108
HSS1h	109-109
HSS1i	110-110
HSS1j	111-111
HSS1k	112-112
HSS1l	113-113
HSS1m	114-114
HSS1n	115-115
HSS2a	116-116
HSS2b	117-117
HSS2c	118-118
HSS2d	119-119
HSS2e	120-120
HSS2f	121-121
HSS2g	122-122
HSS2h	123-123
HSS2i	124-124
HSS2j	125-125
HSS2k	126-126
HSS2l	127-127
HSS2m	128-128
HSS2n	129-129
HSS3a	130-130
HSS3b	131-131
HSS3c	132-132
HSS3d	133-133
HSS3e	134-134
HSS3f	135-135
HSS3g	136-136
HSS3h	137-137
HSS3i	138-138
HSS3j	139-139
HSS3k	140-140
HSS3l	141-141
HSS3m	142-142
HSS3n	143-143
HSS3o	144-144
HSS3p	145-145
HSS3q	146-146
HSS3r	147-147
HSS3s	148-148
HSS3t	149-149
HSS3u	150-150
HSS4_1	151-151
HSS4_2	152-152
HSS4_3	153-153
HSS4_4	154-154
HSS4_5	155-155
HSS4_6	156-156
HSS4_7	157-157
HSS4_8	158-158
HSS5	159-159
HSS6a	160-160
HSS6b	161-161
HSS6c	162-162
HSS6d	163-163
HSS6e	164-164
HSS7a	165-165
HSS7b	166-166
HSS7c	167-167
HSS7d	168-168
HSS7e	169-169
HSS7f	170-170
HSS7g	171-171
HSS7h	172-172
HSS7i	173-173
HSS7j	174-174
HSS7k	175-175
HSS8a	176-176
HSS8b	177-177
HSS8c	178-178
HSS8d	179-179
HSS8e	180-180
HSS9a	181-181
HSS9b	182-182
HSS9c	183-183
HSS9d	184-184
HSS10	185-185
HSS11	186-186
HSS12	187-187
HSS13	188-188
HSS14	189-189
HSS15a	190-190
HSS15b	191-191
HSS15c	192-192
HSS15d	193-193
HSS15e	194-194
HSS15f	195-195
HSS15g	196-196
HSS15h	197-197
HSS15i	198-198
HSS15j	199-199
HSS15k	200-200
HSS15l	201-201
HSS15m	202-202
HSS15n	203-203
HSS15o	204-204
HSS15p	205-205
HSS15q	206-206
HSS15r	207-207
HSS16a	208-208
HSS16b	209-209
HSS16c	210-210
HSS16d	211-211
HSS16e	212-212
HSS16f	213-213
HSS16g	214-214
HSS16h	215-215
HSS16i	216-216
HSS16j	217-217
HSS17a	218-218
HSS17b	219-219
HSS17c	220-220
HSS17d	221-221
HSS17e	222-222
HSS17f	223-223
HSS17g	224-224
HSS17h	225-225
HSS17i	226-226
HSS17j	227-227
HSS17k	228-228
HSS17l	229-229
HSS17m	230-230
HSS17n	231-231
HSS17o	232-232
HSS17p	233-233
HSS17q	234-234
HSS17r	235-235
HSS17s	236-236
HSS17t	237-237
HSS17u	238-238
HSS17v	239-239
HSS17w	240-240
HSS17x	241-241
HSS17y	242-242
HSS17z	243-243
HSS17aa	244-244
HSS18a	245-245
HSS18b	246-246
HSS18c	247-247
HSS18d	248-248
HSS18e	249-249
HSS19	251-254
HSS20	256-258
HSS21_1	260-260
HSS21_2	261-261
HSS21_3	262-262
HSS21_4	263-263
HSS21_5	264-264
HSS21_6	265-265
HSS21_7	266-266
HSS21_8	267-267
HSS22	268-268
HSS23	269-269
HSS24_1	270-270
HSS24_2	271-271
HSS24_3	272-272
HSS25	273-273
HSS26_1	274-274
HSS26_2	275-275
HSS26_3	276-276
HSS26_3SPEC	$ 277-327
HSS27	328-328
HSS28_1	329-329
HSS28_2	330-330
HSS28_3	331-331
HSS28_3SPEC	$ 332-382
HSS29	383-383
HSS30_1	384-384
HSS30_2	385-385
HSS30_3	386-386
HSS30_3SPEC	$ 387-437
HSS31a	438-438
HSS31b	439-439
HSS31c	440-440
HSS32a	441-441
HSS32b	442-442
HSS32c	443-443
HSS32d	444-444
HSS32dSPEC	$ 445-490
;

************************************
*  Assign formats to SAS variables.*
************************************;
format

HSS1a
HSS1b
HSS1c
HSS1d
HSS1e
HSS1f
HSS1g
HSS1h
HSS1i
HSS1j
HSS1k
HSS1l
HSS1m
HSS1n
HSS2a
HSS2b
HSS2c
HSS2d
HSS2e
HSS2f
HSS2g
HSS2h
HSS2i
HSS2j
HSS2k
HSS2l
HSS2m
HSS2n
HSS3a
HSS3b
HSS3c
HSS3d
HSS3e
HSS3f
HSS3g
HSS3h
HSS3i
HSS3j
HSS3k
HSS3l
HSS3m
HSS3n
HSS3o
HSS3p
HSS3q
HSS3r
HSS3s
HSS3t
HSS3u
HSS4_1
HSS4_2
HSS4_3
HSS4_4
HSS4_5
HSS4_6
HSS4_7
HSS4_8
HSS5

HSS7a
HSS7b
HSS7c
HSS7d
HSS7e
HSS7f
HSS7g
HSS7h
HSS7i
HSS7j
HSS7k
HSS8a
HSS8b
HSS8c
HSS8d
HSS8e
HSS9a
HSS9b
HSS9c
HSS9d
HSS10
HSS11
HSS13
HSS14
HSS15a
HSS15b
HSS15c
HSS15d
HSS15e
HSS15f
HSS15g
HSS15h
HSS15i
HSS15j
HSS15k
HSS15l
HSS15m
HSS15n
HSS15o
HSS15p
HSS15q
HSS15r
HSS16a
HSS16b
HSS16c
HSS16d
HSS16e
HSS16f
HSS16g
HSS16h
HSS16i
HSS16j
HSS17a
HSS17b
HSS17c
HSS17d
HSS17e
HSS17f
HSS17g
HSS17h
HSS17i
HSS17j
HSS17k
HSS17l
HSS17m
HSS17n
HSS17o
HSS17p
HSS17q
HSS17r
HSS17s
HSS17t
HSS17u
HSS17v
HSS17w
HSS17x
HSS17y
HSS17z
HSS17aa
HSS18a
HSS18b
HSS18c
HSS18d
HSS18e
HSS21_1
HSS21_2
HSS21_3
HSS21_4
HSS21_5
HSS21_6
HSS21_7
HSS21_8
HSS22
HSS23
HSS24_1
HSS24_2
HSS24_3
HSS25
HSS26_1
HSS26_2
HSS26_3
HSS27
HSS28_1
HSS28_2
HSS28_3
HSS29
HSS30_1
HSS30_2
HSS30_3
HSS31a
HSS31b
HSS31c
HSS32a
HSS32c
HSS32d

shppsyesno.

HSS6a
HSS6b
HSS6c
HSS6d
HSS6e
shppsynstaff.

HSS12
heaserfreq.

HSS32b
heasercert.
;

***********************************
*  Assign labels to SAS variables.*
***********************************;
label 
CTYPE="MODE OF COMPLETION"
RTITLE="RESPONDENT TITLE"
SNAME="STATE NAME"
STCMSID="STATE ID" 
HSS1a	=	"HSS1a - St pol - HIV/AIDS"
HSS1b	=	"HSS1b - St pol - Severe food/other allergies"
HSS1c	=	"HSS1c - St pol - Chronic hlth conditions"
HSS1d	=	"HSS1d - St pol - Infectious disease prev"
HSS1e	=	"HSS1e - St pol - Foodborne illness prev"
HSS1f	=	"HSS1f - St pol - Sending sick students home"
HSS1g	=	"HSS1g - St pol - School closure for absences"
HSS1h	=	"HSS1h - St pol - Student hlth records"
HSS1i	=	"HSS1i - St pol - Immun reqs"
HSS1j	=	"HSS1j - St pol - TB testing"
HSS1k	=	"HSS1k - St pol - Screening hlth conditions"
HSS1l	=	"HSS1l - St pol - Weight status screening using BMI"
HSS1m	=	"HSS1m - St pol - Administering student medications/treatments"
HSS1n	=	"HSS1n - St pol - Linking students to community hlthcare providers"
HSS2a	=	"HSS2a - Distrib - HIV/AIDS"
HSS2b	=	"HSS2b - Distrib - Severe food/other allergies"
HSS2c	=	"HSS2c - Distrib - Chronic hlth conditions"
HSS2d	=	"HSS2d - Distrib - Infectious disease prev"
HSS2e	=	"HSS2e - Distrib - Foodborne illness prev"
HSS2f	=	"HSS2f - Distrib - Sending sick students home"
HSS2g	=	"HSS2g - Distrib - School closure for absences"
HSS2h	=	"HSS2h - Distrib - Student hlth records"
HSS2i	=	"HSS2i - Distrib - Immun reqs"
HSS2j	=	"HSS2j - Distrib  - TB testing"
HSS2k	=	"HSS2k - Distrib - Screening hlth conditions"
HSS2l	=	"HSS2l - Distrib - Weight status screening using BMI"
HSS2m	=	"HSS2m - Distrib - Administering student medications/treatments"
HSS2n	=	"HSS2n - Distrib - Linking students to community hlthcare providers"
HSS3a	=	"HSS3a - TA - HIV/AIDS"
HSS3b	=	"HSS3b - TA - Severe food/other allergies"
HSS3c	=	"HSS3c - TA - Chronic hlth conditions"
HSS3d	=	"HSS3d - TA - Infectious disease prev"
HSS3e	=	"HSS3e - TA - Foodborne illness prev"
HSS3f	=	"HSS3f - TA - Sending sick students home"
HSS3g	=	"HSS3g - TA - School closure for absences"
HSS3h	=	"HSS3h - TA - Student hlth records"
HSS3i	=	"HSS3i - TA - Immun reqs"
HSS3j	=	"HSS3j - TA - TB testing"
HSS3k	=	"HSS3k - TA - Screening hlth conditions"
HSS3l	=	"HSS3l - TA - Weight status screening using BMI"
HSS3m	=	"HSS3m - TA - Administering student medications/treatments"
HSS3n	=	"HSS3n - TA - Linking students to community hlthcare providers"
HSS3o	=	"HSS3o - TA - Establishing school-located vaccination clinic"
HSS3p	=	"HSS3p - TA - Electronic system student nurse visits"
HSS3q	=	"HSS3q - TA - Electronic system student absence reasons"
HSS3r	=	"HSS3r - TA - Medicaid billing/claims"
HSS3s	=	"HSS3s - TA - SCHIP billing"
HSS3t	=	"HSS3t - TA - Private insurance billing"
HSS3u	=	"HSS3u - TA - Applying for grants"
HSS4_1	=	"HSS4_1 - HSV funding from st budget"
HSS4_2	=	"HSS4_2 - HSV funding from school district budgets"
HSS4_3	=	"HSS4_3 - HSV funding from Medicaid"
HSS4_4	=	"HSS4_4 - HSV funding from SCHIP"
HSS4_5	=	"HSS4_5 - HSV funding from private ins"
HSS4_6	=	"HSS4_6 - HSV funding from public grants"
HSS4_7	=	"HSS4_7 - HSV funding from private grants"
HSS4_8	=	"HSS4_8 - HSV funding from other"
HSS5	=	"HSS5 - Schools as Medicaid providers"
HSS6a	=	"HSS6a - St HSV staff w HE staff"
HSS6b	=	"HSS6b - St HSV staff w PE staff"
HSS6c	=	"HSS6c - St HSV staff w Nutrition staff"
HSS6d	=	"HSS6d - St HSV staff w MH/SS staff"
HSS6e	=	"HSS6e - St HSV staff w Special ed staff"
HSS7a	=	"HSS7a - St HSV staff w st sch nurses assoc"
HSS7b	=	"HSS7b - St HSV staff w w st physicans org"
HSS7c	=	"HSS7c - St HSV staff w st hlth org"
HSS7d	=	"HSS7d - St HSV staff w st parents org"
HSS7e	=	"HSS7e - St HSV staff w st hlth dept"
HSS7f	=	"HSS7f - St HSV staff w st MH/SS agency"
HSS7g	=	"HSS7g - St HSV staff w st juv just dept"
HSS7h	=	"HSS7h - St HSV staff w colleges/universities"
HSS7i	=	"HSS7i - St HSV staff w businesses"
HSS7j	=	"HSS7j - St HSV staff w child welfare agency"
HSS7k	=	"HSS7k - St HSV staff w dental assocication"
HSS8a	=	"HSS8a - St eval - Hlth services prog"
HSS8b	=	"HSS8b - St eval - Hlth services policies"
HSS8c	=	"HSS8c - St eval - Hlth services prof dev"
HSS8d	=	"HSS8d - St eval - Student use of HSV"
HSS8e	=	"HSS8e - St eval - Family satisfaction"
HSS9a	=	"HSS9a - Report - Student injury data"
HSS9b	=	"HSS9b - Report - Student immun data"
HSS9c	=	"HSS9c - Report - Student weight status data"
HSS9d	=	"HSS9d - Report - Notifiable diseases"
HSS10	=	"HSS10 - Conseq fail comply immun req"
HSS11	=	"HSS11 - St has real-time access info"
HSS12	=	"HSS12 - How often dist/schools submit info"
HSS13	=	"HSS13 - Absence reasons reported"
HSS14	=	"HSS14 - Rec specific electronic system"
HSS15a	=	"HSS15a - Prof dev - First aid"
HSS15b	=	"HSS15b - Prof dev - CPR or AED use"
HSS15c	=	"HSS15c - Prof dev - Medication administration"
HSS15d	=	"HSS15d - Prof dev - Seasonal influenza vaccine"
HSS15e	=	"HSS15e - Prof dev - Other immun"
HSS15f	=	"HSS15f - Prof dev - ID/school-based mgmt of acute illnesses"
HSS15g	=	"HSS15g - Prof dev - ID/school-based mgmt of chronic hlth conditions"
HSS15h	=	"HSS15h - Prof dev - Tracking chronic hlth conditions"
HSS15i	=	"HSS15i - Prof dev - Case mgmt chronic hlth conditions"
HSS15j	=	"HSS15j - Prof dev - Case mgmt disabilities"
HSS15k	=	"HSS15k - Prof dev - Sports physicals"
HSS15l	=	"HSS15l - Prof dev - Oral hlth problems"
HSS15m	=	"HSS15m - Prof dev-Topical fluorides"
HSS15n	=	"HSS15n - Prof dev - Dental sealants"
HSS15o	=	"HSS15o - Prof dev - Prenatal care"
HSS15p	=	"HSS15p - Prof dev - ID/treatment of STDs"
HSS15q	=	"HSS15q - Prof dev - Contraceptives"
HSS15r	=	"HSS15r - Prof dev - Infectious disease prev"
HSS16a	=	"HSS16a - Prof dev - Nutrition/dietary behavior counseling"
HSS16b	=	"HSS16b - Prof dev - PA/fitness counseling"
HSS16c	=	"HSS16c - Prof dev - Pregnancy prev"
HSS16d	=	"HSS16d - Prof dev - HIV prev"
HSS16e	=	"HSS16e - Prof dev - STD prev"
HSS16f	=	"HSS16f - Prof dev - Suicide prev"
HSS16g	=	"HSS16g - Prof dev - Tobacco use prev"
HSS16h	=	"HSS16h - Prof dev - Alcohol/drug use prev"
HSS16i	=	"HSS16i - Prof dev- Violence prev"
HSS16j	=	"HSS16j - Prof dev - Injury prev/safety counseling"
HSS17a	=	"HSS17a - Prof dev - Self-mgmt of chronic hlth conditions"
HSS17b	=	"HSS17b - Prof dev - Referrals for chronic hlth conditions"
HSS17c	=	"HSS17c - Prof dev - Tobacco use cessation"
HSS17d	=	"HSS17d - Prof dev - Alcohol/drug use treatment"
HSS17e	=	"HSS17e - Prof dev - Counseling after natural disaster"
HSS17f	=	"HSS17f - Prof dev - Crisis intervention for personal problems"
HSS17g	=	"HSS17g - Prof dev - Emergency prep"
HSS17h	=	"HSS17h - Prof dev - ID of emotional/behav disorders"
HSS17i	=	"HSS17i - Prof dev - Counseling for emotional/behav disorders"
HSS17j	=	"HSS17j - Prof dev - Stress mgmt"
HSS17k	=	"HSS17k - Prof dev - Weight mgmt"
HSS17l	=	"HSS17l - Prof dev - Eating disorder ID/referral"
HSS17m	=	"HSS17m - Prof dev - HIV counseling/testing/referral"
HSS17n	=	"HSS17n - Prof dev - Physical/sexual/emotional abuse ID/referral"
HSS17o	=	"HSS17o - Prof dev - Family problems ID/referral"
HSS17p	=	"HSS17p - Prof dev - After-school prog"
HSS17q	=	"HSS17q - Prof dev - Child care options "
HSS17r	=	"HSS17r - Prof dev - LGBT services"
HSS17s	=	"HSS17s - Prof dev - WIC enrollment/food stamp/bank "
HSS17t	=	"HSS17t - Prof dev - Temporary/permanent housing"
HSS17u	=	"HSS17u - Prof dev - Medicaid/SCHIP enrollment"
HSS17v	=	"HSS17v - Prof dev - Accessing benefits students with disabilities"
HSS17w	=	"HSS17w - Prof dev - Job readiness skills prog"
HSS17x	=	"HSS17x - Prof dev - Infectious disease outbreak detection/response"
HSS17y	=	"HSS17y - Prof dev - Federal laws protecting privacy"
HSS17z	=	"HSS17z - Prof dev -  Measuring student height/weight"
HSS17aa	=	"HSS17aa - Prof dev - Calculating student weight status using BMI"
HSS18a	=	"HSS18a - Prof dev to teachers - CPR or AED use"
HSS18b	=	"HSS18b - Prof dev to teachers - HIV/AIDS"
HSS18c	=	"HSS18c - Prof dev to teachers - Severe food/other allergies"
HSS18d	=	"HSS18d - Prof dev to teachers -  Chronic hlth conditions"
HSS18e	=	"HSS18e - Prof dev to teachers - Infectious disease prev"
HSS19	=	"HSS19 - Number SBHC - HSV"
HSS20	=	"HSS20 - Number SBHC - MH/SS"
HSS21_1	=	"HSS21_1 - SBHC funded st budget"
HSS21_2	=	"HSS21_2 - SBHC funded dist budget"
HSS21_3	=	"HSS21_3 - SBHC funded Medicaid"
HSS21_4	=	"HSS21_4 - SBHC funded SCHIP"
HSS21_5	=	"HSS21_5 - SBHC funded private ins"
HSS21_6	=	"HSS21_6 - SBHC funded public grants"
HSS21_7	=	"HSS21_7 - SBHC funded private grants"
HSS21_8	=	"HSS21_8 - SBHC funded other"
HSS22	=	"HSS22 - St person overss/coord HSV"
HSS23	=	"HSS23 - R is person"
HSS24_1	=	"HSS24_1 - R works for st ed agency"
HSS24_2	=	"HSS24_2 - R works for st public hlth agency"
HSS24_3	=	"HSS24_3 - R works for other"
HSS25	=	"HSS25 - R has undergrad degree"
HSS26_1	=	"HSS26_1 - R major - Nursing"
HSS26_2	=	"HSS26_2 - R major - Ed"
HSS26_3	=	"HSS26_3 - R major - Other (Specify)"
HSS26_3SPEC	=	"HSS26_3SPEC - R major - Other"
HSS27	=	"HSS27 - R has undergrad minor"
HSS28_1	=	"HSS28_1 - R minor - Nursing"
HSS28_2	=	"HSS28_2 - R minor - Ed"
HSS28_3	=	"HSS28_3 - R minor - Other (Specify)"
HSS28_3SPEC	=	"HSS28_3SPEC - R minor - Specify"
HSS29	=	"HSS29 - R has grad degree"
HSS30_1	=	"HSS30_1 - R grad degree - Nursing"
HSS30_2	=	"HSS30_2 - R grad degree - Ed"
HSS30_3	=	"HSS30_3 - R grad degree - Other (Specify)"
HSS30_3SPEC	=	"HSS30_3SPEC - R grad degree - Specify"
HSS31a	=	"HSS31a - LPN license"
HSS31b	=	"HSS31b - RN license"
HSS31c	=	"HSS31c - CNP licence"
HSS32a	=	"HSS32a - NBCSN cert"
HSS32b	=	"HSS32b - St school nurse cert"
HSS32c	=	"HSS32c - ANCC cert"
HSS32d	=	"HSS32d - Other cert"
HSS32dSPEC	=	"HSS32dSPEC - Other cert (Specify)"
;
run;


