/****************************************************************************************/
/*  This SAS program creates a permanent SAS format library that is used to analyze to  */
/*  analyze the SHPPS 2014 dataset.                                                     */
/*                                                                                      */
/*  Change the file location specification from "c:\shpps2012" to the location where you*/
/*  want the format library to be stored before you run this program.  Change the       */
/*  location specification in the "library" statement at the top of the program.        */
/*                                                                                      */
/*  Note: Run "Shpps Formats program.sas" BEFORE you run                                */
/*  "****_SAS_Input_Program.sas" to create the 2014 SHPPS dataset.                      */
/****************************************************************************************/
libname library "c:\shpps2012";

proc format library=library;
value jobtitle
1='Principal'
2='Asst.Principal/Other School Administrator'
3='School Secretary'
4='Physical Ed Teacher'
5='Athletic Director'
6='Health Ed Teacher'
7='Other Teacher'
8='Food Service Manager'
9='Commercial Food Service Provider'
10='Other School Nutrition Service Staff'
11='School Counselor'
12='Social Worker'
13='Psychologist'
14='Other Mental Health/Social Services Provider'
15='Nurse'
16='Health Aide'
17='Physician'
18='Other Health Services Provider'
19='SBHC Health Services Provider'
20='SBHC Mental Health/Social Services Staff'
21=	'Facilities or Maintenance Director'
22=	'Other Facilities or Maintenance Staff'
50='Other Staff'
51='Athletic Trainer'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value yesno
1='Yes'
2='No'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value yesnona
1='Yes'
2='No'
3='N/A'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE YNSERNOT
1='Yes'
2='No'
3='Service was not needed'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value hours
0='Less than 1 hour'
1='1 Hour'
2='2 Hours'
3='3 Hours'
4='4 Hours'
5='5 Hours'
6='6 Hours'
7='7 Hours'
8='8 Hours'
9='9 Hours'
10='10 Hours'
11='11 or more hours'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value often
1='Never'
2='Rarely'
3='Sometimes'
4='Often'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value howoften
1='Never'
2='Rarely'
3='Sometimes'
4='Almost Always or Always'
5='N/A'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value GRADE
0='Kindergarten'
1='1st Grade'
2='2nd Crade'
3='3rd Grade'
4='4th Grade'
5='5th Grade'
6='6th Grade'
7='None'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MAJOR
1='Health education'
2='Physical education'
3='Other education'
4='Kinesiology, exercise physiology, or exercise science'
5='Nursing'
6='Nutrition'
7='Public health'
8='Biology or other science'
9='Home economics or family and consumer science'
10='Other'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MAJORR
1='Health education'
2='Physical education'
3='Education administration'
4='Other education'
5='Kinesiology, exercise physiology, or exercise science'
6='Nursing'
7='Nutrition'
8='Public health'
9='Biology or other science'
10='Home economics or family and consumer science'
11='Other'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value breakfast
1='In the Cafeteria'
2='In Classrooms'
3='In other locations(Specify)'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value deepfry
1='Deep fried foods are sold each day at lunch, either as part of a meal or as a la carte items'
2='Deep fried foods are sold at lunch, but fewer than five days per week'
3='Deep fried foods are not sold at lunch'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

