/****************************************************************************
 * FILE NAME:     FORMATS.SAS
 *
 * DESCRIPTION:   ALPHABETIZED LIBRARY OF ALL FORMATS USED BY THE BRFSS PROGRAMS
 *                THIS PROGRAM BUILDS THE LIBRARY AND NEEDS ONLY TO BE RUN ONCE.
 *
 * DEVELOPED BY:  ANALYTICAL SCIENCES, INC.
 *          FOR:  TRW CISS TASK ORDER 005-1-DACH-215-1
 *
 * EXTERNAL REFERENCES:
 *
 *    TYPE         NAME                   DESCRIPTION OF REFERENCE
 * ----------  ------------ ------------------------------------------------
 * INPUT       NONE
 * OUTPUT      FORMATS.SC2  THE FORMAT LIBRARY
 *
 * MODIFICATION HISTORY:
 *
 * NUM    DATE    PROGRAMMER             DESCRIPTION OF MODIFICATION
 * ---  --------  ----------  -----------------------------------------------
 * 003  07/10/99  J. HATMAKER ADDED RACEAK FORMAT TO ACCOMODATE NATIVE/NON-NATIVE
 *                             RACE BREAKDOWN (USED WITH ORACE VARIABLE)
 * 002  04/13/99  W. MURPHY   CORRECTED VARIABLE VALUES (FACILITY)
 * 001  03/22/99  W. MURPHY   CORRECTED SPELLING IN PASTCGAR FORMATS
 * 000  08/04/98  D. JOHNDROW CREATED BASED ON KNOWN EXISTING FORMATS
 ****************************************************************************/

*NEED TO SET THE APPROPRIATE PATH WHERE THE FORMAT LIBRARY IS TO BE LOCATED;
LIBNAME LIBRARY 'q:\CDRom98\';

PROC FORMAT LIBRARY=LIBRARY;

   VALUE ACTIV
                            1 = 'YES'
                            2 = 'NO'
                        7,.,9 = 'UNK/REF';

  VALUE ACTIVITY
                 1 = 'WORKING AT A JOB OR BUSINESS'
                 2 = 'KEEPING HOUSE'
                 3 = 'GOING TO SCHOOL'
                 4 = 'SOMETHING ELSE'
             .,7,9 = 'UNK/REF';

  VALUE AGEGFMT
               1 ='18-24'
               2 ='25-34'
               3 ='35-44'
               4 ='45-54'
               5 ='55-64'
               6 ='65+'
              7,9='UNK/REF'
               . ='MISSING';

  VALUE AGE2FMT
                 1 ='18-64 & UNK/REF'
                 2 ='65 +'
                 3 ='MISSING';

  VALUE AGE3FMT
                  1='40 + & UNK/REF'
                  2='18-39'
                  3='MISSING';

  VALUE AGE4FMT
              01-76='01-76'
              77,99='UNK/REF'
                  .='MISSING'
              OTHER='INVALID AGE CODED';

  VALUE _AGE65GR
                 1 = '18-24'
               2-3 = '25-34'
               4-5 = '35-44'
               6-7 = '45-54'
               8-9 = '55-64'
             10-13 = '65 + '
                14 = 'UNK/REF';

  VALUE _AGE65YR
                 1 = '18-64'
                 2 = '65 +'
                 3 = 'UNK/REF';

  VALUE AGE70YR
                11 = '70-74'
                12 = '75-79'
                13 = '80 +';

  VALUE _AGE75GR
                 1 = '18-24'
               2-3 = '25-34'
               4-5 = '35-44'
               6-7 = '45-54'
               8-9 = '55-64'
             10-11 = '65-74'
             12-13 = '75 + '
                14 = 'UNK/REF';

  VALUE AGECOMB
                 1 = '18-29'
                 2 = '30-44'
                 3 = '45-64'
                 4 = '65 +'
                14 = 'UNK/REF';

  VALUE _AGEG5YR
                 1 = '18-24'
               2-3 = '25-34'
               4-5 = '35-44'
               6-7 = '45-54'
               8-9 = '55-64'
             10-13 = '65 +'
                14 = 'UNK/REF';

  VALUE AGEGROUP
              18-24='18-24'
              25-34='25-34'
              35-44='35-44'
              45-54='45-54'
              55-64='55-64'
              65-99='65 + '
                7,9='UNK/REF'
                  .='MISSING';

  VALUE _AGEGFMT
               0='18+'
               1='18-24'
               2='25-34'
               3='35-44'
               4='45-54'
               5='55-64'
               6='65+'
               7='18-34'
               8='35-54'
               9='55+'
              10='18-44'
              11='45+';

  VALUE AGREE
                 1 = 'AGREE'
                 2 = 'DISAGREE'
             .,7,9 = 'UNK/REF';

  VALUE AIDSAGE
                 1 = '18-24'
               2-3 = '25-34'
               4-5 = '35-44'
               6-7 = '45-54'
               8-9 = '55-64'
             OTHER = 'UNK/REF';

 VALUE ASPUNSAF
                            1 = 'YES, NOT STOMACH RELATED'
                            2 = 'YES, STOMACH PROBLEMS'
                            3 = 'NO'
                      0,7,.,9 = 'UNK/REF';

  VALUE BADHLTH
               1-7 ='1-7 DAYS'
              8-14 ='8-14 DAYS'
             15-21 ='15-21 DAYS'
             22-30 ='22-30 DAYS'
                88 ='NONE'
          0,.,77,99 ='UNK/REF';

  VALUE BADHLTX
                 1 ='NONE'
                 2 ='1 DAY'
               3-5 ='>= 2 DAYS'
         0,.,77,99 ='UNK/REF';

   VALUE BCCHK
                1='NO CHECK'
                2='HAD CHECK';

  VALUE BEGSMOKE
               1-9 = '< 10 YRS.'
             10-20 = '10-20 YRS.'
             21-30 = '21-30 YRS.'
             31-50 = '31-50 YRS.'
 51-76,78-87,89-98 = '> 50 YRS.'
                88 = 'NEVER SMOKED REGULARLY'
         0,.,77,99 = 'UNK/REF';

  VALUE BIKEHLMT
                          1 = 'ALWAYS'
                          2 = 'NEARLY ALWAYS'
                          3 = 'SOMETIMES'
                        4-5 = 'SELDOM OR NEVER'
                          8 = 'NEVER RIDES A BIKE'
                      7,.,9 = 'UNK/REF';


 VALUE BIRTHCNT
        1='YES'
        2='NO'
        3='NOT SEXUALLY ACTIVE'
        7,9='UNK/REF';


 VALUE  BLDSUGAR
 101-109,207-263,330-399 = 'DAILY OR MORE'
 201-202,304-311,437-499 = '1-2 TIMES PER WEEK'
         203-206,312-329 = '3-6 TIMES PER WEEK'
         301-303,412-436 = '1-3 TIMES PER MONTH'
                 401-411 = '< 1 PER MONTH'
                     888 = 'NEVER'
110-199,264-299,0,777,999 = 'UNK/REF'
                        . = 'MISSING';

