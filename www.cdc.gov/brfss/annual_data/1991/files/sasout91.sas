*****************************************************************************************
* DESCRIPTION:   THIS PROGRAM CONVERTS A STATES ASCII DATAFILE OF COMPLETES LOCATED AT  *
*                <DATAIN> FILEREF, INTO A SAS DATABASE STORED AT <DATAOUT> LIBREF       *
* UPDATED - 07/29/2004                                                                  *
*****************************************************************************************;
********************************
* Clear Output and Log Windows *
********************************;
DM OUTPUT 'clear' continue;
DM LOG    'clear' continue;
**********************************
* DEFINE SAS ENVIRONMENT OPTIONS *
**********************************;
OPTIONS PAGENO=1 NOFMTERR;
***************************************
* CLEAR EXISTING TITLES AND FOOTNOTES *
***************************************;
TITLE ;
FOOTNOTE ;
RUN ;
******************************************************************
* INSTRUCTIONS:                                                  *
* SPECIFY PATH OF WHERE ASCII DATAFILE IS STORED                 *
* SPECIFY PATH OF WHERE SAS DATASET IS TO BE STORED              *
******************************************************************;

*FILENAME DATAIN '<PATH FOR BRFSS ASCII DATA FILE>' LRECL = 950 ;

*****************************************************************************
* EXAMPLE:                                                                  *
*       FILENAME DATAIN 'C:\BRFSS\2003\CDBRFS03.ASC' LRECL = 950            *
* NOTE: MAKE SURE THE ASTERISK IS REMOVED BEFORE THE WORD FILENAME AND      *
*       MAKE SURE THAT THE GREATER THAN AND LESS THAN SIGNS < > ARE REMOVED *
*       FROM THE FILENAME STATEMENT                                         *
*****************************************************************************;

* LIBNAME DATAOUT V7 '<PATH FOR CREATED OUTPUT SAS DATA SET>' SHORTFILEEXT;

*****************************************************************************
* EXAMPLE:                                                                  *
*          LIBNAME DATAOUT 'C:\'                                            *
*          A SAS DATABASE WILL BE STORED AT C:\SASDATA.SD7                  *
* NOTE: MAKE SURE THE ASTERISK IS REMOVED BEFORE THE WORD LIBNAME AND       *
*       MAKE SURE THAT THE GREATER THAN AND LESS THAN SIGNS < > ARE REMOVED *
*       FROM THE LIBNAME STATEMENT                                          *
*       TO MAKE A VERSION 6 DATA SET, REMOVE THE SHORTFILEEXT FROM THE      *
*       LIBNAME LINE AND CHANGE THE V7 TO A V6                              *
*****************************************************************************;

DATA DATAOUT.CDBRFS91;
   LENGTH DEFAULT=4;
   LENGTH _WTFORHT _FRTSERV 6 _DRNKMO 5 _GRAMFAT 7
          _POSTSTR _FINALWT 8;
   INFILE DATAIN;

* CREATE RISK FACTOR SAS FILE FOR 1991 SURVEILLANCE DATA;

* COLUMN LOCATION OF VARIABLES;
INPUT    _STATE           1-2			/* INDENTIFICATION INFORMATION */
         _STRATA          3
         _STSTR           1-3
         _PSU             4-8
         _RECORD          9
          IDATE       $  10-15
          IMONTH      $  10-11
          IDAY        $  12-13
          IYEAR       $  14-15
          INTVID      $  16-17
          PHONENUM    $  18-25
          AREACODE    $  18-20
          PREFIX      $  21-23
          SUFFIX      $  24-25
          DISPCODE       26-27
          WINDDOWN    $  28

          NUMADULT       29-30
          NUMMEN         31
          NUMWOMEN       32

          SEATBELT       33				/* SECTION A: SEATBELTS */

          BPTAKE         34				/* SECTION B: HYPERTENSION */
          BPHIGH         35
          HIGHGT1        36
          BPTREAT        37

          EXERANY        38				/* SECTION C: EXERCISE */
          EXERACT1       39-40
          EXERDIS1       41-43
          EXEROFT1       44-46
          EXERHMM1       47-49
          EXEROTH2       50
          EXERACT2       51-52
          EXERDIS2       53-55
          EXEROFT2       56-58
          EXERHMM2       59-61

          LOSEWT         62				/* SECTION D: WEIGHT CONTROL */
          FEWCAL         63
          PHYACT         64

          SMOKE100       65				/* SECTION E: TOBACCO USE */
          BEGSMOKE       66-67
          SMOKENOW       68
          SMOKENUM       69-70
          STOPSMOK       71
          LASTSMOK       72

          DRINKANY      73				/* SECTION F: ALCOHOL CONSUMPTION */
          ALCOHOL       74-76
          NALCOCC       77-78
          DRINKGE5      79-80
          DRINKDRI      81-82

          CHECKUP        83				/* SECTION G: PREVENTIVE HEALTH PRACTICES */
          BLOODCHO       84
          CHOLCHK        85
          TOLDLEV        86
          LEVEL          87-89
          TOLDHI         90
          DIABETES       91			

          HLTHPLAN       92				/* SECTION H: HEALTH INSURANCE */
          HOSPBILL       93
          OFFVISIT       94
          PREVCARE       95
          MEDCOST        96

          AGE            97-98			/* SECTION I: DEMOGRAPHICS */
          ORACE          99
          HISPANIC      100
          EDUCA         101
          EMPLOY        102
          MARITAL       103
          INCOME        104
          WEIGHT        105-107
          HEIGHT      $ 108-110
          HTF           108
          HTI           109-110
          SEX           111

          HADMAM        112				/* SECTION J: WOMEN'S HEALTH */
          HOWLONG       113
          WHYDONE       114
          MAMMIDEA      115
          PROFEXAM      116
          LENGEXAM      117
          REASEXAM      118
          PAPTEST       119
          HADPAP        120
          LASTPAP       121
          HADHYST       122
          PREGNANT      123
          WHENDUE       124-125

          AIDSHIV       126				/* SECTION K: AIDS */
          MEDSAIDS      127
          HLTHYAID      128
          BLOODAID      129
          PROFAIDS      130
          PREGAIDS      131
          YOUNGCLD      132
          SCHLAIDS      133
          EDUCAIDS      134-135
          COOKAIDS      136
          WORKAIDS      137
          TEST1AID      138-139
          TEST2AID      140-141
          CONDOM        142

          NUMPHONS      143

          CTYCODE       144-146			/* MODULE 1: COUNTY RESIDENCE */

          USEEVER       147				/* MODULE 2: SMOKELESS TOBACCO */
          USENOW        148

          DIGRECTL      149				/* MODULE 3: COLORECTAL CANCER SCREENING */
          HADRECTL      150
          LASTEXAM      151
          BLDSTOOL      152
          HADBSTES      153
          LASTBST       154
          PROCEXAM      155
          HADPROCT      156
          LASTPROC      157

          DETECTOR      158				/* MODULE 4: INJURY CONTROL AND CHILD SAFETY */
          TESTH2O       159
          YOUNGAGE      160-161
          POISON        162
          IPECAC        163
          BUCKLEUP      164

          RADONGAS      165				/* MODULE 5: RADON TESTING */
          TESTAIR       166
          HOWTEST       167
          PLANTEST      168
          OPINION       169
          HEADACHE      170
          ASTHMA        171
          ARTHRIT       172
          LUNGCAN       173
          CANCERS       174
          RESIDE        175

          HOTDOGS     176-178			/* MODULE 6: DIETARY FAT */
          BACON       179-181
          PORK        182-184
          HAMBURG     185-187
          BEEF        188-190
          FRIEDCHI    191-193
          FRENCHFR    194-196
          CHEESE      197-199
          DOUGHNUT    200-202
          SNACKS      203-205
          BUTTER      206-208
          EGGS        209-211
          MILK        212-214

          FRUITJUI    215-217			/* MODULE 7: FRUITS AND VEGETABLES */
          FRUIT       218-220
          GREENSAL    221-223
          POTATOES    224-226
          CARROTS     227-229
          VEGETABL    230-232

          STATEQUE  $ 260-400			/* STATE SPECIFIC INFORMATION */

          RACE        401-402			/* CALCULATED VARIABLES AND RISK FACTORS */
         _SMOKER      403
         _DRNKMO      404-407
         _WTFORHT     408-412
         _BMI         413-415
         _TOTINDX     416
         _SMKLESS     417
         _GRAMFAT     418-423 2
         _FATINDX     424
         _FRTSERV     425-429 2
         _FRTINDX     430

         _RFSEATB     431
         _RFSEAT2     432
         _RFSEAT3     433
         _RFHYPE2     434
         _RFSMOKE     435
         _RFDRACU     436
         _RFDRDRI     437
         _RFDRCHR     438
         _RFLIFES     439
         _RFOBESE     440
         _RFWHBMI     441
         _RFTOBAC     442

         _RAW         443-446 2
         _CSA         447-450 2
         _WT1         451-454 2
         _POSTSTR     455-464 2
         _FINALWT     465-474 2

         _AGEG_       475;

 OPTION LABEL;