/*Nutrition Service*/
value FSL24F
1='Staff working at the district food authority office'
2='School staff'
3='Food service management company staff'
4='Someone else'
5='No primary group'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FSL25F
1='Whole white milk'
2='2% or one and a half-percent white milk'
3='1% or half-percent white milk'
4='Skim white milk'
5='Whole chocolate or other whole flavored milk'
6='2% or one and a half-percent chocolate or other flavored milk'
7='1% or half-percent chocolate or other flavored milk'
9='Skim chocolate or other flavored milk'
10'Buttermilk'
11='Lactose-free milk'
12='Soy milk'
13='Any other type of milk'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FSL26F
1='Yes'
2='No'
3='School does not have a school garden'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FSL28F
1='Staff working at a central kitchen'
2='School staff'
3='Food service management company staff'
4='Someone else'
5='No primary group'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FSL32F
1='Never'
2='Rarely'
3='Sometimes'
4='Almost always or Always'
5='School uses only precooked meat/poultry'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FSL34F
1='Never'
2='Rarely'
3='Sometimes'
4='Almost always or Always'
5='School uses only precooked meat/poultry'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FSL41F
1='Less than 50% full'
2='50% to 70% full'
3='76% to 100% full'
4='Over capacity'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FSL44F
1='Yes'
2='No'
3='No language other than English necessary'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FSL46F
1='Never'
2='1 time'
3='2 times'
4='More than 2 times'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FSL50F
1='Never'
2='Rarely'
3='Sometimes'
4='Almost always or Always'
5='School uses only precooked meat/poultry'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FSL58AF
1='Yes'
2='No'
3='School does not have health education staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FSL58BF
1='Yes'
2='No'
3='School does not have physical education staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FSL58CF
1='Yes'
2='No'
3='School does not have health services staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FSL58DF
1='Yes'
2='No'
3='School does not have mental health or social services staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FSL62F
1='Yes'
2='No'
3='N/A'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE FSL66F
1='High school diploma or GED'
2="Associate's degree in nutrition or related field"
3='Undergraduate degree in nutrition or related field'
4='Graduate degree in nutrition or related field'
5='No requirement'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FSL71F
1='Less than high school'
2='High school or GED'
3='More than high school'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

/*Health Education School*/
value HEL10F
0='K'
1='1st'
2='2nd'
3='3rd'
4='4th'
5='5th'
6='6th'
7='7th'
8='8th'
9='9th'
10='10th'
11='11th'
12='12th'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HEL12F
1='1 day'
2='2 days'
3='3 days'
4='4 days'
5='5 days'
6='0 days one week, 1 day the next week'
7='1 day one week, 2 days the next week'
8='2 days one week, 3 days the next week'
9='3 days one week, 4 days the next week'
10='4 days one week, 5 days the next week'
11='Other'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HEL16F
0='K'
1='1st'
2='2nd'
3='3rd'
4='4th'
5='5th'
6='6th'
7='7th'
8='8th'
9='9th'
10='10th'
11='11th'
12='12th'
13='No usual grade'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HEL18F
1='1 day'
2='2 days'
3='3 days'
4='4 days'
5='5 days'
6='0 days one week, 1 day the next week'
7='1 day one week, 2 days the next week'
8='2 days one week, 3 days the next week'
9='3 days one week, 4 days the next week'
10='4 days one week, 5 days the next week'
11='Other'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HEL27F
1='Yes'
2='No'
3='School does not calculate grade point averages or have any other indicators of academic standing'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HEL33F
1='Yes'
2='No'
3='State does not offer certification, licensure, or endorsement in health education'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE HEL36AF
1='Yes'
2='No'
3='School does not have physical education staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE HEL36BF
1='Yes'
2='No'
3='School does not have health services staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE HEL36CF
1='Yes'
2='No'
3='School does not have mental health or social services staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE HEL36DF
1='Yes'
2='No'
3='School does not have nutrition or food service staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HEL49F
1='Yes'
2='No'
3='State does not offer certification, licensure, or endorsement to teach health education at this level'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

/*HEALTH AND SAFE SCHOOL ENVIRONMENT*/
value ENL2F
0='Kindergarten'
1='1st grade'
2='2nd grade'
3='3rd grade'
4='4th grade'
5='5th grade'
6='6th grade'
7='7th grade'
8='8th grade'
9='9th grade'
10='10th grade'
11='11th grade'
12='12th grade'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL4F
1='Yes, in all locations'
2='Yes, in certain locations'
3='No'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL10F
1='Yes'
2='No'
3='School does not have lockers'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL21F
1='15 mph or lower'
2='20 mph'
3='25 mph'
4='30 mph'
5='35 mph or higher'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL22F
1='Yes'
2='No'
3='School does not have school buses'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL23F
1='Yes'
2='No'
3='No public transportation available'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL24F
1='Yes'
2='No'
3='No public transportation available'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE ENL25AF
1='Yes'
2='No'
3='School does have school buses'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL28F
1='10% or less'
2='11-25%'
3='26-50%'
4='51-75%'
5='76-90%'
6='More than 90%'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL29F
1='10% or less'
2='11-25%'
3='26-50%'
4='51-75%'
5='76-90%'
6='More than 90%'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL103F
1='Yes'
2='No'
3='School does not have these classes or activities'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

