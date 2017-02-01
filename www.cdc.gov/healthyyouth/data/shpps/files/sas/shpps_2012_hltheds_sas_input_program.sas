
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
/*  "HLTHEDS_SAS_Input_Program.sas" to create the 2012 SHPPS dataset.                   */
/****************************************************************************************/

filename datain 'c:\shpps2012\hltheds2012.dat';

libname dataout 'c:\shpps2012';

libname library 'c:\shpps2012';

data dataout.hltheds2012 ;
infile datain lrecl=500;
missing A C F;

input
SNAME	$  1-20
STCMSID	22-25
RTITLE	$ 27-90
CTYPE	$ 92-100
HES1	102-102
HES2	103-103
HES3a	104-104
HES3b	105-105
HES3c	106-106
HES3d	107-107
HES3e	108-108
HES3f	109-109
HES4a	110-110
HES4b	111-111
HES4c	112-112
HES4d	113-113
HES4e	114-114
HES4f	115-115
HES4g	116-116
HES4h	117-117
HES4i	118-118
HES4j	119-119
HES4k	120-120
HES4l	121-121
HES4m	122-122
HES4n	123-123
HES4o	124-124
HES5a	125-125
HES5b	126-126
HES5c	127-127
HES5d	128-128
HES5e	129-129
HES5f	130-130
HES6a	131-131
HES6b	132-132
HES6c	133-133
HES6d	134-134
HES6e	135-135
HES6f	136-136
HES6g	137-137
HES6h	138-138
HES6i	139-139
HES6j	140-140
HES6k	141-141
HES6l	142-142
HES6m	143-143
HES6n	144-144
HES6o	145-145
HES7	146-146
HES8a	147-147
HES8b	148-148
HES8c	149-149
HES8d	150-150
HES8e	151-151
HES8f	152-152
HES8g	153-153
HES8h	154-154
HES8i	155-155
HES8j	156-156
HES9a	157-157
HES9b	158-158
HES9c	159-159
HES9d	160-160
HES9e	161-161
HES9f	162-162
HES9g	163-163
HES9h	164-164
HES9i	165-165
HES9j	166-166
HES9k	167-167
HES9l	168-168
HES9m	169-169
HES9n	170-170
HES9o	171-171
HES10a	172-172
HES10b	173-173
HES10c	174-174
HES10d	175-175
HES11	176-176
HES12a	177-177
HES12b	178-178
HES12c	179-179
HES12d	180-180
HES12e	181-181
HES12f	182-182
HES12g	183-183
HES12h	184-184
HES13a	185-185
HES13b	186-186
HES13c	187-187
HES13d	188-188
HES14	189-189
HES15a	190-190
HES15b	191-191
HES15c	192-192
HES15d	193-193
HES15e	194-194
HES15f	195-195
HES15g	196-196
HES15h	197-197
HES16a	198-198
HES16b	199-199
HES16c	200-200
HES16d	201-201
HES17	202-202
HES18a	203-203
HES18b	204-204
HES18c	205-205
HES18d	206-206
HES18e	207-207
HES18f	208-208
HES18g	209-209
HES18h	210-210
HES19a	211-211
HES19b	212-212
HES19c	213-213
HES19d	214-214
HES20a	215-215
HES20b	216-216
HES20c	217-217
HES20d	218-218
HES20e	219-219
HES20f	220-220
HES20g	221-221
HES20h	222-222
HES21a	223-223
HES21b	224-224
HES21c	225-225
HES21d	226-226
HES21e	227-227
HES21f	228-228
HES21g	229-229
HES21h	230-230
HES21i	231-231
HES21j	232-232
HES21k	233-233
HES21l	234-234
HES21m	235-235
HES21n	236-236
HES21o	237-237
HES22a	238-238
HES22b	239-239
HES22c	240-240
HES22d	241-241
HES22e	242-242
HES22f	243-243
HES22g	244-244
HES22h	245-245
HES22i	246-246
HES22j	247-247
HES22k	248-248
HES22l	249-249
HES22m	250-250
HES22n	251-251
HES22o	252-252
HES23a	253-253
HES23b	254-254
HES23c	255-255
HES23d	256-256
HES24a	257-257
HES24b	258-258
HES24c	259-259
HES24d	260-260
HES24e	261-261
HES24f	262-262
HES24g	263-263
HES24h	264-264
HES24i	265-265
HES24j	266-266
HES24k	267-267
HES24l	268-268
HES24m	269-269
HES25	270-270
HES26	271-271
HES27	272-272
HES28_1	273-273
HES28_2	274-274
HES28_3	275-275
HES28_4	276-276
HES28_5	277-277
HES28_6	278-278
HES28_6SPEC	$ 279-329
HES29	330-330
HES30_1	331-331
HES30_2	332-332
HES30_3	333-333
HES30_4	334-334
HES30_5	335-335
HES30_6	336-336
HES30_6SPEC	 $ 337-387
HES31	388-388
HES32_1	389-389
HES32_2	390-390
HES32_3	391-391
HES32_4	392-392
HES32_5	393-393
HES32_6	394-394
HES32_6SPEC	$ 395-445
HES33a	446-446
HES33b	447-447
HES33c	448-448
HES34	449-449