VALUE BLDSTCHK
                1='2 YRS OR MORE'
                2='WITHIN 2 YRS'
                3='NEVER CHECKED';


  VALUE BLDTIMES
                   401-411,888 = '< 1 PER MONTH OR NEVER'
               301-303,412-436 = '1-3 TIMES PER MONTH'
       201-202,304-311,437-499 = '1-2 TIMES PER WEEK'
               203-206,312-329 = '3-6 TIMES PER WEEK'
       101-120,207-299,330-399 = 'DAILY OR MORE'
             121-199,777,999,. = 'UNK/REF';


  VALUE BPHIGH
                 1 = 'YES'
               2   = 'NO'
           0,.,7,9 = 'UNK/REF';

  VALUE BPTAKE
               1-2 = '<= 1 YEAR'
                 3 = '1 - 2 YEARS'
                 4 = '2 - <5 YEARS'
                 5 = '>= 5 YEARS'
                 8 = 'NEVER'
           0,.,7,9 = 'UNK/REF';

  VALUE BSTLAGE
               5-6 = '40-49'
               7-8 = '50-59'
              9-10 = '60-69'
             11-13 = '70 + '
             OTHER = 'UNK/REF';


 VALUE  CHECK
                    01-13 = '1 - 13'
                    14-26 = '14 - 26'
                    27-39 = '27 - 39'
                    40-52 = '40 - 52'
                       88 = 'NONE'
                 00,77,99 = 'UNK/REF'
                        . = 'MISSING';

 VALUE  CHNGDOCT
                        1 = '1 TO 12 MONTHS AGO'
                        2 = '1 TO 2 YEARS AGO'
                        3 = '2 TO 3 YEARS AGO'
                        4 = '3 TO 5 YEARS AGO'
                        5 = '5 OR MORE YEARS AGO'
                        8 = 'NEVER'
                    .,7,9 = 'UNK/REF';

VALUE CHOLCHK
                1='5 YRS OR MORE'
                2='WITHIN 5 YRS'
                3='NEVER CHECKED';


 VALUE  CONDLAST
              1 = 'TO PREVENT PREGNANCY'
              2 = 'TO PREVENT DISEASES LIKE SYPHILIS,AIDS, AND ETC'
              3 = 'FOR BOTH PREGNANCY AND DISEASES'
              4 = 'FOR SOME OTHER REASON'
            .,7,9 = 'UNK/REF';

  VALUE CONDOM
                 1 = 'VERY EFFECTIVE'
                 2 = 'SOMEWHAT EFFECTIVE'
                 3 = 'NOT AT ALL EFFECTIVE'
                 4 = 'DON''T KNOW HOW EFFECTIVE'
                 5 = 'DON''T KNOW METHOD'
             .,0,9 = 'UNK/REF';

  VALUE CONDUSE
                 1 = 'YES'
                 2 = 'NO'
                 3 = 'WOULD GIVE OTHER ADVICE'
           .,0,7,9 = 'UNK/REF';


 VALUE  CONEFF
                      1  = 'VERY EFFECTIVE'
                      2  = 'SOMEWHAT EFFECTIVE'
                      3  = 'NOT AT ALL EFFECTIVE'
                      4  = 'DON''T KNOW HOW EFFECTIVE'
                      5 =  'DON''T KNOW METHOD'
                      9  = 'UNK/REF';

  VALUE COUNSEL
                 1 = 'YES'
                 2 = 'NO'
                 3 = 'DID NOT GET RESULTS'
           .,0,7,9 = 'UNK/REF';

 VALUE  CURADS
                        1 = '1 TO 6 MONTHS'
                        2 = '6 TO 12 MONTHS'
                        3 = '1 TO 2 YEARS AGO'
                        4 = '2 OR MORE YEARS AGO'
                    .,7,9 = 'UNK/REF';


*ADDED BY D. JOHNDROW ON 8/13/98;
  VALUE CTYCODE
               777 = 'DO NOT KNOW'
               999 = 'UNK/REF';

  VALUE DIABAGE
            LOW-17 = '< 18'
             18-44 = '18-44'
             45-54 = '45-54'
             55-64 = '55-64'
             65-76 = '65+'
             77,99 = 'UNK/REF';

  VALUE DIABETES
                 1 = 'YES'
                 2 = 'YES, BUT FEMALE TOLD DURING PREGNANCY'
                 3 = 'NO'
             7,.,9 = 'UNK/REF' ;

  VALUE DIAFMT
                 1 = 'YES'
                 2 = 'YES-WHEN PREGNANT'
                 3 = 'NO'
                7,9= 'UNK/REF'
                 . = 'MISSING';

