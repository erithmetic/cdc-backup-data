
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
/*  "NUTRS_SAS_Input_Program.sas" to create the 2012 SHPPS dataset.                     */
/****************************************************************************************/

filename datain 'c:\shpps2012\nutrs2012.dat';

libname dataout 'c:\shpps2012';

libname library 'c:\shpps2012';

data dataout.nutrs2012 ;
infile datain lrecl=500;
missing A C F;

input
SNAME	$ 1-20
STCMSID	22-25
RTITLE	$27-110
CTYPE	$112-115
FSS1a	117-117
FSS1b	118-118
FSS1c	119-119
FSS1d	120-120
FSS1e	121-121
FSS1f	122-122
FSS1g	123-123
FSS1h	124-124
FSS1i	125-125
FSS1j	126-126
FSS1k	127-127
FSS1l	128-128
FSS1m	129-129
FSS1n	130-130
FSS1o	131-131
FSS1p	132-132
FSS2a	133-133
FSS2b	134-134
FSS2c	135-135
FSS2d	136-136
FSS2e	137-137
FSS2f	138-138
FSS2g	139-139
FSS2h	140-140
FSS2i	141-141
FSS2j	142-142
FSS2k	143-143
FSS2l	144-144
FSS2m	145-145
FSS2n	146-146
FSS2o	147-147
FSS2p	148-148
FSS3a	149-149
FSS3b	150-150
FSS3c	151-151
FSS3d	152-152
FSS3e	153-153
FSS3f	154-154
FSS3g	155-155
FSS3h	156-156
FSS3i	157-157
FSS3j	158-158
FSS3k	159-159
FSS3l	160-160
FSS3m	161-161
FSS3n	162-162
FSS3o	163-163
FSS3p	164-164
FSS3q	165-165
FSS3r	166-166
FSS3s	167-167
FSS3t	168-168
FSS3u	169-169
FSS3v	170-170
FSS3w	171-171
FSS3x	172-172
FSS3y	173-173
FSS3z	174-174
FSS3aa	175-175
FSS4	176-176
FSS5	177-177
FSS6a	178-178
FSS6b	179-179
FSS6c	180-180
FSS6d	181-181
FSS6e	182-182
FSS6f	183-183
FSS6g	184-184
FSS6h	185-185
FSS6i	186-186
FSS6j	187-187
FSS6k	188-188
FSS6l	189-189
FSS6m	190-190
FSS6n	191-191
FSS6o	192-192
FSS6p	193-193
FSS6q	194-194
FSS6r	195-195
FSS6s	196-196
FSS6t	197-197
FSS6u	198-198
FSS6v	199-199
FSS6w	200-200
FSS6x	201-201
FSS6y	202-202
FSS6z	203-203
FSS7a	204-204
FSS7b	205-205
FSS7c	206-206
FSS7d	207-207
FSS8a	208-208
FSS8b	209-209
FSS8c	210-210
FSS8d	211-211
FSS8e	212-212
FSS8f	213-213
FSS8g	214-214
FSS8h	215-215
FSS8i	216-216
FSS8j	217-217
FSS8k	218-218
FSS8l	219-219
FSS8m	220-220
FSS8n	221-221
FSS8o	222-222
FSS8p	223-223
FSS9a	224-224
FSS9b	225-225
FSS9c	226-226
FSS9d	227-227
FSS9e	228-228
FSS10	229-229
FSS11	230-230
FSS12	231-231
FSS13	232-232
FSS14_1	233-233
FSS14_2	234-234
FSS14_3	235-235
FSS14_4	236-236
FSS14_5	237-237
FSS14_6	238-238
FSS14_6SPEC	$ 239-289
FSS15	290-290
FSS16_1	291-291
FSS16_2	292-292
FSS16_3	293-293
FSS16_4	294-294
FSS16_5	295-295
FSS16_6	296-296
FSS16_6SPEC	$ 297-347
FSS17	348-348
FSS18_1	349-349
FSS18_2	350-350
FSS18_3	351-351
FSS18_4	352-352
FSS18_5	353-353
FSS18_6	354-354
FSS18_6SPEC	$ 355-405
FSS19	406-406
FSS20	407-407
FSS21	408-408
FSS22	409-409
FSS23	410-410
FSS24	411-411
FSS24SPEC	$ 412-462
;

************************************
*  Assign formats to SAS variables.*
************************************;
format

