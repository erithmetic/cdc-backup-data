
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
/*  "District_Status_SAS_Input_Program.sas" to create the 2012 SHPPS dataset.           */
/****************************************************************************************/

filename datain 'c:\shpps2012\dstatus2012.dat';

libname dataout 'c:\shpps2012';

libname library 'c:\shpps2012';

data dataout.dstatus2012 ;
infile datain lrecl=1000;
missing A C F N  ;
input
STCMSID		1-2
DISTCMSID		3-7
MERGE_ID		8-14
D_ACTIVE		23-23
REGION		24-24
URBAN		25-25
POVERTY		26-26
CERTAIN		27-27
STATAGREE		28-28
WHYREF_1		29-29
WHYREF_2		30-30
WHYREF_3		31-31
WHYREF_4		32-32
WHYREF_5		33-33
WHYREF_6		34-34
WHYREF_7		35-35
WHYREF_SPEC		$36-101
OVERALLWT		12.7 @ 102
STATPART		114-114
HEDWT		12.7 @115
HEDM1STAT		127-127
HEDM2STAT		128-128
HEDM3STAT		129-129
HEDM4STAT		130-130
HEDM5STAT		131-131
PEDWT		12.7 @132
PEDM1STAT		144-144
PEDM2STAT		145-145
PEDM3STAT		146-146
PEDM4STAT		147-147
PEDM5STAT		148-148
HSDWT		12.7 @149
HSDSTAT		161-161
MHDWT		12.7 @162
MHDM1STAT		174-174
MHDM2STAT		175-175
ENDWT		12.7 @176
ENDM1STAT		188-188
ENDM2STAT		189-189
ENDM3STAT		190-190
ENDM4STAT		191-191
FSDWT		12.7 @192
FSDSTAT		204-204
FHDWT		12.7 @205
FHDSTAT		217-217
HEDM1PART		218-218
HEDM2PART		219-219
HEDM3PART		220-220
HEDM4PART		221-221
HEDM5PART		222-222
HEDPART		223-223
PEDM1PART		224-224
PEDM2PART		225-225
PEDM3PART		226-226
PEDM4PART		227-227
PEDM5PART		228-228
PEDPART		229-229
HSDPART		230-230
MHDM1PART		231-231
MHDM2PART		232-232
MHDPART		233-233
ENDM1PART		234-234
ENDM2PART		235-235
ENDM3PART		236-236
ENDM4PART		237-237
ENDPART		238-238
FSDPART		239-239
FHDPART		240-240
SAMPSTRA		241-241
PSU		242-249
;
************************************
*  Assign formats to SAS variables.*
************************************;
format

STCMSID
STATE.

D_ACTIVE
ACTIVE.

REGION
REGIONF.

URBAN
URBANF.

POVERTY
POVERTYF.

CERTAIN
CERTAINF.

SAMPSTRA
SAMPSTRAF.

STATAGREE
STATAGREEF.

WHYREF_1
WHYREF_2
WHYREF_3
WHYREF_4
WHYREF_5
WHYREF_6
WHYREF_7
STATUSYN.

STATPART
STATPARTF.

HEDM1STAT
HEDM2STAT
HEDM3STAT
HEDM4STAT
HEDM5STAT
PEDM1STAT
PEDM2STAT
PEDM3STAT
PEDM4STAT
PEDM5STAT
HSDSTAT
MHDM1STAT
MHDM2STAT
ENDM1STAT
ENDM2STAT
ENDM3STAT
ENDM4STAT
FSDSTAT
FHDSTAT
identif.


HEDM1PART
HEDM2PART
HEDM3PART
HEDM4PART
HEDM5PART
HEDPART
PEDM1PART
PEDM2PART
PEDM3PART
PEDM4PART
PEDM5PART
PEDPART
HSDPART
MHDM1PART
MHDM2PART
MHDPART
ENDM1PART
ENDM2PART
ENDM3PART
ENDM4PART
ENDPART
FSDPART
FHDPART
PARTIF.
;