VALUE DIETPILL
                1='YES, CURRENTLY TAKING'
                2='YES, NOT CURRENTLY TAKING'
                3='NO, HAVE NOT TAKEN'
                7,9='UNK/REF';



  VALUE DISPFMT
              1 = 'COMPLETED INTERV'
              2 = 'REFUSED'
              3 = 'NONWORKING NUM'
              4 = 'MULTIPLE NO ANS'
              5 = 'NOT A PRIVATE RES.'
              6 = 'NO ONE ELIGIBLE'
              7 = 'TIME INELIGIBLE'
              8 = 'LANGUAGE BARRIER'
              9 = 'TERMINATED QUEST'
              10 = 'LINE BUSY'
              11 = 'CANNOT RESPOND'
              . = 'MISSING';

  VALUE DISP2FMT
             1 = '01'
             2 = '02'
             3 = '03'
             4 = '04'
             5 = '05'
             6 = '06'
             7 = '07'
             8 = '08'
             9 = '09'
            10 = '10'
            11 = '11';


  VALUE DISPFMTX
                 1 = 'COMPLETE'
              2-11 = 'INCOMPLETE';


  VALUE DISPFMTH
        1,2,6-9,11 = 'HOUSEHOLD'
               3,5 = 'NON-HOUSEHOLD'
              4,10 = 'UNRESOLVED';

  VALUE DISTCARE
                            1 = 'EXCELLENT'
                            2 = 'VERY GOOD'
                            3 = 'GOOD'
                            4 = 'FAIR'
                            5 = 'POOR'
                            6 = 'DON''T HAVE USUAL PLACE'
                        .,7,9 = 'UNK/REF';

  VALUE  DOCTDIAB
                    01-13 = '1 - 13'
                    14-26 = '14 - 26'
                    27-39 = '27 - 39'
                    40-52 = '40 - 52'
                       88 = 'NONE'
                 00,77,99 = 'UNK/REF'
                        . = 'MISSING';

  VALUE DRADVICE
                 1 = 'YES, LOSE WEIGHT'
                 2 = 'YES, GAIN WEIGHT'
                 3 = 'YES, MAINTAIN CURRENT WEIGHT'
                 4 = 'NO'
             7,.,9 = 'UNK/REF';

  VALUE _DRNKMO
               1-9 = '< 10 A MONTH'
             10-20 = '10-20 A MONTH'
             21-40 = '21-40 A MONTH'
             41-59 = '41-59 A MONTH'
           60-2000 = '60+ A MONTH'
     7777,0,.,9999 = 'UNK/REF';

 /*
  VALUE EDUCA
                 1 = 'NEVER ATTENDED SCHOOL'
                 2 = 'ELEMENTARY'
                 3 = 'SOME HIGH SCHOOL'
                 4 = 'HIGH SCHOOL GRAD OR GED'
                 5 = 'SOME COLLEGE OR TECH SCHOOL'
                 6 = 'COLLEGE GRADUATE'
               .,9 = 'UNK/REF';
   */

  VALUE EDUCA
                1,2,3='LESS THAN HIGH SCHOOL GRADUATE'
                 4 = 'HIGH SCHOOL GRAD OR GED'
                 5 = 'SOME COLLEGE OR TECH SCHOOL'
                 6 = 'COLLEGE GRADUATE'
               .,9 = 'UNK/REF';

  VALUE EDUCAIDS
                01 = 'KINDERGARTEN'
                02 = '1ST TO 3RD GRADE'
                03 = '4TH TO 6TH GRADE'
                04 = '7TH TO 9TH GRADE'
                05 = '10TH TO 12TH GRADE'
                08 = 'NEVER'
         0,.,77,99 = 'UNK/REF';

  VALUE EDUCB
                 1 = 'LESS THAN HIGH SCHOOL GRAD'
                 2 = 'HIGH SCHOOL GRAD OR GED'
                 3 = 'SOME COLLEGE OR TECH SCHOOL'
                 4 = 'COLLEGE GRADUATE'
               .,9 = 'UNK/REF';
 /*
  VALUE EMPLOY
                 1 = 'EMPLOYED'
                 2 = 'SELF EMPLOYED'
                 3 = 'OUT OF WORK >1 YEAR'
                 4 = 'OUT OF WORK <1 YEAR'
                 5 = 'HOMEMAKER'
                 6 = 'STUDENT'
               7,8 = 'RETIRED/UNABLE TO WORK'
             0,.,9 = 'UNK/REF';
   */

  VALUE EMPLOY
                1,2='EMPLOYED'
                3,4='NOT EMPLOYED'
                5,6='STUDENT/HOMEMAKER'
                7,8='RETIRED/UNABLE TO WORK'
                 0,.,9 = 'UNK/REF';

  VALUE EXACTFMT
                99 = 'REFUSED'
                 . = 'NO PHY ACT';

 VALUE EXAM
                1='DID NOT HAVE EXAM'
                2='HAD EXAM'
              .,7,9='UNK/REF';


  VALUE EXERACT
                 1 = 'AEROBICS CLASS'
                 2 = 'BICYCLING'
                 3 = 'CALISTHENICS'
                 4 = 'HOME EXERCISE'
                 5 = 'JOGGING'
                 6 = 'RUNNING'
                 7 = 'SWIMMING'
                 8 = 'TENNIS'
                 9 = 'WALKING'
                10 = 'YARD WORK'
                11 = 'ALL OTHERS'
                12 = 'UNK/REF';

  VALUE EXERACTX
                 1 = 'AEROBICS CLASS'
                 2 = 'BICYCLING'
                 3 = 'CALISTHENICS'
                 4 = 'HOME EXERCISE'
                 5 = 'JOGGING'
                 6 = 'RUNNING'
                 7 = 'SWIMMING'
                 8 = 'TENNIS'
                 9 = 'WALKING'
                 10 = 'YARD WORK'
                 11 = 'ALL OTHERS'
                 88 = 'NO ACTIVITY'
                 12 = 'UNK/REF';

  VALUE EXERANY
                 2 = 'YES'
                 1 = 'NO'
             OTHER = 'UNK/REF';

  VALUE EXERANYB
                  1='YES'
                  2='NO'
                  OTHER='UNK/REF';

  VALUE EXERFMT
           777,999 = 'UNK/REF'
              .    = 'NO PHY ACTIVITY';

  VALUE EYEEXAM
                 1 = '0 TO 1 MONTH AGO'
                 2 = '1 TO 12 MONTHS AGO'
                 3 = '1 TO 2 YEARS AGO'
                 4 = '2 OR MORE YEARS AGO'
                 8 = 'NEVER'
             0,7,9 = 'UNK/REF'
                 . = 'MISSING';

  VALUE FACILIT
                            1 = 'DOCTOR''S OFFICE'
                            2 = 'CLINIC/HEALTH CENTER'
                            3 = '   HOSPITAL  OUTPATIENT'
                            4 = 'HOSPITAL ER'
                            5 = 'URGENT CARE CENTER'
                            8 = 'OTHER PLACE'
                        .,7,9 = 'UNK/REF';

  VALUE FATCAT
                 5,401-411,555 = '< 1 PER MONTH OR NEVER'
             4,301-303,412-436 = '1-3 TIMES PER MONTH'
     3,201-202,304-311,437-499 = '1-2 TIMES PER WEEK'
             2,203-206,312-329 = '3-6 TIMES PER WEEK'
     1,101-120,207-299,330-399 = 'DAILY OR MORE'
           6,121-199,777,999,. = 'UNK/REF';

  VALUE FATINDX
                 1 = '<= 25TH PERCENTILE'
                 2 = '25TH - 75TH PERCENTILE'
                 3 = '> 75TH PERCENTILE'
               .,9 = 'UNK/REF';

  VALUE FEWCAL
                 1 = 'YES, FEWER CALORIES'
                 2 = 'YES, LESS FAT'
                 3 = 'YES, FEWER CALORIES AND LESS FAT'
                 4 = 'NO'
             7,.,9 = 'UNK/REF';

  VALUE FIREARM
                 1 = 'YES'
                 2 = 'NO'
                 8 = 'HAVE NO FIREARM'
             0,.,9 = 'UNK/REF' ;

 VALUE FLUSHOT
                1='DID NOT HAVE SHOT'
                2='HAD SHOT';

  VALUE FRTINDX
                 1 = 'LESS THAN ONCE PER DAY OR NEVER'
                 2 = '1 BUT LESS THAN 3 TIMES PER DAY'
                 3 = '3 BUT LESS THAN 5 TIMES PER DAY'
                 4 = '5 OR MORE TIMES PER DAY'
               .,9 = 'UNK/REF';

  VALUE GETAIDS
                 1 = 'HIGH'
                 2 = 'MEDIUM'
                 3 = 'LOW'
                 4 = 'NONE'
                 5 = 'NOT APPLICABLE'
           .,0,7,9 = 'UNK/REF';

  VALUE GETAIDSX
                 1 = 'INCREASED'
                 2 = 'DECREASED'
                 3 = 'STAYED THE SAME'
           .,0,7,9 = 'UNK/REF';

 VALUE HADPAP
                1='DID NOT HAVE TEST'
                2='HAD TEST'
              .,7,9='UNK/REF';


  VALUE HEIGHFMT
           777,999 = 'UNK/REF'
                 . = 'MISSING';

  VALUE HELMETX
                 1 = 'ALWAYS'
                 2 = 'NEARLY ALWAYS'
                 3 = 'SOMETIMES'
               4-5 = 'SELDOM OR NEVER'
                 8 = 'NEVER RIDE A BICYCLE'
             OTHER = 'UNK/REF';

  VALUE HISPFMT
                 1 ='HISPANIC'
                 2 ='NON-HISP'
                 . ='MISSING';

  VALUE HISPANIC
                 1='HISPANIC'
                 2='NON-HISP'
                 7='DK/NS'
                 9='UNK/REF'
                 .='UNDETERMINED';

  VALUE HLTHACC
                 1 ='YES, ONE'
                 2 ='YES, MORE THAN ONE'
                 3 ='NO'
           0,.,7,9 ='UNK/REF';

  VALUE HLTHINS
                 1 ='ALL'
                 2 ='MOST'
                 3 ='SOME'
                 4 ='NONE'
           0,.,7,9 ='UNK/REF';

  VALUE HLTHPLAN
                 1 = 'YES-HAVE HEALTH COVERAGE'
                 2 = 'NO-DON''T HAVE COVERAGE'
               7,9 = 'UNK/REF'
                 . = 'MISSING';
  VALUE HLTHPLA
                1='NO COVERAGE'
                2='HAVE COVERAGE'
             0,.,7,9='UNK/REF';

 VALUE HLTHPROB
                        1 = 'ARTHRITIS/RHEUMATISM'
                        2 = 'BACK OR NECK PROBLEM'
                        3 = 'FRACTURES, BONE/JOINT INJURY'
                        4 = 'WALKING PROBLEM'
                        5 = 'LUNG/BREATHING PROBLEM'
                        6 = 'HEARING PROBLEM'
                        7 = 'EYE/VISION PROBLEM'
                        8 = 'HEART PROBLEM'
                        9 = 'STROKE PROBLEM'
                       10 = 'HYPERTENSION/HIGH BLOOD PRESSURE'
                       11 = 'DIABETES'
                       12 = 'CANCER'
                       13 = 'DEPRESSION/ANXIETY/EMOTIONAL PROB'
                       14 = 'OTHER IMPAIRMENT/PROBLEM'
                    77,99 = 'UNK/REF';

  VALUE HLTHSTAT
                 1 ='EXCELLENT'
                 2 ='VERY GOOD'
                 3 ='GOOD'
                 4 ='FAIR'
                 5 ='POOR'
           0,.,7,9 ='UNK/REF';

  VALUE HOUSECNT
                 1 = '1'
               2-3 = '2 TO 3'
               4-6 = '4 TO 6'
               7-9 = '7 TO 9'
             10-13 = '10 TO 13'
             14-76 = '>13'
                88 = 'NONE'
         99,0,.,77 = 'UNK/REF' ;

  VALUE HOWLNG
                 1 = '<= 1 YEAR'
                 2 = '1 - <=2 YEARS'
                 3 = '2 - <5 YEARS'
                 4 = '>= 5 YEARS'
                 8 = 'NEVER'
           0,.,7,9 = 'UNK/REF';

  VALUE HOWLONG
                 1 = '<= 1 YEAR'
                 2 = '1 - <=2 YEARS'
                 3 = '2 - <=3 YEARS'
                 4 = '3 - <5 YEARS'
                 5 = '>= 5 YEARS'
                 8 = 'NEVER'
           0,.,7,9 = 'UNK/REF';



  VALUE HOWOFTEN
                 1 = '<= 1 YEAR'
                 2 = '1 - <=2 YEARS'
                 3 = '2 - <5 YEARS'
                 4 = '>= 5 YEARS'
         0,.,7,8,9 = 'UNK/REF';

   VALUE  HOWSAFE
                          1 = 'EXTREMELY SAFE'
                          2 = 'QUITE SAFE'
                          3 = 'SLIGHTLY SAFE'
                          4 = 'NOT ALL SAFE'
                      .,7,9 = 'UNK/REF';

  VALUE INCMB
                 1 = '< $10,000'
                 2 = '$10-$19,999'
                 3 = '$20-$34,999'
                 4 = '$35-$50,000'
                 5 = '> $50,000'
           0,.,8,9 = 'UNK/REF';

 /*
 VALUE INCOME
                01 = '< $10,000'
                02 = '$10-$14,999'
                03 = '$15-$19,999'
                04 = '$20-$24,999'
                05 = '$25-$34,999'
                06 = '$35-$49,999'
                07 = '$50-$74,999'
                08 = '>= $75,000'
         77,0,.,99 = 'UNK/REF';
   */

 VALUE INCOME
              1,2='< $15,000'
              3,4='$15-$24,999'
              5,6='$25-$49,999'
              7='$50-$74,999'
              8='>=$75,000'
         77,0,.,99 = 'UNK/REF';


  VALUE INCOMEB 1='LT 10K'
                2='10-15K'
                3='15-20K'
                4='20-25K'
                5='25-35K'
                6='35-50K'
                7='50-75K'
                8='75+K'
               77='DK/NS'
               99='REFUSED';

 VALUE  INSLNFRQ
         101-106,207-242 = 'DAILY OR MORE'
                 201-206 = '1-6 TIMES PER WEEK'
                     333 = 'USE INSULIN PUMP'