* IDENTIFICATION INFORMATION;
LABEL _STATE = STATE FIPS CODE
 /*        STATE NAMES AND FIPS CODES
      (FIPS=FEDERAL INFORMATION PROCESSING SYSTEM)

                    ALABAMA          01
                    ALASKA           02
                    ARIZONA          04
                    ARKANSAS         05
                    CALIFORNIA       06
                    COLORADO         08
                    CONNECTICUT      09
                    DELAWARE         10
                    DIST OF COLUMB   11
                    FLORIDA          12
                    GEORGIA          13
                    GUAM             66
                    HAWAII           15
                    IDAHO            16
                    ILLINOIS         17
                    INDIANA          18
                    IOWA             19
                    KANSAS           20
                    KENTUCKY         21
                    LOUISIANA        22
                    MAINE            23
                    MARYLAND         24
                    MASSACHUSETTS    25
                    MICHIGAN         26
                    MINNESOTA        27
                    MISSISSIPPI      28
                    MISSOURI         29
                    MONTANA          30
                    NEBRASKA         31
                    NEVADA           32
                    NEW HAMPSHIRE    33
                    NEW JERSEY       34
                    NEW MEXICO       35
                    NEW YORK         36
                    NORTH CAROLINA   37
                    NORTH DAKOTA     38
                    OHIO             39
                    OKLAHOMA         40
                    OREGON           41
                    PENNSYLVANIA     42
                    RHODE ISLAND     44
                    SOUTH CAROLINA   45
                    SOUTH DAKOTA     46
                    TENNESSEE        47
                    TEXAS            48
                    UTAH             49
                    VERMONT          50
                    VIRGIN ISLANDS   78
                    VIRGINIA         51
                    WASHINGTON       53
                    WEST VIRGINIA    54
                    WISCONSIN        55
                    WYOMING          56 */;

LABEL _STRATA  = STRATUM CODE
      _STSTR   = _STATE AND _STRATA COMBINED
      _PSU     = PRIMARY SAMPLING UNIT
      _RECORD  = RECORD NUMBER

      IDATE    = DATE OF INTERVIEW
      IMONTH   = MONTH OF INTERVIEW
      IDAY     = DAY OF INTERVIEW
      IYEAR    = YEAR OF INTERVIEW

      INTVID   = INTERVIEWER ID

      PHONENUM = PHONE NUMBER
      AREACODE = AREA CODE
      PREFIX   = PREFIX OF PHONE NUMBER
      SUFFIX   = SUFFIX OF PHONE NUMBER;

LABEL DISPCODE = DISPOSITION OF INTERVIEW
 /*         01 = 'COMPLETED INTERVIEW'
            02 = 'REFUSED INTERVIEW'
            03 = 'NON WORKING NUMBER'
            04 = 'NO ANSWER (MULTIPLE TRIES)'
            05 = 'BUSINESS PHONE'
            06 = 'NO ELIGIBLE RESPONDENT AT THIS NUMBER'
            07 = 'NO ELIG RESPDT DURING INTERVIEWING PERIOD'
            08 = 'LANGUAGE BARRIER'
            09 = 'INTERVIEW TERMINATED WITHIN QUESTIONNAIRE'
            10 = 'LINE BUSY (MULTIPLE TRIES)'
            11 = 'RESPONDENT HAD PHYSICAL/MENTAL IMPAIRMENT' */;

LABEL WINDDOWN = INTERVIEW ACCORDING TO WAKSBERG DESIGN
 /*          . = 'REGULAR MODE'
             9 = 'WINDDOWN' */;

LABEL NUMADULT = NUMBER OF ADULTS IN HOUSEHOLD
      NUMMEN   = NUMBER OF ADULT MALES IN HOUSEHOLD
      NUMWOMEN = NUMBER OF ADULT FEMALES IN HOUSEHOLD;

* SEATBELTS;
LABEL SEATBELT = SEATBELT USE
 /*          1 = 'ALWAYS'
             2 = 'NEARLY ALWAYS'
             3 = 'SOMETIMES'
             4 = 'SELDOM'
             5 = 'NEVER'
             7 = 'DO NOT KNOW'
             8 = 'NEVER DRIVE OR RIDE IN A CAR'
             9 = 'REFUSED' */;

* HYPERTENSION;
LABEL BPTAKE = HOW LONG SINCE BLOOD PRESSURE TAKEN
 /*        1 = 'WITHIN THE PAST 6 MONTHS'
           2 = 'WITHIN THE PAST YEAR'
           3 = 'WITHIN THE PAST TWO YEARS'
           4 = 'WITHIN THE PAST FIVE YEARS'
           5 = 'MORE THAN 5 YEARS AGO'
           7 = 'DO NOT KNOW'
           8 = 'NEVER'
           9 = 'REFUSED' */;

LABEL BPHIGH = EVER TOLD BLOOD PRESSURE HIGH
 /*        1 = 'NO'
           2 = 'YES, BY A DOCTOR'
           3 = 'YES, BY A NURSE'
           4 = 'YES, BY OTHER HEALTH PROFESSIONAL'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL HIGHGT1 = TOLD MORE THAN ONCE BP HIGH
 /*         1 = 'MORE THAN ONCE'
            2 = 'ONLY ONCE'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL BPTREAT = MEDICINE PRESCRIBED FOR HIGH BP
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED'*/;

