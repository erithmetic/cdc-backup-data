 * Q:\BRFSS\2000\PROGRAMS\FORMATS\FORMATS.SAS ;

/***********************************************************************************
 *
 * DESCRIPTION:   LIBRARY OF ALL FORMATS USED BY THE BRFSS PROGRAMS
 *                THIS PROGRAM BUILDS THE LIBRARY AND NEEDS ONLY TO BE RUN ONCE.
 *
 *                STATES:  PLEASE NOTE.  FORMAT VALUES ARE INCLUDED FOR VARIABLES
 *                         THAT DO NOT APPEAR ON YOUR DATA FILE.  THESE EXTRA FORMATS
 *                         ARE FOR BSB INTERIM PROCESSING ONLY.
 *
 * EXTERNAL REFERENCES:
 *    TYPE         NAME      DESCRIPTION OF REFERENCE
 * ----------  ------------  -------------------------------------------------------
 * INPUT       NONE
 * OUTPUT      FORMATS.SC2   THE FORMAT LIBRARY
 *
 * MODIFICATION HISTORY:
 * NUM      DATE      PROGRAMMER     DESCRIPTION OF MODIFICATION
 * ---  ----------  --------------   -----------------------------------------------
 * 010  01/30/2001  J. D. HATMAKER   ADDED DISPCODE NUMBERS TO DISPFMT
 * 009  01/11/2001  J. D. HATMAKER   ADDED BMI2CAT
 * 008  11/07/2000  J. D. HATMAKER   CHANGED SUPPLE. TO USE PER DAY/WEEK/MONTH
 * 007  10/19/2000  D. GILBERTZ      ADDED $ST
 * 006  08/08/2000  J. D. HATMAKER   ADDED AGE40PLS
 * 005  08/01/2000  J. D. HATMAKER   ADDED SERVINGS
 * 004  07/27/2000  J. D. HATMAKER   CHANGED RMVTEETH AND LASTDENT
 *                                   REPLACED SERVINGS WITH FATCAT
 * 003  07/25/2000  J. D. HATMAKER   ADDED FEETCHK, LTCHELP, MILSTAT, VACARE
 * 002  07/20/2000  J. D. HATMAKER   CHANGED TYPEARTH
 *                                   ADDED DRVISIT, HCARESAT, HCRATE
 * 001  07/18/2000  J. D. HATMAKER   CHANGED LONGLMTD, QLHELP
 *                                   REPLACED ACTIV AND INSULIN WITH YESNO
 * 000  07/17/2000  J. D. HATMAKER   INITIAL ISSUE
 ***********************************************************************************/

LIBNAME LIBRARY 'Q:\BRFSS\2000\PROGRAMS\FORMATS' ;

PROC FORMAT LIBRARY = LIBRARY ;

  VALUE $MONTHF
              '01' = 'JANUARY'
              '02' = 'FEBRUARY'
              '03' = 'MARCH'
              '04' = 'APRIL'
              '05' = 'MAY'
              '06' = 'JUNE'
              '07' = 'JULY'
              '08' = 'AUGUST'
              '09' = 'SEPTEMBER'
              '10' = 'OCTOBER'
              '11' = 'NOVEMBER'
              '12' = 'DECEMBER'
              '  ' = 'MISSING' ;

  VALUE $ST
              'AL' = 'Alabama'
              'AK' = 'Alaska'
              'AZ' = 'Arizona'
              'AR' = 'Arkansas'
              'CA' = 'California'
              'CO' = 'Colorado'
              'CT' = 'Connecticut'
              'DE' = 'Delaware'
              'DC' = 'District of Columbia'
              'FL' = 'Florida'
              'GA' = 'Georgia'
              'HI' = 'Hawaii'
              'ID' = 'Idaho'
              'IL' = 'Illinois'
              'IN' = 'Indiana'
              'IA' = 'Iowa'
              'KS' = 'Kansas'
              'KY' = 'Kentucky'
              'LA' = 'Louisiana'
              'ME' = 'Maine'
              'MD' = 'Maryland'
              'MA' = 'Massachusetts'
              'MI' = 'Michigan'
              'MN' = 'Minnesota'
              'MS' = 'Mississippi'
              'MO' = 'Missouri'
              'MT' = 'Montana'
              'NE' = 'Nebraska'
              'NV' = 'Nevada'
              'NH' = 'New Hampshire'
              'NJ' = 'New Jersey'
              'NM' = 'New Mexico'
              'NY' = 'New York'
              'NC' = 'North Carolina'
              'ND' = 'North Dakota'
              'OH' = 'Ohio'
              'OK' = 'Oklahoma'
              'OR' = 'Oregon'
              'PA' = 'Pennsylvania'
              'RI' = 'Rhode Island'
              'SC' = 'South Carolina'
              'SD' = 'South Dakota'
              'TN' = 'Tennessee'
              'TX' = 'Texas'
              'UT' = 'Utah'
              'VT' = 'Vermont'
              'VA' = 'Virginia'
              'WA' = 'Washington'
              'WV' = 'West Virginia'
              'WI' = 'Wisconsin'
              'WY' = 'Wyoming'
              'GU' = 'Guam'
              'PR' = 'Puerto Rico'
              'VI' = 'Virgin Islands';

  VALUE ACTIV
                 1 = 'YES'
                 2 = 'NO'
             7,.,9 = 'UNK/REF' ;

  VALUE AGE2FMT
                 1 = '18-64 & UNK/REF'
                 2 = '65 +'
                 3 = 'MISSING' ;

  VALUE AGE3FMT
                 1 = '40 + & UNK/REF'
                 2 = '18-39'
                 3 = 'MISSING' ;

  VALUE AGE40PLS
                 5 = '40-44'
               6,7 = '45-54'
               8,9 = '55-64'
             10-13 = '65+'
                14 = 'UNK/REF' ;

  VALUE AGEGFMT
                 1 = '18-24'
                 2 = '25-34'
                 3 = '35-44'
                 4 = '45-54'
                 5 = '55-64'
                 6 = '65+'
               7,9 = 'UNK/REF'
                 . = 'MISSING' ;

  VALUE AGEGROUP
             18-24 = '18-24'
             25-34 = '25-34'
             35-44 = '35-44'
             45-54 = '45-54'
             55-64 = '55-64'
             65-99 = '65 + '
               7,9 = 'UNK/REF'
                 . = 'MISSING' ;

  VALUE AIDSAGE
                 1 = '18-24'
               2-3 = '25-34'
               4-5 = '35-44'
               6-7 = '45-54'
               8-9 = '55-64'
             OTHER = 'UNK/REF' ;

VALUE ALCOHOL
                 101-102 = '1-2 TIMES PER WEEK'
                 103-106 = '3-6 TIMES PER WEEK'
                 107     = 'DAILY'
                 201-203 = 'LT ONCE PER WEEK'
                 204-211 = '1-2 TIMES PER WEEK'
                 212-229 = '3-6 TIMES PER WEEK'
                 230     = 'DAILY'
                 777,999 = 'UNK/REF';

  VALUE ASPUNSAF
                 1 = 'YES, NOT STOMACH RELATED'
                 2 = 'YES, STOMACH PROBLEMS'
                 3 = 'NO'
           .,0,7,9 = 'UNK/REF' ;

  VALUE BADHLTX
                 1 = 'NONE'
                 2 = '1 DAY'
               3-5 = '>= 2 DAYS'
         .,0,77,99 = 'UNK/REF' ;

  VALUE BCCHK
                 1 = 'NO CHECK'
                 2 = 'HAD CHECK'
             .,7,9 = 'UNK/REF' ;

  VALUE BIKEHLMT
                 1 = 'ALWAYS'
                 2 = 'NEARLY ALWAYS'
                 3 = 'SOMETIMES'
               4-5 = 'SELDOM OR NEVER'
                 8 = 'NEVER RIDES A BIKE'
             .,7,9 = 'UNK/REF' ;

  VALUE BIRTHCNT
                 1 = 'YES'
                 2 = 'NO'
                 3 = 'NOT SEXUALLY ACTIVE'
               7,9 = 'UNK/REF' ;

  VALUE BLDSTCHK
                 1 = '2 YRS OR MORE'
                 2 = 'WITHIN 2 YRS'
                 3 = 'NEVER CHECKED'
             .,7,9 = 'UNK/REF' ;

  VALUE BLDSUGAR
  101-109,207-263,330-399 = 'DAILY OR MORE'
  201-202,304-311,437-499 = '1-2 TIMES PER WEEK'
          203-206,312-329 = '3-6 TIMES PER WEEK'
          301-303,412-436 = '1-3 TIMES PER MONTH'
                  401-411 = '< 1 PER MONTH'
                      888 = 'NEVER'
