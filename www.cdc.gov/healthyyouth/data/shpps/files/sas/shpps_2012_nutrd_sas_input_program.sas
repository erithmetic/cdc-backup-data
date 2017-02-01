
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
/*  "NUTRD_SAS_Input_Program.sas" to create the 2012 SHPPS dataset.                     */
/****************************************************************************************/

filename datain 'c:\shpps2012\nutrd2012.dat';

libname dataout 'c:\shpps2012';

libname library 'c:\shpps2012';

data dataout.nutrd2012 ;
infile datain lrecl=2000;
missing A C F N  ;
input
STCMSID			1-2
STATENAME			$3-25
DISTCMSID			26-31
@41 DISTWT 12.7
PSU			    54-61
SAMPSTRA			62-62
CTYPE			$63-90
RTITLE			$91-163
FSD1			164-164
FSD2			165-165
FSD3			166-166
FSD4			167-167
FSD5			168-168
FSD6			169-169
FSD7a			170-170
FSD7b			171-171
FSD7c			172-172
FSD7d			173-173
FSD7e			174-174
FSD8			175-175
FSD9a			176-176
FSD9b			177-177
FSD9c			178-178
FSD9d			179-179
FSD9e			180-180
FSD9f			181-181
FSD9g			182-182
FSD9h			183-183
FSD9i			184-184
FSD9j			185-185
FSD9k			186-186
FSD10a			187-187
FSD10b			188-188
FSD10c			189-189
FSD11a			190-190
FSD11b			191-191
FSD11c			192-192
FSD11d			193-193
FSD11e			194-194
FSD11f			195-195
FSD11g			196-196
FSD12a			197-197
FSD12b			198-198
FSD12c			199-199
FSD13			200-200
FSD14			201-201
FSD15a			202-202
FSD15b			203-203
FSD15c			204-204
FSD15d			205-205
FSD16a			206-206
FSD16b			207-207
FSD16c			208-208
FSD16d			209-209
FSD16e			210-210
FSD16f			211-211
FSD16g			212-212
FSD16h			213-213
FSD16i			214-214
FSD16j			215-215
FSD16k			216-216
FSD16l			217-217
FSD16m			218-218
FSD16n			219-219
FSD16o			220-220
FSD17a			221-221
FSD17b			222-222
FSD18a			223-223
FSD18b			224-224
FSD18c			225-225
FSD19a			226-226
FSD19b			227-227
FSD19c			228-228
FSD20a			229-229
FSD20b			230-230
FSD20c			231-231
FSD21a			232-232
FSD21b			233-233
FSD21c			234-234
FSD21d			235-235
FSD21e			236-236
FSD21f			237-237
FSD22			238-238
FSD23_1			239-239
FSD23_2			240-240
FSD23_3			241-241
FSD23_4			242-242
FSD23_5			243-243
FSD23_6			244-244
FSD23_7			245-245
FSD23_8			246-246
FSD24			247-247
FSD25			248-248
FSD26a			249-249
FSD26b			250-250
FSD26c			251-251
FSD26d			252-252
FSD26e			253-253
FSD27			254-254
FSD28			255-255
FSD29			256-256
FSD30a			257-257
FSD30b			258-258
FSD30c			259-259
FSD30d			260-260
FSD30e			261-261
FSD31			262-262
FSD32a			263-263
FSD32b			264-264
FSD32c			265-265
FSD32d			266-266
FSD32e			267-267
FSD32f			268-268
FSD32g			269-269
FSD32h			270-270
FSD32i			271-271
FSD32j			272-272
FSD32k			273-273
FSD32l			274-274
FSD32m			275-275
FSD32n			276-276
FSD32o			277-277
FSD32p			278-278
FSD32q			279-279
FSD32r			280-280
FSD32s			281-281
FSD32t			282-282
FSD32u			283-283
FSD32v			284-284
FSD32w			285-285
FSD32x			286-286
FSD32y			287-287
FSD32z			288-288
FSD33			289-289
FSD34			290-290
FSD35			291-291
FSD36			292-292
FSD37			293-293
FSD38a			294-294
FSD38b			295-295
FSD38c			296-296
FSD39			297-297
FSD40			298-298
FSD41			299-299
FSD42			300-300
FSD43			301-301
FSD44			302-302
FSD45a			303-303
FSD45b			304-304
FSD45c			305-305
FSD45d			306-306
FSD45e			307-307
FSD45f			308-308
FSD45g			309-309
FSD45h			310-310
FSD46			311-311
FSD47			312-312
FSD48			313-313
FSD49			314-314
FSD50			315-315
FSD51			316-316
FSD52			317-317
FSD53			318-318
FSD54			319-319
FSD55			320-320
FSD56			321-321
FSD57a			322-322
FSD57b			323-323
FSD58			324-324
FSD59			325-325
FSD60			326-326
FSD61			327-327
FSD62			328-328
FSD63			329-329
FSD64			330-330
FSD65_1			331-331
FSD65_2			332-332
FSD65_3			333-333
FSD66			334-334
FSD67			335-335
FSD68_1			336-336
FSD68_2			337-337
FSD68_3			338-338
FSD68_4			339-339
FSD68_5			340-340
FSD68_6			341-341
FSD68_6SPEC			$342-442
FSD69			443-443
FSD70_1			444-444
FSD70_2			445-445
FSD70_3			446-446
FSD70_4			447-447
FSD70_5			448-448
FSD70_6			449-449
FSD70_6SPEC			$450-550
FSD71			551-551
FSD72_1			552-552
FSD72_2			553-553
FSD72_3			554-554
FSD72_4			555-555
FSD72_5			556-556
FSD72_6			557-557
FSD72_6SPEC			$558-658
FSD73			659-659
FSD74			660-660
FSD75			661-661
FSD76			662-662
FSD77			663-663
FSD78			664-664
FSD78SPEC			$665-765
;
************************************
*  Assign formats to SAS variables.*
************************************;
Format 
FSD1	   
FSD3	   
FSD4	   
FSD5	   
FSD6	   
FSD7a	   
FSD7b	   
FSD7c	   
FSD7d	   
FSD7e	   
FSD8	   
FSD14	   
FSD16a	   
FSD16b	   
FSD16c	   
FSD16d	   
FSD16e	   
FSD16f	   
FSD16g	   
FSD16h	   
FSD16i	   
FSD16j	   
FSD16k	   
FSD16l	   
FSD16m	   
FSD16n	   
FSD16o	   
FSD17a	   
FSD17b	   
FSD18a	   
FSD18b	   
FSD18c	   
FSD19a	   
FSD19b	   
FSD19c	   
FSD20a	   
FSD20b	   
FSD20c	   
FSD21a	   
FSD21b	   
FSD21c	   
FSD21d	   
FSD21f	   
FSD23_1	   
FSD23_2	   
FSD23_3	   
FSD23_4	   
FSD23_5	   
FSD23_6	   
FSD23_7	   
FSD23_8	   
FSD26a	   
FSD26b	   
FSD26c	   
FSD26d	   
FSD26e	   
FSD28	   
FSD30a	   
FSD30b	   
FSD30c	   
FSD30d	   
FSD30e	   
FSD32a	   
FSD32b	   
FSD32c	   
FSD32d	   
FSD32e	   
FSD32f	   
FSD32g	   
FSD32h	   
FSD32i	   
FSD32j	   
FSD32k	   
FSD32l	   
FSD32m	   
FSD32n	   
FSD32o	   
FSD32p	   
FSD32q	   
FSD32r	   
FSD32s	   
FSD32t	   
FSD32u	   
FSD32v	   
FSD32w	   
FSD32x	   
FSD32y	   
FSD32z	   
FSD34	   
FSD37	   
FSD42	   
FSD43	   
FSD44	   
FSD56	   
FSD59	   
FSD60	   
FSD61	   
FSD63	   
FSD64	   
FSD65_1	   
FSD65_2	   
FSD65_3	   
FSD66	   
FSD67	   
FSD68_1	   
FSD68_2	   
FSD68_3	   
FSD68_4	   
FSD68_5	   
FSD68_6	   
/* FSD68_6SPEC */	   
FSD69	   
FSD70_1	   
FSD70_2	   
FSD70_3	   
FSD70_4	   
FSD70_5	   
FSD70_6	   
/* FSD70_6SPEC	*/
FSD71	   
FSD72_1	   
FSD72_2	   
FSD72_3	   
FSD72_4	   
FSD72_5	   
FSD72_6	   
/* FSD72_6SPEC	*/   
FSD73	   
FSD74	   
FSD75	   
FSD76	   
FSD77	   
FSD78	   
/* FSD78SPEC */
YESNO.	 

