
/****************************************************************************************/
/*  This SAS program reads ASCII format (text format) 2014 SHPPS data and creates a     */
/*  formatted and labeled SAS dataset.                                                  */
/*                                                                                      */
/*  Change the file location specifications from "c:\shpps2014" to the location where   */
/*  you have stored the SHPPS ASCII data file and the format library before you run this*/
/*  program.  Change the location specification in three places - in the "filename"     */
/*  statement and in the two "libname" statements at the top of the program.            */
/*                                                                                      */
/*  Note: Run "SHPPS Formats Program.sas" BEFORE you run                                */
/*  "FACULTYL_SAS_Input_Program.sas" to create the 2014 SHPPS dataset.                  */
/****************************************************************************************/

filename datain 'c:\shpps2014\facultyl2014.dat';

libname dataout 'c:\shpps2014';

libname library 'c:\shpps2014';

data dataout.facultyl2014;
infile datain lrecl=1000;
missing A C F N M ;
input
STATENAME	$1	-	30
STCMSID	31	-	35
DISTCMSID	36	-	40
SCHCMSID	44	-	52
SPAN	66	-	67
ENROLL	68	-	78
HIGHGRADE	79	-	82
LOWGRADE	83	-	86
REGION	87	-	88
LOCALSTRA	89	-	90
DISTTYPE	91	-	92
LEVEL	93	-	94
PSU	95	-	105
SCHWT	12.7 @107
FHLPAP	122	-	123
FHL1	124	-	125
FHL2	126	-	127
FHL3a	128	-	129
FHL3b	130	-	131
FHL3c	132	-	133
FHL3d	134	-	135
FHL3e	136	-	137
FHL3f	138	-	139
FHL3g	140	-	141
FHL3h	142	-	143
FHL4	144	-	145
FHL5	146	-	147
FHL6	148	-	149
FHL7	150	-	151
FHL8	152	-	153
FHL9	154	-	155
FHL10	156	-	157
FHL11	158	-	159
FHL12	160	-	161
FHL13	162	-	163
FHL14a	164	-	165
FHL14b	166	-	167
FHL14c	168	-	169
FHL14d	170	-	171
FHL14e	172	-	173
FHL14f	174	-	175
FHL14g	176	-	177
FHL14h	178	-	179
FHL15a	180	-	181
FHL15b	182	-	183
FHL15c	184	-	185
FHL15d	186	-	187
FHL15e	188	-	189
FHL15f	190	-	191
FHL15g	192	-	193
FHL15h	194	-	195
FHL15i	196	-	197
FHL15j	198	-	199
FHL15k	200	-	201
FHL15l	202	-	203
FHL15m	204	-	205
FHL15n	206	-	207
FHL15o	208	-	209
FHL15p	210	-	211
FHL16a	212	-	213
FHL16b	214	-	215
FHL16c	216	-	217
FHL16d	218	-	219
FHL17	220	-	221
FHL18	222	-	223
FHL19	224	-	225
FHL20	226	-	227
FHL21	228	-	229
FHL22	230	-	231
FHL23	232	-	233
FHL24a	234	-	235
FHL24b	236	-	237
FHL24c	238	-	239
FHL24d	240	-	241
FHL24e	242	-	243
FHL24f	244	-	245
FHL25a	246	-	247
FHL25b	248	-	249
FHL25c	250	-	251
FHL25d	252	-	253
FHL25e	254	-	255
FHL25f	256	-	257
FHL25g	258	-	259
FHL25h	260	-	261
FHL25i	262	-	263
FHL25j	264	-	265
FHL26a	266	-	267
FHL26b	268	-	269
FHL26c	270	-	271
FHL26d	272	-	273
FHL26e	274	-	275
FHL26f	276	-	277
FHL26g	278	-	279
FHL26h	280	-	281
FHL27a	282	-	283
FHL27b	284	-	285
FHL28	286	-	287
FHL29a	288	-	289
FHL29b	290	-	291
FHL29c	292	-	293
FHL29d	294	-	295
FHL29e	296	-	297
;
************************************
*  Assign formats to SAS variables.*
************************************;

format

FHL1
jobtitle.