110-199,264-299,0,777,999 = 'UNK/REF'
                        . = 'MISSING' ;

  VALUE BLCKSIZE 0 = '0'
               1-5 = '1-5'
              6-10 = '6-10'
             11-15 = '11-15'
             16-20 = '16-20'
             21-25 = '21-25'
             26-30 = '26-30'
             31-35 = '31-35'
             36-40 = '36-40'
             41-45 = '41-45'
             46-50 = '46-50'
             51-55 = '51-55'
             56-60 = '56-60'
             61-65 = '61-65'
             66-70 = '66-70'
             71-75 = '71-75'
             76-80 = '76-80'
             81-85 = '81-85'
             86-90 = '86-90'
             91-95 = '91-95'
            96-100 = '96-100' ;

  VALUE BMI2CAT  1 = 'NORMAL'
                 2 = 'OVERWEIGHT'
                 3 = 'OBESE'
             .,7,9 = 'UNK/REF' ;

  VALUE BPCHECK
                 1 = 'WITHIN 2 YRS'
                 2 = '2 YRS OR MORE OR NEVER'
                 9 = 'UNK/REF' ;

  VALUE BPHIGH
                 1 = 'YES'
                 2 = 'NO'
           0,.,7,9 = 'UNK/REF' ;

  VALUE BPTOLDHI 1 = 'BP HIGH'
                 2 = 'NOT HIGH'
                 9 = 'UNK/REF' ;

  VALUE BPTAKE
               1-2 = '<= 1 YEAR'
                 3 = '1-2 YEARS'
                 4 = '2 - <5 YEARS'
                 5 = '>= 5 YEARS'
                 8 = 'NEVER'
           .,0,7,9 = 'UNK/REF' ;

  VALUE BSTLAGE
               5-6 = '40-49'
               7-8 = '50-59'
              9-10 = '60-69'
             11-13 = '70 + '
             OTHER = 'UNK/REF' ;

  VALUE BURNTYPE
                 1 = 'BURN SEVERELY WITH BLISTERS'
                 2 = 'BURN SEVERELY W/PEELING FOR A FEW DAYS'
                 3 = 'BURN MILDLY WITHOUT PEELING'
               7,9 = 'UNK/REF' ;

  VALUE CHECK
              1-13 = '1-13'
             14-26 = '14-26'
             27-39 = '27-39'
             40-52 = '40-52'
             53-76 = '53-76'
                88 = 'NONE'
          00,77,99 = 'UNK/REF'
                 . = 'MISSING' ;

VALUE CHILDREN
                 8 = 'NONE'
                 9 = 'REF';

  VALUE CHKHEMO
              1-13 = '1-13'
             14-26 = '14-26'
             27-39 = '27-39'
             40-52 = '40-52'
             53-76 = '53-76'
                88 = 'NONE'
                98 = 'NEVER HEARD OF'
          00,77,99 = 'UNK/REF'
                 . = 'MISSING' ;

  VALUE CHLDCNT
 2701-2702,1801-1802,901-902,1-2 = '1 TO 2'
 2703-2704,1803-1804,903-904,3-4 = '3 TO 4'
2705-2721,1805-1821,905-921,5-21 = '5 OR MORE'
                               0 = 'NONE'
                  900,1800,2700,.= 'UNK/REF'  ;

  VALUE CHNGDOCT
                 1 = '1 TO 12 MONTHS AGO'
                 2 = '1 TO 2 YEARS AGO'
                 3 = '2 TO 3 YEARS AGO'
                 4 = '3 TO 5 YEARS AGO'
                 5 = '5 OR MORE YEARS AGO'
                 8 = 'NEVER'
             .,7,9 = 'UNK/REF' ;

  VALUE CHOLCHK
                 1 = '5 YRS OR MORE'
                 2 = 'WITHIN 5 YRS'
                 3 = 'NEVER CHECKED'
             .,7,9 = 'UNK/REF' ;

VALUE CONDLAST
                 1 = 'TO PREVENT PREGNANCY'
                 2 = 'TO PREVENT DISEASES LIKE SYPHILIS,AIDS, AND ETC'
                 3 = 'FOR BOTH PREGNANCY AND DISEASES'
                 4 = 'FOR SOME OTHER REASON'
             .,7,9 = 'UNK/REF' ;

  VALUE CONDUSE
                 1 = 'YES'
                 2 = 'NO'
                 3 = 'WOULD GIVE OTHER ADVICE'
           .,0,7,9 = 'UNK/REF' ;

  VALUE CONEFF
                 1 = 'VERY EFFECTIVE'
                 2 = 'SOMEWHAT EFFECTIVE'
                 3 = 'NOT AT ALL EFFECTIVE'
                 4 = 'DON''T KNOW HOW EFFECTIVE'
                 5 = 'DON''T KNOW METHOD'
                 9 = 'UNK/REF' ;

  VALUE COUNSEL
                 1 = 'YES'
                 2 = 'NO'
                 3 = 'DID NOT GET RESULTS'
           .,0,7,9 = 'UNK/REF' ;

  VALUE CURADS
                 1 = '1 TO 6 MONTHS'
                 2 = '6 TO 12 MONTHS'
                 3 = '1 TO 2 YEARS AGO'
                 4 = '2 OR MORE YEARS AGO'
             .,7,9 = 'UNK/REF' ;

  VALUE DIABAGE
            LOW-17 = '< 18'
             18-44 = '18-44'
             45-54 = '45-54'
             55-64 = '55-64'
             65-97 = '65+'
             98,99 = 'UNK/REF' ;

  VALUE DIABETES
                 1 = 'YES'
                 2 = 'YES, BUT FEMALE TOLD DURING PREGNANCY'
                 3 = 'NO'
             7,.,9 = 'UNK/REF'  ;

  VALUE DIAFMT
                 1 = 'YES'
                 2 = 'YES-WHEN PREGNANT'
                 3 = 'NO'
               7,9 = 'UNK/REF'
                 . = 'MISSING' ;

  VALUE DIETPILL
                 1 = 'YES, CURRENTLY TAKING'
                 2 = 'YES, NOT CURRENTLY TAKING'
                 3 = 'NO, HAVE NOT TAKEN'
               7,9 = 'UNK/REF' ;

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
                11 = '11' ;

  VALUE DISPFMT
                 1 = '01-COMPLETED INTERV'
                 2 = '02-REFUSED'
                 3 = '03-NONWORKING NUM'
                 4 = '04-MULTIPLE NO ANS'
                 5 = '05-NOT A PRIVATE RES.'
                 6 = '06-NO ONE ELIGIBLE'
                 7 = '07-TIME INELIGIBLE'
                 8 = '08-LANGUAGE BARRIER'
                 9 = '09-TERMINATED QUEST'
                10 = '10-LINE BUSY'
                11 = '11-CANNOT RESPOND'
                 . = 'MISSING' ;

  VALUE DISPFMTH
        1,2,6-9,11 = 'HOUSEHOLD'
               3,5 = 'NON-HOUSEHOLD'
              4,10 = 'UNRESOLVED' ;

  VALUE DISPFMTX
                 1 = 'COMPLETE'
              2-11 = 'INCOMPLETE' ;

  VALUE DISTCARE
                 1 = 'EXCELLENT'
                 2 = 'VERY GOOD'
                 3 = 'GOOD'
                 4 = 'FAIR'
                 5 = 'POOR'
                 6 = "DON'T HAVE USUAL PLACE"
             .,7,9 = 'UNK/REF' ;

  VALUE DOCTDIAB
              1-13 = '1-13'
             14-26 = '14-26'
             27-39 = '27-39'
             40-52 = '40-52'
             53-76 = '53-76'
                88 = 'NONE'
          00,77,99 = 'UNK/REF'
                 . = 'MISSING' ;

  VALUE DRADVICE
                 1 = 'YES, LOSE WEIGHT'
                 2 = 'YES, GAIN WEIGHT'
                 3 = 'YES, MAINTAIN CURRENT WEIGHT'
                 4 = 'NO'
             7,.,9 = 'UNK/REF' ;

  VALUE DRVISIT
                 1 = 'ONCE'
                 2 = 'TWICE'
                 3 = '3 TIMES'
                 4 = '4 TIMES'
                 5 = '5 TO 9 TIMES'
                 6 = '10+ TIMES'
                 8 = 'NONE'
               7,9 = 'UNK/REF' ;

  VALUE EDUCA
             1,2,3 = 'LESS THAN HIGH SCHOOL GRADUATE'
                 4 = 'HIGH SCHOOL GRAD OR GED'
                 5 = 'SOME COLLEGE OR TECH SCHOOL'
                 6 = 'COLLEGE GRADUATE'
               .,9 = 'UNK/REF' ;

 VALUE EDUCAF
                 1 = 'KINDERGARTEN OR LESS'
                 2 = 'LESS THAN 9TH GRADE'
                 3 = 'LESS THAN HIGH SCHOOL GRADUATE'
                 4 = 'HIGH SCHOOL GRAD'
                 5 = 'SOME COLLEGE'
                 6 = 'COLLEGE GRAD'
                 9 = 'REF';

 VALUE EDUCAIDS
                 1 = 'KINDERGARTEN'
                 2 = '1ST TO 3RD GRADE'
                 3 = '4TH TO 6TH GRADE'
                 4 = '7TH TO 9TH GRADE'
                 5 = '10TH TO 12TH GRADE'
                 8 = 'NEVER'
         0,.,77,99 = 'UNK/REF' ;

  VALUE EMPLOY
               1,2 = 'EMPLOYED'
               3,4 = 'NOT EMPLOYED'
               5,6 = 'STUDENT/HOMEMAKER'
               7,8 = 'RETIRED/UNABLE TO WORK'
             0,.,9 = 'UNK/REF' ;

  VALUE EMPLOYA  1 = 'EMPLOYED FOR WAGES'
                 2 = 'SELF-EMPLOYED'
                 3 = 'OUT OF WORK FOR MORE THAN 1 YEAR'
                 4 = 'OUT OF WORK FOR LESS THAN 1 YEAR'
                 5 = 'HOMEMAKER'
                 6 = 'STUDENT'
                 7 = 'RETIRED'
                 8 = 'UNABLE TO WORK'
                 9 = 'REFUSED' ;

  VALUE EXAM
                 1 = 'DID NOT HAVE EXAM'
                 2 = 'HAD EXAM'
             .,7,9 = 'UNK/REF' ;

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
                88 = 'NO ACTIVITY'
                12 = 'UNK/REF' ;

