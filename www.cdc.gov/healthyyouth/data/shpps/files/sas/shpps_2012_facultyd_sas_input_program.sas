
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
/*  "FACULTYD_SAS_Input_Program.sas" to create the 2012 SHPPS dataset.                  */
/****************************************************************************************/

filename datain 'c:\shpps2012\facultyd2012.dat';

libname dataout 'c:\shpps2012';

libname library 'c:\shpps2012';

data dataout.facultyd2012 ;
infile datain lrecl=400;
missing A C F N  ;
input
STCMSID			1-2
STATENAME			$3-25
DISTCMSID			26-31
@41 DISTWT 12.7
PSU	     54-61
SAMPSTRA	    62-62
CTYPE			$63-90
RTITLE			$91-163
FHD1			164-164
FHD2a			165-165
FHD2b			166-166
FHD2c			167-167
FHD2d			168-168
FHD2e			169-169
FHD2f			170-170
FHD2g			171-171
FHD2h			172-172
FHD3			173-173
FHD4			174-174
FHD5			175-175
FHD6			176-176
FHD7			177-177
FHD8			178-178
FHD9			179-179
FHD10			180-180
FHD11			181-181
FHD12			182-182
FHD13a			183-183
FHD13b			184-184
FHD13c			185-185
FHD13d			186-186
FHD13e			187-187
FHD13f			188-188
FHD13g			189-189
FHD13h			190-190
FHD14a			191-191
FHD14b			192-192
FHD14c			193-193
FHD14d			194-194
FHD14e			195-195
FHD14f			196-196
FHD14g			197-197
FHD14h			198-198
FHD14i			199-199
FHD14j			200-200
FHD14k			201-201
FHD14l			202-202
FHD14m			203-203
FHD14n			204-204
FHD14o			205-205
FHD14p			206-206
FHD15a			207-207
FHD15b			208-208
FHD15c			209-209
FHD15d			210-210
FHD16			211-211
FHD17			212-212
FHD18			213-213
FHD19			214-214
FHD20			215-215
FHD21			216-216
FHD22			217-217
FHD23a			218-218
FHD23b			219-219
FHD23c			220-220
FHD23d			221-221
FHD23e			222-222
FHD23f			223-223
FHD24a			224-224
FHD24b			225-225
FHD24c			226-226
FHD24d			227-227
FHD24e			228-228
FHD24f			229-229
FHD24g			230-230
FHD24h			231-231
FHD24i			232-232
FHD25			233-233
FHD26a			234-234
FHD26b			235-235
FHD26c			236-236
FHD26d			237-237
FHD26e			238-238
FHD27			239-239
;
************************************
*  Assign formats to SAS variables.*
************************************;
format
FHD1 
FHD2a 
FHD2b 
FHD2c 
FHD2d 
FHD2e 
FHD2f 
FHD2g 
FHD2h 
FHD3
FHD13a 
FHD13b 
FHD13c 
FHD13d 
FHD13e 
FHD13f 
FHD13g 
FHD13h 
FHD14a 
FHD14b 
FHD14c 
FHD14d 
FHD14e 
FHD14f 
FHD14g 
FHD14h 
FHD14i 
FHD14j 
FHD14k 
FHD14l 
FHD14m 
FHD14n 
FHD14o 
FHD14p 
FHD16 
FHD17 
FHD18 
FHD19 
FHD20 
FHD21 
FHD22 
FHD23a 
FHD23b 
FHD23c 
FHD23d 
FHD23e 
FHD23f 
FHD24a 
FHD24b 
FHD24c 
FHD24d 
FHD24e 
FHD24f 
FHD24g 
FHD24h 
FHD24i 
FHD25 

FHD27 
FHD15a
FHD15b
FHD15c
FHD15d
YESNO.

FHD4 
FHD4HP.

FHD5
FHD5HP.

FHD6
FHD6HP.

FHD7 
FHD7HP.

FHD8
FHD8HP.

FHD9 
FHD9HP.

FHD10 
FHD10HP.

FHD11 
FHD11HP.

FHD12 
FHD12HP.

