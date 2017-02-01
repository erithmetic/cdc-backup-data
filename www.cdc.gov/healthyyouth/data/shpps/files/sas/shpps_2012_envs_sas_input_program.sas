
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
/*  "ENVS_SAS_Input_Program.sas" to create the 2012 SHPPS dataset.                      */
/****************************************************************************************/

filename datain 'c:\shpps2012\envs2012.dat';

libname dataout 'c:\shpps2012';

libname library 'c:\shpps2012';

data dataout.envs2012 ;
infile datain lrecl=500 ;
missing A C F;

input
SNAME	$1-20
STCMSID	22-25
RTITLE	$27-110
CTYPE	$112-115
ENS1a	117-117
ENS1b	118-118
ENS1c	119-119
ENS1d	120-120
ENS1e	121-121
ENS1f	122-122
ENS1g	123-123
ENS1h	124-124
ENS1i	125-125
ENS1j	126-126
ENS1k	127-127
ENS1l	128-128
ENS1m	129-129
ENS1n	130-130
ENS1o	131-131
ENS1p	132-132
ENS1q	133-133
ENS1r	134-134
ENS1s	135-135
ENS1t	136-136
ENS1u	137-137
ENS2a	138-138
ENS2b	139-139
ENS2c	140-140
ENS2d	141-141
ENS2e	142-142
ENS2f	143-143
ENS2g	144-144
ENS2h	145-145
ENS2i	146-146
ENS2j	147-147
ENS2k	148-148
ENS2l	149-149
ENS2m	150-150
ENS2n	151-151
ENS2o	152-152
ENS2p	153-153
ENS2q	154-154
ENS2r	155-155
ENS2s	156-156
ENS2t	157-157
ENS2u	158-158
ENS3a	159-159
ENS3b	160-160
ENS3c	161-161
ENS3d	162-162
ENS3e	163-163
ENS3f	164-164
ENS3g	165-165
ENS3h	166-166
ENS3i	167-167
ENS3j	168-168
ENS3k	169-169
ENS3l	170-170
ENS3m	171-171
ENS3n	172-172
ENS3o	173-173
ENS3p	174-174
ENS3q	175-175
ENS3r	176-176
ENS3s	177-177
ENS3t	178-178
ENS3u	179-179
ENS3v	180-180
ENS3w	181-181
ENS3x	182-182
ENS3y	183-183
ENS3z	184-184
ENS4a	185-185
ENS4b	186-186
ENS4c	187-187
ENS4d	188-188
ENS4e	189-189
ENS4f	190-190
ENS4g	191-191
ENS4h	192-192
ENS4i	193-193
ENS4j	194-194
ENS4k	195-195
ENS4l	196-196
ENS4m	197-197
ENS4n	198-198
ENS4o	199-199
ENS4p	200-200
ENS4q	201-201
ENS5a	202-202
ENS5b	203-203
ENS5c	204-204
ENS5d	205-205
ENS5e	206-206
ENS5f	207-207
ENS5g	208-208
ENS5h	209-209
ENS6	210-210
ENS7a	211-211
ENS7b	212-212
ENS7c	213-213
ENS7d	214-214
ENS7e	215-215
ENS7f	216-216
ENS7g	217-217
ENS7h	218-218
ENS8	219-219
ENS9a	220-220
ENS9b	221-221
ENS9c	222-222
ENS9d	223-223
ENS9e	224-224
ENS10	225-225
ENS11	226-226
ENS12	227-227
ENS13	228-228
ENS14a	229-229
ENS14b	230-230
ENS14c	231-231
ENS14d	232-232
ENS14e	233-233
ENS14f	234-234
ENS14g	235-235
ENS14h	236-236
ENS14i	237-237
ENS14j	238-238
ENS14k	239-239
ENS14l	240-240
ENS15a	241-241
ENS15b	242-242
ENS15c	243-243
ENS15d	244-244
ENS16a	245-245
ENS16b	246-246
ENS16c	247-247
ENS16d	248-248
ENS16e	249-249
ENS16f	250-250
ENS16g	251-251
ENS16h	252-252
ENS16i	253-253
ENS16j	254-254
ENS16k	255-255
ENS16l	256-256
ENS16m	257-257
ENS16n	258-258
ENS16o	259-259
ENS16p	260-260
ENS16q	261-261
ENS16r	262-262
ENS16s	263-263
ENS16t	264-264
ENS16u	265-265
ENS16v	266-266
ENS17	267-267
ENS18	268-268
ENS19	269-269
ENS20a	270-270
ENS20b	271-271
ENS20c	272-272
ENS20d	273-273
ENS20e	274-274
ENS20f	275-275
ENS20g	276-276
ENS21	277-279
ENS22	280-280
ENS23_1	281-281
ENS23_2	282-282
ENS23_3	283-283
ENS23_4	284-284
ENS23_5	285-285
ENS23_6	286-286
ENS23_7	287-287
ENS23_8	288-288
ENS23_9	289-289
ENS23_10	290-290
ENS24	291-291
ENS25_1	292-292
ENS25_2	293-293
ENS25_3	294-294
ENS25_4	295-295
ENS25_5	296-296
ENS25_6	297-297
ENS25_7	298-298
ENS25_8	299-299
ENS25_9	300-300
ENS25_10	301-301
ENS26	302-302
ENS27_1	303-303
ENS27_2	304-304
ENS27_3	305-305
ENS27_4	306-306
ENS27_5	307-307
ENS27_6	308-308
ENS27_7	309-309
ENS27_8	310-310
ENS27_9	311-311
ENS27_10	312-312
ENS27_11	313-313
;