VALUE EXERACTF
                 1 = 'AEROBICS CLASS'
                 2 = 'BACKPACKING'
                 3 = 'BADMINTON'
                 4 = 'BASKETBALL'
                 5 = 'BICYCLING FOR FUN'
                 6 = 'BOATING'
                 7 = 'BOWLING'
                 8 = 'BOXING'
                 9 = 'CALISTHENICS'
                10 = 'CANOEING/ROWING COMPETITION'
                11 = 'CARPENTRY'
                12 = 'DANCING-AEROBICS/BALLET'
                13 = 'FISHING'
                14 = 'GARDENING'
                15 = 'GOLF'
                16 = 'HANDBALL'
                17 = 'HEALTH CLUB EXER.'
                18 = 'HIKING,CROSS COUNTRY'
                19 = 'HOME EXERCISE'
                20 = 'HORSEBACK RIDING'
                21 = 'HUNTING LARGE GAME'
                22 = 'JOGGING'
                23 = 'JUDO/KARATE'
                24 = 'MOUNTAIN CLIMBING'
                25 = 'MOWING LAWN'
                26 = 'PADDLEBALL'
                27 = 'PAINTING/PAPPERING HOUSE'
                28 = 'RACKETBALL'
                29 = 'RAKING LAWN'
                30 = 'RUNNING'
                31 = 'ROPE SKIPPING'
                32 = 'SCUBA DIVING'
                33 = 'SKATING- ICE/ROLLER'
                34 = 'SLEDDING'
                35 = 'SNORKELING'
                36 = 'SNOWSHOEING'
                37 = 'SNOW SHOVELING'
                38 = 'SNOW BLOWING'
                39 = 'SNOW SKIING'
                40 = 'SOCCER'
                41 = 'SOFTBALL'
                42 = 'SQUASH'
                43 = 'STAIR CLIMBING'
                44 = 'STREAM FISHING'
                45 = 'SURFING'
                46 = 'SWIMMING LAPS'
                47 = 'TABLE TENNIS'
                48 = 'TENNIS'
                49 = 'TOUCH FOOTBALL'
                50 = 'VOLLEYBALL'
                51 = 'WALKING'
                52 = 'WATERSKIING'
                53 = 'WEIGHT LIFTING'
                54 = 'OTHER'
                55 = 'BICYCLING MACHINE'
                56 = 'ROWING MACHINE'
                99 = 'REF';

  VALUE EXERANYB
                 1 = 'YES'
                 2 = 'NO'
             OTHER = 'UNK/REF' ;

  VALUE EXERFMT
           777,999 = 'UNK/REF'
                 . = 'NO PHY ACTIVITY' ;

VALUE EXEROFT
           101-107 = '1-7 TIMES WEEKLY'
           108-121 = '2-3 TIMES DAILY'
           122-199 = '> 3 TIMES DAILY'
           201-230 = '1-7 TIMES WEEKLY'
           231-291 = '2-3 TIMES DAILY'
           292-299 = '> 3 TIMES DAILY'
           777,999 = 'UNK/REF';

  VALUE EYEEXAM
                 1 = '0 TO 1 MONTH AGO'
                 2 = '1 TO 12 MONTHS AGO'
                 3 = '1 TO 2 YEARS AGO'
                 4 = '2 OR MORE YEARS AGO'
                 8 = 'NEVER'
             0,7,9 = 'UNK/REF'
                 . = 'MISSING' ;

  VALUE FACILIT
                 1 = "DOCTOR'S OFFICE/HMO"
                 2 = 'CLINIC/HEALTH CENTER'
                 3 = 'HOSPITAL OUTPATIENT'
                 4 = 'HOSPITAL ER'
                 5 = 'URGENT CARE CENTER'
                 8 = 'OTHER PLACE'
             .,7,9 = 'UNK/REF' ;

  VALUE FATCAT
            5,401-411,555 = '< 1 PER MONTH OR NEVER'
        4,301-303,412-436 = '1-3 TIMES PER MONTH'
3,201-202,304-311,437-499 = '1-2 TIMES PER WEEK'
        2,203-206,312-329 = '3-6 TIMES PER WEEK'
1,101-120,207-299,330-399 = 'DAILY OR MORE'
      6,121-199,777,999,. = 'UNK/REF' ;

  VALUE FEETCHK
                  101-109 = 'DAILY'
                  201-202 = '1-2 TIMES PER WEEK'
                  203-206 = '3-6 TIMES PER WEEK'
                  207-263 = 'DAILY'
                  301-303 = '1-3 TIMES PER MONTH'
                  304-311 = '1-2 TIMES PER WEEK'
                  312-329 = '3-6 TIMES PER WEEK'
                  330-399 = 'DAILY'
                  401-411 = '< 1 PER MONTH'
                  412-436 = '1-3 TIMES PER MONTH'
                  437-499 = '1-2 TIMES PER WEEK'
                      555 = 'NO FEET'
                      888 = 'NEVER'
0,110-199,264-299,777,999 = 'UNK/REF'
                        . = 'MISSING' ;

  VALUE FEWCAL
                 1 = 'YES, FEWER CALORIES'
                 2 = 'YES, LESS FAT'
                 3 = 'YES, FEWER CALORIES AND LESS FAT'
                 4 = 'NO'
             .,7,9 = 'UNK/REF' ;

VALUE FLUPROV
                 1 = 'DOCTORS OFFICE OR HMO'
                 2 = 'HEALTH DEPARTMENT'
                 3 = 'CLINIC OR HEALTH CENTER'
                 4 = 'SENIOR, REC, COMM. CENTER'
                 5 = 'A STORE'
                 6 = 'HOSPITAL/EMERGENCY ROOM'
                 7 = 'WORKPLACE'
                 8 = 'OTHER'
                 77,99 = 'UNK/REF';

  VALUE FLUSHOT
                 1 = 'HAD SHOT'
                 2 = 'DID NOT HAVE SHOT'
             .,7,9 = 'UNK/REF' ;

  VALUE FRTINDX
                 1 = 'LESS THAN ONCE PER DAY OR NEVER'
                 2 = '1 BUT LESS THAN 3 TIMES PER DAY'
                 3 = '3 BUT LESS THAN 5 TIMES PER DAY'
                 4 = '5 OR MORE TIMES PER DAY'
               .,9 = 'UNK/REF' ;

  VALUE FRUTINDX
                 4 = 'LESS THAN ONCE PER DAY OR NEVER'
                 3 = '1 BUT LESS THAN 3 TIMES PER DAY'
                 2 = '3 BUT LESS THAN 5 TIMES PER DAY'
                 1 = '5 OR MORE TIMES PER DAY'
               .,9 = 'UNK/REF' ;

  VALUE GETAIDS
                 1 = 'HIGH'
                 2 = 'MEDIUM'
                 3 = 'LOW'
                 4 = 'NONE'
                 5 = 'NOT APPLICABLE'
           .,0,7,9 = 'UNK/REF' ;

