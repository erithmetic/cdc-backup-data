
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
/*  "State_Status_SAS_Input_Program.sas" to create the 2012 SHPPS dataset.              */
/****************************************************************************************/

filename datain 'c:\shpps2012\ststatus2012.dat';

libname dataout 'c:\shpps2012';

libname library 'c:\shpps2012';

data dataout.ststatus2012 ;
infile datain lrecl=100;
missing A C F;

input
stcmsid	1-3
r_st_ds	4-4
statpart	5-5
statagree	6-6
hesstat	7-7
hespart	8-8
pesstat	9-9
pespart	10-10
ensstat	11-11
enspart	12-12
hssstat	13-13
hsspart	14-14
mhsm1stat	15-15
mhsm1part	16-16
mhsm2stat	17-17
mhsm2part	18-18
fssstat	19-19
fsspart	20-20
;
************************************
*  Assign formats to SAS variables.*
************************************;
format

STCMSID
state.

r_st_ds
shppsyesno.

statpart
statepar.

statagree
sagree.

hesstat
pesstat
ensstat
hssstat
mhsm1stat
mhsm2stat
fssstat
identifi.

hespart
pespart
enspart
mhsm1part
hsspart
mhsm2part
fsspart
pstatus.
;


***********************************
*  Assign labels to SAS variables.*
***********************************;
label 
stcmsid	=	'State CMS ID'
r_st_ds	=	'State with responding districts'
statpart	=	'State participation status'
statagree	=	'State agreement status'
hesstat	=	'Health education respondent identification status'
hespart	=	'Health education participation status'
pesstat	=	'Physical education and activity respondent identification status'
pespart	=	'Physical education and activity participation status'
ensstat	=	'Healthy and safe school environment respondent identification status '
enspart	=	'Healthy and safe school environment participation status'
hssstat	=	'Health services respondent identification status'
hsspart	=	'Health services participation status'
mhsm1stat	=	'Module 1 - Mental health and social services respondent identification status'
mhsm1part	=	'Module 1 - Mental health and social services participation status'
mhsm2stat	=	'Module 2 - Mental health and social services identification status'
mhsm2part	=	'Module 2 - Mental health and social services participation status'
fssstat	=	'Nutrition services respondent identification status'
fsspart	=	'Nutrition services participation status'
;
RUN;