Value ENL107F
1='Yes'
2='No'
3='School does not have parking permit agreement'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL120F
1='Yes'
2='No'
3='Lead paint previously identified and remediated'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL121F
1='Yes'
2='No'
3='PCBs in caulking previously identified and remediated'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL122F
1='Yes'
2='No'
3='PCBs in caulking previously identified and remediated'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL123F
1='Weekly'
2='Monthly'
3='Quarterly'
4='Every 6 months'
5='Once per year'
6='Only as needed'
7='Other time frame'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL124F
1='Never'
2='Each time'
3='Once per year'
4='Other time frame'
5='School does not apply pesticides'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

Value ENL126F
1='Daily'
2='Weekly'
3='Monthly'
4='Quarterly'
5='Every 6 months'
6='Once per year'
7='Only as needed'
8='Other time frame'
9='School does not have lockers'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

Value ENL127F
1='Daily'
2='Weekly'
3='Monthly'
4='Quarterly'
5='Every 6 months'
6='Once per year'
7='Only as needed'
8='Other time frame'
9='School does not have this type of desk'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

Value ENL128F
1='Daily'
2='Weekly'
3='Monthly'
4='Quarterly'
5='Every 6 months'
6='Once per year'
7='Only as needed'
8='Other time frame'
9='School does not have cubbies'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

Value ENL129F
1='Daily'
2='Weekly'
3='Monthly'
4='Quarterly'
5='Every 6 months'
6='Once per year'
7='Only as needed'
8='Other time frame'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE ENL131F
1='Yes'
2='No'
3='No moisture-related issues during the past 12 months'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL141F
1='This school does not have such a plan'
2='This school uses a plan provided by the district'
3="This school uses a district-level plan that has been adapted to meet our school's needs"
4='This school has its own plan'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';


VALUE ENL149F
1='Yes'
2='No'
3='No such group'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL152F
1='None'
2='Some'
3='Most'
4='All'
5='N/A'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL162F
1='None'
2='Less than half'
3='Half'
4='More than half'
5='All'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL163F
1='None'
2='Less than half'
3='Half'
4='More than half'
5='All'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL165F
1='Students engage in free play or physical activity'
2='Students are required or encouraged to use physical activity or fitness stations'
3='Other(Specify)'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL167F
1='Students participate in physical activity in the gymnasium, multi-purpose room,or cafeteria'
2='Students participate in physical activity in regular classrooms'
3='Students watch a DVD/video (do not include physical activity DVDs/videos)'
4='Students engage in other sedentary activities,such as board games'
5='Other(Specify)'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL174F
1='Yes'
2='No'
3='School does not have student parties'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL175F
1='Yes'
2='No'
3='School does not have after-school or extended day programs'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL176F
1='Yes'
2='No'
3='School does not have concession stands'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL177F
1='Yes'
2='No'
3='School does not have student parties'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL178F
1='Yes'
2='No'
3='School does not have after-school or extended day programs'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL179F
1='Yes'
2='No'
3='School does not have concession stands'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL180F
1='Yes'
2='No'
3='School does not have student parties'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL181F
1='Yes'
2='No'
3='School does not have after-school or extended day programs'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL182F
1='Yes'
2='No'
3='School does not have concession stands'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL183F
1='Yes'
2='No'
3='School does not have student parties'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL184F
1='Yes'
2='No'
3='School does not have after-school or extended day programs'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL185F
1='Yes'
2='No'
3='School does not have concession stands'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL193F
1='Yes'
2='No'
3='School does not sell junk food'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL194F
1='Yes'
2='No'
3='School does not sell sugar-sweetened beverages'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL205F
1='Yes'
2='No'
3='School does not have vending machines'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE ENL214F
1='0 times'
2='1 or 2 times'
3='3 or 4 times'
4='5 or 6 times'
5='More than 6 times'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value ENL216F
1='Yes'
2='No'
3='No SIP'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';


