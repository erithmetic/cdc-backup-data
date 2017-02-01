
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
/*  "PHYSEDS_SAS_Input_Program.sas" to create the 2012 SHPPS dataset.                   */
/****************************************************************************************/

filename datain 'c:\shpps2012\physeds2012.dat';

libname dataout 'c:\shpps2012';

libname library 'c:\shpps2012';

data dataout.physeds2012 ;
infile datain lrecl=500;
missing A C F;

input
SNAME	$  1-20
STCMSID	22-25
RTITLE	$ 27-90
CTYPE	$ 92-100
PES1	102-102
PES2	103-103
PES3a	104-104
PES3b	105-105
PES3c	106-106
PES3d	107-107
PES3e	108-108
PES3f	109-109
PES3g	110-110
PES3h	111-111
PES3i	112-112
PES3j	113-113
PES3k	114-114
PES3l	115-115
PES4a	116-116
PES4b	117-117
PES4c	118-118
PES4d	119-119
PES4e	120-120
PES4f	121-121
PES5a	122-122
PES5b	123-123
PES5c	124-124
PES5d	125-125
PES5e	126-126
PES5f	127-127
PES5g	128-128
PES5h	129-129
PES5i	130-130
PES5j	131-131
PES5k	132-132
PES5l	133-133
PES6a	134-134
PES6b	135-135
PES6c	136-136
PES6d	137-137
PES6e	138-138
PES6f	139-139
PES7	140-140
PES8a	141-141
PES8b	142-142
PES8c	143-143
PES8d	144-144
PES8e	145-145
PES8f	146-146
PES8g	147-147
PES8h	148-148
PES8i	149-149
PES8j	150-150
PES8k	151-151
PES8l	152-152
PES8m	153-153
PES8n	154-154
PES8o	155-155
PES9a	156-156
PES9b	157-157
PES9c	158-158
PES9d	159-159
PES9e	160-160
PES9f	161-161
PES10a	162-162
PES10b	163-163
PES10c	164-164
PES10d	165-165
PES11	166-166
PES12a	167-167
PES12b	168-168
PES12c	169-169
PES12d	170-170
PES12e	171-171
PES12f	172-172
PES13a	173-173
PES13b	174-174
PES13c	175-175
PES14	176-176
PES15a	177-177
PES15b	178-178
PES15c	179-179
PES15d	180-180
PES15e	181-181
PES15f	182-182
PES16a	183-183
PES16b	184-184
PES16c	185-185
PES17	186-186
PES18a	187-187
PES18b	188-188
PES18c	189-189
PES18d	190-190
PES18e	191-191
PES18f	192-192
PES19a	193-193
PES19b	194-194
PES19c	195-195
PES20	196-196
PES21a	197-197
PES21b	198-198
PES21c	199-199
PES21d	200-200
PES22	201-201
PES23a	202-202
PES23b	203-203
PES23c	204-204
PES23d	205-205
PES23e	206-206
PES23f	207-207
PES23g	208-208
PES23h	209-209
PES24a	210-210
PES24b	211-211
PES24c	212-212
PES24d	213-213
PES24e	214-214
PES24f	215-215
PES24g	216-216
PES24h	217-217
PES24i	218-218
PES24j	219-219
PES24k	220-220
PES24l	221-221
PES24m	222-222
PES24n	223-223
PES24o	224-224
PES24p	225-225
PES24q	226-226
PES24r	227-227
PES24s	228-228
PES24t	229-229
PES24u	230-230
PES24v	231-231
PES24w	232-232
PES24x	233-233
PES24y	234-234
PES24z	235-235
PES25a	236-236
PES25b	237-237
PES25c	238-238
PES25d	239-239
PES26a	240-240
PES26b	241-241
PES26c	242-242
PES26d	243-243
PES26e	244-244
PES26f	245-245
PES26g	246-246
PES26h	247-247
PES26i	248-248
PES26j	249-249
PES26k	250-250
PES26l	251-251
PES26m	252-252
PES26n	253-253
PES26o	254-254
PES26p	255-255
PES26q	256-256
PES27	257-257
PES28	258-258
PES29	259-259
PES30	260-260
PES31_1	261-261
PES31_2	262-262
PES31_3	263-263
PES31_4	264-264
PES31_5	265-265
PES31_5SPEC	$ 266-316
PES32	317-317
PES33_1	318-318
PES33_2	319-319
PES33_3	320-320
PES33_4	321-321
PES33_5	322-322
PES33_5SPEC	$ 323-373
PES34	374-374
PES35_1	375-375
PES35_2	376-376
PES35_3	377-377
PES35_4	378-378
PES35_5	379-379
PES35_5SPEC	$ 380-430
PES36a	431-431
PES36b	432-432
PES36c	433-433