* EXERCISE;
LABEL EXERANY = PARTICIPATE IN ANY PHYSICAL ACTIVITY
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL EXERACT1 = TYPE OF PHYSICAL ACTIVITY
 /*        01 = 'AEROBICS CLASS'
           02 = 'BACK PACKING'
           03 = 'BADMINTON'
           04 = 'BASKETBALL'
           05 = 'BICYCLING FOR PLEASURE'
           06 = 'BOATING (CANOEING,ROWING,SAILING,CAMPING/FOR PLEASURE)'
           07 = 'BOWLING'
           08 = 'BOXING'
           09 = 'CALISTHENICS'
           10 = 'CANOEING/ROWING-IN COMPETITION'
           11 = 'CARPENTRY'
           12 = 'DANCING-AEROBICS/BALLET'
           13 = 'FISHING'
           14 = 'GARDENING (SPADING, WEEDING, DIGGING, FILLING)'
           15 = 'GOLF'
           16 = 'HANDBALL'
           17 = 'HEALTH CLUB EXERISE'
           18 = 'HIKING-CROSS COUNTRY'
           19 = 'HOME EXERCISE'
           20 = 'HORSEBACK RIDING'
           21 = 'HUNTING LARGE GAME-DEER, ELK'
           22 = 'JOGGING'
           23 = 'JUDO/KARATE'
           24 = 'MOUNTAIN CLIMBING'
           25 = 'MOWING LAWN'
           26 = 'PADDLEBALL'
           27 = 'PAINTING/PAPERING HOUSE'
           28 = 'RACKETBALL'
           29 = 'RAKING LAWN'
           30 = 'RUNNING'
           31 = 'ROPE SKIPPING'
           32 = 'SCUBA DIVING'
           33 = 'SKATING - ICE OR ROLLER'
           34 = 'SLEDDING, TOBOGGANING'
           35 = 'SNORKELING'
           36 = 'SNOW SHOEING'
           37 = 'SNOW SHOVELING BY HAND'
           38 = 'SNOW BLOWING'
           39 = 'SNOW SKIING'
           40 = 'SOCCER'
           41 = 'SOFTBALL'
           42 = 'SQUASH'
           43 = 'STAIR CLIMBING'
           44 = 'STREAM FISHING IN WADERS'
           45 = 'SURFING'
           46 = 'SWIMMING LAPS'
           47 = 'TABLE TENNIS'
           48 = 'TENNIS'
           49 = 'TOUCH FOOTBALL'
           50 = 'VOLLEY BALL'
           51 = 'WALKING'
           52 = 'WATER SKIING'
           53 = 'WEIGHT LIFTING'
           54 = 'OTHER'
           55 = 'BICYCLING MACHINE EXERCISE'
           56 = 'ROWING MACHINE EXERCISE'
           99 = 'REFUSED' */;

LABEL EXERDIS1 = DISTANCE IN MILES AND TENTHS
 /* NOTE: ONLY ANSWERED IF ACTIVITY IS RUNNING, WALKING, SWIMMING,
          OR JOGGING

           NNN = 'MILES AND TENTHS OF MILES'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED'

     NOTE FOR EXERDIS1 THE FOLLOWING ARE CODE EXAMPLES
           001='1 TENTH OF A MILE'
           005='5 TENTHS OF A MILE'
           010='1 MILE'
           050='5 MILES'
           100='10 MILES'
           150='15 MILES'
           ETC. */;

LABEL EXEROFT1 = HOW MANY TIMES ACTIVITY DONE
 /*        1NN = '# TIMES/WEEK (WHERE 1NN=101-198)'
           2NN = '# TIMES/MONTH (WHERE 2NN=201-298)'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL EXERHMM1 = HOW LONG ACTIVITY DONE
 /* NNN = '# MINUTES/HOURS(EX. NNN=045 IS 45 MINS., NNN=100 IS 1 HR)'
    777 = 'DO NOT KNOW'
    999 = 'REFUSED' */;

LABEL EXEROTH2 = PARTICIPATE IN ANOTHER ACTIVITY
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL EXERACT2 = TYPE OF OTHER PHYSICAL ACTIVITY
 /*         NN = '01-56 (SEE CODES FOR EXERACT1)'
            99 = 'REFUSED' */;

LABEL EXERDIS2 = DISTANCE IN MILES AND TENTHS
 /* NOTE: ONLY ANSWERED IF ACTIVITY IS RUNNING, WALKING, SWIMMING,
          OR JOGGING

           NNN = 'MILES AND TENTHS OF MILES'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED'

     NOTE FOR EXERDIS2 THE FOLLOWING ARE CODE EXAMPLES
           001='1 TENTH OF A MILE'
           005='5 TENTHS OF A MILE'
           010='1 MILE'
           050='5 MILES'
           100='10 MILES'
           150='15 MILES'
           ETC. */;

LABEL EXEROFT2 = HOW MANY TIMES SECOND ACTIVITY DONE
 /*        1NN = '# TIMES/WEEK (WHERE 1NN=101-198)'
           2NN = '# TIMES/MONTH (WHERE 2NN=201-298)'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL EXERHMM2 = HOW LONG SECOND ACTIVITY DONE
 /* NNN = '# MINUTES/HOURS(EX. NNN=045 IS 45 MINS., NNN=100 IS 1 HR)'
    777 = 'DO NOT KNOW'
    999 = 'REFUSED' */;

* WEIGHT CONTROL;
LABEL   LOSEWT = TRYING TO LOSE WEIGHT
 /*          1 = 'YES'
             2 = 'NO'
             9 = 'REFUSED' */;

LABEL FEWCAL = EATING FEWER CALORIES TO LOSE WEIGHT
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL   PHYACT = PHYSICAL ACTIVITY TO LOSE WEIGHT
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

* TOBACCO USE;
LABEL SMOKE100 = SMOKED AT LEAST 100 CIGS
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL BEGSMOKE = AGE STARTED SMOKING REGULARLY
 /*         XX = 'AGE IN YEARS'
            77 = 'DO NOT KNOW'
            99 = 'REFUSED' */;

LABEL SMOKENOW = CURRENTLY SMOKE
 /*          1 = 'YES'
             2 = 'NO'
             9 = 'REFUSED' */;

LABEL SMOKENUM = NUMBER OF CIGS SMOKED A DAY
 /*         NN = '# OF CIGS SMOKE (EX. 01,02,03,04,...,87)'
            88 = 'NOT REGULAR SMOKER'
            99 = 'REFUSED' */;