FHD26a 
FHD26b 
FHD26c 
FHD26d 
FHD26e 
PED80F.

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
FHD1	=	'FHD1 - St/dist off hlth ins to fac/staff'
FHD2a	=	'FHD2a - Ins covers - Preventive hlthcare'
FHD2b	=	'FHD2b - Ins covers - Rx drugs'
FHD2c	=	'FHD2c - Ins covers - Vision care'
FHD2d	=	'FHD2d - Ins covers - Dental care'
FHD2e	=	'FHD2e - Ins covers - Immun'
FHD2f	=	'FHD2f - Ins covers - MH care'
FHD2g	=	'FHD2g - Ins covers - Tobacco use cessation'
FHD2h	=	'FHD2h - Ins covers - Alcohol/drug use Tx'
FHD3	=	'FHD3 - Dist allows fac/staff to use sick leave for own children'
FHD4	=	'FHD4 - Dist fac/staff phys hlth exam req prior to employ'
FHD5	=	'FHD5 - Dist fac/staff drug test req prior to employ'
FHD6	=	'FHD6 - Dist fac/staff phys hlth exam req while employ'
FHD7	=	'FHD7 - Dist fac/staff drug test req while employ'
FHD8	=	'FHD8 - Dist fac/staff TB screening req prior to employ'
FHD9	=	'FHD9 - Dist fac/staff TB test req prior to employ'
FHD10	=	'FHD10 - Dist fac/staff periodic TB test req while employ'
FHD11	=	'FHD11 - Method accept evidence of neg TB test'
FHD12	=	'FHD12 - Dist req/rec flu vaccination'
FHD13a	=	'FHD13a - Dist prov funding screening - Oral hlth'
FHD13b	=	'FHD13b - Dist prov funding screening - BMI'
FHD13c	=	'FHD13c - Dist prov funding screening - Serum cholesterol'
FHD13d	=	'FHD13d - Dist prov funding screening - Blood pressure'
FHD13e	=	'FHD13e - Dist prov funding screening - Diabetes'
FHD13f	=	'FHD13f - Dist prov funding screening - Skin cancer'
FHD13g	=	'FHD13g - Dist prov funding screening - Breast cancer'
FHD13h	=	'FHD13h - Dist prov funding screening - Colorectal cancer'
FHD14a	=	'FHD14a - Dist prov funding - Nutr ed'
FHD14b	=	'FHD14b - Dist prov funding - Weight mgmt'
FHD14c	=	'FHD14c - Dist prov funding - Worksite safety ed'
FHD14d	=	'FHD14d - Dist prov funding - Emerg preparedness'
FHD14e	=	'FHD14e - Dist prov funding - Infectious disease prev'
FHD14f	=	'FHD14f - Dist prov funding - CPR ed'
FHD14g	=	'FHD14g - Dist prov funding - First aid ed'
FHD14h	=	'FHD14h - Dist prov funding - Stress mgmt ed'
FHD14i	=	'FHD14i - Dist prov funding - Pre/post-natal ed'
FHD14j	=	'FHD14j - Dist prov funding - Conflict resolution ed'
FHD14k	=	'FHD14k - Dist prov funding - Asthma mgmt ed'
FHD14l	=	'FHD14l - Dist prov funding - Diabetes mgmt ed'
FHD14m	=	'FHD14m - Dist prov funding - Tobacco use cessation'
FHD14n	=	'FHD14n - Dist prov funding - PA/fitness counseling'
FHD14o	=	'FHD14o - Dist prov funding - Emot disorder counseling'
FHD14p	=	'FHD14p - Dist prov funding - Crisis intervention for personal prob'
FHD15a	=	'FHD15a - Dist prov funding - Ref for child/elder care'
FHD15b	=	'FHD15b - Dist prov funding - Ref for oral hlth prob'
FHD15c	=	'FHD15c - Dist prov funding - Immun'
FHD15d	=	'FHD15d - Dist prov funding - ID/ref for phys/sexual/emot abuse'
FHD16	=	'FHD16 - Dist prov funding - PA prog'
FHD17	=	'FHD17 - Dist pol - Indoor/outdoor facilities/equip avail to fac/staff'
FHD18	=	'FHD18 - Dist prov funding - EAP'
FHD19	=	'FHD19 - Dist prov funding - Hlth risk appraisals'
FHD20	=	'FHD20 - Dist fac/staff receive subsidies/discounts for hlth promo activ'
FHD21	=	'FHD21 - Dist assessed hlth promo activ'
FHD22	=	'FHD22 - Dist assessed fac/staff satisfaction w hlth promo activ'
FHD23a	=	'FHD23a - Dist prov funding - Monetary incentives'
FHD23b	=	'FHD23b - Dist prov funding - Gifts'
FHD23c	=	'FHD23c - Dist prov funding - Paid time off'
FHD23d	=	'FHD23d - Dist prov funding - Hlth ins premium discounts'
FHD23e	=	'FHD23e - Dist prov funding - Certificates or awards'
FHD23f	=	'FHD23f - Dist prov funding - Public recognition'
FHD24a	=	'FHD24a - Orgs helped prov FSHP activ - Local hlth dept'
FHD24b	=	'FHD24b - Orgs helped prov FSHP activ - Cmty hlth clinic'
FHD24c	=	'FHD24c - Orgs helped prov FSHP activ - Local hosp'
FHD24d	=	'FHD24d - Orgs helped prov FSHP activ - MH/SS agency'
FHD24e	=	'FHD24e - Orgs helped prov FSHP activ - University/medical school/nursing school'
FHD24f	=	'FHD24f - Orgs helped prov FSHP activ - Managed care org'
FHD24g	=	'FHD24g - Orgs helped prov FSHP activ - Hlth org'
FHD24h	=	'FHD24h - Orgs helped prov FSHP activ - Local hlth/fitness club'
FHD24i	=	'FHD24i - Orgs helped prov FSHP activ - Local business'
FHD25	=	'FHD25 - Dist person oversee/coord FSHP'
FHD26a	=	'FHD26a - Person worked on FSHP activ - HE staff'
FHD26b	=	'FHD26b - Person worked on FSHP activ - PE staff'
FHD26c	=	'FHD26c - Person worked on FSHP activ - HSV staff'
FHD26d	=	'FHD26d - Person worked on FSHP activ - MH/SS staff'
FHD26e	=	'FHD26e - Person worked on FSHP activ - Nutr staff'
FHD27	=	'FHD27 - Dist pol - Each school has FSHP coordinator'
;


run;