VALUE GRADE2F
                 55    = 'KINDERGARTEN'
                 77,99 = 'UNK/REF'
                 88    = 'NEVER';

  VALUE HADPAP
                 1 = 'DID NOT HAVE PAP SMEAR'
                 2 = 'HAD PAP SMEAR'
             .,7,9 = 'UNK/REF' ;

  VALUE HCARESAT
                 1 = 'NEVER'
                 2 = 'SOMETIMES'
                 3 = 'USUALLY'
                 4 = 'ALWAYS'
               7,9 = 'UNK/REF' ;

  VALUE HCRATE
                 1 = 'WORST'
                 2 = 'POOR'
                 3 = 'AVERAGE'
                 4 = 'GOOD'
                 5 = 'BEST'
               7,9 = 'UNK/REF' ;

  VALUE HELMETX
                 1 = 'ALWAYS'
                 2 = 'NEARLY ALWAYS'
                 3 = 'SOMETIMES'
               4-5 = 'SELDOM OR NEVER'
                 8 = 'NEVER RIDE A BICYCLE'
             OTHER = 'UNK/REF' ;

  VALUE HISPANIC
                 1 = 'HISPANIC'
                 2 = 'NON-HISP'
                 7 = 'DK/NS'
                 9 = 'UNK/REF'
                 . = 'UNDETERMINED' ;

  VALUE HISPFMT
                 1 = 'HISPANIC'
                 2 = 'NON-HISP'
                 . = 'MISSING' ;

  VALUE HLTHPLA
                 1 = 'NO COVERAGE'
                 2 = 'HAVE COVERAGE'
           0,.,7,9 = 'UNK/REF' ;

  VALUE HLTHPLAN
                 1 = 'YES-HAVE HEALTH COVERAGE'
                 2 = 'NO-DON''T HAVE COVERAGE'
               7,9 = 'UNK/REF'
                 . = 'MISSING' ;
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
             77,99 = 'UNK/REF' ;

  VALUE HLTHSTAT
                 1 = 'EXCELLENT'
                 2 = 'VERY GOOD'
                 3 = 'GOOD'
                 4 = 'FAIR'
                 5 = 'POOR'
           0,.,7,9 = 'UNK/REF' ;

  VALUE HOWLNG
                 1 = '1 TO 12 MONTHS'
                 2 = '1 - 2 YEARS'
                 3 = '2 - 5 YEARS'
                 4 = '5 OR MORE YEARS'
                 8 = 'NEVER'
           .,0,7,9 = 'UNK/REF' ;

  VALUE HOWLONG
                 1 = '<= 1 YEAR'
                 2 = '1 - <=2 YEARS'
                 3 = '2 - <=3 YEARS'
                 4 = '3 - <5 YEARS'
                 5 = '>= 5 YEARS'
                 8 = 'NEVER'
           0,.,7,9 = 'UNK/REF' ;

  VALUE HOWOFTEN
                 1 = '<= 1 YEAR'
                 2 = '1 - <=2 YEARS'
                 3 = '2 - <5 YEARS'
                 4 = '>= 5 YEARS'
         .,0,7,8,9 = 'UNK/REF' ;

  VALUE HOWSAFE
                 1 = 'EXTREMELY SAFE'
                 2 = 'QUITE SAFE'
                 3 = 'SLIGHTLY SAFE'
                 4 = 'NOT ALL SAFE'
             .,7,9 = 'UNK/REF' ;

  VALUE INCOME
               1,2 = '< $15,000'
               3,4 = '$15-$24,999'
               5,6 = '$25-$49,999'
                 7 = '$50-$74,999'
                 8 = '>=$75,000'
         .,0,77,99 = 'UNK/REF' ;

  VALUE INCOMEB
                 1 = 'LT 10K'
                 2 = '10-15K'
                 3 = '15-20K'
                 4 = '20-25K'
                 5 = '25-35K'
                 6 = '35-50K'
                 7 = '50-75K'
                 8 = '75+K'
                77 = 'UNK'
                99 = 'REF' ;

  VALUE INSLNFRQ
          101-106,207-242 = 'DAILY OR MORE'
                  201-206 = '1-6 TIMES PER WEEK'
                      333 = 'USE INSULIN PUMP'
107-199,243-299,0,777,999 = 'UNK/REF'
                        . = 'MISSING' ;

VALUE LASTCHNG
                 1 = 'CHANGED RESIDENCE'
                 2 = 'CHANGED JOBS'
                 3 = 'CHANGED HEALTH CARE COVERAGE'
                 4 = 'PROVIDER MOVED/RETIRED'
                 5 = 'DISSATISFIED WITH FORMER PROVIDER'
                 6 = 'PROVIDER NO LONGER REIMBURSED BY COVERAGE'
                 7 = 'OWED MONEY TO FORMER PROVIDER'
                 8 = 'MEDICAL NEEDS CHANGED'
                87 = 'OTHER'
           .,77,99 = 'UNK/REF' ;

  VALUE LASTDENT
                 1 = '1 - 12 MOS'
                 2 = '1 - 2 YEARS'
                 3 = '2 - 5 YEARS'
                 4 = '5 OR MORE YEARS'
                 8 = 'NEVER'
             .,7,9 = 'UNK/REF' ;

  VALUE LASTSMOK
                 1 = '< 1 MO'
                 2 = '1 - 3 MOS'
                 3 = '3 - 6 MOS'
                 4 = '6 - 12 MOS'
                 5 = '1 - 5 YRS'
                 6 = '5-15 YRS'
                 7 = '>= 15 YRS'
                88 = 'IRREGULAR SMOKER'
         77,0,.,99 = 'UNK/REF' ;

  VALUE LASTUSED
                 1 = '1 TO 12 MOS AGO'
                 2 = '1 TO 2 YRS AGO'
                 3 = '2 TO 3 YRS AGO'
                 4 = '3 TO 5 YRS AGO'
                 5 = '5 OR MORE YRS AGO'
               7,9 = 'UNK/REF' ;

  VALUE LONG
                 1 = 'YES, WITHIN PAST 12 MONTHS'
                 2 = 'YES, WITHIN PAST 3 YEARS'
                 3 = 'YES, 3 OR MORE YEARS AGO'
                 4 = 'NO'
             .,7,9 = 'UNK/REF' ;

  VALUE LONGLMTD
                 0 = 'NONE'
           101-199 = '< 6 MONTHS'
           201-225 = '< 6 MONTHS'
           226-251 = '6 - <12 MONTHS'
           252-299 = '12 - <24 MONTHS'
           301-305 = '< 6 MONTHS'
           306-311 = '6 - <12 MONTHS'
           312-323 = '12 - <24 MONTHS'
           324-399 = '24 OR MORE MONTHS'
               401 = '12 - <24 MONTHS'
           402-499 = '24 OR MORE MONTHS'
           777,999 = 'UNK/REF' ;

  VALUE LSTHHPRE 0 = '0'
                 1 = '1'
              2-10 = '2-10'
            11-100 = '11-100'
          101-1000 = '101-1000'
         1001-2000 = '1001-2000'
         2001-3000 = '2001-3000'
         3001-4000 = '3001-4000'
         4001-5000 = '4001-5000'
         5001-6000 = '5001-6000'
         6001-7000 = '6001-7000'
         7001-8000 = '7001-8000'
         8001-9000 = '8001-9000'
        9001-10000 = '9001-10000' ;

  VALUE LSTPREG
                 1 = 'WANTED TO BE PREGNANT SOONER'
                 2 = 'WANTED TO BE PREGNANT LATER'
                 3 = 'WANTED TO BE PREGNANT THEN'
                 4 = 'DID NOT WANT TO BE PREGNANT'
             .,7,9 = 'UNK/REF' ;

  VALUE LTCHELP
                 1 = 'RELATIVE OR FRIEND'
                 2 = 'DO MYSELF'
                 3 = 'NURSING HOME'
                 4 = 'HOME HEALTH SERVICE'
                 5 = 'PERSONAL PHYSICIAN'
                 6 = 'AREA AGENCY ON AGING'
                 7 = 'HOSPICE'
                 8 = 'NURSE'
                 9 = 'CLERGY'
                10 = 'OTHER'
                11 = "DON'T KNOW WHO TO CALL"
                99 = 'REFUSED' ;

  VALUE MAM1PRO
                 1 = '1 YR OR MORE'
                 2 = 'WITHIN 1 YR'
                 3 = 'NEVER HAD'
             .,7,9 = 'UNK/REF' ;

  VALUE MAM2PRO
                 1 = '2 YRS OR MORE'
                 2 = 'WITHIN 2 YRS'
                 3 = 'NEVER HAD'
             .,7,9 = 'UNK/REF' ;

  VALUE MAMM2AGE
                 1 = '18-49'
                 2 = '50-64'
                 3 = '65 +'
                 4 = 'UNK/REF' ;

  VALUE MAMM3AGE
                 1 = '40-49'
                 2 = '50-64'
                 3 = '65 +'
                 4 = 'UNK/REF' ;

  VALUE MAMM5AGE
                 1 = '50-64'
                 2 = '65 +'
                 3 = 'UNK/REF' ;

  VALUE MAMMAGE
               1-4 = '18-39'
               5-6 = '40-49'
               7-8 = '50-59'
              9-10 = '60-69'
             11-13 = '70 +'
                14 = 'UNK/REF' ;

  VALUE MARITAL
                 1 = 'MARRIED'
         2,3,4,5,6 = 'UNMARRIED'
             0,.,9 = 'UNK/REF' ;