107-199,243-299,0,777,999 = 'UNK/REF'
                        . = 'MISSING';


  VALUE INSULIN
                 1 = 'YES'
                 2 = 'NO'
                 9 = 'UNK/REF';

 VALUE  LASTCHNG
                       01 = 'CHANGED RESIDENCE'
                       02 = 'CHANGED JOBS'
                       03 = 'CHANGED HEALTH CARE COVERAGE'
                       04 = 'PROVIDER MOVED/RETIRED'
                       05 = 'DISSATISFIED WITH FORMER PROVIDER'
                       06 = 'PROVIDER NO LONGER REIMBURSED BY COVERAGE'
                       07 = 'OWED MONEY TO FORMER PROVIDER'
                       08 = 'MEDICAL NEEDS CHANGED'
                       87 = 'OTHER'
                  .,77,99 = 'UNK/REF';

 VALUE LASTDENT
                        1 = '<= 1 YEAR'
                        2 = '1 - <=2 YEARS'
                        3 = '2 - <5 YEARS'
                        4 = '>= 5 YEARS'
                        8 = 'NEVER'
                    .,7,9 = 'UNK/REF';

  VALUE LASTDON
               1   = '0485 - 1288'
               2   = '0189 - 1291'
               3   = '0192 - 1294'
               4   = '0195 - 1297'
               9   = 'UNK/REF';


  VALUE LASTSMOK
                01 = '< 1 MO'
                02 = '1 - 3 MOS'
                03 = '3 - 6 MOS'
                04 = '6 - 12 MOS'
                05 = '1 - 5 YRS'
                06 = '5-15 YRS'
                07 = '>= 15 YRS'
                88 = 'IRREGULAR SMOKER'
         77,0,.,99 = 'UNK/REF';

  VALUE LASTTST
               1   = '0180 - 1284'
               2   = '0185 - 1288'
               3   = '0189 - 1292'
               4   = '0193 - 1297'
               9   = 'UNK/REF';

VALUE LASTUSED
        1='1 TO 12 MOS AGO'
        2='1 TO 2 YRS AGO'
        3='2 TO 3 YRS AGO'
        4='3 TO 5 YRS AGO'
        5='5 OR MORE YRS AGO'
        7,9='UNK/REF';


  VALUE LICENSE
                 1 = 'ALL OF THE TIME'
                 2 = 'MOST OF THE TIME'
                 3 = 'SOME OF THE TIME'
                 4 = 'A LITTLE BIT OF THE TIME'
                 5 = 'NONE OF THE TIME'
               7,9 = 'UNK/REF';

 VALUE LONG
                 1 = 'YES, WITHIN PAST 12 MONTHS'
                 2 = 'YES, WITHIN PAST 3 YEARS'
                 3 = 'YES, 3 OR MORE YEARS AGO'
                 4 = 'NO'
             .,7,9 = 'UNK/REF';

 VALUE   LONGLMTD
                    0-27  = '< 1 MONTH'
                   28-151 = '1-5 MONTHS'
                  152-334 = '6-11 MONTHS'
                  335-671 = '12-23 MONTHS'
                  672-699 = '>= 24 MONTHS'
                  777,999 = 'UNK/REF';
 VALUE  LSTPREG
     1='WANTED TO BE PREGNANT SOONER'
     2='WANTED TO BE PREGNANT LATER'
     3='WANTED TO BE PREGNANT THEN'
     4='DID NOT WANT TO BE'
    .,7,9='UNK/REF';


  /*
  VALUE MARITAL
                 1 = 'MARRIED'
                 2 = 'DIVORCED'
                 3 = 'WIDOWED'
                 4 = 'SEPARATED'
                 5 = 'NEVER MARRIED'
                 6 = 'UNMARRIED COUPLE'
             0,.,9 = 'UNK/REF';
    */