************************************
*  Assign formats to SAS variables.*
************************************;
format

ENS1a
ENS1b
ENS1c
ENS1d
ENS1e
ENS1f
ENS1g
ENS1h
ENS1i
ENS1j
ENS1k
ENS1l
ENS1m
ENS1n
ENS1o
ENS1p
ENS1q
ENS1r
ENS1s
ENS1t
ENS1u
ENS2a
ENS2b
ENS2c
ENS2d
ENS2e
ENS2f
ENS2g
ENS2h
ENS2i
ENS2j
ENS2k
ENS2l
ENS2m
ENS2n
ENS2o
ENS2p
ENS2q
ENS2r
ENS2s
ENS2t
ENS2u
ENS3a
ENS3b
ENS3c
ENS3d
ENS3e
ENS3f
ENS3g
ENS3h
ENS3i
ENS3j
ENS3k
ENS3l
ENS3m
ENS3n
ENS3o
ENS3p
ENS3q
ENS3r
ENS3s
ENS3t
ENS3u
ENS3v
ENS3w
ENS3x
ENS3y
ENS3z
ENS4a
ENS4b
ENS4c
ENS4d
ENS4e
ENS4f
ENS4g
ENS4h
ENS4i
ENS4j
ENS4k
ENS4l
ENS4m
ENS4n
ENS4o
ENS4p
ENS4q
ENS5a
ENS5b
ENS5c
ENS5d
ENS5e
ENS5f
ENS5g
ENS5h
ENS6
ENS7a
ENS7b
ENS7c
ENS7d
ENS7e
ENS7f
ENS7g
ENS7h
ENS8
ENS9a
ENS9b
ENS9c
ENS9d
ENS9e
ENS10
ENS11
ENS12
ENS13
ENS14a
ENS14b
ENS14c
ENS14d
ENS14e
ENS14f
ENS14g
ENS14h
ENS14i
ENS14j
ENS14k
ENS14l
ENS15a
ENS15b
ENS15c
ENS15d
ENS16a
ENS16b
ENS16c
ENS16d
ENS16e
ENS16f
ENS16g
ENS16h
ENS16i
ENS16j
ENS16k
ENS16l
ENS16m
ENS16n
ENS16o
ENS16p
ENS16q
ENS16r
ENS16s
ENS16t
ENS16u
ENS16v