;

************************************
*  Assign formats to SAS variables.*
************************************;
format

HES1
HES2
HES3A
HES3B
HES3C
HES3D
HES3E
HES3F
HES4A
HES4B
HES4C
HES4D
HES4E
HES4F
HES4G
HES4H
HES4I
HES4J
HES4K
HES4L
HES4M
HES4N
HES4O
HES5A
HES5B
HES5C
HES5D
HES5E
HES5F
HES6A
HES6B
HES6C
HES6D
HES6E
HES6F
HES6G
HES6H
HES6I
HES6J
HES6K
HES6L
HES6M
HES6N
HES6O
HES7
HES8A
HES8B
HES8C
HES8D
HES8E
HES8F
HES8G
HES8H
HES8I
HES8J
HES9A
HES9B
HES9C
HES9D
HES9E
HES9F
HES9G
HES9H
HES9I
HES9J
HES9K
HES9L
HES9M
HES9N
HES9O
HES10A
HES10B
HES10C
HES10D
HES11
HES12A
HES12B
HES12C
HES12D
HES12E
HES12F
HES12G
HES12H
HES13A
HES13B
HES13C
HES13D
HES14
HES15A
HES15B
HES15C
HES15D
HES15E
HES15F
HES15G
HES15H
HES16A
HES16B
HES16C
HES16D
HES17
HES18A
HES18B
HES18C
HES18D
HES18E
HES18F
HES18G
HES18H
HES19A
HES19B
HES19C
HES19D
HES20A
HES20B
HES20C
HES20D
HES20E
HES20F
HES20G
HES20H
HES21A
HES21B
HES21C
HES21D
HES21E
HES21F
HES21G
HES21H
HES21I
HES21J
HES21K
HES21L
HES21M
HES21N
HES21O
HES22A
HES22B
HES22C
HES22D
HES22E
HES22F
HES22G
HES22H
HES22I
HES22J
HES22K
HES22L
HES22M
HES22N
HES22O
HES24A
HES24B
HES24C
HES24D
HES24E
HES24F
HES24G
HES24H
HES24I
HES24J
HES24K
HES24L
HES24M
HES25
HES26
HES27
HES29
HES31
HES34
HES28_1
HES28_2
HES28_3
HES28_4
HES28_5
HES28_6
HES30_1
HES30_2
HES30_3
HES30_4
HES30_5
HES30_6
HES32_1
HES32_2
HES32_3
HES32_4
HES32_5
HES32_6
shppsyesno.

HES23A
HES23B
HES23C
HES23D

shppsynstaff.

HES33A
HES33B 
HES33C

hesynoffer.
;

