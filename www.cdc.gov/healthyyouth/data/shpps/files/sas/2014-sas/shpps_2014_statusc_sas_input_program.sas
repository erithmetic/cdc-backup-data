
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
/*  "STATUSC_SAS_Input_Program.sas" to create the 2014 SHPPS dataset.                   */
/****************************************************************************************/

filename datain 'c:\shpps2014\clstatus2014.dat';

libname dataout 'c:\shpps2014';

libname library 'c:\shpps2014';

data dataout.clstatus2014;
infile datain lrecl=500;
missing A C F N M ;
input
stcmsid	1	-	8
schcmsid	9	-	17
distcmsid	18	-	26
clcmsid	27	-	35
lowgrade	36	-	38
highgrade	39	-	41
enroll	42	-	46
Span	47	-	49
Region	50	-	52
level	53	-	55
type	56	-	58
sampstra	59	-	61
psu	62	-	70
hecpart	71	-	73
hecwt	12.7@74
pecpart	86	-	88
pecwt	12.7@89
schagree	101	-	103
hecaggwt	12.7@104
schpart	116	-	118
pecaggwt	12.7@119
course	$131	-	231
classformat 232-235
;
************************************
*  Assign formats to SAS variables.*
************************************;

format
stcmsid
state.

lowgrade
highgrade
grade.

Span
span.

region
region.

schagree
schagreec.

schpart
schpartc.

hecpart
pecpart
schpart.

level
level.

type
dtype.

SAMPSTRA
locale.

classformat
yesno.
;
***********************************
*  Assign labels to SAS variables.*
***********************************;
label
schcmsid	=	'School CMS ID'
stcmsid	=	'State CMS ID'
distcmsid	=	'District CMS ID'
clcmsid='Class CMS ID'
lowgrade	=	'Lowest grade in sampled school'
highgrade	=	'Highest grade in sampled school'
enroll	=	'Total school enrollment'
Span	=	'Flag for span schools'
Region	=	'Region'
schagree	=	'School agreement to participate status'
schpart	=	'School participation status '
level	=	' School Level'
type	=	'School Type'
sampstra	=	'Urban locale stratum'
psu	=	'Sampled Primary Sampling Unit'
HECPART='Health education classroom participation status'
HECWT='HEC Course-level health education classroom weight'
PECPART='Physical education classroom participation status'
PECWT='PEC Course-level physical education classroom weight'
hecaggwt='HEC School-level health education classroom weight'
pecaggwt='PEC School-level physical education classroom weight'
course='Course Taught'
classformat='Class Taught Online'
;
run;