LABEL STOPSMOK = QUIT SMOKING A DAY OR LONGER IN PAST YR
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LASTSMOK = HOW LONG SINCE LAST SMOKED CIGS
 /*          1 = 'LESS THAN 1 MONTH'
             2 = '1 MO TO LESS THAN 3 MOS'
             3 = '3 MOS TO LESS THAN 6 MOS'
             4 = '6 MOS TO LESS THAN 1 YR'
             5 = '1 YEAR TO LESS THAN 5 YRS'
             6 = '5 OR MORE YEARS'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

* ALCOHOL CONSUMPTION;
LABEL DRINKANY = ALCOHOLIC BEVERAGES IN PAST MONTH
 /*          1 = 'YES'
             2 = 'NO'
             9 = 'REFUSED' */;

LABEL ALCOHOL = HOW OFTEN DRINK LIQUOR
 /*       1NN = 'DAYS PER WEEK (WHERE 1NN=101-107)'
          2NN = 'DAYS PER MONTH (WHERE 2NN=201-231)'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

LABEL NALCOCC = AVERAGE NUMBER OF DRINKS PER OCCASION
 /*        NN = '# OF DRINKS (EX., 01,02,...,76)'
           77 = 'DO NOT KNOW'
           99 = 'REFUSED' */;

LABEL DRINKGE5 = FIVE OR MORE DRINKS ON AN OCCASION
 /*         NN = 'NUMBER OF TIMES (EX., 01,...,76)'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

LABEL DRINKDRI = DRINK AND DRIVE
 /*         NN = 'NUMBER OF TIMES (EX., 01,...,76)'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

* PREVENTIVE HEALTH PRACTICES;
LABEL CHECKUP = HOW LONG SINCE LAST ROUTINE CHECKUP
 /*         1 = 'WITHIN PAST YEAR'
            2 = 'WITHIN PAST TWO YEARS'
            3 = 'WITHIN PAST FIVE YEARS'
            4 = 'MORE THAN FIVE YEARS'
            7 = 'DO NOT KNOW'
            8 = 'NEVER'
            9 = 'REFUSED' */;

LABEL BLOODCHO = EVER HAD BLOOD CHOLESTEROL CHECKED
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL CHOLCHK = HOW LONG SINCE CHOLESTEROL CHECKED
 /*         1 = 'WITHIN PAST YEAR'
            2 = 'WITHIN PAST TWO YEARS'
            3 = 'WITHIN PAST FIVE YEARS'
            4 = 'MORE THAN FIVE YEARS'
            7 = 'DO NOT KNOW'
            8 = 'NEVER'
            9 = 'REFUSED' */;

LABEL TOLDLEV = EVER TOLD BLOOD CHOLESTEROL LEVEL
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL LEVEL = BLOOD CHOLESTEROL LEVEL
 /*     NNN = 'LEVEL IN NUMBERS'
        777 = 'DO NOT KNOW'
        999 = 'REFUSED' */;

LABEL TOLDHI = EVER TOLD BLOOD CHOLESTEROL HIGH
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL DIABETES = BEEN TOLD BY DOCTOR YOU HAVE DIABETES
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

* HEALTH INSURANCE;
LABEL HLTHPLAN = HAVE ANY KIND OF HEALTH PLAN
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL HOSPBILL = HOSPITAL BILLS COVERED BY HEALTH PLAN
 /*          1 = 'ALL'
             2 = 'MOST'
             3 = 'SOME'
             4 = 'NONE'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL OFFVISIT = DOCTOR VISITS COVERED BY HEALTH PLAN
 /*          1 = 'ALL'
             2 = 'MOST'
             3 = 'SOME'
             4 = 'NONE'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL PREVCARE = CHECKUPS COVERED BY HEALTH PLAN
 /*          1 = 'ALL'
             2 = 'MOST'
             3 = 'SOME'
             4 = 'NONE'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL MEDCOST = TIME WHEN COULD NOT AFFORD TO SEE DOCTOR
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

* DEMOGRAPHICS;
LABEL AGE = REPORTED AGE IN YEARS
 /*        18,...,99 = 'VALID AGE'
                  07 = 'DO NOT KNOW'
                  09 = 'REFUSED' */;

LABEL _AGEG = REPORTED AGE IN YEARS GROUPED
 /*                1 = '18-34'
                   2 = '35-54'
                   3 = '55+' */;

LABEL _AGEG5YR = REPORTED AGE IN 5 YEAR AGE GROUPS
 /*                1 = '18-24'
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
                  14 = 'REFUSED' */;

LABEL _AGE65YR = REPORTED AGE IN 65+ YRS GROUPED
 /*                1 = '18-64'
                   2 = '65+'
                   3 = 'REFUSED' */;

LABEL ORACE = ORIGINAL REPORTED RACE
 /*       1 = 'WHITE'
          2 = 'BLACK'
          3 = 'ASIAN OR PACIFIC ISLANDER'
          4 = 'ALEUTIAN, ESKIMO OR AMERICAN INDIAN'
          5 = 'OTHER'
          7 = 'DO NOT KNOW'
          9 = 'REFUSED' */;

LABEL HISPANIC = HISPANIC ORIGIN
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL RACE = NEW RACE CODE
 /*      1 = 'WHITE, NON-HISPANIC'
         2 = 'BLACK, NON-HISPANIC'
         3 = 'WHITE HISPANICS'
         4 = 'BLACK HISPANICS'
         5 = 'OTHER HISPANICS'
         6 = 'ASIAN/PACIFIC ISLAND'
         7 = 'ALU./ESK./AMERICAN INDIAN'
         8 = 'OTHER'
        99 = 'REFUSED' */;

LABEL _RACEG = RACE GROUPED
 /*        1 = 'WHITE, NON-HISPANIC'
           2 = 'NON-WHITE'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL _RACEGR = RACE GROUPED
 /*         1 = 'WHITE, NON-HISPANIC'
            2 = 'BLACK, NON-HISPANIC'
            3 = 'HISPANIC'
            4 = 'OTHER'
            9 = 'REFUSED' */;

LABEL SEX = SEX
 /*     1 = 'MALE'
        2 = 'FEMALE' */;

LABEL EDUCA = EDUCATION LEVEL
 /*       1 = 'LESS THAN 9TH GRADE'
          2 = 'SOME HIGH SCHOOL'
          3 = 'HS GRAD OR GED CERT'
          4 = 'SOME TECHNICAL SCHOOL'
          5 = 'TECHNICAL SCHOOL GRAD'
          6 = 'SOME COLLEGE'
          7 = 'COLLEGE GRADUATE'
          8 = 'POST GRAD OR PROF. DEGREE'
          9 = 'REFUSED' */;

LABEL EMPLOY = EMPLOYMENT STATUS
 /*        1 = 'EMPLOYED FOR WAGES'
           2 = 'SELF EMPLOYED'
           3 = 'OUT OF WORK MORE THAN 1 YEAR'
           4 = 'OUT OF WORK LESS THAN 1 YEAR'
           5 = 'HOMEMAKER'
           6 = 'STUDENT'
           7 = 'RETIRED'
           9 = 'REFUSED' */;

LABEL MARITAL = MARITAL STATUS
 /*         1 = 'MARRIED'
            2 = 'DIVORCED'
            3 = 'WIDOWED'
            4 = 'SEPARATED'
            5 = 'NEVER MARRIED'
            6 = 'UNMARRIED COUPLE'
            9 = 'REFUSED' */;