value ENL224F
1='Health education'
2='Physical education'
3='Other education'
4='Kinesiology, exercise physiology, or exercise science'
5='Nursing'
6='Nutrition'
7='Public health'
8='Biology or other science'
9='Home economics or family and consumer science'
10='Other'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE ENL226F
1='Health education'
2='Physical education'
3='Education administration'
4='Other education'
5='Kinesiology, exercise physiology, or exercise science'
6='Nursing'
7='Nutrition'
8='Public health'
9='Biology or other science'
10='Home economics or family and consumer science'
11='Other'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

/*Health Services*/
value HSL9F
1='Students who have not received the required immunizations for school entry are immediately excluded from attending classes'
2='Students who have not received the required immunizations for school entry are allowed to attend classes for a specified number of days and then excluded'
3='This school does not exclude students from attending classes if they have not received the required immunizations for school entry'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE HSL12F
1='TB screening is required prior to school entry for all students'
2='TB screening is required prior to school entry for certain students, such as those transferring into the school'
3='TB screening is not required prior to school entry for any students'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE HSL13F
1='TB testing is required prior to school entry based on the results of TB screening'
2='TB testing is required prior to school entry for all students'
3='TB testing is required prior to school entry for certain students, such as those transferring into the school'
4='TB testing is not required prior to school entry for any students'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE  HSL14F
1='Periodic TB testing is required for all students'
2='Periodic TB testing is required only for students previously identified through screening'
3='Periodic TB testing is not required for any students'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE HSL15F
1='(These) students are tested in one particular grade'
2='(These) students are tested in more than one grade, but not every year'
3='(These) students are tested every year'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE HSL16F
1='PPD skin test done by Mantoux method'
2='Skin test not otherwise specified'
3='Chest x-ray'
4='Blood test (i.e., interferon-gamma release assays)'
5='More than one testing method is acceptable'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HSL34F
1='Notify the student’s parents or guardians'
2='Notify the student’s teachers'
3='Provide referrals to community healthcare providers'
4='None of the above'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HSL44AF
1='Yes'
2='No'
3='School does not have health education staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HSL44BF
1='Yes'
2='No'
3='School does not have physical education staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HSL44CF
1='Yes'
2='No'
3='School does not have nutrition or food service staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HSL44DF
1='Yes'
2='No'
3='School does not have mental health or social services staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HSL44EF
1='Yes'
2='No'
3='School does not have school-based health center staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HSL47F
1='Associate’s degree in nursing'
2='Undergraduate/baccalaureate degree in nursing (e.g., BSN)'
3='Graduate degree in nursing'
4='Other (Specify)'
5='No specific education requirement'
6='School does not have school nurses'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE HSL48F
1='A Licensed Practical Nurse’s, or LPN’s, license'
2='A Registered Nurse’s, or RN’s, license'
3='No specific licensure requirement'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE HSL49F
1='A national school nurse certification from the National Board for Certification of School Nurses'
2='State school nurse certification'
3='No specific certification requirement'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE HSL71F
1='Yes'
2='No'
3='School does not keep health services records'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

Value HSL93F
1='School nurse'
2='School physician'
3='School health aide'
4='Other (Specify)'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

Value HSL97F
1='School nurse'
2='School physician'
3='School health aide'
4='School counselor'
5='School psychologist'
6='School social worker'
7='Other (Specify)'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE HSL106F
1='High school or GED'
2='Associate’s degree'
3='Undergraduate degree'
4='Master’s degree'
5='Doctoral degree'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE  HSL112F
1='Yes'
2='No'
3='State does not offer school nurse certification'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