/*FACILITY AND HEALTH STAFF*/
FHL2 FHL3A FHL3B FHL3C FHL3D FHL3E FHL3F FHL3G FHL3H FHL4 FHL14A FHL14B FHL14C FHL14D FHL14E FHL14F FHL14G FHL14H FHL15A 
FHL15B FHL15C FHL15D FHL15E FHL15F FHL15G FHL15H FHL15I FHL15J FHL15K FHL15L FHL15M FHL15N FHL15O FHL15P FHL16A FHL16B FHL16C 
FHL16D FHL17 FHL18 FHL19 FHL20 FHL21 FHL22 FHL23 FHL24A FHL24B FHL24C FHL24D FHL24E FHL24F FHL25A FHL25B FHL25C FHL25D FHL25E
FHL25F FHL25G FHL25H FHL25I FHL25J FHL26A FHL26B FHL26C FHL26D FHL26E FHL26F FHL26G FHL26H FHL27A FHL27B FHL28
yesno.

FHL5 FHL5F. FHL6 FHL6F. FHL7 FHL7F. FHL8 FHL8F. FHL9 FHL9F. FHL10 FHL10F. FHL11 FHL11F. FHL12 FHL12F. FHL13 FHL13F. 
FHL29A FHL29AF. FHL29B FHL29BF. FHL29C FHL29CF. FHL29D FHL29DF. FHL29E FHL29EF. 

SPAN
span.


HIGHGRADE
LOWGRADE
grade.

REGION
region.

LOCALSTRA
locale.

DISTTYPE
dtype.

LEVEL
level.

FHLPAP
method.

;