VALUE MARITALF
                 1 = 'MARRIED'
                 2 = 'DIVORCED'
                 3 = 'WIDOWED'
                 4 = 'SEPARATED'
                 5 = 'NEVER MARRIED'
                 6 = 'MEMBER OF UNMARRIED COUPLE'
                 9 = 'REF';

  VALUE MAYBE
                 1 = 'ALWAYS'
                 2 = 'NEARLY ALWAYS'
                 3 = 'SOMETIMES'
                 4 = 'SELDOM'
                 5 = 'NEVER'
               7,9 = 'UNK/REF' ;

  VALUE MCRELNGT
                 1 = '1 TO 12 MONTHS'
                 2 = '1 TO 2 YEARS'
                 3 = '2 TO 3 YEARS'
                 4 = '3 TO 5 YEARS'
                 5 = '>= 5 YEARS'
             7,.,9 = 'UNK/REF' ;

  VALUE MENOAGE
                 1 = '18-34'
                 2 = '35-64 & UNK/REF'
                 3 = '65+'
                 4 = 'MISSING'
                 5 = 'INVALID AGE'  ;

  VALUE MENOFMT
                 1 = 'YES-HAD MENOPAUSE'
                 2 = 'YES-MENOPAUSE NOW'
                 3 = 'NO'
             .,7,9 = 'UNK/REF' ;

  VALUE MILSTAT  1 = 'ACTIVE DUTY'
                 2 = 'RESERVES'
                 3 = 'DISCHARGED'
                 4 = 'NEVER IN'
                 9 = 'REFUSED' ;

  VALUE MTHFMT
                 1 = 'JAN'
                 2 = 'FEB'
                 3 = 'MAR'
                 4 = 'APR'
                 5 = 'MAY'
                 6 = 'JUN'
                 7 = 'JUL'
                 8 = 'AUG'
                 9 = 'SEP'
                10 = 'OCT'
                11 = 'NOV'
                12 = 'DEC'
                13 = 'SAM' ;

  VALUE NATTMPTS 0 = '0'
              1-99 = '1+' ;

  VALUE NFRIE
                 1 = '3 OR MORE'
                 2 = '2 '
                 3 = '1'
                 4 = 'NONE'
             .,7,9 = 'UNK/REF' ;

  VALUE NOPRIMCR
                 1 = 'TWO OR MORE USUAL PLACES'
                 2 = "HAVEN'T NEEDED A DOCTOR"
                 3 = "DON'T LIKE DOCTORS"
                 4 = "DON'T KNOW WHERE TO GO"
                 5 = 'PREVIOUS DOCTOR NOT AVAILABLE'
                 6 = 'NO INSURANCE/CANNOT AFFORD'
                 7 = 'SPEAK DIFFERENT LANGUAGE'
                 8 = 'NO PLACE AVAILABLE'
                 9 = 'OTHER'
           .,77,99 = 'UNK/REF' ;

  VALUE NUMATT
           15-HIGH = '15 PLUS' ;

  VALUE NUMBDOCT
                 1 = 'YES, ONLY ONE'
                 2 = 'MORE THAN ONE'
                 3 = 'NO'
               7,9 = 'UNK/REF' ;

  VALUE NUMBURN
                 1 = 'ONE'
                 2 = 'TWO'
                 3 = 'THREE'
                 4 = 'FOUR'
                 5 = 'FIVE'
                 6 = 'SIX OR MORE'
               7,9 = 'UNK/REF' ;

  VALUE NUMPHONS
                 8 = '8 OR MORE'
                 9 = 'UNK/REF' ;

  VALUE PAINACTV
             01-02 = '1-2 DAYS'
             03-07 = '3-7 DAYS'
             08-14 = '8-14 DAYS'
             15-30 = '15-30 DAYS'
                88 = 'NONE'
             77,99 = 'UNK/REF' ;

  VALUE PAP2AGE
                 1 = '18-44'
                 2 = '45-69'
                 3 = '70 +'
                 4 = 'UNK/REF' ;

  VALUE PAP3CHK
                 1 = '3 YRS OR MORE'
                 2 = 'WITHIN 3 YRS'
                 3 = 'NEVER CHECKED'
             .,7,9 = 'UNK/REF' ;

  VALUE PAPAGE
                 1 = '18-24'
               2-3 = '25-34'
               4-6 = '35-49'
               7-9 = '50-64'
             10-13 = '65 +'
                14 = 'UNK/REF' ;

  VALUE PASTCGAR
                 1 = 'EVERDAY'
                 2 = 'SEVERAL TIMES PER WEEK'
                 3 = 'ONCE PER WEEK'
                 4 = 'LESS THAN ONCE A WEEK'
               7,9 = 'UNK/REF' ;

  VALUE PASTMENO
                 1 = 'YES, GONE THRU'
                 2 = 'YES, GOING THRU'
                 3 = 'NO'
           .,0,7,9 = 'UNK/REF' ;

  VALUE PASTPLAN
               1-2 = '<= 1 YEAR'
                 3 = '1 TO 2 YEARS'
                 4 = '2 TO < 5 YEARS'
                 5 = '>= 5 YEARS'
                 8 = 'NEVER'
           .,0,7,9 = 'UNK/REF' ;

  VALUE PNEUMVA
                 1 = 'NEVER VACCINATED'
                 2 = 'VACCINATED'
             .,7,9 = 'UNK/REF' ;

  VALUE PREGAGE
             18-24 = '18-24'
             25-34 = '25-34'
             35-40 = '35-40'
             41-44 = '41-44'
             07,09 = 'UNK/REF' ;

  VALUE PRIMCARE
                 1 = 'YES, ONE'
                 2 = 'YES, MORE THAN ONE'
                 3 = 'NO'
             .,7,9 = 'UNK/REF' ;

  VALUE PROCAGE
               5-6 = '40-49'
               7-8 = '50-59'
              9-10 = '60-69'
             11-13 = '70 + '
             OTHER = 'UNK/REF' ;

  VALUE PRSNFMT
                 1 = 'YES'
                 2 = 'NO'
                7,9= 'UNK/REF'
                 . = 'MISSING' ;

  VALUE QLHELP   1 = 'HUSBAND, WIFE OR PARTNER'
                 2 = 'PARENT,SON,SON-IN-LAW,DAUGHTER,D.-IN-LAW'
                 3 = 'OTHER RELATIVE'
                 4 = 'UNPAID VOLUNTEER'
                 5 = 'PAID EMP OR HOME HLTH SERV'
                 6 = 'FRIEND OR NEIGHBOR'
                 7 = 'FAMILY AND OR FRIENDS'
                 8 = 'OTHER'
                 9 = 'NO ONE HELPS'
           .,77,99 = 'UNK/REF' ;

  VALUE QLLEVL   1 = 'USUALLY ADEQUATE'
                 2 = 'SOMETIMES ADEQUATE'
                 3 = 'RARELY ADEQUATE'
             .,7,9 = 'UNK/REF' ;

  VALUE RACE2FMT
                 0 = 'ANY RACE'
                 1 = 'WHITE, NON-HISPANIC'
                 2 = 'NON-WHITE OR HISPANIC'
                 . = 'MISSING' ;

  VALUE RACEAK
           1,2,3,5 = 'NON-NATIVE'
                 4 = 'NATIVE'
               7,9 = 'UNK/REF' ;

  VALUE RACEGRP
                 1 = 'WHITE'
                 2 = 'BLACK'
                 3 = 'ASIAN, PACIFIC ISLANDER'
                 4 = 'AMERICAN INDIAN, ALASKA NATIVE'
                 5 = 'OTHER'
               7,9 = 'UNK/REF'
                 . = 'MISSING' ;

  VALUE RACEND
                 1 = 'WHITE, NON-HISPANIC'
             3,4,5 = 'HISPANIC'
                 7 = 'NATIVE'
             2,6,8 = 'OTHER'
                 9 = 'UNK/REF' ;

  VALUE RACESD
                 1 = 'WHITE'
                 4 = 'AMERICAN INDIAN'
             2,3,5 = 'OTHER'
               7,9 = 'UNK/REF' ;

  VALUE RATE
                 1 = 'EXCELLENT'
                 2 = 'VERY GOOD'
                 3 = 'GOOD'
                 4 = 'FAIR'
                 5 = 'POOR'
           6,7,8,9 = 'UNK/REF' ;


  VALUE RATECARE
                 1 = 'EXCELLENT'
                 2 = 'VERY GOOD'
                 3 = 'GOOD'
                 4 = 'FAIR'
                 5 = 'POOR'
                 8 = 'N/A'
             .,7,9 = 'UNK/REF' ;

  VALUE REASDENT
                 1 = 'FEAR/PAIN'
                 2 = 'COST'
                 3 = "DON'T HAVE DENTIST"
                 4 = 'CANNOT GET TO OFFICE'
                 5 = 'NO REASON TO GO'
                 6 = 'OTHER PRIORITIES'
                 7 = "HAVEN'T THOUGHT OF IT"
                 8 = 'OTHER '
           .,77,99 = 'UNK/REF' ;

  VALUE REASONS
                 1 = 'TO MAKE STRONG BONES'
                 2 = 'TO PREVENT BIRTH DEFECTS'
                 3 = 'TO PREVENT HIGH BLOOD PRESSURE'
                 4 = 'SOME OTHER REASON'
             .,7,9 = 'UNK/REF' ;

  VALUE RENTHOME
                 1 = 'OWN'
                 2 = 'RENT'
               .,9 = 'UNK/REF' ;

  VALUE RF
                 1 = 'YES'
                 2 = 'NO'
             .,0,9 = 'UNK/REF' ;

  VALUE RFACTIV
                 1 = 'HAD ACTIVITY'
                 2 = 'DID NOT HAVE'
             .,0,9 = 'UNK/REF' ;

  VALUE RFREGUL
                 1 = 'DID NOT HAVE'
                 2 = 'HAD ACTIVITY'
             .,7,9 = 'UNK/REF' ;

  VALUE RMVTEETH
                 1 = '1 - 5'
                 2 = '6 OR MORE, BUT NOT ALL'
                 3 = 'ALL '
                 8 = 'NONE'
             .,7,9 = 'UNK/REF' ;

  VALUE RNSARMED
                 1 = 'HUNTING OR SPORT'
                 2 = 'PROTECTION'
                 3 = 'WORK'
                 4 = 'SOME OTHER REASON'
                 8 = 'HAVE NO FIREARM'
             .,7,9 = 'UNK/REF' ;

  VALUE RSNNOBC
                 1 = 'NO SEX'
                 2 = 'WANT TO GET PREGNANT'
                 3 = 'DO NOT WANT TO USE'
                 4 = 'PARTNER DOES NOT WANT TO USE'
                 5 = 'DO NOT THINK CAN GET PREGNANT'
                 6 = 'CAN NOT PAY FOR'
                87 = 'OTHER'
             77,99 = 'UNK/REF' ;

  VALUE RSNNOCOV
                 1 = 'LOST JOB/CHNG JOB'
                 2 = 'SPOUSE/PARENT LOST JOB OR CHNG JOB'
                 3 = 'DIVORCED/SEP'
                 4 = 'SPOUSE/PRNT DIED'
                 5 = 'INELIGIBLE/AGE/LT SCH'
                 6 = 'NOT OFFERED/EMPLOYER OR STOPPED OFFERING'
                 7 = 'PRT TIME/BEC TEMP'
                 8 = 'BENFS FROM EMPLR FORMER EMPLR RAN OUT'
                 9 = 'COULD NOT AFFORD TO PAY THE PREMIUMS'
                10 = 'INSURANCE COMPANY REFUSED COVERAGE'
                11 = 'LOST MEDICAID/MED ASST'
                87 = 'OTHER'
             77,99 = 'UNK/REF'
                 . = 'MISSING' ;

  VALUE SEAT2RF
                 1 = 'SOMETIMES, SELDOM, NEVER WEAR'
                 2 = 'ALWAYS, ALMOST ALWAYS WEAR' ;

  VALUE SEATBELT
                 1 = 'ALWAYS'
                 2 = 'NEARLY ALWAYS'
                 3 = 'SOMETIMES'
               4-5 = 'SELDOM OR NEVER'
                 8 = 'NEVER RIDE IN CAR'
             OTHER = 'UNK/REF' ;

  VALUE SEATRF
                 1 = 'DOES NOT WEAR'
                 2 = 'ALWAYS WEAR' ;

  VALUE SERVINGS
            5,401-411,555 = '< 1 PER MONTH OR NEVER'
        4,301-303,412-436 = '1-3 SERVINGS PER MONTH'