***********************************
*  Assign labels to SAS variables.*
***********************************;
Label
STCMSID='State CMS ID'
DISTCMSID	=	'District CMS ID'
MERGE_ID	=	'Concatenated State and District ID'
D_ACTIVE	=	'District Active Flag in CMS'
REGION	=	'Region'
URBAN=	'District Urbanicity'
POVERTY	=	'District Poverty'
CERTAIN	=	'District Drawn with Certainty'
STATAGREE	=	'District Agreement to Participate Status'
WHYREF_1	=	'District Refusal Reason-Burden for Teachers/Staff'
WHYREF_2	=	'District Refusal Reason-Too Many Surveys/Standardized Tests'
WHYREF_3	=	'District Refusal Reason-Poor Timing(In School Year)'
WHYREF_4	=	'District Refusal Reason-Not Mandated'
WHYREF_5	=	'District Refusal Reason-Administrative Change(Change in Superintendent or Principal)'
WHYREF_6	=	'District Refusal Reason-Loss of Instructional Time'
WHYREF_7	=	'District Refusal Reason-Other'
WHYREF_SPEC	=	'District Refusal Reason -Specified'
STATPART	=	'District Participation Status'
HEDM1STAT	=	'Module1-Health Education Respondent Identification'
HEDM2STAT	=	'Module2-Health Education Respondent Identification'
HEDM3STAT	=	'Module3-Health Education Respondent Identification'
HEDM4STAT	=	'Module4-Health Education Respondent Identification'
HEDM5STAT	=	'Module5-Health Education Respondent Identification'
PEDM1STAT	=	'Module1-Physical Education Respondent Identification'
PEDM2STAT	=	'Module2-Physical Education Respondent Identification'
PEDM3STAT	=	'Module3-Physical Education Respondent Identification'
PEDM4STAT	=	'Module4-Physical Education Respondent Identification'
PEDM5STAT	=	'Module5-Physical Education Respondent Identification'
HSDSTAT	=	'Health Service Respondent Identification'
MHDM1STAT	=	'Module1-Mental Health and Social Service Respondent Identification'
MHDM2STAT	=	'Module2-Mental Health and Social Service Respondent Identification'
ENDM1STAT	=	'Module1-Healthy and Safe School Environment Respondent Identification'
ENDM2STAT	=	'Module2-Healthy and Safe School Environment Respondent Identification'
ENDM3STAT	=	'Module3-Healthy and Safe School Environment Respondent Identification'
ENDM4STAT	=	'Module4-Healthy and Safe School Environment Respondent Identification'
FSDSTAT	=	'Nutrition Service Respondent Identification'
FHDSTAT	=	'Faculty and Staff Health Promotion Respondent Identification'
HEDM1PART	=	'Module1-Health Education Participation Status'
HEDM2PART	=	'Module2-Health Education Participation Status'
HEDM3PART	=	'Module3-Health Education Participation Status'
HEDM4PART	=	'Module4-Health Education Participation Status'
HEDM5PART	=	'Module5-Health Education Participation Status'
HEDPART	=	'Overall-Health Education Participation Status'
PEDM1PART	=	'Module1-Physical Education Participation Status'
PEDM2PART	=	'Module2-Physical Education Participation Status'
PEDM3PART	=	'Module3-Physical Education Participation Status'
PEDM4PART	=	'Module4-Physical Education Participation Status'
PEDM5PART	=	'Module5-Physical Education Participation Status'
PEDPART	=	'Overall-Physical Education Participation Status'
HSDPART	=	'Health Service Participation Status'
MHDM1PART	=	'Module1-Mental Health and Social Service Participation Status'
MHDM2PART	=	'Module2-Mental Health and Social Service Participation Status'
MHDPART	=	'Overall-Mental Health and Social Service Participation Status'
ENDM1PART	=	'Module1-Healthy and Safe School Environment Participation Status'
ENDM2PART	=	'Module2-Healthy and Safe School Environment Participation Status'
ENDM3PART	=	'Module3-Healthy and Safe School Environment Participation Status'
ENDM4PART	=	'Module4-Healthy and Safe School Environment Participation Status'
ENDPART	=	'Overall-Healthy and Safe School Environment Participation Status'
FSDPART	=	'Nutrition Service Participation Status'
FHDPART	=	'Faculty and Staff Health Promotion Participation Status'
SAMPSTRA	=	'Sampling Stratum'
PSU	=	'Sampled Primary Sampling Unit'
OVERALLWT	=	'District Weight for Cross Component Analysis'
HEDWT	=	'Analysis Weight for District under HED Component'
PEDWT	=	'Analysis Weight for District under PED Component'
HSDWT	=	'Analysis Weight for District under HSD Component'
MHDWT	=	'Analysis Weight for District under MHS Component'
ENDWT	=	'Analysis Weight for District under END Component'
FSDWT	=	'Analysis Weight for District under NSD Component'
FHDWT	=	'Analysis Weight for District under FHD Component'
;

run;