***********************************
*  Assign labels to SAS variables.*
***********************************;
label 
CTYPE="MODE OF COMPLETION"
RTITLE="RESPONDENT TITLE"
SNAME="STATE NAME"
STCMSID="STATE ID" 
HES1	=	"HES1 - St adopt HE stds"
HES2	=	"HES2 - HE stds are based on NHES"
HES3a	=	"HES3a - St pol ES HE time reqs"
HES3b	=	"HES3b - St pol MS HE time reqs"
HES3c	=	"HES3c - St pol HS HE time reqs"
HES3d	=	"HES3d - St pol HS HE gradn reqs"
HES3e	=	"HES3e - St pol cert/lic reqs HE teach"
HES3f	=	"HES3f - St pol prof dev cont ed"
HES4a	=	"HES4a - St pol - Alcohol/drug prev"
HES4b	=	"HES4b - St pol - Tobacco use prev"
HES4c	=	"HES4c - St pol - Nutr/dietary behav"
HES4d	=	"HES4d - St pol - PA/fitness"
HES4e	=	"HES4e - St pol - Pregnancy prev"
HES4f	=	"HES4f - St pol - HIV prev"
HES4g	=	"HES4g - St pol - STD prev"
HES4h	=	"HES4h - St pol - Human sexuality"
HES4i	=	"HES4i - St pol - Emot/MH"
HES4j	=	"HES4j - St pol - Suicide prev"
HES4k	=	"HES4k - St pol - Violence prev"
HES4l	=	"HES4l - St pol - Injury prev/safety"
HES4m	=	"HES4m - St pol - Asthma"
HES4n	=	"HES4n - St pol - Disease prev"
HES4o	=	"HES4o - St pol - Foodborne illness prev"
HES5a	=	"HES5a - Distrib ES HE time reqs"
HES5b	=	"HES5b - Distrib MS HE time reqs"
HES5c	=	"HES5c - Distrib HS HE time reqs"
HES5d	=	"HES5d - Distrib HS HE gradn reqs"
HES5e	=	"HESe - Distrib cert/lic reqs HE teach"
HES5f	=	"HES5f - Distrib prof dev cont ed"
HES6a	=	"HES6a - Distrib - Alcohol/drug prev"
HES6b	=	"HES6b - Distrib - Tobacco use prev"
HES6c	=	"HES6c - Distrib - Nutrition/dietary behav"
HES6d	=	"HES6d - Distrib - PA/fitness"
HES6e	=	"HES6e - Distrib - Pregnancy prev"
HES6f	=	"HES6f - Distrib - HIV prev"
HES6g	=	"HES6g - Distrib - STD prev"
HES6h	=	"HES6h - Distrib - Human sexuality"
HES6i	=	"HES6i - Distrib - Emot/MH"
HES6j	=	"HES6j - Distrib - Suicide prev"
HES6k	=	"HES6k - Distrib - Violence prev"
HES6l	=	"HES6l - Distrib - Injury prev/safety"
HES6m	=	"HES6m - Distrib - Asthma"
HES6n	=	"HES6n - Distrib - Disease prev"
HES6o	=	"HES6o - Distrib - Foodborne illness prev"
HES7	=	"HES7 - Distrib - HECAT"
HES8a	=	"HES8a - TA - ES HE time reqs"
HES8b	=	"HES8b - TA - MS HE time reqs"
HES8c	=	"HES8c - TA - HS HE time reqs"
HES8d	=	"HES8d - TA - HS HE gradn reqs"
HES8e	=	"HES8e - TA - cert/lic reqs HE teach"
HES8f	=	"HES8f - TA - prof dev cont ed"
HES8g	=	"HES8g - TA - HECAT"
HES8h	=	"HES8h - TA - Data eval hlth pol"
HES8i	=	"HES8i - TA - Assess students HE"
HES8j	=	"HES8j - TA - Char HE curric"
HES9a	=	"HES9a - TA - Alcohol/drug prev"
HES9b	=	"HES9b - TA - Tobacco use prev"
HES9c	=	"HES9c - TA - Nutrition/dietary behav"
HES9d	=	"HES9d - TA - PA/fitness"
HES9e	=	"HES9e - TA - Pregnancy prev"
HES9f	=	"HES9f - TA - HIV prev"
HES9g	=	"HES9g - TA - STD prev"
HES9h	=	"HES9h - TA - Human sexuality"
HES9i	=	"HES9i - TA - Emot/MH"
HES9j	=	"HES9j - TA - Suicide prev"
HES9k	=	"HES9k - TA - Violence prev"
HES9l	=	"HES9l - TA - Injury prev/safety"
HES9m	=	"HES9m - TA - Asthma"
HES9n	=	"HES9n - TA - Disease prev"
HES9o	=	"HES9o - TA - Foodborne illness prev"
HES10a	=	"HES10a - St develop - HE stds"
HES10b	=	"HES10b - St develop - HE curric"
HES10c	=	"HES10c - St develop - HE lsn plans"
HES10d	=	"HES10d - St develop - HE strat eval students"
HES11	=	"HES11 - St stds ES HE"
HES12a	=	"HES12a - ES HE stds - Comprehending concepts"
HES12b	=	"HES12b - ES HE stds - Analyzing influences"
HES12c	=	"HES12c - ES HE stds - Accessing info/services"
HES12d	=	"HES12d - ES HE stds - Using communic skills"
HES12e	=	"HES12e - ES HE stds - Decision skills"
HES12f	=	"HES12f - ES HE stds - Goal - setting skills"
HES12g	=	"HES12g - ES HE stds - Pract behav/reduc risks"
HES12h	=	"HES12h - ES HE stds - Advocating hlth"
HES13a	=	"HES13a - Prov list rec curric ES HE"
HES13b	=	"HES13b - ES HE lsn plans lrning activ"
HES13c	=	"HES13c - ES HE strat assess students"
HES13d	=	"HES13d - Prov list ES HE rec txtbk"
HES14	=	"HES14 - St stds MS HE"
HES15a	=	"HES15a - MS HE stds - Comprehend concepts"
HES15b	=	"HES15b - MS HE stds - Analyzing influences"
HES15c	=	"HES15c - MS HE stds - Access info/services"
HES15d	=	"HES15d - MS HE stds - Using communic sklls"
HES15e	=	"HES15e - MS HE stds - Decision skills"
HES15f	=	"HES15f - MS HE stds - Goal - setting skills"
HES15g	=	"HES15g - MS HE stds - Pract behav/reduc risks"
HES15h	=	"HES15h - MS HE stds - Advocating hlth"
HES16a	=	"HES16a - Prov list rec curric MS HE"
HES16b	=	"HES16b - MS HE lsn plans lrning activ"
HES16c	=	"HES16c - MS HE strat assess students"
HES16d	=	"HES16d - Prov list MS HE rec txtbk"
HES17	=	"HES17 - St stds HS HE"
HES18a	=	"HES18a - HS HE stds - Comprehend concepts"
HES18b	=	"HES18b - HS HE stds - Analyzing influences"
HES18c	=	"HES18c - HS HE stds - Access info/services"
HES18d	=	"HES18d - HS HE stds - Using communic sklls"
HES18e	=	"HES18e - HS HE stds - Decision skills"
HES18f	=	"HES18f - HS HE stds - Goal - setting skills"
HES18g	=	"HES18g - HS HE stds - Pract behav/reduc risks"
HES18h	=	"HES18h - HS HE stds - Advocating hlth"
HES19a	=	"HES19a - Prov list rec curric HS HE"
HES19b	=	"HES19b - HS HE lsn plans lrning activ"
HES19c	=	"HES19c - HS HE strat assess students"
HES19d	=	"HES19d - Prov list HS HE rec txtbk"
HES20a	=	"HES20a - St off cert/lic/endrs - HE K - 12"
HES20b	=	"HES20b - St off cert/lic/endrs - HE ES"
HES20c	=	"HES20c - St off cert/lic/endrs - HE MS"
HES20d	=	"HES20d - St off cert/lic/endrs - HE HS"
HES20e	=	"HES20e - St off cert/lc/endrs - Comb HE/PE K - 12"
HES20f	=	"HES20f - St off cert/lic/endrs - Comb HE/PE ES"
HES20g	=	"HES20g - St off cert/lc/endrs - Comb HE/PE MS"
HES20h	=	"HES20h - St off cert/lic/endrs - Comb HE/PE HS"
HES21a	=	"HES21a - Prof dev - Alcohol/drug prev"
HES21b	=	"HES21b - Prof dev - Tobacco use prev"
HES21c	=	"HES21c - Prof dev - Nutrition/dietary behav"
HES21d	=	"HES21d - Prof dev - PA/fitness"
HES21e	=	"HES21e - Prof dev - Pregnancy prev"
HES21f	=	"HES21f - Prof dev - HIV prev"
HES21g	=	"HES21g - Prof dev - STD prev"
HES21h	=	"HES21h - Prof dev - Human sexuality"
HES21i	=	"HES21i - Prof dev - Emot/MH"
HES21j	=	"HES21j - Prof dev - Suicide prev"
HES21k	=	"HES21k - Prof dev - Violence prev"
HES21l	=	"HES21l - Prof dev - Injury prev/safety"
HES21m	=	"HES21m - Prof dev - Asthma"
HES21n	=	"HES21n - Prof dev - Disease prev"
HES21o	=	"HES21o - Prof dev - Foodborne illness prev"
HES22a	=	"HES22a - Prof dev - Disabilities"
HES22b	=	"HES22b - Prof dev - Cultural bkgd"
HES22c	=	"HESS22c - Prof dev - Limited Eng"
HES22d	=	"HES22d - Prof dev - Interactive"
HES22e	=	"HES22e - Prof dev - Peer ed"
HES22f	=	"HES22f - Prof dev - Families"
HES22g	=	"HES22g - Prof dev - Community"
HES22h	=	"HES22h - Prof dev - Behav change"
HES22i	=	"HES22i - Prof dev - Class mgmt"
HES22j	=	"HES22j - Prof dev - Assessment"
HES22k	=	"HES22k - Prof dev - Alignment"
HES22l	=	"HES22l - Prof dev - Online"
HES22m	=	"HES22m - Prof dev - Technology"
HES22n	=	"HES22n - Prof dev - HECAT"
HES22o	=	"HES22o - Prof dev - Using data"
HES23a	=	"HES23a - St HE staff w PE staff"
HES23b	=	"HES23b - St HE staff w HSV staff"
HES23c	=	"HES23c - St HE staff w MH/SS staff"
HES23d	=	"HES23d - St HE staff w Nutr staff"
HES24a	=	"HES24a - St HE w ASHA"
HES24b	=	"HES24b - St HE w AFHG"
HES24c	=	"HES24c - St HE w st sch nurses assoc"
HES24d	=	"HES24d - St HE w st physicians org"
HES24e	=	"HES24e - St HE w st hlth org"
HES24f	=	"HES24f - St HE w st parent org"
HES24g	=	"HES24g - St HE w st hlth dept"
HES24h	=	"HES24h - St HE w st MH/SS agency"
HES24i	=	"HES24i - St HE w st juv just dept"
HES24j	=	"HES24j - St HE w colleges/universities"
HES24k	=	"HES24k - St HE w businesses"
HES24l	=	"HES24l - St HE w foundations"
HES24m	=	"HES24m - St HE w AFHK"
HES25	=	"HES25 - St person oversee/coord HE"
HES26	=	"HES26 - Respondent is person"
HES27	=	"HES27 - R has undergrad degree"
HES28_1	=	"HES28_1 - R major - HE"
HES28_2	=	"HES28_2 - R major - PE"
HES28_3	=	"HES28_3 - R major - Other ed"
HES28_4	=	"HES28_4 - R major - Nursing"
HES28_5	=	"HES28_5 - R major - Biology or other science"
HES28_6	=	"HES28_6 - R major - Other (Specify)"
HES28_6SPEC	=	"HES28_6SPEC - R Major - Specify"
HES29	=	"HES29 - R has undergrad minor"
HES30_1	=	"HES30_1 - R minor - HE"
HES30_2	=	"HES30_2 - R minor - PE"
HES30_3	=	"HES30_3 - R minor - Other ed"
HES30_4	=	"HES30_4 - R minor - Nursing"
HES30_5	=	"HES30_5 - R minor - Biology or other science"
HES30_6	=	"HES30_6 - R minor - Other (Specify)"
HES30_6SPEC	=	"HES30_6SPEC - R minor - Specify"
HES31	=	"HES31 - R has grad degree"
HES32_1	=	"HES32_1 - R grad degree - HE"
HES32_2	=	"HES32_2 - R grad degree - PE"
HES32_3	=	"HES32_3 - R grad degree - Other ed"
HES32_4	=	"HES32_4 - R grad degree - Nursing"
HES32_5	=	"HES32_5 - R grad degree - Biology or other science"
HES32_6	=	"HES32_6 - R grad degree - Other (Specify)"
HES32_6SPEC	=	"HES32_6SPEC - R grad degree - Specify"
HES33a	=	"HES33a - R cert/lic ES HE"
HES33b	=	"HES33b - R cert/lic MS HE"
HES33c	=	"HES33c - R cert/lic HS HE"
HES34	=	"HES34 - R CHES"
;
run;