***********************************
*  Assign labels to SAS variables.*
***********************************;
label
STATENAME	=	'State Name'
STCMSID	=	'State CMS ID'
DISTCMSID	=	'District CMS ID'
SCHCMSID	=	'School CMS ID'
SPAN	=	'Spanned School'
ENROLL	=	'School Enrollment'
HIGHGRADE	=	'Highest Grade in Sampled School'
LOWGRADE	=	'Lowest Grade in Sampled School'
REGION	=	'Region'
LOCALSTRA	=	'Urban locale stratum'
DISTTYPE	=	'District Type'
LEVEL	=	'School Level'
PSU	=	'Sampled Primary Sampling Unit'
SCHWT	=	'School-level weight'
FHLPAP	=	'Mail - CAPI Complete '
FHL1	=	'Job title'
FHL2	=	'Sch offers hlth insurance'
FHL3a	=	'Ins covers - Preventive hlthcare'
FHL3b	=	'Ins covers - Rx drugs'
FHL3c	=	'Ins covers - Vision care'
FHL3d	=	'Ins covers - Dental care'
FHL3e	=	'Ins covers - Immun'
FHL3f	=	'Ins covers - MH care'
FHL3g	=	'Ins covers - Tobacco use cessation'
FHL3h	=	'Ins covers - Alcohol/drug use Tx'
FHL4	=	'Fac/staff can use sick leave to care for own children'
FHL5	=	'Phys hlth exam req prior to employ'
FHL6	=	'Drug test req prior to employ'
FHL7	=	'Phys hlth exam req while employ'
FHL8	=	'Drug test req while employ'
FHL9	=	'TB screen req prior to employ'
FHL10	=	'TB test req prior to employ'
FHL11	=	'Periodic TB test req while employ'
FHL12	=	'Method accept evidence of neg TB test'
FHL13	=	'Req/rec flu vaccination'
FHL14a	=	'Past 12 months off screening - Oral hlth'
FHL14b	=	'Past 12 months off screening - BMI'
FHL14c	=	'Past 12 months off screening - Serum cholesterol'
FHL14d	=	'Past 12 months off screening - Blood pressure'
FHL14e	=	'Past 12 months off screening - Diabetes'
FHL14f	=	'Past 12 months off screening - Skin cancer'
FHL14g	=	'Past 12 months off screening - Breast cancer'
FHL14h	=	'Past 12 months off screening - Colorectal cancer'
FHL15a	=	'Past 12 months off - Nutr ed'
FHL15b	=	'Past 12 months off - Weight mgmt'
FHL15c	=	'Past 12 months off - Worksite safety ed'
FHL15d	=	'Past 12 months off - Emerg preparedness'
FHL15e	=	'Past 12 months off - Infectious disease prev'
FHL15f	=	'Past 12 months off - CPR ed'
FHL15g	=	'Past 12 months off - First aid ed'
FHL15h	=	'Past 12 months off - Stress mgmt ed'
FHL15i	=	'Past 12 months off - Pre/post-natal ed'
FHL15j	=	'Past 12 months off - Conflict resolution ed'
FHL15k	=	'Past 12 months off - Asthma mgmt ed'
FHL15l	=	'Past 12 months off - Diabetes mgmt ed'
FHL15m	=	'Past 12 months off - Tobacco use cessation'
FHL15n	=	'Past 12 months off - PA/fitness counseling'
FHL15o	=	'Past 12 months off - Emot disorders counseling'
FHL15p	=	'Past 12 months off - Crisis intervention for personal probs'
FHL16a	=	'Past 12 months off - Ref for child/elder care'
FHL16b	=	'Past 12 months off - Ref for oral hlth probs'
FHL16c	=	'Past 12 months off - Immun'
FHL16d	=	'Past 12 months off - Phys/sexual/emot abuse ID/ref'
FHL17	=	'Past 12 months off PA progs'
FHL18	=	'Indoor/outdoor facil/equip avail for PA '
FHL19	=	'Past 12 months off EAP '
FHL20	=	'Past 12 months prov hlth risk appraisals'
FHL21	=	'Fac/staff receive subsidies/discounts for hlth promo activ'
FHL22	=	'Needs assessment hlth promo activ/serv'
FHL23	=	'Past 2 years assessed satisfaction w hlth promo activ'
FHL24a	=	'Past 12 months incentives - Monetary '
FHL24b	=	'Past 12 months incentives - Gifts'
FHL24c	=	'Past 12 months incentives - Paid time off'
FHL24d	=	'Past 12 months incentives - Hlth ins premium discounts'
FHL24e	=	'Past 12 months incentives - Certificates or awards'
FHL24f	=	'Past 12 months incentives - Public recognition'
FHL25a	=	'Past 12 months district helped prov FSHP activ '
FHL25b	=	'Past 12 months cmty hlth clinic helped prov FSHP activ  '
FHL25c	=	'Past 12 months hlth dept helped prov FSHP activ '
FHL25d	=	'Past 12 months hosp helped prov FSHP activ  '
FHL25e	=	'Past 12 months MH/SS agency helped prov FSHP activ '
FHL25f	=	'Past 12 months university/med sch helped prov FSHP activ'
FHL25g	=	'Past 12 months managed care org helped prov FSHP activ '
FHL25h	=	'Past 12 months hlth org helped prov FSHP activ '
FHL25i	=	'Past 12 months hlth/fitness club helped prov FSHP activ '
FHL25j	=	'Past 12 months business helped prov FSHP activ '
FHL26a	=	'Past 12 months promo FSHP prog - Notices w paychecks'
FHL26b	=	'Past 12 months promo FSHP prog - Fliers posted'
FHL26c	=	'Past 12 months promo FSHP prog - Letters mailed'
FHL26d	=	'Past 12 months promo FSHP prog - Announcements made'
FHL26e	=	'Past 12 months promo FSHP prog - Special assemblies'
FHL26f	=	'Past 12 months promo FSHP prog - Emails sent'
FHL26g	=	'Past 12 months promo FSHP prog - Notices on website'
FHL26h	=	'Past 12 months promo FSHP prog - Notices in sch news'
FHL27a	=	'Past 12 months - Release time for partic'
FHL27b	=	'Past 12 months - Competitions between groups'
FHL28	=	'Someone oversee/coordinate FSHP'
FHL29a	=	'Past 12 months FSHP staff worked w HE staff'
FHL29b	=	'Past 12 months FSHP staff worked w PE staff'
FHL29c	=	'Past 12 months FSHP staff worked w HSV staff'
FHL29d	=	'Past 12 months FSHP staff worked w MH/SS staff'
FHL29e	=	'Past 12 months FSHP staff worked w NS staff'
;
run;