LABEL INCOME = INCOME LEVEL
 /*        1 = 'LESS THAN $10,000'
           2 = '$10,000 TO $14,999'
           3 = '$15,000 TO $19,999'
           4 = '$20,000 TO $24,999'
           5 = '$25,000 TO $34,999'
           6 = '$35,000 TO $50,000'
           7 = 'OVER $50,000'
           8 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL WEIGHT = REPORTED WEIGHT IN POUNDS
 /*      ### = 'CURRENT WEIGHT WITHOUT SHOES'
         777 = 'DO NOT KNOW'
         999 = 'REFUSED' */;

LABEL HEIGHT = REPORTED HEIGHT IN FEET AND INCHES
 /* NNN = 'HEIGHT W/O SHOES IN FEET AND INCHES (EX., 506=5 FT AND 6 IN)'
    777 = 'DO NOT KNOW'
    999 = 'REFUSED' */;

LABEL HTF = REPORTED HEIGHT FEET
 /*     N = '# OF FEET'
        7 = 'DO NOT KNOW'
        9 = 'REFUSED' */;

LABEL HTI = REPORTED HEIGHT INCHES
 /*    NN = '# OF INCHES'
       77 = 'DO NOT KNOW'
       99 = 'REFUSED' */;

* WOMEN'S HEALTH;
LABEL HADMAM = HAVE YOU EVER HAD A MAMMOGRAM
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL HOWLONG = HOW LONG SINCE LAST MAMMOGRAM
 /*         1 = 'WITHIN PAST YEAR'
            2 = 'WITHIN PAST TWO YEARS'
            3 = 'WITHIN PAST FIVE YEARS'
            4 = 'MORE THAN FIVE YEARS AGO'
            7 = 'DO NOT KNOW'
            8 = 'NEVER'
            9 = 'REFUSED' */;

LABEL WHYDONE = REASON YOU HAD MAMMOGRAM
 /*         1 = 'ROUTINE CHECKUP'
            2 = 'BREAST PROBLEM'
            3 = 'HAD BREAST CANCER'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL MAMMIDEA = WHOSE IDEA WAS IT TO HAVE A MAMMOGRAM
 /*          1 = 'RESPONDENT''S IDEA'
             2 = 'DOCTOR''S IDEA'
             3 = 'SOMEONE ELSE''S IDEA'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL PROFEXAM = EVER HAD BREAST PHYSICAL EXAM BY DOCTOR
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL LENGEXAM = HOW LONG SINCE LAST BREAST PHYSICAL EXAM
 /*          1 = 'WITHIN PAST YEAR'
             2 = 'WITHIN PAST TWO YEARS'
             3 = 'WITHIN PAST FIVE YEARS'
             4 = 'MORE THAN FIVE YEARS AGO'
             7 = 'DO NOT KNOW'
             8 = 'NEVER'
             9 = 'REFUSED' */;

LABEL REASEXAM = REASON YOU HAD BREAST PHYSICAL EXAM
 /*          1 = 'ROUTINE CHECKUP'
             2 = 'BREAST PROBLEM'
             3 = 'HAD BREAST CANCER'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL PAPTEST = EVER HEARD OF A PAP SMEAR TEST
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL  HADPAP = EVER HAD A PAP SMEAR TEST
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL LASTPAP = WHEN WAS LAST PAP SMEAR
 /*         1 = 'WITHIN PAST YEAR'
            2 = 'WITHIN PAST TWO YEARS'
            3 = 'WITHIN PAST FIVE YEARS'
            4 = 'MORE THAN FIVE YEARS AGO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL HADHYST = EVER HAD A HYSTERECTOMY
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL PREGNANT = PREGNANCY STATUS
 /* NOTE:  ONLY ANSWERED IF FEMALE, 18<=AGE<=45 AND HAS NOT
           HAD A HYSTERECTOMY

             1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL WHENDUE = MONTH BABY IS DUE
 /*        01 = 'JANUARY'
           02 = 'FEBRUARY'
           03 = 'MARCH'
           04 = 'APRIL'
           05 = 'MAY'
           06 = 'JUNE'
           07 = 'JULY'
           08 = 'AUGUST'
           09 = 'SEPTEMBER'
           10 = 'OCTOBER'
           11 = 'NOVEMBER'
           12 = 'DECEMBER'
           77 = 'DO NOT KNOW'
           99 = 'REFUSED'*/;

* AIDS;
LABEL AIDSHIV = EVER HEARD AIDS VIRUS CALLED HIV
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL MEDSAIDS = DRUGS LENGTHEN LIFE OF PERSON WITH AIDS
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL HLTHYAID = PERSON WITH AIDS LOOK AND FEEL HEALTHY
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL BLOODAID = CAN GET AIDS BY GIVING BLOOD
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL PROFAIDS = CAN GET AIDS FROM HEALTH PROFESSIONAL
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL PREGAIDS = PREGNANT WOMAN WITH AIDS GIVE IT TO BABY
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL YOUNGCLD = CHILD IN K THROUGH 8TH GRADE
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL SCHLAIDS = CHILD IN SAME CLASS AS CHILD WITH AIDS
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL EDUCAIDS = GRADE CHILD SHOULD BEGIN AIDS EDUCATION
 /*         NN = 'GRADE (EX., 01,...,12)'
            55 = 'KINDERGARTEN'
            77 = 'DO NOT KNOW'
            88 = 'NEVER'
            99 = 'REFUSED' */;

LABEL COOKAIDS = EAT IN RESTAURANT WHERE COOK HAS AIDS
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL WORKAIDS = WORK WITH PERSON WHO HAS AIDS
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL TEST1AID = WHERE YOU CAN BE TESTED FOR AIDS VIRUS
 /*      01 = 'PRIVATE DOCTOR, HMO'
         02 = 'BLOOD BANK, PLASMA CENTER, RED CROSS'
         03 = 'HEALTH DEPARTMENT'
         04 = 'AIDS CLINIC, AIDS TESTING SITE'
         05 = 'HOSPITAL, EMERGENCY ROOM'
         06 = 'FAMILY PLANNING CLINIC'
         07 = 'STD CLINIC'
         08 = 'COMMUNITY HEALTH OR PRIMARY CARE CLINIC'
         09 = 'COMPANY OR INDUSTRY CLINIC'
         10 = 'MILITARY INDUCTION OR EXAMINATION'
         77 = 'DO NOT KNOW'
         87 = 'OTHER'
         88 = 'NO PLACE'
         99 = 'REFUSED' */;

LABEL TEST2AID = WHERE ELSE TESTED FOR AIDS VIRUS
 /*      NN = 'FACILITY CODE (SEE TEST1AID CODES)'
         77 = 'DO NOT KNOW'
         87 = 'OTHER'
         88 = 'NO PLACE'
         99 = 'REFUSED' */;

LABEL CONDOM = CONDOM EFFECTIVE IN PREVENTING AIDS
 /*        1 = 'VERY EFFECTIVE'
           2 = 'SOMEWHAT EFFECTIVE'
           3 = 'NOT AT ALL EFFECTIVE'
           4 = 'DO NOT KNOW HOW EFFECTIVE'
           5 = 'DO NOT KNOW METHOD'
           9 = 'REFUSED' */;