3,201-202,304-311,437-499 = '1-2 SERVINGS PER WEEK'
        2,203-206,312-329 = '3-6 SERVINGS PER WEEK'
1,101-120,207-299,330-399 = 'DAILY OR MORE'
      6,121-199,777,999,. = 'UNK/REF';

  VALUE SEX
                 1 = 'MALE'
                 2 = 'FEMALE' ;

  VALUE SEXAGEGP
             18-24 = '18-24'
             25-34 = '25-34'
             35-44 = '35-44'
             45-49 = '45-49' ;

  VALUE SEXAGE
                 1 = '18-49 & UNK/REF'
                 2 = '50 +'
                 3 = 'MISSING'
                 4 = 'INVALID AGE' ;

  VALUE SEXFMT
                 1 = 'MALE'
                 2 = 'FEMALE'
                 . = 'MISSING' ;

  VALUE SEXINTMN
                 1 = '1   PARTNER'
               2-3 = '2-3 PARTNERS'
               4-5 = '4-5 PARTNERS'
              6-76 = '6 + PARTNERS'
                88 = 'NONE'
           .,77,99 = 'UNK/REF' ;

  VALUE SEXZ
                 0 = 'TOTAL'
                 1 = 'MALE'
                 2 = 'FEMALE' ;

  VALUE SMKDETEC
               1-2 = '0 - 6 MONTHS'
                 3 = '6 - 12 MONTHS'
                 4 = '1+ YEARS'
                 5 = 'NEVER'
                 6 = 'NO SMOKE DETECTORS'
             .,7,9 = 'UNK/REF' ;

  VALUE SMKPLACE
                 1 = 'ALL AREAS'
                 2 = 'SOME AREAS'
                 3 = 'NOT ALLOWED'
               7,9 = 'UNK/REF' ;

  VALUE SMKPUBLC
                 1 = 'NOT ALLOWED IN ANY PUBLIC AREAS'
                 2 = 'ALLOWED IN SOME PUBLIC AREAS'
                 3 = 'ALLOWED IN ALL PUBLIC AREAS'
                 4 = 'NO OFFICIAL POLICY'
               7,9 = 'UNK/REF' ;

  VALUE SMKWORK
                 1 = 'NOT ALLOWED IN ANY WORK AREAS'
                 2 = 'ALLOWED IN SOME WORK AREAS'
                 3 = 'ALLOWED IN ALL WORK AREAS'
                 4 = 'NO OFFICIAL POLICY'
               7,9 = 'UNK/REF' ;

  VALUE SMOKEDAY
                 1 = 'EVERYDAY'
                 2 = 'SOME DAYS'
                 3 = 'NOT AT ALL'
                 9 = 'UNK/REF' ;

  VALUE SMOKENUM
              1-10 = '<= HALF PACK'
             11-20 = 'HALF - 1 PACK'
             21-40 = '1-2 PACKS'
             41-76 = '> 2 PACKS'
         .,0,77,99 = 'UNK/REF' ;

  VALUE SMOKNMLT
              1-10 = '<= HALF PACK'
             11-20 = 'HALF - 1 PACK'
             21-40 = '1-2 PACKS'
             41-76 = '> 2 PACKS'
         .,0,77,99 = 'UNK/REF' ;

  VALUE SMOKTEST
                 1 = '< 1 MO'
                 2 = '1 - 6 MOS'
                 3 = '6 - 12 MOS'
                 4 = '>= 1 YR'
                 5 = 'NEVER'
                 6 = 'NO SMOKE DETECTORS'
           .,0,7,9 = 'UNK/REF' ;

  VALUE SPFNUM
              1-14 = '1-14'
             15-29 = '15-29'
       30-76,78-98 = '30 OR MORE'
           .,77,99 = 'UNK/REF' ;

  VALUE STATUS
                 1 = 'CURRENT USER'
                 2 = 'FORMER USER'
                 3 = 'NEVER USED'
             .,0,9 = 'UNK/REF' ;

  VALUE SUNBLOCK
                 1 = 'ALWAYS'
                 2 = 'NEARLY ALWAYS'
                 3 = 'SOMETIMES'
                 4 = 'SELDOM'
                 5 = 'NEVER'
                 8 = "DON'T STAY OUT MORE THAN AN HOUR"
             .,7,9 = 'UNK/REF' ;

  VALUE SUNSENS
                 1 = 'SUNBURN'
                 2 = 'DARKEN WITHOUT SUNBURN'
                 3 = 'NOTHING HAPPEN'
               7,9 = 'UNK/REF' ;

  VALUE SUPPLE
           101-199 = 'USE PER DAY'
           201-299 = 'USE PER WEEK'
           301-399 = 'USE PER MONTH'
         .,777,999 = 'UNK/REF' ;

  VALUE TESTAIDS
                 1 = 'PRIVATE DR. OR HMO'
                 2 = 'BLOOD BANK, PLASMA CTR OR RED CROSS'
                 3 = 'HEALTH DEPT'
                 4 = 'AIDS CLINIC OR TEST SITE'
                 5 = 'HOSPITAL OR EMERG ROOM'
                 6 = 'FAMILY PLANNING CLINIC'
                 7 = 'PRENATAL CLINIC OR OBGYN OFFICE'
                 8 = 'TUBERCULOSIS CLINIC'
                 9 = 'STD CLINIC'
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
         0,77,.,99 = 'UNK/REF' ;

  VALUE TIMES
                 1 = 'ONCE'
                 2 = 'TWICE'
               3-4 = '3 TO 4 TIMES'
              5-76 = '5+ TIMES'
              0,88 = 'NONE'
           .,77,99 = 'UNK/REF' ;

  VALUE TIME1F
                 1 = '1-6 MONTHS AGO'
                 2 = '6-12 MONTHS AGO'
                 3 = '1-2 YEARS AGO'
                 4 = '2-5 YEARS AGO'
                 5 = '5+ YEARS AGO'
               7,9 = 'UNK/REF'
                 8 = 'NEVER';

  VALUE TIME2F
                 1 = '1-12 MONTHS AGO'
                 2 = '1-2 YEARS AGO'
                 3 = '2-5 YEARS AGO'
                 4 = '5+ YEARS AGO'
               7,9 = 'UNK/REF'
                 8 = 'NEVER';

  VALUE TIME3F
                 1 = '1-12 MONTHS AGO'
                 2 = '1-2 YEARS AGO'
                 3 = '2-3 YEARS AGO'
                 4 = '3-5 YEARS AGO'
                 5 = '5+ YEARS AGO'
               7,9 = 'UNK/REF';

  VALUE TOLDMORE
                 1 = 'MORE THAN ONCE'
                 2 = 'ONLY ONCE'
           .,0,7,9 = 'UNK/REF' ;

  VALUE TYPCNTRL
                 1 = 'TUBES TIED'
                 2 = 'VASECTOMY'
                 3 = 'PILL'
                 4 = 'CONDOMS'
                 5 = 'FOAM, JELLY, CREAM'
                 6 = 'DIAPHRAGM'
                 7 = 'NORPLANT'
                 8 = 'SHOTS'
                 9 = 'WITHDRAWAL'
                87 = 'OTHER'
             77,99 = 'UNK/REF' ;

  VALUE TYPCOVR
                 1 = 'YOUR EMPLOYER'
                 2 = "SOMEONE ELSE'S EMPLOYER"
                 3 = 'PLAN BOUGHT BY YOU OR SOMEONE ELSE'
                 4 = 'MEDICARE'
                 5 = 'MEDICAID OR MEDICAL ASSISTANCE'
                 6 = 'MILITARY, CHAMPUS OR VA'
                 7 = 'INDIAN HEALTH SERVICE'
                 8 = 'SOME OTHER SOURCE'
                88 = 'NONE'
             77,99 = 'UNK/REF'
                 . = 'MISSING' ;

  VALUE TYPCOVX
               1,2 = 'EMPLOYER-SPONSORED'
                 3 = 'PLAN BOUGHT BY YOU OR SOMEONE ELSE'
             4,6,8 = 'OTHER SOURCES'
                 5 = 'MEDICAID OR MEDICAL ASSISTANCE'
                 7 = 'INDIAN HEALTH SERVICE'
                88 = 'NONE'
         0,.,77,99 = 'UNK/REF' ;

  VALUE TYPEARTH
                 1 = 'OSTEO/ DEGENERATIVE ARTHRITIS'
                 2 = 'RHEUMATISM'
                 3 = 'RHEUMATOID ARTHRITIS'
                 4 = 'LYME DISEASE'
                 7 = 'OTHER'
                88 = 'NEVER SAW A DOCTOR'
           .,77,99 = 'UNK/REF' ;

  VALUE USE
                 1 = 'CHEWING TOBACCO'
                 2 = 'SNUFF'
                 3 = 'BOTH'
                 4 = 'NEITHER'
             .,7,9 = 'UNK/REF' ;

  VALUE UNK1DIG
               7,9 = 'UNK/REF'
               8   = 'NONE';

  VALUE UNK2DIG
             77,99 = 'UNK/REF'
                88 = 'NONE';

  VALUE UNK3DIG
           777,999 = 'UNK/REF'
               888 = 'NONE';

  VALUE VACARE   1 = 'YES, ALL HEALTH CARE'
                 2 = 'YES, SOME HEALTH CARE'
                 3 = 'NO VA HEALTH CARE'
               7,9 = 'UNK/REF' ;

  VALUE VISNLMTD
                 1 = 'ALL OF THE TIME'
                 2 = 'MOST OF THE TIME'
                 3 = 'SOME OF THE TIME'
                 4 = 'A LITTLE BIT OF THE TIME'
                 5 = 'NONE OF THE TIME'
               7,9 = 'UNK/REF' ;

  VALUE WAKSSISF
                 . = 'NON-WAKSBURG DESIGN'
                 1 = 'STAGE 1'
                 2 = 'STAGE 2';

  VALUE WEIGHT
            0-<80  = '< 80'
           80-120  = ' 80-120'
          121-161  = '121-161'
          162-202  = '162-202'
          203-243  = '203-243'
          244-<777 = '244 +'
         .,777,999 = 'UNK/REF' ;

  VALUE WHCARE
                 1 = 'LOST JOB/CHANGED EMPLOYERS'
                 2 = 'SPOUSE/PARENT LOST JOB/CHANGED JOBS'
                 3 = 'BECAME DIVORCED OR SEPARATED'
                 4 = 'SPOUSE/PARENT DIED'
                 5 = 'INELIGIBLE DUE TO AGE/LEFT SCHOOL'
                 6 = 'EMPLOYER DOES NOT OFFER/STOPPED OFFERING'
                 7 = 'BECAME TEMPORARY EMPLOYEE'
                 8 = 'BENEFITS RAN OUT'
                 9 = 'COULD NOT AFFORD PREMIUMS'
                10 = 'INSURANCE COMPANY REFUSED COVERAGE'
                11 = 'LOST MEDICAID'
                87 = 'OTHER'
           .,77,99 = 'UNK/REF' ;

  VALUE WHRSVCS
                 1 = 'FAMILY PLNG CLINIC'
                 2 = 'HEALTH DEPT CLINIC'
                 3 = 'COMMUNITY HEALTH CTR'
                 4 = 'PRIVATE GYN'
                 5 = 'GENERAL OR FAMILY DOCTOR'
                 8 = 'OTHER PLACE'
               7,9 = 'UNK/REF' ;

  VALUE WHYDONE
                 1 = 'ROUTINE CHECKUP'
                 2 = 'BREAST PROBLEM'
                 3 = 'HAD BREAST CANCER'
           0,.,7,9 = 'UNK/REF' ;

  VALUE WHYPAP
                 1 = 'ROUTINE EXAM'
                 2 = 'CURRENT OR PREV PROBLEM'
                 3 = 'OTHER'
           0,.,7,9 = 'UNK/REF' ;

  VALUE WHYTEST
                 1 = 'HOSPITALIZATION'
                 2 = 'HEALTH INSURANCE'
                 3 = 'LIFE INSURANCE'
                 4 = 'EMPLOYMENT'
                 5 = 'MARRIAGE LICENSE'
                 6 = 'MILITARY INDUCTION/SERVICE'
                 7 = 'IMMIGRATION'
                 8 = 'TO SEE IF INFECTED'
                 9 = 'REFERRED BY DR.'
                10 = 'PREGNANCY TEST'
                11 = 'REFERRED BY SEX PARTNER'
                12 = 'BLOOD DONATION PROCESS'
                13 = 'ROUTINE CHECKUP'
                14 = 'OCCUPATIONAL EXPOSURE'
                15 = 'ILLNESS'
                16 = 'AT RISK FOR HIV'
                87 = 'OTHER'
         0,77,.,99 = 'UNK/REF' ;

  VALUE WINDDOWN
                 . = 'REGULAR MODE'
                 9 = 'WINDDOWN' ;

  VALUE WTDIFF
            LOW-<0 = 'UNDER DESIRED WEIGHT'
                 0 = 'HAVE DESIRED WEIGHT'
              1-10 = '1-10 POUNDS OVER'
             11-20 = '11-20 POUNDS OVER'
            21-998 = 'MORE THAN 20 POUNDS OVER'
               999 = 'UNK/REF' ;

  VALUE YESNO
                 1 = 'YES'
                 2 = 'NO'
                 3 = 'WOULD GIVE OTHER ADVICE'
                 8 = 'NOT APPLICABLE'
             .,7,9 = 'UNK/REF'  ;

  VALUE YESNONE
                 1 = 'YES'
                 2 = 'NO OR NEVER CHECKED'
                 9 = 'UNK/REF' ;

  VALUE YESNONVR
                 1 = 'YES'
                 2 = 'NO'
                 3 = 'NEVER CHECKED'
                 9 = 'UNK/REF' ;

  VALUE YESNONVT
                 1 = 'YES'
                 2 = 'NO'
                 8 = 'NEVER TOOK'
             .,7,9 = 'UNK/REF' ;

  VALUE YNGTEEN
               1-4 = '<= 4'
              5-15 = '5 - 15'
          16-17,88 = 'NONE'
         .,0,77,99 = 'UNK/REF' ;

  VALUE _AGE65YR
                 1 = '18-64'
                 2 = '65 +'
                 3 = 'UNK/REF' ;

  VALUE _AGE75GR
                 1 = '18-24'
               2-3 = '25-34'
               4-5 = '35-44'
               6-7 = '45-54'
               8-9 = '55-64'
             10-11 = '65-74'
             12-13 = '75 + '
                14 = 'UNK/REF' ;

  VALUE _AGE50GR
               6-7 = '50-54'
               8-9 = '55-64'
             10-11 = '65-74'
             12-13 = '75 + '
                14 = 'UNK/REF' ;

  VALUE _AGEG
                 1 = '18-34'
                 2 = '35-54'
                 3 = '55+' ;

  VALUE _AGEG5YR
                 1 = '18-24'
               2-3 = '25-34'
               4-5 = '35-44'
               6-7 = '45-54'
               8-9 = '55-64'
             10-13 = '65 +'
                14 = 'UNK/REF' ;

  VALUE _AGEG5Y
                 1 = '18-24'
                 2 = '25-29'
                 3 = '30-34'
                 4 = '35-39'
                 5 = '40-44'
                 6 = '45-49'
                 7 = '50-54'
                 8 = '55-59'
                 9 = '60-64'
                10 = '65-69'
                11 = '70-74'
                12 = '75-79'
                13 = '80+'
                14 = 'REF';

  VALUE _AGEGFMT
                 0 = '18+'
                 1 = '18-24'
                 2 = '25-34'
                 3 = '35-44'
                 4 = '45-54'
                 5 = '55-64'
                 6 = '65+'
                 7 = '18-34'
                 8 = '35-54'
                 9 = '55+'
                10 = '18-44'
                11 = '45+' ;
  VALUE _CHOLCHK
                 1 = 'WITHIN 5 YEARS'
                 2 = '5 OR MORE YEARS'
                 3 = 'NEVER'
             .,7,9 = 'UNK/REF' ;

  VALUE _DRNKMO
               1-9 = '< 10 A MONTH'
             10-20 = '10-20 A MONTH'
             21-40 = '21-40 A MONTH'
             41-59 = '41-59 A MONTH'
           60-2000 = '60+ A MONTH'
     7777,0,.,9999 = 'UNK/REF' ;

  VALUE _QSTVER
                 1 = 'VERSION 1'
                 2 = 'VERSION 2';

 VALUE _RACEG
                 0 = 'ANY RACE'
                 1 = 'WHITE, NON-HISPANIC'
                 2 = 'NON-WHITE OR HISPANIC';

 VALUE _RACEGR
                 1 = 'WHITE, NON-HISPANIC'
                 2 = 'BLACK, NON-HISPANIC'
                 3 = 'HISPANIC'
                 4 = 'OTHER'
               .,9 = 'UNK/REF' ;

  VALUE _RFDRDRI
                 1 = 'DID NOT DRINK/DRIVE LAST 30 DAYS'
                 2 = 'DRANK/DROVE LAST 30 DAYS'
               .,9 = 'N/A,REF' ;

  VALUE _RFHYPE
                 1 = 'NOT BEEN TOLD BP IS HIGH'
                 2 = 'BEEN TOLD BP IS HIGH'
                 3 = 'NEVER HAD BP TAKEN'
                 9 = 'UNK/REF' ;