VALUE MARITAL
                 1 = 'MARRIED'
                 2,3,4,5,6 = 'UNMARRIED'
             0,.,9 = 'UNK/REF';

  VALUE MAMMAGE
               1-4 = '18-39'
               5-6 = '40-49'
               7-8 = '50-59'
              9-10 = '60-69'
             11-13 = '70 +'
                14 = 'UNK/REF';

  VALUE MAMM2AGE
                 1 = '18-49'
                 2 = '50-64'
                 3 = '65 +'
                 4 = 'UNK/REF';

  VALUE MAMM3AGE
                 1 = '40-49'
                 2 = '50-64'
                 3 = '65 +'
                 4 = 'UNK/REF';

  VALUE MAMM5AGE
                 1 = '50-64'
                 2 = '65 +'
                 3 = 'UNK/REF';

  VALUE MAMNUM
                 0 ='0'
                 1 ='1-4'
                 2 ='5'
                 3 ='>=6'
                 4 ='UNK/REF';


 VALUE MAM1PRO
                1='1 YR OR MORE'
                2='WITHIN 1 YR'
                3='NEVER HAD'
              .,7,9='UNK/REF';


 VALUE MAM2PRO
                1='2 YRS OR MORE'
                2='WITHIN 2 YRS'
                3='NEVER HAD'
              .,7,9='UNK/REF';

  VALUE MCRELNGT
                 1 ='1 TO 12 MONTHS'
                 2 ='1 TO 2 YEARS'
                 3 ='2 TO 3 YEARS'
                 4 ='3 TO 5 YEARS'
                 5 ='>= 5 YEARS'
             7,.,9 ='UNK/REF';

  VALUE MENOAGE
                 1 ='18-34'
                 2 ='35-64 & UNK/REF'
                 3 ='65+'
                 4 ='MISSING'
                 5='INVALID AGE' ;

  VALUE MENOFMT
                 1 = 'YES-HAD MENOPAUSE'
                 2 = 'YES-MENOPAUSE NOW'
                 3 = 'NO'
                7,9= 'UNK/REF'
                 . = 'MISSING';

  VALUE $MONTHF
               '01'='JANUARY'
               '02'='FEBRUARY'
               '03'='MARCH'
               '04'='APRIL'
               '05'='MAY'
               '06'='JUNE'
               '07'='JULY'
               '08'='AUGUST'
               '09'='SEPTEMBER'
               '10'='OCTOBER'
               '11'='NOVEMBER'
               '12'='DECEMBER'
               '  '='MISSING';

 VALUE MOSTCARE
                            1 = 'YES'
                            2 = 'NO '
                        .,7,9 = 'UNK/REF';

 VALUE MTHFMT
            01 = 'JAN'
            02 = 'FEB'
            03 = 'MAR'
            04 = 'APR'
            05 = 'MAY'
            06 = 'JUN'
            07 = 'JUL'
            08 = 'AUG'
            09 = 'SEP'
            10 = 'OCT'
            11 = 'NOV'
            12 = 'DEC';

 VALUE  NFRIE
                        1 = '3 OR MORE'
                        2 = '2 '
                        3 = '1'
                        4 = 'NONE'
                    .,7,9 = 'UNK/REF';

  VALUE NOPRIMCR
                           01 = 'TWO OR MORE USUAL PLACES'
                           02 = 'HAVEN''T NEEDED DOCTOR'
                           03 = 'DON''T LIKE DOCTORS'
                           04 = 'DON''T KNOW WHERE TO GO'
                           05 = 'PREVIOUS DOCTOR NOT AVAILABLE'
                           06 = 'NO INSURANCE/CANNOT AFFORD'
                           07 = 'SPEAK DIFFERENT LANGUAGE'
                           08 = 'NO PLACE AVAILABLE'
                           09 = 'OTHER'
                        .,77,99 = 'UNK/REF';

  VALUE  NUMBDOCT
                       1 = 'YES, ONLY ONE'
                       2 = 'MORE THAN ONE'
                       3 = 'NO'
                     7,9 = 'UNK/REF';

  VALUE NUMHHOLD
                 1 = 'YES'
                 2 = 'NO'
                 9 = 'UNK/REF';

  VALUE NUMPHONS
            8 = '8 OR MORE'
            9 = 'UNK/REF';

  VALUE PAAGEGR
               1-2 = '18-29'
               3-5 = '30-44'
               6-9 = '45-64'
             10-13 = '65 +'
                14 = 'UNK/REF';

  VALUE PAAGEAID
               1-2 = '18-29'
               3-5 = '30-44'
               6-9 = '45-64'
                14 = 'UNK/REF';

  VALUE PAEDUC
               1-3 = 'LESS THAN HIGH SCHOOL GRAD'
                 4 = 'HIGH SCHOOL GRAD OR GED'
                 5 = 'SOME COLLEGE OR TECH SCHOOL'
                 6 = 'COLLEGE GRADUATE'
               .,9 = 'UNK/REF';

 VALUE PAINACTV
                    01-02 = '1-2 DAYS'
                    03-07 = '3-7 DAYS'
                    08-14 = '8-14 DAYS'
                    15-30 = '15-30 DAYS'
                    77,99 = 'UNK/REF'
                       88 = 'NONE';
  VALUE PAINCM
                01 = '< $10,000'
             02-03 = '$10-$19,999'
             04-05 = '$20-$34,999'
                06 = '$35-$49,999'
             07-08 = '>= $50,000'
         77,0,.,99 = 'UNK/REF';

 VALUE PAP3CHK
                1='3 YRS OR MORE'
                2='WITHIN 3 YRS'
                3='NEVER CHECKED'
             .,7,9='UNK/REF';

  VALUE PAPAGE
                 1 = '18-24'
               2-3 = '25-34'
               4-6 = '35-49'
               7-9 = '50-64'
             10-13 = '65 +'
                14 = 'UNK/REF';

  VALUE PAP2AGE
                 1 = '18-44'
                 2 = '45-69'
                 3 = '70 +'
                 4 = 'UNK/REF';