;

************************************
*  Assign formats to SAS variables.*
************************************;
format

PES1
PES2
PES3a
PES3b
PES3c
PES3d
PES3e
PES3f
PES3g
PES3h
PES3i
PES3j
PES3k
PES3l
PES4a
PES4b
PES4c
PES4d
PES4e
PES4f
PES5a
PES5b
PES5c
PES5d
PES5e
PES5f
PES5g
PES5h
PES5i
PES5j
PES5k
PES5l
PES6a
PES6b
PES6c
PES6d
PES6e
PES6f
PES7
PES8a
PES8b
PES8c
PES8d
PES8e
PES8f
PES8g
PES8h
PES8i
PES8j
PES8k
PES8l
PES8m
PES8n
PES8o
PES9a
PES9b
PES9c
PES9d
PES9e
PES9f
PES10a
PES10b
PES10c
PES10d
PES11
PES12a
PES12b
PES12c
PES12d
PES12e
PES12f
PES13a
PES13b
PES13c
PES14
PES15a
PES15b
PES15c
PES15d
PES15e
PES15f
PES16a
PES16b
PES16c
PES17
PES18a
PES18b
PES18c
PES18d
PES18e
PES18f
PES19a
PES19b
PES19c
PES20
PES21a
PES21b
PES21c
PES21d
PES22
PES23a
PES23b
PES23c
PES23d
PES23e
PES23f
PES23g
PES23h
PES24a
PES24b
PES24c
PES24d
PES24e
PES24f
PES24g
PES24h
PES24i
PES24j
PES24k
PES24l
PES24m
PES24n
PES24o
PES24p
PES24q
PES24r
PES24s
PES24t
PES24u
PES24v
PES24w
PES24x
PES24y
PES24z
PES26a
PES26b
PES26c
PES26d
PES26e
PES26f
PES26g
PES26h
PES26i
PES26j
PES26k
PES26l
PES26m
PES26n
PES26o
PES26p
PES26q
PES27
PES28
PES29
PES30
PES31_1
PES31_2
PES31_3
PES31_4
PES31_5
PES32
PES33_1
PES33_2
PES33_3
PES33_4
PES33_5
PES34
PES35_1
PES35_2
PES35_3
PES35_4
PES35_5
shppsyesno.

PES25a
PES25b
PES25c
PES25d
shppsynstaff.

PES36a
PES36b
PES36c
phyynoffer.
;