VALUE _RFLIFES
                 1 = 'PHYS ACT 20+ MIN, 3 TIMES/WK'
                 2 = 'PHYS ACT <20 MIN, 3 TIMES/WK'
               .,9 = 'N/A,REF' ;

  VALUE _RFOBESE
                 1 = '< 120% OF IDEAL WEIGHT'
                 2 = '=> 120% OF IDEAL WEIGHT'
               .,9 = 'N/A,REF' ;

  VALUE _RFREGUL
                 1 = 'PHYS ACT 30+ MIN, 5 TIMES/WK'
                 2 = 'PHYS ACT <30 MIN, 5 TIMES/WK'
               .,9 = 'N/A,REF' ;

 * VALUE _RFSMOK
                 1 = 'FORMER SMOKER'
                 2 = 'CURRENT SMOKER'
               .,9 = 'N/A,REF' ;

  VALUE _RFSMOK
                 1 = 'NO'
                 2 = 'YES'
               .,9 = 'N/A,REF' ;

  VALUE _RFWHBMI
                 1 = '<27.3 FEMALES OR <27.8 MALES'
                 2 = '=>27.3 FEMALES OR =>27.8 MALES'
               .,9 = 'N/A,REF' ;

  VALUE _RFTOBAC
                 1 = 'FORMER USER'
                 2 = 'CURRENT USER'
               .,9 = 'N/A,REF' ;

  VALUE _SMKLESS
                 1 = 'CURRENT USER'
                 2 = 'FORMER USER'
                 3 = 'NEVER USED'
               .,9 = 'UNK/REF' ;

  VALUE _SMOKER
                 1 = 'CURRENT SMOKER - (EVERYDAY)'
                 2 = 'CURRENT SMOKER - (SOME DAYS)'
                 3 = 'FORMER SMOKER'
                 4 = 'NEVER SMOKED'
             0,.,9 = 'UNK/REF' ;