/*Physical Education School*/
value PEL16F
0='K'
1='1st'
2='2nd'
3='3rd'
4='4th'
5='5th'
6='6th'
7='7th'
8='8th'
9='9th'
10='10th'
11='11th'
12='12th'
13='No usual grade'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL18F
1='1 day'
2='2 days'
3='3 days'
4='4 days'
5='5 days'
6='0 days one week, 1 day the next week'
7='1 day one week, 2 days the next week'
8='2 days one week, 3 days the next week'
9='3 days one week, 4 days the next week'
10='4 days one week, 5 days the next week'
11='Other'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value PEL23F
0='K'
1='1st'
2='2nd'
3='3rd'
4='4th'
5='5th'
6='6th'
7='7th'
8='8th'
9='9th'
10='10th'
11='11th'
12='12th'
13='No usual grade'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value PEL25F
1='1 day'
2='2 days'
3='3 days'
4='4 days'
5='5 days'
6='0 days one week, 1 day the next week'
7='1 day one week, 2 days the next week'
8='2 days one week, 3 days the next week'
9='3 days one week, 4 days the next week'
10='4 days one week, 5 days the next week'
11='Other'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value PEL31F
0='K'
1='1st'
2='2nd'
3='3rd'
4='4th'
5='5th'
6='6th'
7='7th'
8='8th'
9='9th'
10='10th'
11='11th'
12='12th'
13='No usual grade'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value PEL33F
1='1 day'
2='2 days'
3='3 days'
4='4 days'
5='5 days'
6='0 days one week, 1 day the next week'
7='1 day one week, 2 days the next week'
8='2 days one week, 3 days the next week'
9='3 days one week, 4 days the next week'
10='4 days one week, 5 days the next week'
11='Other'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value PEL38F
1='Physical education teacher(s) or specialist(s)'
2='Regular classroom teacher(s)'
3='Other(s)'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL41F
1='Yes'
2='No'
3='School does not calculate grade point averages or have any other indicators of academic standing'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL43F
1='Yes'
2='No'
3='Students do not engage in any physical activities that require protective gear'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL56F
1='Less than 50% full'
2='50 to 75% full'
3='76 to 100% full'
4='Over capacity'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL62F
1='Yes'
2='No'
3='State does not offer certification, licensure, or endorsement'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL64AF
1='Yes'
2='No'
3='School does not have health education staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL64BF
1='Yes'
2='No'
3='School does not have health services staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL64CF
1='Yes'
2='No'
3='School does not have mental health or social services staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL64DF
1='Yes'
2='No'
3='School does not have nutrition or food service staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL72F
1='Yes'
2='No'
3='Physical activity clubs/intramural sports programs do not meet after school'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL79F
1='Yes'
2='No'
3='Students do not engage in any physical activity clubs or intramural sports that require protective gear'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL84F
1='Yes'
2='No'
3='School does not have outdoor physical activity/athletic facilities'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL96F
1='Yes'
2='No'
3='State does not offer certification, licensure, or endorsement to teach physical education at this level'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL101F
1='Students must try out to be able to participate on all interscholastic sports teams'
2='Students must try out to be able to participate on some interscholastic sports teams'
3='Students are not required to try out to be able to participate on any interscholastic sports teams'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL107F
1='Yes'
2='No'
3='Students do not engage in any interscholastic sports that require protective gear'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

VALUE PEL111F
1='Yes'
2='No'
3='School does not have assistant coaches/volunteer athletic aides'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

/*Mental Health and Social Services*/
value MHL5F
1='Undergraduate degree in counseling'
2='Master’s degree in counseling'
3='Other degree (Specify)'
4='No specific education requirement'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MHL6F
1='Yes'
2='No'
3='State does not license, certify, or credential school counselors'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MHL10F
1='Undergraduate degree in psychology'
2='Master’s degree in psychology'
3='Doctorate in psychology'
4='Other degree (Specify)'
5='No specific education requirement'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MHL11F
1='Yes'
2='No'
3='State does not license, certify, or credential school psychologists'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MHL15F
1='Undergraduate degree in social work'
2='Master’s degree in social work'
3='Other degree (Specify)'
4='No specific education requirement'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MHL16F
1='Yes'
2='No'
3='State does not license, certify, or credential school social workers'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MHL19AF
1='Yes'
2='No'
3='School does not have health education staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MHL19BF
1='Yes'
2='No'
3='School does not have physical education staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MHL19CF
1='Yes'
2='No'
3='School does not have nutrition or food service staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MHL19DF
1='Yes'
2='No'
3='School does not have health services staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MHL19EF
1='Yes'
2='No'
3='School does not have school-based health center staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MHL24F
1='Within the same office suite as the main office' 
2='Within view of the main office'
3='Not within view of the main office'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MHL26F
1='School counselor'
2='School psychologist'
3='School social worker'
4='Other (Specify)'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MHL34F
1='Yes'
2='No'
3='School does not keep mental health or social services records'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value MHL49F
1='Yes'
2='No'
3='State does not license, certify, or credential school mental health or social services professionals'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