FSS1a
FSS1b
FSS1c
FSS1d
FSS1e
FSS1f
FSS1g
FSS1h
FSS1i
FSS1j
FSS1k
FSS1l
FSS1m
FSS1n
FSS1o
FSS1p
FSS2a
FSS2b
FSS2c
FSS2d
FSS2e
FSS2f
FSS2g
FSS2h
FSS2i
FSS2j
FSS2k
FSS2l
FSS2m
FSS2n
FSS2o
FSS2p
FSS3a
FSS3b
FSS3c
FSS3d
FSS3e
FSS3f
FSS3g
FSS3h
FSS3i
FSS3j
FSS3k
FSS3l
FSS3m
FSS3n
FSS3o
FSS3p
FSS3q
FSS3r
FSS3s
FSS3t
FSS3u
FSS3v
FSS3w
FSS3x
FSS3y
FSS3z
FSS3aa
FSS4
FSS5
FSS6a
FSS6b
FSS6c
FSS6d
FSS6e
FSS6f
FSS6g
FSS6h
FSS6i
FSS6j
FSS6k
FSS6l
FSS6m
FSS6n
FSS6o
FSS6p
FSS6q
FSS6r
FSS6s
FSS6t
FSS6u
FSS6v
FSS6w
FSS6x
FSS6y
FSS6z
FSS8a
FSS8b
FSS8c
FSS8d
FSS8e
FSS8f
FSS8g
FSS8h
FSS8i
FSS8j
FSS8k
FSS8l
FSS8m
FSS8n
FSS8o
FSS8p
FSS9a
FSS9b
FSS9c
FSS9d
FSS9e
FSS10
FSS11
FSS12
FSS13
FSS14_1
FSS14_2
FSS14_3
FSS14_4
FSS14_5
FSS14_6
FSS15
FSS16_1
FSS16_2
FSS16_3
FSS16_4
FSS16_5
FSS16_6
FSS17
FSS18_1
FSS18_2
FSS18_3
FSS18_4
FSS18_5
FSS18_6
FSS19
FSS20
FSS21
FSS22
FSS23
FSS24

shppsyesno.

FSS7a
FSS7b
FSS7c
FSS7d
shppsynstaff.
;