ENS18
ENS19
ENS20a
ENS20b
ENS20c
ENS20d
ENS20e

ENS22
ENS23_1
ENS23_2
ENS23_3
ENS23_4
ENS23_5
ENS23_6
ENS23_7
ENS23_8
ENS23_9
ENS23_10
ENS24
ENS25_1
ENS25_2
ENS25_3
ENS25_4
ENS25_5
ENS25_6
ENS25_7
ENS25_8
ENS25_9
ENS25_10
ENS26
ENS27_1
ENS27_2
ENS27_3
ENS27_4
ENS27_5
ENS27_6
ENS27_7
ENS27_8
ENS27_9
ENS27_10
ENS27_11

shppsyesno.

ENS17
envtime.

ENS20f
envynteam.

ENS20g
envynoffer.

;
***********************************
*  Assign labels to SAS variables.*
***********************************;
label 
CTYPE="MODE OF COMPLETION"
RTITLE="RESPONDENT TITLE"
SNAME="STATE NAME"
STCMSID="STATE ID" 
ENS1a	=	"ENS1a - St pol - Classroom mgmt"
ENS1b	=	"ENS1b - St pol - Cyber-bullying prev"
ENS1c	=	"ENS1c - St pol - Other bullying prev"
ENS1d	=	"ENS1d -  St pol - Dating violence prev"
ENS1e	=	"ENS1e -  St pol - Other violence prev"
ENS1f	=	"ENS1f -  St pol - Injury prev/safety"
ENS1g	=	"ENS1g - St pol - Sun safety"
ENS1h	=	"ENS1h - St pol - Tobacco use prev"
ENS1i	=	"ENS1i - St pol - Alcohol use prev"
ENS1j	=	"ENS1j - St pol - Illegal drug use prev"
ENS1k	=	"ENS1k - St pol - Crisis prep/response/recovery"
ENS1l	=	"ENS1l - St pol - Indoor air qual"
ENS1m	=	"ENS1m - St pol - Drinking water qual"
ENS1n	=	"ENS1n - St pol - Integrated pest mgmt"
ENS1o	=	"ENS1o - St pol - Green cleaning products and practices"
ENS1p	=	"ENS1p - St pol - Green building design or construction"
ENS1q	=	"ENS1q - St pol - Radon testing"
ENS1r	=	"ENS1r - St pol - Site selection for new school buildings"
ENS1s	=	"ENS1s - St pol - School building renovation"
ENS1t	=	"ENS1t - St pol - Joint use agreements"
ENS1u	=	"ENS1u - St pol - FSHP"
ENS2a	=	"ENS2a - Distrib - Classroom mgmt"
ENS2b	=	"ENS2b - Distrib - Cyber-bullying prev"
ENS2c	=	"ENS2c - Distrib - Other bullying prev"
ENS2d	=	"ENS2d -  Distrib - Dating violence prev"
ENS2e	=	"ENS2e -  Distrib - Other violence prev"
ENS2f	=	"ENS2f -  Distrib - Injury prev/safety"
ENS2g	=	"ENS2g - Distrib - Sun safety"
ENS2h	=	"ENS2h - Distrib - Tobacco use prev"
ENS2i	=	"ENS2i - Distrib - Alcohol use prev"
ENS2j	=	"ENS2j - Distrib - Illegal drug use prev"
ENS2k	=	"ENS2k - Distrib - Crisis prep/response/recovery"
ENS2l	=	"ENS2l - Distrib - Indoor air qual"
ENS2m	=	"ENS2m - Distrib - Drinking water qual"
ENS2n	=	"ENS2n - Distrib - Integrated pest mgmt"
ENS2o	=	"ENS2o - Distrib - Green cleaning products and practices"
ENS2p	=	"ENS2p - Distrib - Green building design or construction"
ENS2q	=	"ENS2q - Distrib - Radon testing"
ENS2r	=	"ENS2r - Distrib - Site selection for new school buildings"
ENS2s	=	"ENS2s - Distrib - School building renovation"
ENS2t	=	"ENS2t - Distrib - Joint use agreements"
ENS2u	=	"ENS2u - Distrib - FSHP"
ENS3a	=	"ENS3a - TA - Classroom mgmt"
ENS3b	=	"ENS3b - TA - Cyber-bullying prev"
ENS3c	=	"ENS3c - TA - Other bullying prev"
ENS3d	=	"ENS3d - TA - Dating violence prev"
ENS3e	=	"ENS3e - TA - Other violence prev"
ENS3f	=	"ENS3f - TA - Injury prev/safety"
ENS3g	=	"ENS3g - TA - Sun safety"
ENS3h	=	"ENS3h - TA - Tobacco use prev"
ENS3i	=	"ENS3i - TA - Alcohol use prev"
ENS3j	=	"ENS3j - TA - Illegal drug use prev"
ENS3k	=	"ENS3k - TA - Crisis prep/response/recovery"
ENS3l	=	"ENS3l - TA - Indoor air qual"
ENS3m	=	"ENS3m - TA - Drinking water qual"
ENS3n	=	"ENS3n - TA - Integrated pest mgmt"
ENS3o	=	"ENS3o - TA -  Green cleaning products and practices"
ENS3p	=	"ENS3p - TA - Green building design or construction"
ENS3q	=	"ENS3q - TA - Radon testing"
ENS3r	=	"ENS3r - TA - Site selection for new school buildings"
ENS3s	=	"ENS3s - TA - School building renovation"
ENS3t	=	"ENS3t - TA - Joint use agreements"
ENS3u	=	"ENS3u - TA - FSHP"
ENS3v	=	"ENS3v - TA - School Hlth Index"
ENS3w	=	"ENS3w - TA - Data to plan/eval "
ENS3x	=	"ENS3x - TA - District/school hlth councils"
ENS3y	=	"ENS3y - TA - Establish coordinator positions"
ENS3z	=	"ENS3z - TA - School improvement planning"
ENS4a	=	"ENS4a - Prof dev - Classroom mgmt"
ENS4b	=	"ENS4b - Prof dev - Cyber-bullying prev"
ENS4c	=	"ENS4c - Prof dev - Other bullying prev"
ENS4d	=	"ENS4d - Prof dev - Dating violence prev"
ENS4e	=	"ENS4e - Prof dev - Other violence prev"
ENS4f	=	"ENS4f - Prof dev - Injury prev/safety"
ENS4g	=	"ENS4g - Prof dev - Sun safety"
ENS4h	=	"ENS4h - Prof dev - Tobacco use prev"
ENS4i	=	"ENS4i - Prof dev - Alcohol use prev"
ENS4j	=	"ENS4j - Prof dev -  Illegal drug use prev"
ENS4k	=	"ENS4k - Prof dev - Crisis prep/response/recovery"
ENS4l	=	"ENS4l - Prof dev - Indoor air qual"
ENS4m	=	"ENS4m - Prof dev - Drinking water qual"
ENS4n	=	"ENS4n - Prof dev - Integrated pest mgmt"
ENS4o	=	"ENS4o - Prof dev - Green cleaning products and practices"
ENS4p	=	"ENS4p - Prof dev - Radon testing"
ENS4q	=	"ENS4q - Prof dev - FSHP"
ENS5a	=	"ENS5a - Prof dev - Joint use agreements"
ENS5b	=	"ENS5b - Prof dev - School Hlth Index"
ENS5c	=	"ENS5c - Prof dev - Data to plan/eval "
ENS5d	=	"ENS5d - Prof dev - District/school hlth councils"
ENS5e	=	"ENS5e - Prof dev - Establish coordinator positions"
ENS5f	=	"ENS5f - Prof dev - Site selection for new school buildings"
ENS5g	=	"ENS5g - Prof dev - School building renovation"
ENS5h	=	"ENS5h - Prof dev - Green building design or construction"
ENS6	=	"ENS6 - St offers hlth insurance to fac/staff"
ENS7a	=	"ENS7a - Coverage - Preventive care/physicals"
ENS7b	=	"ENS7b - Coverage - Prescription drugs"
ENS7c	=	"ENS7c - Coverage - Vision care"
ENS7d	=	"ENS7d - Coverage - Dental care"
ENS7e	=	"ENS7e - Coverage - Immunizations"
ENS7f	=	"ENS7f - Coverage - MH care"
ENS7g	=	"ENS7g - Coverage - Tobacco use cessation"
ENS7h	=	"ENS7h - Coverage - Alcohol/drug use treatment"
ENS8	=	"ENS8 - Someone oversees FSHP"
ENS9a	=	"ENS9a - Report - Times students caught fighting"
ENS9b	=	"ENS9b - Report - Times students caught guns/firearms"
ENS9c	=	"ENS9c - Report - Times students caught other weapon"
ENS9d	=	"ENS9d - Report - Number of school-associated violent deaths"
ENS9e	=	"ENS9e - Report - Times students caught gang activ"
ENS10	=	"ENS10 - St uses crisis prep materials from U.S. DOE "
ENS11	=	"ENS11 - SEA member of st emergency planning comm"
ENS12	=	"ENS12 - Report unplanned school dismissals/closures"
ENS13	=	"ENS13 - St-level school hlth group"
ENS14a	=	"ENS14a - Groups incl - SEA"
ENS14b	=	"ENS14b - Groups incl - St hlth dept"
ENS14c	=	"ENS14c - Groups incl - MH/SS agency"
ENS14d	=	"ENS14d - Groups incl - Juvenile justice dept"
ENS14e	=	"ENS14e - Groups incl - St transportation agency"
ENS14f	=	"ENS14f - Groups incl - St env dept"
ENS14g	=	"ENS14g - Groups incl - St agriculture dept"
ENS14h	=	"ENS14h - Groups incl - School nurses' assoc"
ENS14i	=	"ENS14i - Groups incl - Physicians' org"
ENS14j	=	"ENS14j - Groups incl - Hlth org"
ENS14k	=	"ENS14k - Groups incl - Parents' org"
ENS14l	=	"ENS14l - Groups incl - Student government assoc"
ENS15a	=	"ENS15a - Groups IDs student hlth needs "
ENS15b	=	"ENS15b - Groups rec new/revised pol/prog/activ"
ENS15c	=	"ENS15c - Groups seek funding "
ENS15d	=	"ENS15d - Groups review curric"
ENS16a	=	"ENS16a - Groups address - Tobacco use prev"
ENS16b	=	"ENS16b - Groups address - Alcohol/other drug use prev"
ENS16c	=	"ENS16c - Groups address - Food service/nutr"
ENS16d	=	"ENS16d - Groups address - PE/physical activ"
ENS16e	=	"ENS16e - Groups address - Pregnancy prev"
ENS16f	=	"ENS16f - Groups address - HIV prev"
ENS16g	=	"ENS16g - Groups address - STD prev"
ENS16h	=	"ENS16h - Groups address - Violence prev"
ENS16i	=	"ENS16i - Groups address - Injury prev/safety"
ENS16j	=	"ENS16j - Groups address - HE"
ENS16k	=	"ENS16k - Groups address - Hlth services"
ENS16l	=	"ENS16l - Groups address - MH/SS"
ENS16m	=	"ENS16m - Groups address - Psych/social env"
ENS16n	=	"ENS16n - Groups address - FSHP"
ENS16o	=	"ENS16o - Groups address - Family/community involvement"
ENS16p	=	"ENS16p - Groups address -Physical school env"
ENS16q	=	"ENS16q - Groups address - Crisis prep/response/recovery"
ENS16r	=	"ENS16r - Groups address - Chronic hlth condition mgmt"
ENS16s	=	"ENS16s - Groups address - Infectious disease mgmt"
ENS16t	=	"ENS16t - Groups address - Foodborne illness mgmt"
ENS16u	=	"ENS16u - Groups address - Food allergy mgmt"
ENS16v	=	"ENS16v - Groups address - Local wellness pol"
ENS17	=	"ENS17 - Meetings during past 12 months"
ENS18	=	"ENS18 - St person oversee/coord school hlth/safety pol/activ"
ENS19	=	"ENS19 - Respondent is person"
ENS20a	=	"ENS20a - Dir - Develop hlth/safety policy "
ENS20b	=	"ENS20b - Dir - Securing funding "
ENS20c	=	"ENS20c - Dir - Communicating priorities"
ENS20d	=	"ENS20d - Dir - Facilitating collaboration "
ENS20e	=	"ENS20e - Dir - Liaison between st and dist"
ENS20f	=	"ENS20f - Dir - Convening meetings "
ENS20g	=	"ENS20g - Dir - Coordinating prof dev"
ENS21	=	"ENS21 - Years responsible for directing"
ENS22	=	"ENS22 - R has undergrad degree"
ENS23_1	=	"ENS23_1 - R major - HE"
ENS23_2	=	"ENS23_2 - R major - PE"
ENS23_3	=	"ENS23_3  - R major - Other ed"
ENS23_4	=	"ENS23_4  - R major - Kinesiology, exercise physiology, or exercise science"
ENS23_5	=	"ENS23_5  - R major - Nnursing"
ENS23_6	=	"ENS23_6 - R major - Nutr"
ENS23_7	=	"ENS23_7 - R major - Public hlth"
ENS23_8	=	"ENS23_8 - R major - Biology or other science"
ENS23_9	=	"ENS23_9 - R major - Home ec or family/consumer science"
ENS23_10	=	"ENS23_10 - R major - Other"
ENS24	=	"ENS24 - R has undergrad minor"
ENS25_1	=	"ENS25_1 R minor - HE"
ENS25_2	=	"ENS25_2 R minor - PE"
ENS25_3	=	"ENS25_3 R minor - Other ed"
ENS25_4	=	"ENS25_4 R minor - Kinesiology, exercise physiology, or exercise science"
ENS25_5	=	"ENS25_5 R minor - Nursing"
ENS25_6	=	"ENS25_6 R minor - Nutr"
ENS25_7	=	"ENS25_7 R minor - Public hlth"
ENS25_8	=	"ENS25_8 R minor - Biology or other science"
ENS25_9	=	"ENS25_9 R minor - Home ec or family/consumer science"
ENS25_10	=	"ENS25_10 R minor - Other"
ENS26	=	"ENS26 - R has grad degree"
ENS27_1	=	"ENS27_1 - R grad degree - HE"
ENS27_2	=	"ENS27_2 - R grad degree - PE"
ENS27_3	=	"ENS27_3 - R grad degree -Ed administration"
ENS27_4	=	"ENS27_4 - R grad degree  - Other ed"
ENS27_5	=	"ENS27_5 - R grad degree - Kinesiology, exercise physiology, or exercise science"
ENS27_6	=	"ENS27_6 - R grad degree  - Nursing"
ENS27_7	=	"ENS27_7 -  R grad degree -  Nutr"
ENS27_8	=	"ENS27_8 - R grad degree - Public hlth"
ENS27_9	=	"ENS27_9 - R grad degree  - Biology or other science"
ENS27_10	=	"ENS27_10 - R grad degree - Home ec or family/consumer science"
ENS27_11	=	"ENS27_11 - R grad degree - Other"

;
run;