/*Facility and Staff health promotion*/
value FHL5F
1='Physical health examinations are required of all faculty and staff prior to employment'
2='Physical health examinations are required prior to employment depending on the position 
   the person will have'
3="Physical health examinations are required prior to employment depending on something other 
   than the person’s position"
4='Physical health examinations are not required of any faculty or staff prior to employment'	
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FHL6F
1='Drug testing is required of all faculty and staff prior to employment'
2='Drug testing is required prior to employment depending on the position the person will have'
3='Drug testing is required prior to employment depending on something other than the person’s position'
4='Drug testing is not required of any faculty or staff prior to employment'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FHL7F
1='Physical health examinations are periodically required of all faculty and staff while employed'
2='Physical health examinations are periodically required depending on the person’s position'
3='Physical health examinations are periodically required depending on something other than the person’s position'
4='Physical health examinations are not required of any faculty or staff while employed'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FHL8F
1='Drug testing is periodically required of all faculty and staff while employed'
2='Drug testing is periodically required depending on the person’s position'
3="Drug testing is periodically required depending on something other than the person’s position"
4='Drug testing is not required of any faculty or staff while employed'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FHL9F
1='TB screening is required prior to employment for all faculty and staff'
2='TB screening is required prior to employment depending on the position the person will have'
3='TB screening is not required prior to employment for any faculty or staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FHL10F
1='TB testing is required prior to employment based on the results of TB screening'
2='TB testing is required prior to employment depending on the position the person will have'
3='TB testing is required prior to employment for all faculty and staff'
4='TB testing is not required prior to employment for any faculty or staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FHL11F
1='Periodic TB testing is required for all faculty and staff while employed'
2="Periodic TB testing is required for faculty and staff depending on the person’s position"
3='Periodic TB testing is required only for faculty and staff previously identifiedthrough screening'
4='Periodic TB testing is not required for any faculty and staff while employed'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FHL12F
1='PPD skin test done by Mantoux method'
2='Skin test not otherwise specified'
3='Chest x-ray'
4="Blood test (i.e., interferon-gamma release assays)"
5='More than one testing method is acceptable'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FHL13F
1='Require'
2='Recommend'
3='Neither'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FHL29AF
1='Yes'
2='No'
3='School does not have health education staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FHL29BF
1='Yes'
2='No'
3='School does not have physical education staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FHL29CF
1='Yes'
2='No'
3='School does not have health services staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FHL29DF
1='Yes'
2='No'
3='School does not have mental health or social services staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value FHL29EF
1='Yes'
2='No'
3='School does not have nutrition or food service staff'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

/*Health education Class*/
value HEC1F
1='Devoted to health topics, such as alcohol or other drug use prevention'
2='A combined health education and physical education class'
3='Mainly about some subject other than health education, such as science, social studies, or English'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';


value HEC60AF
1='Yes'
2='No'
3='Students do not have access to hand sanitizers'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HEC60BF
1='Yes'
2='No'
3='Students do not have access to hand sanitizers'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HEC60CF
1='Yes'
2='No'
3='Students do not have access to hand sanitizers'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HEC73AF
1='Yes'
2='No'
3='Students do not have access to hand sanitizers'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HEC73BF
1='Yes'
2='No'
3='Students do not have access to hand sanitizers'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value HEC73CF
1='Yes'
2='No'
3='State does not offer certification, licensure, or 
   endorsement to teach health education at this level'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