* NUMBER OF TELEPHONE NUMBERS REACHING HOUSEHOLD;
LABEL NUMPHONS = NUMBER OF UNIQUE PHONE NUMBERS IN HH;

* MODULE 1:  COUNTY RESIDENCE;
LABEL CTYCODE = 'COUNTY CODE';
 /*       NNN = 'COUNTY CODE'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

* MODULE 2:  SMOKELESS TOBACCO;
LABEL USEEVER = EVER USED SMOKELESS TOBACCO PRODUCTS
 /*         1 = 'YES, CHEWING TOBACCO'
            2 = 'YES, SNUFF'
            3 = 'YES, BOTH'
            4 = 'NO, NEITHER'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL  USENOW = CURRENTLY USE SMOKELESS TOBACCO PRODUCTS
 /*         1 = 'YES, CHEWING TOBACCO'
            2 = 'YES, SNUFF'
            3 = 'YES, BOTH'
            4 = 'NO, NEITHER'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

* MODULE 3:  COLORECTAL CANCER SCREENING;
LABEL DIGRECTL = EVER HEARD OF DIGITAL RECTAL EXAM
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL HADRECTL = EVER HAD A DIGITAL RECTAL EXAM
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LASTEXAM = HOW LONG SINCE LAST DIGITAL RECTAL EXAM
 /*          1 = 'WITHIN PAST YEAR'
             2 = 'WITHIN PAST TWO YEARS'
             3 = 'WITHIN PAST FIVE YEARS'
             4 = 'MORE THAN FIVE YEARS AGO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL BLDSTOOL = EVER HEARD OF A BLOOD STOOL TEST
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL HADBSTES = EVER HAD A BLOOD STOOL TEST
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL  LASTBST = HOW LONG SINCE LAST BLOOD STOOL TEST
 /*          1 = 'WITHIN PAST YEAR'
             2 = 'WITHIN PAST TWO YEARS'
             3 = 'WITHIN PAST FIVE YEARS'
             4 = 'MORE THAN FIVE YEARS AGO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL PROCEXAM = EVER HEARD OF PROCTOSCOPIC EXAM
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL HADPROCT = EVER HAD A PROCTOSCOPIC EXAM
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LASTPROC = HOW LONG SINCE PROCTOSCOPIC EXAM
 /*          1 = 'WITHIN PAST YEAR'
             2 = 'WITHIN PAST TWO YEARS'
             3 = 'WITHIN PAST FIVE YEARS'
             4 = 'MORE THAN FIVE YEARS AGO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

* MODULE 4:  INJURY CONTROL AND CHILD SAFETY;
LABEL DETECTOR = WORKING SMOKE DETECTOR IN HOUSEHOLD
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL  TESTH2O = ANYONE USE THERMOMETER TO TEST HOT WATER
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL YOUNGAGE = AGE OF YOUNGEST CHILD
 /*       1-17 = 'CHILD''S AGE'
            77 = 'DO NOT KNOW'
            88 = 'NO CHILDREN IN HOUSEHOLD'
            89 = 'CHILD LESS THAN 1 YEAR'
            99 = 'REFUSED' */;

LABEL   POISON = HAVE PHONE NUMBER TO POISON CNTRL CNT
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL   IPECAC = DO YOU HAVE ANY IPECAC SYRUP
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL BUCKLEUP = YOUNGEST CHILD BUCKLED IN SAFETY SEAT
 /*          1 = 'ALL THE TIME'
             2 = 'MOST OF THE TIME'
             3 = 'SOMETIMES'
             4 = 'RARELY'
             5 = 'NEVER'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

* MODULE 5:  RADON TESTING;
LABEL RADONGAS = HAVE YOU HEARD OF RADON
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL  TESTAIR = HOUSEHOLD TESTED FOR RADON GAS
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL  HOWTEST = KNOW HOW TO TEST YOUR HOME FOR RADON
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL PLANTEST = PLAN TO TEST FOR RADON
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL OPINION = PROLONGED EXPOSURE HARMFUL
 /*         1 = 'AGREE'
            2 = 'DISAGREE'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL HEADACHE = HEADACHE CAUSED BY RADON EXPOSURE
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL   ASTHMA = ASTHMA CAUSED BY RADON EXPOSURE
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL  ARTHRIT = ARTHRITIS CAUSED BY RADON EXPOSURE
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL  LUNGCAN = LUNG CANCER CAUSED BY RADON EXPOSURE
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL  CANCERS = OTHER CANCERS CAUSED BY RADON EXPOSURE
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL RESIDE = DESCRIBE YOUR RESIDENCE
 /*        1 = 'SINGLE FAMILY HOME/DUPLEX/TOWNHOUSE'
           2 = 'APT/CONDO/BASEMENT, 1ST OR 2ND FLOOR'
           3 = 'APT/CONDO/ABOVE 2ND FLOOR'
           4 = 'TRAILER/MOBILE HOME'
           5 = 'OTHER'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

* MODULE 6:  DIETARY FATS;
LABEL HOTDOGS = HOW OFTEN DO YOU EAT HOT DOGS, ETC.
 /*       1NN = 'PER DAY (WHERE 1NN=101-199)'
          2NN = 'PER WEEK (WHERE 2NN=201-299)'
          3NN = 'PER MONTH (WHERE 3NN=301-399)'
          4NN = 'PER YEAR (WHERE 4NN=401-499)'
          555 = 'NEVER'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

LABEL   BACON = HOW OFTEN DO YOU EAT BACON OR SAUSAGE
 /*       1NN = 'PER DAY (WHERE 1NN=101-199)'
          2NN = 'PER WEEK (WHERE 2NN=201-299)'
          3NN = 'PER MONTH (WHERE 3NN=301-399)'
          4NN = 'PER YEAR (WHERE 4NN=401-499)'
          555 = 'NEVER'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

LABEL    PORK = HOW OFTEN DO YOU EAT PORK
 /*       1NN = 'PER DAY (WHERE 1NN=101-199)'
          2NN = 'PER WEEK (WHERE 2NN=201-299)'
          3NN = 'PER MONTH (WHERE 3NN=301-399)'
          4NN = 'PER YEAR (WHERE 4NN=401-499)'
          555 = 'NEVER'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

LABEL HAMBURG = HOW OFTEN DO YOU EAT HAMBURGERS, ETC.
 /*       1NN = 'PER DAY (WHERE 1NN=101-199)'
          2NN = 'PER WEEK (WHERE 2NN=201-299)'
          3NN = 'PER MONTH (WHERE 3NN=301-399)'
          4NN = 'PER YEAR (WHERE 4NN=401-499)'
          555 = 'NEVER'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

LABEL    BEEF = HOW OFTEN DO YOU EAT OTHER BEEF
 /*       1NN = 'PER DAY (WHERE 1NN=101-199)'
          2NN = 'PER WEEK (WHERE 2NN=201-299)'
          3NN = 'PER MONTH (WHERE 3NN=301-399)'
          4NN = 'PER YEAR (WHERE 4NN=401-499)'
          555 = 'NEVER'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

LABEL FRIEDCHI = HOW OFTEN DO YOU EAT FRIED CHICKEN
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL FRENCHFR = HOW OFTEN DO YOU EAT FRENCH FRIES
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL   CHEESE = HOW OFTEN DO YOU EAT CHEESE
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL DOUGHNUT = HOW OFTEN DO YOU EAT DOUGHNUTS, ETC.
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL   SNACKS = HOW OFTEN DO YOU EAT SNACKS
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL   BUTTER = HOW OFTEN DO YOU ADD BUTTER
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL     EGGS = HOW MANY EGGS
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL     MILK = HOW MANY GLASSES OF WHOLE MILK
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

* MODULE 7:  FRUITS AND VEGETABLES;
LABEL FRUITJUI = HOW OFTEN DO YOU DRINK FRUIT JUICES
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL    FRUIT = HOW OFTEN DO YOU EAT FRUIT
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL GREENSAL = HOW OFTEN DO YOU EAT GREEN SALAD
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL POTATOES = HOW OFTEN DO YOU EAT POTATOES
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL  CARROTS = HOW OFTEN DO YOU EAT CARROTS
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL VEGETABL = SERVINGS OF VEGETABLES
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

* STATE ADDED QUESTIONS;
LABEL STATEQUE = STATE ADDED QUESTIONS;

* COMPUTED VARIABLES;
LABEL _BPCHECK = BLOOD PRESSURE CHECKED
 /*          1 = 'BLOOD PRESSURE CHECKED WITHIN THE PAST 2 YRS.'
             2 = 'BLOOD PRESSURE NOT CHECKED WITH THE PAST 2 YRS.'
             9 = 'REFUSED/UNKNOWN' */;

