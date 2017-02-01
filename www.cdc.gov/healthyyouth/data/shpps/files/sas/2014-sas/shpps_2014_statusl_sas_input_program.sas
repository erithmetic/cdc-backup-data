
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
/*  "STATUSL_SAS_Input_Program.sas" to create the 2014 SHPPS dataset.                   */
/****************************************************************************************/

filename datain 'c:\shpps2014\scstatus2014.dat';

libname dataout 'c:\shpps2014';

libname library 'c:\shpps2014';

data dataout.scstatus2014;
infile datain lrecl=1000;
missing A C F N M ;
input
stcmsid	1	-	8
schcmsid	9	-	13
distcmsid	14	-	22
s_active	34	-	38
lowgrade	39	-	43
highgrade	44	-	48
enroll	49	-	54
Span	55	-	59
Region	60	-	64
schagree	65	-	66
schpart	67	-	68
overallwt	12.7 @70		
whyref_1	90	-	94
whyref_2	95	-	99
whyref_3	100	-	104
whyref_4	105	-	109
whyref_5	110	-	114
whyref_6	115	-	119
whyref_7	120	-	124
whyref_8	125	-	129
whyref_9	130	-	134
whyref_10	135	-	139
whyref_11	140	-	144
whyref_12	145	-	149
whyref_13	150	-	154
whyref_14	155	-	159
whyref_14_specify	$160 	-	220
whyref_15	221	-	225
helstat	226	-	230
pelm1stat	231	-	235
pelm2stat	236	-	240
enlm1stat	241	-	245
enlm2stat	246	-	250
fslstat	251	-	255
fhlstat	256	-	260
hslm1stat	261	-	265
hslm2stat	266	-	270
hslm3stat	271	-	275
mhlstat	276	-	280
helpart	281	-	285
HELwt	12.7 @286		
pelpart	306	-	310
pelm1part	311	-	315
pelm2part	316	-	320
PELwt	12.7 @321		
enlpart	341	-	345
enlm1part	346	-	350
enlm2part	351	-	355
ENLwt	12.7 @356		
hslpart	376	-	380
hslm1part	381	-	385
hslm2part	386	-	390
hslm3part	391	-	395
HSLwt	12.7 @396		
fslpart	416	-	420
FSLwt	12.7 @421		
mhlpart	441	-	445
MHLwt	12.7 @446		
fhlpart	466	-	470
FHLwt	12.7 @471		
Class_he	491	-	495
Class_pe	496	-	500
level	501	-	505
type	506	-	510
SAMPSTRA	511	-	515
psu	516	-	526
ReceviedVendingMachineCount	527	-	531
VMOBS	532	-	536
;
************************************
*  Assign formats to SAS variables.*
************************************;

format
stcmsid
state.


s_active
active.

lowgrade
highgrade
grade.

Span
span.

region
region.

schagree
schagree.

schpart
schpart.

whyref_1
whyref_2
whyref_3
whyref_4
whyref_5
whyref_6
whyref_7
whyref_8
whyref_9
whyref_10
whyref_11
whyref_12
whyref_13
whyref_14
whyref_15
span.

helstat
pelm1stat
pelm2stat
enlm1stat
enlm2stat
fslstat
fhlstat
hslm1stat
hslm2stat
hslm3stat
mhlstat
schstat.

helpart
pelpart
pelm1part
pelm2part
enlpart
enlm1part
enlm2part
hslpart
hslm1part
hslm2part
hslm3part
fslpart
mhlpart
fhlpart
schpart.

Class_he
class_he.

Class_pe
class_pe.

level
level.

type
dtype.

SAMPSTRA
locale.

VMOBS
span.
;