/*PHYSICAL EDUCATION CLASS*/
value PEC12F
1='0% to 24%'
2='25% to 49%'
3='50% to 74%'
4='75% to 100%'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value PEC20F
1='Once'
2='Twice'
3='Three or more times'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value PEC46F
1='Yes'
2='No'
3='State does not offer certification, licensure, or endorsement to teach physical education at this level'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value grade
-1	=	'Pre-K'
0	=	'Kindergarten'
1	=	'First Grade'
2	=	'Second Grade'
3	=	'Third Grade'
4	=	'Fourth Grade'
5	=	'Fifth Grade'
6	=	'Sixth Grade'
7	=	'Seventh Grade'
8	=	'Eighth Grade'
9	=	'Ninth Grade'
10	=	'Tenth Grade'
11	=   'Eleventh Grade'
12	=   'Twelfth Grade'
13	=   'Thirteenth Grade'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value method
1='Mail'
2='Computer'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value region
1='Northeast'
2='Midwest'
3='South'
4='West'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value locale
1='City'
2='Suburb'
3='Town'
4='Rural'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value level
1=	'Elementary School'
2=	'Middle/Junior High School'
3=	'Senior High School'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value dtype
1	='Public'
2	='Catholic'
3	='Private'
4	='State Administered'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

Value span
1='Yes'
0='No'
.M='Module eligible - No respondent'
.A='Skipped'
.C='Not answered'
.F='Logically inconsistent'
.N='Module is not applicable';

value schagree
1='School agreed to participate'
2='School refused to participate'
;

value state
1	=	'Alabama'
2	=	'Alaska'
3	=	'Arizona'
4	=	'Arkansas'
5	=	'California'
6	=	'Colorado'
7	=	'Connecticut'
8	=	'Delaware'
9	=	'District Of Columbia'
10	=	'Florida'
11	=	'Georgia'
12	=	'Hawaii'
13	=	'Idaho'
14	=	'Illinois'
15	=	'Indiana'
16	=	'Iowa'
17	=	'Kansas'
18	=	'Kentucky'
19	=	'Louisiana'
20	=	'Maine'
21	=	'Maryland'
22	=	'Massachusetts'
23	=	'Michigan'
24	=	'Minnesota'
25	=	'Mississippi'
26	=	'Missouri'
27	=	'Montana'
28	=	'Nebraska'
29	=	'Nevada'
30	=	'New Hampshire'
31	=	'New Jersey'
32	=	'New Mexico'
33	=	'New York'
34	=	'North Carolina'
35	=	'North Dakota'
36	=	'Ohio'
37	=	'Oklahoma'
38	=	'Oregon'
39	=	'Pennsylvania'
40	=	'Rhode Island'
41	=	'South Carolina'
42	=	'South Dakota'
43	=	'Tennessee'
44	=	'Texas'
45	=	'Utah'
46	=	'Vermont'
47	=	'Virginia'
48	=	'Washington'
49	=	'West Virginia'
50	=	'Wisconsin'
51	=	'Wyoming'
;

value active
0='Non Active'
1='Active'
;

value schstat
1='Assigned'
2='No respondent identified'
3='Module not applicable'
4='Respondent refused'
;
value schpart
1='Respondent participated'
2='Respondent did not participate'
3='Respondent Ineligible to Participate'
4='No Respondent Identified'
;

value class_he
0='0 health education classroom questionnaires completed by the school'
1='1 health education classroom questionnaire completed by the school'
2='2 health education classroom questionnaires completed by the school'
3='3 health education classroom questionnaires completed by the school'
4='4 health education classroom questionnaires completed by the school'
5='5 health education classroom questionnaires completed by the school'
6='6 health education classroom questionnaires completed by the school'
7='7 health education classroom questionnaires completed by the school'
;

value class_pe
0='0 physical education classroom questionnaires completed by the school'
1='1 physical education classroom questionnaire completed by the school'
2='2 physical education classroom questionnaires completed by the school'
3='3 physical education classroom questionnaires completed by the school'
4='4 physical education classroom questionnaires completed by the school'
5='5 physical education classroom questionnaires completed by the school'
6='6 physical education classroom questionnaires completed by the school'
7='7 physical education classroom questionnaires completed by the school'
;

value schagreec
1='School level data received'
2='No School-level Data Received'
;

value schpartc
1='At least one selected respondent participated'
2='No selected respondents participated'
;

run;