***********************************
*  Assign labels to SAS variables.*
***********************************;
label 
CTYPE="MODE OF COMPLETION"
RTITLE="RESPONDENT TITLE"
SNAME="STATE NAME"
STCMSID="STATE ID" 
PES1	=	"PES1 - St adopt PE stds"
PES2	=	"PES2 - PE stds based on NSPE from NASPE"
PES3a	=	"PES3a - St pol ES PE time reqs"
PES3b	=	"PES3b - St pol MS PE time reqs"
PES3c	=	"PES3c - St pol HS PE time reqs"
PES3d	=	"PES3d - St pol HS PE gradn reqs"
PES3e	=	"PES3e - St pol time MVPA"
PES3f	=	"PES3f - St pol cert/lic PE teach"
PES3g	=	"PES3g - St pol prof dev cert/lic"
PES3h	=	"PES3h - St pol student-teach ratio for PE"
PES3i	=	"PES3i - St pol PA as punishment"
PES3j	=	"PES3j - St pol exemp/waivers for PE reqs"
PES3k	=	"PES3k - St pol fitness tests"
PES3l	=	"PES3l - St pol assessing student achievement"
PES4a	=	"PES4a - St pol - Recess"
PES4b	=	"PES4b - St pol - PA outside PE"
PES4c	=	"PES4c - St pol - Walk/bike to/from school"
PES4d	=	"PES4d - St pol - Concussion prev"
PES4e	=	"PES4e - St pol - Measure/monitor BMI"
PES4f	=	"PES4f - St pol - Joint use agreements"
PES5a	=	"PES5a - Distrib ES PE time reqs"
PES5b	=	"PES5b - Distrib MS PE time reqs"
PES5c	=	"PES5c - Distrib HS PE time reqs"
PES5d	=	"PES5d - Distrib HS PE gradn reqs"
PES5e	=	"PES5e - Distrib time MVPA"
PES5f	=	"PES5f - Distrib cert/lic PE teach"
PES5g	=	"PES5g - Distrib prof dev cert/lic"
PES5h	=	"PES5h - Distrib student-teacher ratio for PE"
PES5i	=	"PES5i - Distrib PA as punishment "
PES5j	=	"PES5j - Distrib exemp/waivers for PE reqs"
PES5k	=	"PES5k - Distrib fitness tests"
PES5l	=	"PES5l - Distrib assessing student acheivement "
PES6a	=	"PES6a - Distrib - Recess"
PES6b	=	"PES6b - Distrib - Phys activ outside PE"
PES6c	=	"PES6c - Distrib - Walk bike school"
PES6d	=	"PES6d - Distrib - Concussion prev"
PES6e	=	"PES6e - Distrib - Measure/monitor BMI"
PES6f	=	"PES6f - Distrib - Joint use agreements "
PES7	=	"PES7 - Distrib PECAT"
PES8a	=	"PES8a - TA - PECAT"
PES8b	=	"PES8b - TA - Data to plan PE pol"
PES8c	=	"PES8c - TA - ES PE time reqs "
PES8d	=	"PES8d - TA - MS PE time reqs "
PES8e	=	"PES8e - TA - HS PE time reqs"
PES8f	=	"PES8f - TA - HS PE gradn reqs"
PES8g	=	"PES8g - TA - MVPA time"
PES8h	=	"PES8h - TA - Cert/licensure req PE"
PES8i	=	"PES8i - TA - Prof dev/cont ed for cert/lic"
PES8j	=	"PES8j - TA - Student/teach ratio"
PES8k	=	"PES8k - TA - PA as punishment"
PES8l	=	"PES8l - TA - Exemp/waivers PE reqs"
PES8m	=	"PES8m - TA - Fitness tests"
PES8n	=	"PES8n - TA - Assessing student acheivement"
PES8o	=	"PES8o - TA - Char effective curric"
PES9a	=	"PES9a - TA - Recess"
PES9b	=	"PES9b - TA - PA outside PE/recess"
PES9c	=	"PES9c - TA - Walk/bike to/from school"
PES9d	=	"PES9d - TA - Concussion prev"
PES9e	=	"PES9e - TA - Measure/monitor BMI"
PES9f	=	"PES9f - TA - Joint use agreements"
PES10a	=	"PES10a - St dev - PE stds"
PES10b	=	"PES10b - St dev - PE curric"
PES10c	=	"PES10c - St dev - Lsn plans"
PES10d	=	"PES10d - St dev - Eval students"
PES11	=	"PES11 - St stds for ES PE"
PES12a	=	"PES12a - ES PE stds - Motor skills/movement patterns"
PES12b	=	"PES12b - ES PE stds - Movement concepts/principles"
PES12c	=	"PES12c - ES PE stds - Reg partic in PA"
PES12d	=	"PES12d - ES PE stds - Hlth-enhancing phys fit"
PES12e	=	"PES12e - ES PE stds - Responsible personal/social behav"
PES12f	=	"PES12f - ES PE stds - Value PA"
PES13a	=	"PES13a - St prov - List rec ES PE curric"
PES13b	=	"PES13b - St prov - Lsn plans/learning activ ES PE"
PES13c	=	"PES13c - St prov - Assessment plan/tools ES PE"
PES14	=	"PES14 - St stds for MS PE"
PES15a	=	"PES15a - MS PE stds - Motor skills/movement patterns"
PES15b	=	"PES15b - MS PE stds - Movement concepts/principles"
PES15c	=	"PES15c - MS PE stds - Reg partic in phys act"
PES15d	=	"PES15d - MS PE stds - Hlth-enhancing phys fit"
PES15e	=	"PES15e - MS PE stds - Responsible personal/social behav"
PES15f	=	"PES15f - MS PE stds - Value PA"
PES16a	=	"PES16a - St prov - List rec MS PE curric"
PES16b	=	"PES16b - St prov - Lsn plans/learning activ MS PE"
PES16c	=	"PES16c - St prov - Assessment plan/tools MS PE"
PES17	=	"PES17 - St stds for HS PE"
PES18a	=	"PES18a - HS PE stds - Motor skills/movement patterns"
PES18b	=	"PES18b - HS PE stds - Movement concepts/principles"
PES18c	=	"PES18c - HS PE stds - Reg partic in PA"
PES18d	=	"PES18d - HS PE stds - Hlth-enhancing phys fit"
PES18e	=	"PES18e - HS PE stds - Responsible personal/social behav"
PES18f	=	"PES18f - HS PE stds - Value PA"
PES19a	=	"PES19a - St prov - List rec HS PE curric"
PES19b	=	"PES19b - St prov - Lsn plans/learning activ HS PE"
PES19c	=	"PES19c - St prov - Assessment plan/tools HS PE"
PES20	=	"PES20 - Dist/school report fitness test data"
PES21a	=	"PES21a - St fitness test data - Monitor fitness levels"
PES21b	=	"PES21b - St fitness test data - Monitor obesity rates"
PES21c	=	"PES21c - St fitness test data - Assess student performance"
PES21d	=	"PES21d - St fitness test data - Develop/improve policies"
PES22	=	"PES22 - Dist/school level data made public"
PES23a	=	"PES23a - St off cert - PE K-12"
PES23b	=	"PES23b - St off cert - PE ES"
PES23c	=	"PES23c - St off cert - PE MS"
PES23d	=	"PES23d - St off cert - PE HS"
PES23e	=	"PES23e - St off cert - Comb PE/HE K-12"
PES23f	=	"PES23f - St off cert - Comb PE/HE ES"
PES23g	=	"PES23g - St off cert - Comb PE/HE MS"
PES23h	=	"PES23h - St off cert - Comb PE/HE HS"
PES24a	=	"PES24a - Prof dev - Methods increased MVPA"
PES24b	=	"PES24b - Prof dev - Gender equity"
PES24c	=	"PES24c - Prof dev - Using technology"
PES24d	=	"PES24d - Prof dev - Using monitoring devices"
PES24e	=	"PES24e - Prof dev - Family involvement"
PES24f	=	"PES24f - Prof dev - Fitness tests"
PES24g	=	"PES24g - Prof dev - Individual PA plan"
PES24h	=	"PES24h - Prof dev - Injury prev"
PES24i	=	"PES24i - Prof dev - Concussions"
PES24j	=	"PES24j - Prof dev - PE for long-term disabilities"
PES24k	=	"PES24k - Prof dev - Individual/paired sports"
PES24l	=	"PES24l - Prof dev - Team/group sports"
PES24m	=	"PES24m - Prof dev - Movement skills/concepts"
PES24n	=	"PES24n - Prof dev - Eval student performance"
PES24o	=	"PES24o - Prof dev - Student portfolios"
PES24p	=	"PES24p - Prof dev - Promote inclusion"
PES24q	=	"PES24q - Prof dev - Chronic hlth conditions"
PES24r	=	"PES24r - Prof dev - PA clubs/intramural sport prog"
PES24s	=	"PES24s - Prof dev - School PA prog"
PES24t	=	"PES24t - Prof dev - Walk/bike prog"
PES24u	=	"PES24u - Prof dev - Assess weight status"
PES24v	=	"PES24v - Prof dev - PE stds to curric"
PES24w	=	"PES24w - Prof dev - Online/distance education"
PES24x	=	"PES24x - Prof dev - PECAT"
PES24y	=	"PES24y - Prof dev - Data to plan PE"
PES24z	=	"PES24z - Prof dev - Teach use PA in class"
PES25a	=	"PES25a - St PE staff w HE staff"
PES25b	=	"PES25b- St PE staff w HSV staff"
PES25c	=	"PES25c - St PE staff w MH/SS staff"
PES25d	=	"PES25d - St PE staff w Nutr staff"
PES26a	=	"PES26a - St PE staff w AFHG"
PES26b	=	"PES26b - St PE staff w st sch nurses assoc"
PES26c	=	"PES26c - St PE staff w st physicians org"
PES26d	=	"PES26d - St PE staff w st hlth org"
PES26e	=	"PES26e - St PE staff w st parents org"
PES26f	=	"PES26f - St PE staff w st hlth dept"
PES26g	=	"PES26g -St PE staff w st MH/SS agency"
PES26h	=	"PES26h - St PE staff w colleges/universities"
PES26i	=	"PES26i - St PE staff w businesses"
PES26j	=	"PES26j - St PE staff w foundations"
PES26k	=	"PES26k - St PE staff w AFHK"
PES26l	=	"PES26l - St PE staff w AAHPERD"
PES26m	=	"PES26m - St PE staff w GCPFS"
PES26n	=	"PES26n - St PE staff w parks and rec"
PES26o	=	"PES26o - St PE staff w DOT"
PES26p	=	"PES26p - St PE staff w athletic training assoc"
PES26q	=	"PES26q - St PE staff w prof sports team"
PES27	=	"PES27 - Prof dev to coaches"
PES28	=	"PES28 - State person oversees/coord PE"
PES29	=	"PES29 - Respondent is person"
PES30	=	"PES30 - R has undergrad degree"
PES31_1	=	"PES31_1 - R major - PE"
PES31_2	=	"PES31_2 - R major - HE"
PES31_3	=	"PES31_3 - R major - Other ed"
PES31_4	=	"PES31_4 - R major  - Kinesiology, exercise physiology, or exercise science"
PES31_5	=	"PES31_5 - R major - Other (Specify)"
PES31_5SPEC	=	"PES31_5SPEC - R major - Specify"
PES32	=	"PES32 - R has undergrad minor"
PES33_1	=	"PES33_1 - R minor - PE"
PES33_2	=	"PES33_2 - R minor - HE"
PES33_3	=	"PES33_3 - R minor - Other ed"
PES33_4	=	"PES33_4 - R minor - Kinesiology, exercise physiology, or exercise science"
PES33_5	=	"PES33_5 - R minor - Other (Specify)"
PES33_5SPEC	=	"PES33_5SPEC - R minor - Specify"
PES34	=	"PES34 - R has grad degree"
PES35_1	=	"PES35_1 - R grad degree - PE"
PES35_2	=	"PES35_2 - R grad degree - HE"
PES35_3	=	"PES35_3 - R grad degree - Other ed"
PES35_4	=	"PES35_4 - R grad degree - Kinesiology, exercise physiology, or exercise science"
PES35_5	=	"PES35_5 - R grad degree - Other (Specify)"
PES35_5SPEC	=	"PES35_5SPEC - R grad degree - Specify"
PES36a	=	"PES36a - R cert/lic ES PE"
PES36b	=	"PES36b - R cert/lic MS PE"
PES36c	=	"PES36c - R cert/lic HS PE"
;
run;