VALUE _STATE
                 1 = 'Alabama'
                 2 = 'Alaska'
                 4 = 'Arizona'
                 5 = 'Arkansas'
                 6 = 'California'
                 8 = 'Colorado'
                 9 = 'Connecticut'
                10 = 'Delaware'
                11 = 'District of Columbia'
                12 = 'Florida'
                13 = 'Georgia'
                15 = 'Hawaii'
                16 = 'Idaho'
                17 = 'Illinois'
                18 = 'Indiana'
                19 = 'Iowa'
                20 = 'Kansas'
                21 = 'Kentucky'
                22 = 'Louisiana'
                23 = 'Maine'
                24 = 'Maryland'
                25 = 'Massachusetts'
                26 = 'Michigan'
                27 = 'Minnesota'
                28 = 'Mississippi'
                29 = 'Missouri'
                30 = 'Montana'
                31 = 'Nebraska'
                32 = 'Nevada'
                33 = 'New Hampshire'
                34 = 'New Jersey'
                35 = 'New Mexico'
                36 = 'New York'
                37 = 'North Carolina'
                38 = 'North Dakota'
                39 = 'Ohio'
                40 = 'Oklahoma'
                41 = 'Oregon'
                42 = 'Pennsylvania'
                44 = 'Rhode Island'
                45 = 'South Carolina'
                46 = 'South Dakota'
                47 = 'Tennessee'
                48 = 'Texas'
                49 = 'Utah'
                50 = 'Vermont'
                51 = 'Virginia'
                53 = 'Washington'
                54 = 'West Virginia'
                55 = 'Wisconsin'
                56 = 'Wyoming'
                66 = 'Guam'
                72 = 'Puerto Rico'
                78 = 'Virgin Islands';

  VALUE _TOTINDX
                 1 = 'PHYSICALLY INACTIVE*'
                 2 = 'IRREGULAR**'
                 3 = 'REGULAR***'
                 4 = 'REGULAR & VIGOROUS****'
               0,9 = 'UNK/REF' ;
RUN ;