LABEL _CHOLCHK = CHOLESTEROL CHECKED
 /*          1 = 'CHOLESTEROL CHECKED WITHIN THE PAST 5 YRS.'
             2 = 'CHOLESTEROL NOT CHECKED WITH THE PAST 5 YRS.'
             9 = 'REFUSED/UNKNOWN' */;

LABEL _SMOKER = SMOKING STATUS
 /*         1 = 'CURRENT SMOKER'
            2 = 'FORMER SMOKER'
            3 = 'NEVER SMOKED'
            4 = 'NOT REGULAR SMOKER'
            9 = 'REFUSED ONE OR MORE SMOKING QUESTIONS' */;

LABEL _DRNKMO=TOTAL NUMBER OF DRINKS A MONTH;
 /*  0001-1000 = 'NUMBER OF DRINKS'
          8888 = 'DID NOT DRINK IN PAST MONTH'
          9999 = 'REFUSED' */;

LABEL _WTFORHT = WEIGHT FOR HEIGHT PERCENT OF MEDIAN
 /*      99999 = 'UNKNOWN (2 DECIMAL PLACES IMPLIED)'*/;

LABEL _BMI = BODY MASS INDEX
  /*  CALCULATED AS WEIGHT IN KILOGRAMS DIVIDED BY
      HEIGHT IN METERS SQUARED (W/H**2)

       999 = 'UNKNOWN (1 DECIMAL PLACE IMPLIED)' */;

LABEL _TOTINDX = PHYSICAL ACTIVITY LEVEL
 /*          1 = 'SEDENTARY'
             2 = 'IRREGULAR ACTIVITY'
             3 = 'REGULAR ACTIVITY'
             4 = '1990 OBJECTIVE'
           0,9 = 'UNKNOWN' */;

LABEL _SMKLESS = SMOKELESS STATUS
 /*          1 = 'CURRENT USER'
             2 = 'FORMER USER'
             3 = 'NEVER USED'
             9 = 'UNKNOWN' */;

LABEL _GRAMFAT = GRAMS OF FAT CONSUMED DAILY
 /*     999999 = 'UNKNOWN (2 DECIMAL PLACES IMPLIED)' */;

LABEL _FATINDX = SUMMARY INDEX OF DIETARY FAT
 /*          1 = '25TH OR LESS PERCENTILE'
             2 = '25TH TO 75TH PERCENTILE'
             3 = 'GREATER THAN 75TH PERCENTILE'
           .,9 = 'UNK/REFUSED' */;

LABEL _FRTSERV = DAILY SERVINGS OF FRTS AND VEGS
 /*      99999 = 'UNKNOWN (2 DECIMAL PLACES IMPLIED)' */;

LABEL _FRTINDX = SUMMARY INDEX OF FRTS AND VEGS
 /*          1 = 'LESS THAN ONCE PER DAY OR NEVER'
             2 = '1 TO LESS THAN 3 TIMES PER DAY'
             3 = '3 TO LESS THAN 5 TIMES PER DAY'
             4 = '5 OR MORE TIMES PER DAY'
           .,9 = 'UNK/REFUSED' */;

* PREVENTIVE HEALTH MEASURES;
LABEL _RFSEATB = SEATBELT (SAFETY BELT) NON-USE (1)
 /*         AT RISK DEFINED AS SELDOM OR NEVER USE SEATBELTS

       NOTE FOR ALL _RF VARIABLES FOLLOWING ARE CODES:
            1 = 'NOT AT RISK'
            2 = 'AT RISK'
            9 = 'REFUSED' */;

LABEL _RFSEAT2 = SEATBELT (SAFETY BELT) NON-USE (2)
 /*         AT RISK DEFINED AS SOMETIMES, SELDOM,
                     OR NEVER USE SEATBELTS */;

LABEL _RFSEAT3 = SEATBELT (SAFETY BELT) NON-USE (3)
 /*         AT RISK DEFINED AS NEARLY ALWAYS, SOMETIMES,
                     SELDOM, OR NEVER USE SEATBELTS
                     (I.E., DO NOT ALWAYS USE A SEATBELT) */;

LABEL _RFHYPE2 = HYPERTENSION (2)
 /*        AT RISK DEFINED AS EVER BEEN TOLD YOU HAVE HIGH
           BLOOD PRESSURE  */;

LABEL _RFSMOKE = CURRENT SMOKING
 /*        AT RISK DEFINED AS CURRENT REGULAR SMOKER */;

LABEL _RFDRACU = ACUTE DRINKING
 /*        AT RISK DEFINED AS HAVING 5 OR MORE DRINKS AT LEAST
           ONCE ON AN OCCASION DURING PAST 4 WEEKS (DRINKGE5) */;

LABEL _RFDRDRI = DRINKING AND DRIVING
 /*        AT RISK DEFINED AS HAVING DRIVEN WHEN YOU HAVE
           HAD TOO MUCH TO DRINK AT LEAST ONCE DURING THE
           PAST 4 WEEKS (DRINKDRI)   */;

LABEL _RFDRCHR = CHRONIC DRINKING
 /*        AT RISK DEFINED AS HAVING 60 OR MORE DRINKS
           A MONTH   */;

LABEL _RFLIFES = NO ACTIVITY OR IRREGULAR ACTIVITY
 /*        AT RISK DEFINED AS NO ACTIVITY (SEDENTARY) OR A
           PHYSICAL ACTIVITY OR PAIR OF ACTIVITIES THAT
           WERE DONE FOR 20 MINUTES OR LESS, OR FEWER THAN
           THREE TIMES PER WEEK (IRREGULAR) */;