VALUE PASTCGAR
                1='EVERDAY'
                2='SEVRAL TIMES PER WEEK'
                3='ONCE PER WEEK'
                4='LESS THAN ONCE A WEEK'
                7,9='UNK/REF';


  VALUE PASTFMT
                 1 = 'WORKING AT JOB/BUSINESS'
                 2 = 'KEEPING HOUSE'
                 3 = 'GOING TO SCHOOL'
                 4 = 'SOMETHING ELSE'
                7,9= 'UNK/REF'
                 . = 'MISSING';

 VALUE PASTMENO
                            1 = 'YES, GONE THRU'
                            2 = 'YES, GOING THRU'
                            3 = 'NO'
                    0,.,7,9 = 'UNK/REF';

  VALUE PASTPLAN
               1-2 ='<= 1 YEAR'
                 3 ='1 TO 2 YEARS'
                 4 ='2 TO < 5 YEARS'
                 5 ='>= 5 YEARS'
                 8 ='NEVER'
           0,.,7,9 ='UNK/REF';

  VALUE PNEUMVA
                1='NEVER VACCINATED'
                2='VACCINATED';

  VALUE PREGAGE
             18-24 = '18-24'
             25-34 = '25-34'
             35-40 = '35-40'
             41-44 = '41-44'
             07,09 = 'UNK/REF';

 VALUE PRIMCARE
                            1 = 'YES, ONE'
                            2 = 'YES, MORE THAN ONE'
                            3 = 'NO'
                        .,7,9 = 'UNK/REF';

  VALUE PROCAGE
               5-6 = '40-49'
               7-8 = '50-59'
              9-10 = '60-69'
             11-13 = '70 + '
             OTHER = 'UNK/REF';



  VALUE PRSNFMT
                 1 = 'YES'
                 2 = 'NO'
                7,9= 'UNK/REF'
                 . = 'MISSING';

  VALUE _RACEGR
                 1 = 'WHITE, NON-HISPANIC'
                 2 = 'BLACK, NON-HISPANIC'
                 3 = 'HISPANIC'
                 4 = 'OTHER'
               .,9 = 'UNK/REF';


  VALUE RACEAK
                 1 = 'WHITE, NON-HISPANIC'
             3,4,5 = 'HISPANIC'
                 7 = 'NATIVE AMERICAN'
             2,6,8 = 'OTHER'
                 9 = 'UNK/REF'
                 . = 'MISSING';


  VALUE RACEGRP
                 1 = 'WHITE'
                 2 = 'BLACK'
                 3 = 'ASIAN, PACIFIC ISLANDER'
                 4 = 'AMERICAN INDIAN, ALASKA NATIVE'
                 5 = 'OTHER'
               7,9 = 'UNK/REF'
                 . = 'MISSING';

  VALUE RACEGRUP
                 1 = 'WHITE'
                 2 = 'BLACK'
             3,4,5 = 'OTHER'
             .,7,9 = 'UNK/REF' ;

  VALUE _RACEGX
                 0 ='TOTAL'
                 1 ='WHITE'
                 2 ='NONWHITE';

  VALUE RACE2FMT
                 0='ANY RACE'
                 1 ='WHITE'
                 2 ='NON-WHITE'
                 3 ='ALSK NAT'
                 4 ='ALSK NON-NAT'
                 . ='MISSING';

 VALUE  RATE
                        1 = 'EXCELLENT'
                        2 = 'VERY GOOD'
                        3 = 'GOOD'
                        4 = 'FAIR'
                        5 = 'POOR'
                  6,7,8,9 = 'UNK/REF';


 VALUE RATECARE
                            1 = 'EXCELLENT'
                            2 = 'VERY GOOD'
                            3 = 'GOOD'
                            4 = 'FAIR'
                            5 = 'POOR'
                            8 = 'N/A'
                        .,7,9 = 'UNK/REF';
 VALUE REASDENT
                       01 = 'FEAR/PAIN'
                       02 = 'COST'
                       03 = 'DON''T HAVE DENTIST'
                       04 = 'CANNOT GET TO OFFICE'
                       05 = 'NO REASON TO GO'
                       06 = 'OTHER PRIORITIES'
                       07 = 'HAVEN''T THOUGHT OF IT'
                       08 = 'OTHER '
                  .,77,99 = 'UNK/REF';

 VALUE  REASONS
                          1 = 'TO MAKE STRONG BONES'
                          2 = 'TO PREVENT BIRTH DEFECTS'
                          3 = 'TO PREVENT HIGH BLOOD PRESSURE'
                          4 = 'SOME OTHER REASON'
                      .,7,9 = 'UNK/REF';

  VALUE $RECRDFT
               1-3 = 'COMPLETED INTERVIEWS'
               ' ' = 'INCOMPLETE INTERVIEWS';

  VALUE RECTAGE
               5-6 = '40-49'
               7-8 = '50-59'
              9-10 = '60-69'
             11-13 = '70 + '
             OTHER = 'UNK/REF';


  VALUE RECTFMT
                 1 = 'YES'
                 2 = 'NO'
                7,9= 'UNK/REF'
                 . = 'MISSING';

 VALUE  RENTHOME
                          1 = 'OWN'
                          2 = 'RENT'
                        .,9 = 'UNK/REF';



  VALUE RESIDE
                 1 = 'SINGLE HOME'
                 2 = 'APT/CONDO < 3RD FLOOR'
                 3 = 'APT/CONDO > 2ND FLOOR'
                 4 = 'TRAILER/MOBILE HOME'
                 5 = 'OTHER'
             .,7,9 = 'UNK/REF';

  VALUE RF
                 1 = 'YES'
                 2 = 'NO'
             0,.,9 = 'UNK/REF';

  VALUE RFX
                 1 = 'AT RISK'
                 2 = 'NOT AT RISK'
                 9 = 'UNK/REF';

 VALUE RFREGUL
                 1='DID NOT HAVE'
                 2='HAD ACTIVITY'
             .,7,9='UNK/REF';

 VALUE RIFLE
                 1 = 'YES'
                 2 = 'NO'
                 8 = 'HAVE NO FIREARM'
             0,.,9 = 'UNK/REF' ;

 VALUE RMVTEETH
                 1 = '<= 5'
                 2 = '>= 6, BUT NOT ALL'
                 3 = 'ALL '
                 8 = 'NONE'
             .,7,9 = 'UNK/REF';

  VALUE RNSARMED
                 1 = 'HUNTING OR SPORT'
                 2 = 'PROTECTION'
                 3 = 'WORK'
                 4 = 'SOME OTHER REASON'
                 8 = 'HAVE NO FIREARM'
             7,.,9 = 'UNK/REF';

 VALUE RSNNOBC
        01='NO SEX'
        02='WANT TO GET PREGNANT'
        03='DO NOT WANT TO USE'
        04='PARTNER DOES NOT WANT TO USE'
        05='DO NOT THINK CAN GET PREGNANT'
        06='CAN NOT PAY FOR'
        87='OTHER'
        77,99='UNK/REF';



  VALUE RSNNOCOV
                01 = 'LOST JOB/CHNG JOB'
                02 = 'SPOUSE/PARENT LOST JOB OR CHNG JOB'
                03 = 'DIVORCED/SEP'
                04 = 'SPOUSE/PRNT DIED'
                05 = 'INELIGIBLE/AGE/LT SCH'
                06 = 'NOT OFFERED/EMPLOYER OR STOPPED OFFERING'
                07 = 'PRT TIME/BEC TEMP'
                08 = 'BENFS FROM EMPLR FORMER EMPLR RAN OUT'
                09 = 'COULD NOT AFFORD TO PAY THE PREMIUMS'
                10 = 'INSURANCE COMPANY REFUSED COVERAGE'
                11 = 'LOST MEDICAID/MED ASST'
                87 = 'OTHER'
             77,99 = 'UNK/REF'
                 . = 'MISSING';

  VALUE SCRACE
               1,3 = 'WHITE'
               2,4 = 'BLACK'
               5-8 = 'OTHER'
            99,.,9 = 'UNK/REF';

  VALUE SEATBELT
                 1 = 'ALWAYS'
                 2 = 'NEARLY ALWAYS'
                 3 = 'SOMETIMES'
               4-5 = 'SELDOM OR NEVER'
                 8 = 'NEVER RIDE IN CAR'
             OTHER = 'UNK/REF';

  VALUE SEATRF
                1='DOES NOT WEAR'
                2='ALWAYS WEAR';

  VALUE SEAT2RF
                1='SOMETIMES, SELDOM, NEVER WEAR'
                2='ALWAYS, ALMOST ALWAYS WEAR';

  VALUE SERVINGS
                 5,401-411,555 = '< 1 PER MONTH OR NEVER'
             4,301-303,412-436 = '1-3 SERVINGS PER MONTH'
     3,201-202,304-311,437-499 = '1-2 SERVINGS PER WEEK'
             2,203-206,312-329 = '3-6 SERVINGS PER WEEK'
     1,101-120,207-299,330-399 = 'DAILY OR MORE'
           6,121-199,777,999,. = 'UNK/REF';

  VALUE SEX
                 1 = 'MALE'
                 2 = 'FEMALE';

  VALUE SEXAGE
                  1='18-49 & UNK/REF'
                  2='50 +'
                  3='MISSING'
                  4='INVALID AGE' ;

  VALUE SEXFMT
                 1 = 'MALE'
                 2 = 'FEMALE'
                 . = 'MISSING';

  VALUE SEXINTMN
                1  = '1   PARTNER'
                2-3= '2-3 PARTNERS'
                4-5= '4-5 PARTNERS'
               6-76= '6 + PARTNERS'
                 88= 'NONE'
              77,99= 'UNK/REF'
                 . = 'MISSING'
              OTHER= 'INVALID RESPONSE';

  VALUE SEXZ
                 0 ='TOTAL'
                 1 ='MALE'
                 2 ='FEMALE';

 VALUE SMKDETEC
                          1-2 = '0 - 6 MONTHS'
                            3 = '6 -12 MONTHS'
                            4 = '1+ YEARS'
                            5 = 'NEVER'
                            6 = 'NO SMOKE DETECTORS'
                        7,.,9 = 'UNK/REF';