FSD2	
FSD2F.

FSD9a	   
FSD9b	   
FSD9c	   
FSD9d	   
FSD9e	   
FSD9f	   
FSD9g	   
FSD9h	   
FSD9i	   
FSD9j	   
FSD9k	   
FSD10a	   
FSD10b	   
FSD10c
FSD11f	   
FSD11g	   
FSD12a	   
FSD12b	   
FSD12c
FSD13
HOWOFTEN.

FSD11a	   
FSD11b	   
FSD11c	   
FSD11d	   
FSD11e
OFTEN1F.

FSD15a	   
FSD15b	   
FSD15c	   
FSD15d
YESNOFS.

FSD21e
YESNONA.

FSD22
RESPONSE.

FSD24
FSD24F.

FSD25
FSD29
EDUC.

FSD27
FSD27F.

FSD31
FSD31F.

FSD33
FSD33F.

FSD35	   
FSD36
FSD38a	   
FSD38b	   
FSD38c	   
FSD39	   
FSD40	   
FSD41
FSD45a	   
FSD45b	   
FSD45c	   
FSD45d	   
FSD45e	   
FSD45f	   
FSD45g	   
FSD45h	   
FSD46	   
FSD47	   
FSD48	   
FSD49	   
FSD50	   
FSD51	   
FSD52
FSD53	   
FSD54
FSD57a	   
FSD57b	   
FSD58	
REQUIRE.