***********************************
*  Assign labels to SAS variables.*
***********************************;
label
schcmsid	=	'School CMS ID'
stcmsid	=	'State CMS ID'
distcmsid	=	'District CMS ID'
s_active	=	'School active flag in CMS'
lowgrade	=	'Lowest grade in sampled school'
highgrade	=	'Highest grade in sampled school'
enroll	=	'Total school enrollment'
Span	=	'Flag for span schools'
Region	=	'Region'
schagree	=	'School agreement to participate status'
schpart	=	'School participation status '
overallwt	=	'School Weight for Cross Component Analysis'
whyref_1	=	'School refusal reason - Content is objectionable to staff and/or community'
whyref_2	=	'School refusal reason - Loss of instructional time'
whyref_3	=	'School refusal reason - Too many surveys/standardized tests'
whyref_4	=	'School refusal reason - Poor timing (in school year)'
whyref_5	=	'School refusal reason - Administrative changes (change in superintendent or principal)'
whyref_6	=	'School refusal reason - Concerns about confidentiality'
whyref_7	=	'School refusal reason - Community/school tragedy (suicide/death)'
whyref_8	=	'School refusal reason - Burden for teachers/staff (includes lack of free periods)'
whyref_9	=	'School refusal reason - School undergoing accreditation/major transition'
whyref_10	=	'School refusal reason - Not mandated '
whyref_11	=	'School refusal reason - Against district/union policy '
whyref_12	=	'School refusal reason - School/review board declined'
whyref_13	=	'School refusal reason - Not enough incentive offered '
whyref_14	=	'School refusal reason - Other'
whyref_14_specify	=	'School refusal reason - Specified'
whyref_15	=	'School refusal reason - Bad experience with school based survey'
helstat	=	'Health education respondent identification status'
pelm1stat	=	'Module 1 - Physical education respondent identification status'
pelm2stat	=	'Module 2 - Physical education respondent identification status'
enlm1stat	=	'Module 1 - Healthy and safe school environment respondent identification status'
enlm2stat	=	'Module 2 - Healthy and safe school environment respondent identification status'
fslstat	=	'Nutrition services respondent identification status'
fhlstat	=	'Faculty and staff health promotion respondent identification status'
hslm1stat	=	'Module1 - Health services respondent identification status'
hslm2stat	=	'Module2 - Health services respondent identification status'
hslm3stat	=	'Module3 - Health services respondent identification status'
mhlstat	=	'Mental health and social services respondent identification status'
helpart	=	'Health education participation status'
HELwt	=	'Analysis Weight for School under HEL component'
pelpart	=	'Overall – Physical education participation status (at least one module was completed)'
pelm1part	=	'Module1 – Physical education participation status'
pelm2part	=	'Module2 – Physical education participation status'
PELwt	=	'Analysis Weight for School under PEL component'
enlpart	=	'Overall – Healthy and safe school environment participation status (at least one module was completed)'
enlm1part	=	'Module1 – Healthy and safe school environment participation status'
enlm2part	=	'Module2 – Healthy and safe school environment participation status'
ENLwt	=	'Analysis Weight for School under ENL component'
hslpart	=	'Overall – Health services participation status  (at least one module was completed)'
hslm1part	=	'Module1 – Health services participation status'
hslm2part	=	'Module2 – Health services participation status'
hslm3part	=	'Module3 – Health services participation status'
HSLwt	=	'Analysis Weight for School under HSL component'
fslpart	=	'Nutrition services participation status'
FSLwt	=	'Analysis Weight for School under FSL component'
mhlpart	=	'Mental health and social services participation status'
MHLwt	=	'Analysis Weight for School under MHL component'
fhlpart	=	'Faculty and staff health promotion participation status'
FHLwt	=	'Analysis Weight for School under FHL component'
Class_he	=	'Number of health education classroom questionnaires completed by the school'
Class_pe	=	'Number of physical education classroom questionnaires completed by the school'
level	=	' School Level'
type	=	'School Type'
SAMPSTRA	=	'Urban locale stratum'
psu	=	'Sampled Primary Sampling Unit'
ReceviedVendingMachineCount	=	'Number of vending machines observed'
VMOBS	=	'School participated in vending machine observation'
;
run;