VALUE SMKPUBLC
        1='NOT ALLOWED IN ANY PUBLIC AREAS'
        2='ALLOWED IN SOME PUBLIC AREAS'
        3='ALLOWED IN ALL PUBLIC AREAS'
        4='NO OFFICIAL POLICY'
        7,9='UNK/REF';

  VALUE SMKWORK
        1='NOT ALLOWED IN ANY WORK AREAS'
        2='ALLOWED IN SOME WORK AREAS'
        3='ALLOWED IN ALL WORK AREAS'
        4='NO OFFICIAL POLICY'
        7,9='UNK/REF';

 VALUE SMKPLACE
        1='ALL AREAS'
        2='SOME AREAS'
        3='NOT ALLOWED'
        7,9='UNK/REF';



  VALUE SMOKEDAY
                 1 = 'EVERYDAY'
                 2 = 'SOME DAYS'
                 3 = 'NOT AT ALL'
                 9 = 'UNK/REF';

  VALUE SMOKEMO
               1-7 ='1-7 DAYS'
              8-14 ='8-14 DAYS'
             15-29 ='15-29 DAYS'
                30 ='30 DAYS'
                88 ='NONE'
         0,.,77,99 ='UNK/REF';

  VALUE SMOKENUM
              1-10 = '<= HALF PACK'
             11-20 = 'HALF - 1 PACK'
             21-40 = '1-2 PACKS'
             41-76 = '> 2 PACKS'
         77,0,.,99 = 'UNK/REF';

  VALUE _SMOKER
                 1 = 'CURRENT SMOKER - (EVERYDAY)'
                 2 = 'CURRENT SMOKER - (SOME DAYS)'
                 3 = 'FORMER SMOKER'
                 4 = 'NEVER SMOKED'
             0,.,9 = 'UNK/REF';

  VALUE SMOKNMLT
              1-10 = '<= HALF PACK'
             11-20 = 'HALF - 1 PACK'
             21-40 = '1-2 PACKS'
             41-76 = '> 2 PACKS'
         77,0,.,99 = 'UNK/REF';

  VALUE SMOKTEST
                 1 = '< 1 MO'
                 2 = '1 - 6 MOS'
                 3 = '6 - 12 MOS'
                 4 = '>= 1 YR'
                 5 = 'NEVER'
                 6 = 'NO SMOKE DETECTORS'
           7,0,.,9 = 'UNK/REF';


  VALUE STATUS
                 1 = 'CURRENT USER'
                 2 = 'FORMER USER'
                 3 = 'NEVER USED'
             .,0,9 = 'UNK/REF';

 VALUE  SUPPLE
                    101-199 = '1-99 TIMES PER DAY'
                    201-299 = '1-99 TIMES PER WEEK'
                    301-399 = '1-99 TIMES PER MONTH'
                  .,777,999 = 'UNK/REF';

  VALUE TESTAIDS
                01 = 'PRIVATE DR. OR HMO'
                02 = 'BLOOD BANK, PLASMA CTR OR RED CROSS'
                03 = 'HEALTH DEPT'
                04 = 'AIDS CLINIC OR TEST SITE'
                05 = 'HOSPITAL OR EMERG ROOM'
                06 = 'FAMILY PLANNING CLINIC'
                07 = 'PRENATAL CLINIC OR OBGYN OFFICE'
                08 = 'TUBERCULOSIS CLINIC'
                09 = 'STD CLINIC'
                10 = 'COMM HEALTH CLINIC'
                11 = 'COMPANY OR INDUSTRY CLINIC'
                12 = 'INSURANCE CO. CLINIC'
                13 = 'OTHER PUBLIC CLINIC'
                14 = 'DRUG TREATMENT CLINIC'
                15 = 'MILITARY SITE'
                16 = 'IMMIGRATION SITE'
                17 = 'AT HOME, NURSE OR HLTH WORKER'
                18 = 'AT HOME, SELF-TESTING KIT'
                19 = 'IN JAIL OR PRISON'
                87 = 'OTHER'
         0,77,.,99 = 'UNK/REF';

  VALUE TIMES
              0,88 = 'NONE'
                 1 = 'ONCE'
                 2 = 'TWICE'
               3-4 = '3 TO 4 TIMES'
              5-76 = '5+  TIMES'
           .,77,99 = 'UNK/REF';



  VALUE TOLDMORE
                 1 = 'MORE THAN ONCE'
                 2 = 'ONLY ONCE'
           0,.,7,9 = 'UNK/REF';

  VALUE _TOTINDX
                 1 = 'PHYSICALLY INACTIVE*+'
                 2 = 'IRREGULAR**+'
                 3 = 'REGULAR***'
                 4 = 'REGULAR & VIGOROUS****'
               0,9 = 'UNK/REF';

  VALUE TYPCOVR
                01 = 'YOUR EMPLOYER'
                02 = 'SOMEONE ELSE EMPLOYER'
                03 = 'PLAN BOUGHT BY YOU OR SOMEONE ELSE'
                04 = 'MEDICARE'
                05 = 'MEDICAID OR MEDICAL ASSISTANCE'
                06 = 'MILITARY, CHAMPUS OR VA'
                07 = 'INDIAN HEALTH SERVICE'
                08 = 'SOME OTHER SOURCE'
                88 = 'NONE'
             77,99 = 'UNK/REF'
                 . = 'MISSING';

  VALUE TYPCOVX
               1,2 = 'EMPLOYER-SPONSORED'
                 3 = 'PLAN BOUGHT BY YOU OR SOMEONE ELSE'
             4,6,8 = 'OTHER SOURCES'
                 5 = 'MEDICAID OR MEDICAL ASSISTANCE'
                 7 = 'INDIAN HEALTH SERVICE'
                88 = 'NONE'
         0,.,77,99 = 'UNK/REF';

 VALUE  TYPEARTH
                       01 = 'OSTEO/ DEGENERATIVE ARTHRITIS'
                       02 = 'RHEUMATISM'
                       03 = 'RHEUMATOID ARTHRITIS'
                       04 = 'LYME DISEASE'
                       07 = 'OTHER'
               88,.,77,99 = 'UNK/REF';