FSD55
FSD55F.

FSD62
FSD62F.

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
CTYPE	=	'CTYPE - Web - Paper Complete Module1'
RTITLE	=	'RTITLE - RESPONDENT TITLE MODULE1'
FSD1	=	'FSD1 - Dist NS Prog resp school menu planning'
FSD2	=	'FSD2 - Dist school menu planning technique'
FSD3	=	'FSD3 - Dist use comp to analyze nutr content school menu'
FSD4	=	'FSD4 - Weighted nutrient analysis nutr content used'
FSD5	=	'FSD5 - Dist NS Prog resp school food order'
FSD6	=	'FSD6 - Dist purchase foods local/regional growers/producers '
FSD7a	=	'FSD7a - Dist food procur contract - Food safety'
FSD7b	=	'FSD7b - Dist food procur contract - HACCP'
FSD7c	=	'FSD7c - Dist food procur contract - Nutr stds a la carte foods'
FSD7d	=	'FSD7d - Dist food procur contract - Preference local/regional grown foods'
FSD7e	=	'FSD7e - Dist food procur contract - Cooking methods precooked items'
FSD8	=	'FSD8 - Dist NS Prog resp for cooking school food'
FSD9a	=	'FSD9a - Food prep - Non-stick spray/pan liners instead grease/oil'
FSD9b	=	'FSD9b - Food prep - Veg oil instead shortening/butter/marg'
FSD9c	=	'FSD9c - Food prep - Part-skim/low-fat cheese instead reg cheese'
FSD9d	=	'FSD9d - Food prep - Skim/low-fat/soy/nonfat dry milk instead whole milk'
FSD9e	=	'FSD9e - Food prep - Ground turkey/lean ground beef instead reg ground beef'
FSD9f	=	'FSD9f - Food prep - Cooked dried/canned bean/soy product/other meat extenders instead meat'
FSD9g	=	'FSD9g - Food prep - Fresh/frozen veg instead canned'
FSD9h	=	'FSD9h - Food prep - Fresh/frozen fruit instead canned'
FSD9i	=	'FSD9i - Food prep - Low-sodium canned veg instead reg canned veg'
FSD9j	=	'FSD9j - Food prep - Other seasonings instead salt'
FSD9k	=	'FSD9k - Food prep - Low-fat/nonfat yogurt/mayo/sour cream instead of reg '
FSD10a	=	'FSD10a - Food prep - Amount sugar reduc or low sugar recipes used'
FSD10b	=	'FSD10b - Food prep - Amount fats/oils reduc or low fat recipes used'
FSD10c	=	'FSD10c - Food prep - Amount salt reduc or low sodium recipes used'
FSD11a	=	'FSD11a - Food prep - Meat roasted/baked/broil rather than fry'
FSD11b	=	'FSD11b - Food prep - Meat/poultry roasted on rack'
FSD11c	=	'FSD11c - Food prep - Fat drain from browned meat'
FSD11d	=	'FSD11d - Food prep - Fat trim from meat/lean meat used'
FSD11e	=	'FSD11e - Food prep - Skin removed from poultry/skinless poultry used'
FSD11f	=	'FSD11f - Food prep - Solid fat spooned from chilled meat/poultry broth used'
FSD11g	=	'FSD11g - Food prep - Fat skimmed off warm broth/soup/stew/gravy'
FSD12a	=	'FSD12a - Food prep - Potatoes boil/mash/bake rather fry/deep fry'
FSD12b	=	'FSD12b - Food prep - Other veg steam/baked'
FSD12c	=	'FSD12c - Food prep - Veg prep without butter/marg/cheese/creamy sauce'
FSD13	=	'FSD13 - Food prep - HACCP based recipes'
FSD14	=	'FSD14 - Dist partic farm to school'
FSD15a	=	'FSD15a - Dist nutr staff w HE staff'
FSD15b	=	'FSD15b - Dist nutr staff w PE staff'
FSD15c	=	'FSD15c - Dist nutr staff w HSV staff'
FSD15d	=	'FSD15d - Dist nutr staff w MH/SS staff'
FSD16a	=	'FSD16a - Dist nutr staff w AFHG '
FSD16b	=	'FSD16b - Dist nutr staff w hlth org'
FSD16c	=	'FSD16c - Dist nutr staff w hlth dept '
FSD16d	=	'FSD16d - Dist nutr staff w MH/SS agency '
FSD16e	=	'FSD16e - Dist nutr staff w colleges/universities'
FSD16f	=	'FSD16f - Dist nutr staff w business '
FSD16g	=	'FSD16g - Dist nutr staff w AFHK '
FSD16h	=	'FSD16h - Dist nutr staff w food commodity org'
FSD16i	=	'FSD16i - Dist nutr staff w farm to school NGO'
FSD16j	=	'FSD16j - Dist nutr staff w cooperative extension office'
FSD16k	=	'FSD16k - Dist nutr staff w food pol council'
FSD16l	=	'FSD16l - Dist nutr staff w hosp '
FSD16m	=	'FSD16m - Dist nutr staff w service club'
FSD16n	=	'FSD16n - Dist nutr staff w youth org'
FSD16o	=	'FSD16o - Dist nutr staff w anti-hunger org'
FSD17a	=	'FSD17a - Menus avail to students'
FSD17b	=	'FSD17b - Nutr and caloric info avail to students '
FSD18a	=	'FSD18a - Menus avail to families'
FSD18b	=	'FSD18b - Nutr and caloric info avail to families'
FSD18c	=	'FSD18c - NS prog info made avail to families'
FSD19a	=	'FSD19a - Ideas involv NS staff in classroom'
FSD19b	=	'FSD19b - Cafeteria as place to learn'
FSD19c	=	'FSD19c - Nutr special events'
FSD20a	=	'FSD20a - Menu planning - Food allergies'
FSD20b	=	'FSD20b - Menu planning - Chronic hlth condition '
FSD20c	=	'FSD20c - Menu planning - Vegetarians'
FSD21a	=	'FSD21a - Dist eval - Staff compliance gov reg/rec'
FSD21b	=	'FSD21b - Dist eval - Number student partic NS Prog'
FSD21c	=	'FSD21c - Dist eval - Nutr qual sch meals'
FSD21d	=	'FSD21d - Dist eval - Amount plate waste'
FSD21e	=	'FSD21e - Dist eval - Prof dev for NS staff'
FSD21f	=	'FSD21f - Dist eval - Food safety procedures'
FSD22	=	'FSD22 - Resp ensuring dist wellness pol compliance'
FSD23_1	=	'FSD23_1 - Involv wellness pol review - Students'
FSD23_2	=	'FSD23_2 - Involv wellness pol review - Families'
FSD23_3	=	'FSD23_3 - Involv wellness pol review - School food authority reps'
FSD23_4	=	'FSD23_4 - Involv wellness pol review - School board members'
FSD23_5	=	'FSD23_5 - Involv wellness pol review - School admin'
FSD23_6	=	'FSD23_6 - Involv wellness pol review - Community members'
FSD23_7	=	'FSD23_7 - Involv wellness pol review - None'
FSD23_8	=	'FSD23_8 - Dist has not reviewed wellness pol'
FSD24	=	'FSD24 - Wellness pol eval results avail to public'
FSD25	=	'FSD25 - Min level ed req newly hired dist food service director'
FSD26a	=	'FSD26a - Food service director req RD credential'
FSD26b	=	'FSD26b - Food service director req SNS credential'
FSD26c	=	'FSD26c - Food service director req SNA cert'
FSD26d	=	'FSD26d - Food service director req complete school nutr services training prog'
FSD26e	=	'FSD26e - Food service director req ServSafe/other food safety cert'
FSD27	=	'FSD27 - Food service director cert/lic/endrs by st'
FSD28	=	'FSD28 - Each school has NS coord'
FSD29	=	'FSD29 - Min level ed req newly hired food service mgr'
FSD30a	=	'FSD30a - Food service mgr req RD credential'
FSD30b	=	'FSD30b - Food service mgr req SNS credential'
FSD30c	=	'FSD30c - Food service mgr req SNA cert'
FSD30d	=	'FSD30d - Food service mgr req complete school nutr service training prog'
FSD30e	=	'FSD30e - Food service mgr req ServSafe/other food safety cert'
FSD31	=	'FSD31 - Food service mgr cert/lic/endrs by st'
FSD32a	=	'FSD32a - Prof dev - Healthy menu planning'
FSD32b	=	'FSD32b - Prof dev - Cultural diversity meal planning'
FSD32c	=	'FSD32c - Prof dev - USDA rules school meals'
FSD32d	=	'FSD32d - Prof dev - Cafeteria use for nutr ed'
FSD32e	=	'FSD32e - Prof dev - Prog regulations/proc'
FSD32f	=	'FSD32f - Prof dev - Select/order foods'
FSD32g	=	'FSD32g - Prof dev -Healthy food prep methods'
FSD32h	=	'FSD32h - Prof dev - Increase student partic in school meals'
FSD32i	=	'FSD32i - Prof dev - Making meals more appealing'
FSD32j	=	'FSD32j - Prof dev - Improving presentation of healthful foods '
FSD32k	=	'FSD32k - Prof dev - Customer service'
FSD32l	=	'FSD32l - Prof dev - Competitive food pol'
FSD32m	=	'FSD32m - Prof dev - Financial mgmt'
FSD32n	=	'FSD32n - Prof dev - Personnel mgmt'
FSD32o	=	'FSD32o - Prof dev - Facility design/layout'
FSD32p	=	'FSD32p - Prof dev - Food safety'
FSD32q	=	'FSD32q - Prof dev - Handling severe food allergy reactions '
FSD32r	=	'FSD32r - Prof dev - Food prep for students with food allergies'
FSD32s	=	'FSD32s - Prof dev - Special dietary needs other than food allergies'
FSD32t	=	'FSD32t - Prof dev - Using HACCP'
FSD32u	=	'FSD32u - Prof dev - Food recall response'
FSD32v	=	'FSD32v - Prof dev - Personal safety for NS staff'
FSD32w	=	'FSD32w - Prof dev - Impl local wellness pol'
FSD32x	=	'FSD32x - Prof dev - Sourcing foods locally/regionally'
FSD32y	=	'FSD32y - Prof dev - Using produce from school gardens'
FSD32z	=	'FSD32z - Prof dev - Culinary skills'
FSD33	=	'FSD33 - Schools offer bfast'
FSD34	=	'FSD34 - School encourage bfast consumption'
FSD35	=	'FSD35 - Dist req/rec min bfast time'
FSD36	=	'FSD36 - Dist req/rec whole grain foods bfast each day'
FSD37	=	'FSD37 - Schools offer lunch'
FSD38a	=	'FSD38a - Dist req/rec 2 or more - Entrees or main courses'
FSD38b	=	'FSD38b - Dist req/rec 2 or more - Non-fried veg'
FSD38c	=	'FSD38c - Dist req/rec 2 or more - Fruits or 100% fruit juice'
FSD39	=	'FSD39 - Dist req/rec - Vegetarian entrée or main course'
FSD40	=	'FSD40 - Dist req/rec - Whole grain foods lunch'
FSD41	=	'FSD41 - Dist req/rec - Self-serve salad bars'
FSD42	=	'FSD42 - Schools partic NSLP/Aft Sch Snack Prog'
FSD43	=	'FSD43 - Schools partic Aft Sch Sup Prog'
FSD44	=	'FSD44 - Dist sponsor USDA Summer Food Serv Prog'
FSD45a	=	'FSD45a - Dist req/rec prohib junk food - A la carte during bfast/lunch'
FSD45b	=	'FSD45b - Dist req/rec prohib junk food - Student parties'
FSD45c	=	'FSD45c - Dist req/rec prohib junk food - After school/extended day prog'
FSD45d	=	'FSD45d - Dist req/rec prohib junk food - Staff mtgs'
FSD45e	=	'FSD45e - Dist req/rec prohib junk food - Mtgs attend by family'
FSD45f	=	'FSD45f - Dist req/rec prohib junk food - School stores/canteens/snack bars'
FSD45g	=	'FSD45g - Dist req/rec prohib junk food - Vending machines'
FSD45h	=	'FSD45h - Dist req/rec prohib junk food - Concession stands'
FSD46	=	'FSD46 - Dist req/rec - Fruits/veg avail when food offer/sold'
FSD47	=	'FSD47 - Dist req/rec - Whole grain avail when food offer/sold'
FSD48	=	'FSD48 - Dist req/rec - Healthful beverages when food offer/sold'
FSD49	=	'FSD49 - Dist req/rec - Restrict avail deep fried foods'
FSD50	=	'FSD50 - Dist req/rec - Restrict times soda/sports drink/fruit drinks sold'
FSD51	=	'FSD51 - Dist req/rec - Restrict times junk food sold'
FSD52	=	'FSD52 - Dist req/rec prohib junk food sold for fundraising'
FSD53	=	'FSD53 - Dist req/rec prohib - Brand name fast food'
FSD54	=	'FSD54 - Dist req/rec - Healthful foods priced lower than junk food'
FSD55	=	'FSD55 - Dist req/rec - Healthful beverages priced lower than sugar sweetended beverages'
FSD56	=	'FSD56 - Dist req - report on revenue from fundraising sales on food/beverages '
FSD57a	=	'FSD57a - Dist req/rec written plans - Impl risk based approach food safety prog'
FSD57b	=	'FSD57b - Dist req/rec written plans - Feeding students w severe food allergies'
FSD58	=	'FSD58 - Dist req/rec written plan feeding students unplanned school dismissal/closure'
FSD59	=	'FSD59 - Dist level plan feeding students unplanned school dismissal/closure'
FSD60	=	'FSD60 - Dist prohib/discour - Using food/food coupons as reward'
FSD61	=	'FSD61 - Dist prohib/discour - Withholding food/restricting food type as punishment'
FSD62	=	'FSD62 - Operates dist NS prog '
FSD63	=	'FSD63 - Dist person oversees/coord NS'
FSD64	=	'FSD64 - R is person'
FSD65_1	=	'FSD65_1 - R works for school district'
FSD65_2	=	'FSD65_2 - R works for food service mgmt company'
FSD65_3	=	'FSD65_3 - R works for other'
FSD66	=	'FSD66 - R has culinary degree'
FSD67	=	'FSD67 - R has undergrad degree'
FSD68_1	=	'FSD68_1 - R major - Business'
FSD68_2	=	'FSD68_2 - R major - Ed'
FSD68_3	=	'FSD68_3 - R major - Food service admin/mgmt'
FSD68_4	=	'FSD68_4 - R major - Home ec or family/consumer sciences'
FSD68_5	=	'FSD68_5 - R major - Nutr or dietetics'
FSD68_6	=	'FSD68_6 - R major - Other (Specify)'
FSD68_6SPEC	=	'FSD68_6SPEC - R major Specify'
FSD69	=	'FSD69 - R has undergrad minor'
FSD70_1	=	'FSD70_1 - R minor - Business'
FSD70_2	=	'FSD70_2 - R minor - Ed'
FSD70_3	=	'FSD70_3 - R minor - Food service admin/mgmt'
FSD70_4	=	'FSD70_4 - R minor - Home ec or family/consumer sciences'
FSD70_5	=	'FSD70_5 - R minor - Nutr or dietetics'
FSD70_6	=	'FSD70_6 - R minor - Other (Specify)'
FSD70_6SPEC	=	'FSD70_6SPEC - R minor - Specify'
FSD71	=	'FSD71 - R has grad degree'
FSD72_1	=	'FSD72_1 - R grad degree - Business'
FSD72_2	=	'FSD72_2 - R grad degree - Ed'
FSD72_3	=	'FSD72_3 - R grad degree - Food service admin/mgmt'
FSD72_4	=	'FSD72_4 - R grad degree - Home ec or family/consumer sciences'
FSD72_5	=	'FSD72_5 - R grad degree - Nutr or dietetics'
FSD72_6	=	'FSD72_6 - R grad degree - Other (Specify)'
FSD72_6SPEC	=	'FSD72_6SPEC - R grad degree - Specify'
FSD73	=	'FSD73 - R has SNS credential from SNA'
FSD74	=	'FSD74 - R has cert from SNA'
FSD75	=	'FSD75 - R has RD'
FSD76	=	'FSD76 - R is certified dietary manager'
FSD77	=	'FSD77 - R is certified food safety manager'
FSD78	=	'FSD78 - R has other nutr service cert'
FSD78SPEC	=	'FSD78SPEC - Other nutr service cert - Specify'

;

run;