LABEL _RFOBESE = GREATER THAN OR EQUAL TO 120% OF MEDIAN
 /*        AT RISK DEFINED AS GREATER THAN 120% OF MEDIAN
           WEIGHT FOR HEIGHT (_WTFORHT)
           BASED ON 1959 METROPOLITAN LIFE TABLES */;

LABEL _RFWHBMI = BASED ON BODY MASS INDEX (BMI)
 /*        AT RISK DEFINED AS BMI GE 27.8 FOR MALES
           AND 27.3 FOR FEMALES (LOWER EXCEPTABLE LIMIT IS
           12.0 FOR MALE AND FEMALE, UPPER 57.0-M & 73.0-F */;

LABEL _RFTOBAC = CURRENT SMOKELESS TOBACCO USER
 /*        AT RISK DEFINED AS CURRENT SMOKELESS TOBACCO USER */;

* WEIGHTING FACTORS;
LABEL
 _RAW     = '# ADULTS/# PHONES (2 DEC PLACES IMPLD)'
 _CSA     = 'UNEQUAL CLUSTER SIZE ADJ (2 DEC IMPLD)'
 _WT1     = 'PRODUCT OF _RAW AND _CSA (2 DEC IMPLD)'
 _POSTSTR = 'AGE,RACE,SEX ADJ-90 CEN VS SAMP (2 DEC)';

* FINAL WEIGHT;
LABEL _FINALWT = 'PRODUCT OF _POSTSTR AND _WT1'
 /* NOTE:  POSTSTRATIFICATION MULTIPLIED BY THE PRODUCT OF
           STRATUM ADJUSTEMENT AND THE PRODUCT OF UNEQUAL
           SELECTION PROBABILITY WEIGHT AND CLUSTER SIZE
           ADJUSTMENT

           10 DIGIT WEIGHT WITH 2 DECIMAL PLACES IMPLIED;
           THIS IS THE WEIGHT YOU SHOULD USE */;

* AGE GROUP USED IN POSTSTRATIFICATION;
LABEL _AGEG_ = AGE GROUP USED IN POSTSTRATIFICATION
 /*  NOTE: IF CODES ARE ONLY 1-5, LAST AGE GROUP EQUALS 55+.
           IF CELL SIZES ARE TOO SMALL, AGE CATEGORIES MAY
           HAVE BEEN COLLAPSED

                   1 = '18-24'
                   2 = '25-34'
                   3 = '35-44'
                   4 = '45-54'
                   5 = '55-64'
                   6 = '65+' */;

  IF _FINALWT NE .; IF _FINALWT NE 0;

***********************************************************************;
* COMPUTES AGE GROUPINGS;
***********************************************************************;

     IF 18 <= AGE <=34 THEN _AGEG = 1;
       ELSE
     IF 35 <= AGE <=54 THEN _AGEG = 2;
       ELSE
     IF 55 <= AGE <=99 THEN _AGEG = 3;

***********************************************************************;
* COMPUTES FIVE YEAR AGE GROUPS;
***********************************************************************;

     IF 18 <= AGE <=24 THEN _AGEG5YR = 1;
       ELSE
     IF 25 <= AGE <=29 THEN _AGEG5YR = 2;
       ELSE
     IF 30 <= AGE <=34 THEN _AGEG5YR = 3;
       ELSE
     IF 35 <= AGE <=39 THEN _AGEG5YR = 4;
       ELSE
     IF 40 <= AGE <=44 THEN _AGEG5YR = 5;
       ELSE
     IF 45 <= AGE <=49 THEN _AGEG5YR = 6;
       ELSE
     IF 50 <= AGE <=54 THEN _AGEG5YR = 7;
       ELSE
     IF 55 <= AGE <=59 THEN _AGEG5YR = 8;
       ELSE
     IF 60 <= AGE <=64 THEN _AGEG5YR = 9;
       ELSE
     IF 65 <= AGE <=69 THEN _AGEG5YR = 10;
       ELSE
     IF 70 <= AGE <=74 THEN _AGEG5YR = 11;
       ELSE
     IF 75 <= AGE <=79 THEN _AGEG5YR = 12;
       ELSE
     IF 80 <= AGE <=99 THEN _AGEG5YR = 13;
       ELSE
     IF 07 <= AGE <=09 THEN _AGEG5YR = 14;

***********************************************************************;
* COMPUTES 65+ AGE GROUPS;
***********************************************************************;

     IF 18 <= AGE <=64 THEN _AGE65YR = 1;
       ELSE
     IF 65 <= AGE <=99 THEN _AGE65YR = 2;
       ELSE
     IF 07 <= AGE <=09 THEN _AGE65YR = 3;

***********************************************************************;
* COMPUTES WHITE, NON-HISPANIC AND NON-WHITE RACE GROUPS;
***********************************************************************;

     IF RACE = 1 THEN _RACEG = 1;
       ELSE
     IF 2 <= RACE <=8 THEN _RACEG = 2;
       ELSE
     IF RACE = 77 THEN _RACEG = 7;
       ELSE
      _RACEG = 9;

***********************************************************************;
* COMPUTES WHITE, BLACK, HISPANIC, AND OTHER RACE GROUPS;
***********************************************************************;

     IF RACE = 1 THEN _RACEGR = 1;
       ELSE
     IF RACE = 2 THEN _RACEGR = 2;
       ELSE
     IF 3 <= RACE <=5  THEN _RACEGR = 3;
       ELSE
     IF 6 <= RACE <=8 THEN _RACEGR = 4;
       ELSE
      _RACEGR = 9;

***********************************************************************;
* COMPUTES PREVENTIVE HEALTH MEASURE FOR CHOLESTEROL CHECK;
*   1 = CHOLESTEROL CHECKED WITHIN THE PAST FIVE YEARS;
*   2 = CHOLESTEROL NOT CHECKED WITHIN THE PAST FIVE YEARS;
*   9 = REFUSED OR UNKNOWN;
***********************************************************************;

IF BLOODCHO=1 AND 1<=CHOLCHK<=3 THEN _CHOLCHK=1;
       ELSE
IF BLOODCHO=1 AND (CHOLCHK=4 OR CHOLCHK=8) THEN _CHOLCHK=2;
       ELSE
   _CHOLCHK=9;

***********************************************************************;
* COMPUTES PREVENTIVE HEALTH MEASURE FOR BLOOD PRESSURE CHECKED;
*   1 = BLOOD PRESSURE CHECKED WITHIN THE PAST TWO YEARS;
*   2 = BLOOD PRESSURE NOT CHECKED WITHIN THE PAST TWO YEARS;
*   9 = REFUSED OR UNKNOWN;
***********************************************************************;

   IF 1<=BPTAKE<=3 THEN _BPCHECK=1;
       ELSE
   IF 4<=BPTAKE<=5 OR BPTAKE=8 THEN _BPCHECK=2;
       ELSE
   _BPCHECK=9;

RUN;
**************************** END OF PROGRAM ******************************;