VALUE TYPCNTRL
        01='TUBES TIED'
        02='VASECTOMY'
        03='PILL'
        04='CONDOMS'
        05='FOAM, JELLY, CREAM'
        06='DIAPHRAGM'
        07='NORPLANT'
        08='SHOTS'
        09='WITHDRAWAL'
        87='OTHER'
        77,99='UNK/REF';




  VALUE USE
                 1 = 'CHEWING TOBACCO'
                 2 = 'SNUFF'
                 3 = 'BOTH'
                 4 = 'NEITHER'
             .,7,9 = 'UNK/REF';

VALUE VEGFRUT
                101-199='PER DAY'
                201-299='PER WEEK'
                301-399='PER MONTH'
                401-499='PER YEAR'
                555 ='NEVER'
                777,999='UNK/REF';

  VALUE VISION
                 1 = 'EXCELLANT'
                 2 = 'VERY GOOD'
                 3 = 'GOOD'
                 4 = 'FAIR'
                 5 = 'POOR'
               7,9 = 'UNK/REF';

  VALUE VISNLMTD
                 1 = 'ALL OF THE TIME'
                 2 = 'MOST OF THE TIME'
                 3 = 'SOME OF THE TIME'
                 4 = 'A LITTLE BIT OF THE TIME'
                 5 = 'NONE OF THE TIME'
               7,9 = 'UNK/REF';

  VALUE WEIGHFMT
           777,999 = 'UNK/REF'
                 . = 'MISSING';

  VALUE   WEIGHT
                     0-<80  = '< 80'
                     80-120 = ' 80-120'
                    121-161 = '121-161'
                    162-202 = '162-202'
                    203-243 = '203-243'
                   244-<777 = '244 +'
                  .,777,999 = 'UNK/REF';

VALUE  WHCARE
                       01 = 'LOST JOB/CHANGED EMPLOYERS'
                       02 = 'SPOUSE/PARENT LOST JOB/CHANGED JOBS'
                       03 = 'BECAME DIVORCED OR SEPARATED'
                       04 = 'SPOUSE/PARENT DIED'
                       05 = 'INELIGIBLE DUE TO AGE/LEFT SCHOOL'
                       06 = 'EMPLOYER DOES NOT OFFER/ STOPPED OFFERING'
                       07 = 'BECAME TEMPORARY EMPLOYEE'
                       08 = 'BENEFITS RAN OUT'
                       09 = 'COULD NOT AFFORD PREMIUMS'
                       10 = 'INSURANCE COMPANY REFUSED COVERAGE'
                       11 = 'LOST MEDICAID'
                       87 = 'OTHER'
                  .,77,99 = 'UNK/REF';

  VALUE WHENDUE
             01-03 = 'JAN-MAR'
             04-06 = 'APR-JUN'
             07-09 = 'JUL-SEP'
             10-12 = 'OCT-DEC'
             OTHER = 'UNK/REF';

 VALUE  WHRSVCS
        1='FAMILY PLNG CLINIC'
        2='HEALTH DEPT CLINIC'
        3='COMMUNITY HEALTH CTR'
        4='PRIVATE GYN'
        5='GENERAL OR FAMILY DOCTOR'
        8='OTHER PLACE'
        7,9='UNK/REF';


  VALUE WHYDONE
                 1 ='ROUTINE CHECKUP'
                 2 ='BREAST PROBLEM'
                 3 ='HAD BREAST CANCER'
           0,.,7,9 ='UNK/REF';

  VALUE WHYPAP
                 1 ='ROUTINE EXAM'
                 2 ='CURRENT OR PREV PROBLEM'
                 3 ='OTHER'
           0,.,7,9 ='UNK/REF';

  VALUE WHYTEST
                01 = 'HOSPITALIZATION'
                02 = 'HEALTH INSURANCE'
                03 = 'LIFE INSURANCE'
                04 = 'EMPLOYMENT'
                05 = 'MARRIAGE LICENSE'
                06 = 'MILITARY INDUCTION/SERVICE'
                07 = 'IMMIGRATION'
                08 = 'TO SEE IF INFECTED'
                09 = 'REFERRED BY DR.'
                10 = 'PREGNANCY TEST'
                11 = 'REFERRED BY SEX PARTNER'
                12 = 'BLOOD DONATION PROCESS'
                13 = 'ROUTINE CHECKUP'
                14 = 'OCCUPATIONAL EXPOSURE'
                15 = 'ILLNESS'
                16 = 'AT RISK FOR HIV'
                87 = 'OTHER'
         0,77,.,99 = 'UNK/REF';

  VALUE WIDWFMT
                 . = 'REGULAR MODE'
                 9 = 'WIND DOWN MODE'
             0,1-8 = 'INVALID CODE';

  VALUE WINDDOWN
                 . = 'REGULAR MODE'
                 9 = 'WINDDOWN';

  VALUE WTDIFF
             LOW-<0='UNDER DESIRED WEIGHT'
                  0='HAVE DESIRED WEIGHT'
               1-10='1-10 POUNDS OVER'
              11-20='11-20 POUNDS OVER'
             21-998='MORE THAN 20 POUNDS OVER'
                999='UNK/REF';

  VALUE _WTFORHT
       01000-08999 = '< 90% OF MEDIAN'
       09000-10999 = '90 - 109.9'
       11000-11999 = '110 - 119.9'
       12000-40000 = '>= 120% OF MEDIAN'
   0,.,77777,99999 = 'UNK/REF';

  VALUE YESNO
                 1 = 'YES'
                 2 = 'NO'
                 3 = 'WOULD GIVE OTHER ADVICE'
                 8 = 'NOT APPLICABLE'
             7,.,9 = 'UNK/REF' ;

  VALUE YESNONE
                 1 = 'YES'
                 2 = 'NO OR NEVER CHECKED'
                 9 = 'UNK/REF';

  VALUE YESNONEV
                 1 = 'YES'
                 2 = 'NO'
                 8 = 'NEVER HAD ONE'
                 9 = 'UNK/REF';

  VALUE YESNONVR
                 1 = 'YES'
                 2 = 'NO'
                 3 = 'NEVER CHECKED'
                 9 = 'UNK/REF';

  VALUE YESNONVT
                 1 = 'YES'
                 2 = 'NO'
                 8 = 'NEVER TOOK'
              7,.,9 = 'UNK/REF';

  VALUE YESNOR
                 1 = 'YES'
                 2 = 'NO'
                 9 = 'UNK/REF' ;

  VALUE YOUNG
               1-2 ='1 TO 2'
               3-5 ='3 TO 5'
              6-10 ='6 TO 10'
             10-25 ='> 10'
                88 ='NONE'
         0,.,77,99 ='UNK/REF';

  VALUE YNGTEEN
               1-4 ='<= 4'
              5-15 ='5 - 15'
          16-17,88 ='NONE'
         0,.,77,99 ='UNK/REF';

  VALUE YOUNG
                     1-2 ='1 TO 2'
                     3-5 ='3 TO 5'
                    6-10 ='6 TO 10'
                   10-25 ='> 10'
                      88 ='NONE'
               0,.,77,99 ='UNK/REF';
RUN;