***********************************
*  Assign labels to SAS variables.*
***********************************;
label 
CTYPE="MODE OF COMPLETION"
RTITLE="RESPONDENT TITLE"
SNAME="STATE NAME"
STCMSID="STATE ID" 
FSS1a	=	"FSS1a - St pol - Improving nutr qual school meals"
FSS1b	=	"FSS1b - St pol - Improving nutr qual outside school meal prog"
FSS1c	=	"FSS1c - St pol - Establ nutr stds outside school meal prog"
FSS1d	=	"FSS1d - St pol - Limit student access less nutr foods/beverages"
FSS1e	=	"FSS1e - St pol - Access to free water"
FSS1f	=	"FSS1f - St pol - Discour sale less nutr food/beverages fund-raising"
FSS1g	=	"FSS1g - St pol - Discour food/coupons as reward/punishment"
FSS1h	=	"FSS1h - St pol - Promoting fruits/veg/etc"
FSS1i	=	"FSS1i - St pol - Prohibit ads less nutr food/beverages on school property"
FSS1j	=	"FSS1j - St pol - Establ min time students to eat"
FSS1k	=	"FSS1k - St pol - Develop/impl/eval local wellness pol"
FSS1l	=	"FSS1l - St pol - Pricing strategies"
FSS1m	=	"FSS1m - St pol - Sourcing foods locally/regionally"
FSS1n	=	"FSS1n - St pol - Feeding students with severe food allergies"
FSS1o	=	"FSS1o - St pol - Feeding students during unplanned dismissal"
FSS1p	=	"FSS1p - St pol - Food safety"
FSS2a	=	"FSS2a - Distrib - Improving nutr qual school meals"
FSS2b	=	"FSS2b - Distrib - Improving nutr qual outside school meal prog"
FSS2c	=	"FSS2c - Distrib - Establ nutr stds outside school meal prog"
FSS2d	=	"FSS2d - Distrib - Limit student access less nutr foods/beverages"
FSS2e	=	"FSS2e - Distrib - Access to free water"
FSS2f	=	"FSS2f - Distrib - Discour sale less nutr food/beverages fund-raising"
FSS2g	=	"FSS2g - Distrib - Discour food/coupons as reward/punishment"
FSS2h	=	"FSS2h - Distrib - Promoting fruits/veg/etc"
FSS2i	=	"FSS2i - Distrib - Prohibiting ads less nutr food/beverages on school property"
FSS2j	=	"FSS2j - Distrib - Establ min time students to eat"
FSS2k	=	"FSS2k - Distrib - Develop/impl/eval local wellness pol"
FSS2l	=	"FSS2l - Distrib - Pricing strategies"
FSS2m	=	"FSS2m - Distrib - Sourcing foods locally/regionally"
FSS2n	=	"FSS2n - Distrib - Feeding students with severe food allergies"
FSS2o	=	"FSS2o - Distrib - Feeding students during unplanned dismissal"
FSS2p	=	"FSS2p - Distrib - Food safety"
FSS3a	=	"FSS3a - TA - Improving nutr qual school meals"
FSS3b	=	"FSS3b - TA - Improving nutr qual outside school meal prog"
FSS3c	=	"FSS3c - TA - Establ nutr stds outside school meal prog"
FSS3d	=	"FSS3d - TA - Limit student access less nutr foods/beverages"
FSS3e	=	"FSS3e - TA - Access to free water"
FSS3f	=	"FSS3f - TA - Discour sale less nutr food/beverages fund-raising"
FSS3g	=	"FSS3g - TA - Discour food/coupons as reward/punishment"
FSS3h	=	"FSS3h - TA - Promoting fruits/veg/etc"
FSS3i	=	"FSS3i - TA - Prohibit ads less nutr food/beverages on school property"
FSS3j	=	"FSS3j - TA - Establ min time students to eat"
FSS3k	=	"FSS3k - TA - Develop/impl/eval local wellness pol"
FSS3l	=	"FSS3l - TA - Pricing strategies"
FSS3m	=	"FSS3m - TA -  Sourcing foods locally/regionally"
FSS3n	=	"FSS3n - TA - Plans for feeding students with severe food allergies"
FSS3o	=	"FSS3o - TA - Plans for feeding students who rely on school meal prog"
FSS3p	=	"FSS3p - TA - Develop food safety plans"
FSS3q	=	"FSS3q - TA -  Develop school gardens"
FSS3r	=	"FSS3r - TA - Promoting access to/partic in school meals"
FSS3s	=	"FSS3s - TA - Establ/expand school breakfast/snack/supper programs"
FSS3t	=	"FSS3t - TA - Marketing healthful outside foods/beverages"
FSS3u	=	"FSS3u - TA - Marketing healthful school meals"
FSS3v	=	"FSS3v - TA - Strategies to improve presentation"
FSS3w	=	"FSS3w - TA - Data to plan/eval nutr pol/practices"
FSS3x	=	"FSS3x - TA - Involve school nutr services staff in classrooms"
FSS3y	=	"FSS3y - TA - Cafeteria to teach about nutr"
FSS3z	=	"FSS3z - TA -  Impl nutr special events"
FSS3aa	=	"FSS3aa - TA - Meeting reqs for USDA's HealthierUS School Challenge"
FSS4	=	"FSS4 - Off cert/lic/endrs district food service directors"
FSS5	=	"FSS5 -Off cert/lic/endrs school food service managers"
FSS6a	=	"FSS6a - Prof dev - Healthy menu planning"
FSS6b	=	"FSS6b - Prof dev - Cultural diversity menu planning"
FSS6c	=	"FSS6c - Prof dev - USDA rules for school meals"
FSS6d	=	"FSS6d - Prof dev - Cafeteria use for nutr ed"
FSS6e	=	"FSS6e - Prof dev - Prog regulations/procedures"
FSS6f	=	"FSS6f - Prof dev - Select/order foods"
FSS6g	=	"FSS6g - Prof dev - Healthy food prep methods"
FSS6h	=	"FSS6h - Prof dev - Increase student partic in school meals"
FSS6i	=	"FSS6i - Prof dev - Making meals more appealing"
FSS6j	=	"FSS6j - Prof dev - Improving presentation of healthful foods"
FSS6k	=	"FSS6k - Prof dev - Customer service"
FSS6l	=	"FSS6l - Prof dev - Competitive food pol"
FSS6m	=	"FSS6m - Prof dev - Financial mgmt"
FSS6n	=	"FSS6n - Prof dev - Personnel mgmt"
FSS6o	=	"FSS6o - Prof dev - Facility design/layout"
FSS6p	=	"FSS6p - Prof dev - Food safety"
FSS6q	=	"FSS6q - Prof dev - Handling severe food allergy reactions"
FSS6r	=	"FSS6r - Prof dev - Food prep for students with food allergies"
FSS6s	=	"FSS6s - Prof dev - Special dietary needs other than food allergies"
FSS6t	=	"FSS6t - Prof dev - Using HACCP"
FSS6u	=	"FSS6u - Prof dev - Food recall response"
FSS6v	=	"FSS6v - Prof dev - Personal safety for NS staff"
FSS6w	=	"FSS6w - Prof dev - Impl local wellness pol"
FSS6x	=	"FSS6x - Prof dev - Sourcing foods locally/regionally"
FSS6y	=	"FSS6y - Prof dev - Using produce from school gardens"
FSS6z	=	"FSS6z - Prof dev - Culinary skills"
FSS7a	=	"FSS7a - St nutr staff w HE staff"
FSS7b	=	"FSS7b - St nutr staff w PE staff"
FSS7c	=	"FSS7c - St nutr staff w HSV staff"
FSS7d	=	"FSS7d - St nutr staff w MH/SS staff"
FSS8a	=	"FSS8a - St nutr staff w AFHG"
FSS8b	=	"FSS8b-St nutr staff w st school nurses assoc"
FSS8c	=	"FSS8c - St nutr staff w st physicians org"
FSS8d	=	"FSS8d - St nutr staff w st hlth org"
FSS8e	=	"FSS8e - St nutr staff w st parents org"
FSS8f	=	"FSS8f - St nutr staff w st hlth dept"
FSS8g	=	"FSS8g - St nutr staff w st MH/SS agency"
FSS8h	=	"FSS8h -St nutr staff w colleges/universities"
FSS8i	=	"FSS8i - St nutr staff w businesses"
FSS8j	=	"FSS8j - St nutr staff w AFHK"
FSS8k	=	"FSS8k - St nutr staff w Dept of Agriculture"
FSS8l	=	"FSS8l - St nutr staff w SNA"
FSS8m	=	"FSS8m - St nutr staff w food commodity org"
FSS8n	=	"FSS8n - St nutr staff w farm to school NGO "
FSS8o	=	"FSS8o - St nutr staff w cooperative extension office"
FSS8p	=	"FSS8p - St nutr staff w food pol council"
FSS9a	=	"FSS9a - St eval - Students partic"
FSS9b	=	"FSS9b - St eval - Amount of plate waste"
FSS9c	=	"FSS9c - St eval - Prof dev for NS staff"
FSS9d	=	"FSS9d -St eval - Food safety procedures"
FSS9e	=	"FSS9e - St eval - Impl local wellness pol"
FSS10	=	"FSS10 - St person oversees/coord school NS"
FSS11	=	"FSS11 - R is person"
FSS12	=	"FSS12 - R has culinary degree"
FSS13	=	"FSS13 - R has undergrad degree"
FSS14_1	=	"FSS14_1 - R major - Business"
FSS14_2	=	"FSS14_2 - R major - Ed"
FSS14_3	=	"FSS14_3 - R major - Food service admin/ mgmt"
FSS14_4	=	"FSS14_4 - R major - Home ec or family/consumer sciences"
FSS14_5	=	"FSS14_5 - R major - Nutr or dietetics"
FSS14_6	=	"FSS14_6 - R major - Other (Specify)"
FSS14_6SPEC	=	"FSS14_6SPEC - R major - Specify"
FSS15	=	"FSS15 - R has undergrad minor"
FSS16_1	=	"FSS16_1 - R minor - Business"
FSS16_2	=	"FSS16_2 - R minor - Ed"
FSS16_3	=	"FSS16_3 - R minor - Food service admin/mgmt"
FSS16_4	=	"FSS16_4 - R minor - Home ec or family/consumer sciences"
FSS16_5	=	"FSS16_5 - R minor - Nutr or dietetics"
FSS16_6	=	"FSS16_6 - R minor - Other (Specify)"
FSS16_6SPEC	=	"FSS16_6SPEC - R minor - Specify"
FSS17	=	"FSS17 - R has grad degree"
FSS18_1	=	"FSS18_1 - R grad degree - Business"
FSS18_2	=	"FSS18_2 - R grad degree - Ed"
FSS18_3	=	"FSS18_3 - R grad degree - Food service admin/mgmt"
FSS18_4	=	"FSS18_4 - R grad degree - Home ec or family/consumer sciences"
FSS18_5	=	"FSS18_5 - R grad degree - Nutr or dietetics"
FSS18_6	=	"FSS18_6 - R grad degree - Other (Specify)"
FSS18_6SPEC	=	"FSS18_6SPEC - R grad degree - Specify"
FSS19	=	"FSS19 - R has SNS credential from SNA"
FSS20	=	"FSS20 - R has cert from SNA"
FSS21	=	"FSS21 - R has RD"
FSS22	=	"FSS22 - R is certified dietary manager"
FSS23	=	"FSS23 - R is certified food safety manager"
FSS24	=	"FSS24 - R has other food service cert"
FSS24SPEC	=	"FSS24SPEC - Other food service cert - Specify"
;
run;
