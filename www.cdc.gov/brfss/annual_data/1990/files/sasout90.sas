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

*LIBNAME DATAOUT V7 '<PATH FOR CREATED OUTPUT SAS DATA SET>' SHORTFILEEXT;
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


DATA DATAOUT.CDBRFS90;
   LENGTH DEFAULT=4;
   LENGTH _WTFORHT _FRTSERV 6 _DRNKMO 5 _GRAMFAT 7
          _POSTSTR _FINALWT 8;
   INFILE DATAIN;

* CREATE RISK FACTOR SAS FILE FOR 1990 SURVEILLANCE DATA;

INPUT    _STATE           1-2			/* IDENTIFICATION INFORMATION */
         _STRATA          3
         _STSTR           1-3
         _PSU             4-7
         _RECORD          8
          IDATE       $   9-14
          IMONTH      $   9-10
          IDAY        $  11-12
          IYEAR       $  13-14
          INTVID      $  15-16
          PHONENUM    $  17-24
          AREACODE    $  17-19
          PREFIX      $  20-22
          SUFFIX      $  23-24
          DISPCODE       25-26
          WINDDOWN    $  27
          NUMADULT       28
          NUMMEN         29
          NUMWOMEN       30

		  NUMPHONS       134
          AGE            92-93			/* SECTION G: DEMOGRAPHICS */

          ORACE          94
          HISPANIC       95
          RACE          351-352

          EDUCA          96
          EMPLOY         97
          MARITAL        98
          INCOME         99
          WEIGHT        100-102
          HEIGHT      $ 103-105
          HTF           103
          HTI           104-105

          SEX           106

          SEATBELT       31				/* SECTION A: SEATBELTS */
	
          BPHIGH         32				/* SECTION B: HYPERTENSION */
          HIGHGT1        33
          BPTREAT        34
          USETREAT       35

          EXERANY        36				/* SECTION C: EXERCISE */ 
          EXERACT1       37-38
          EXERDIS1       39-41
          EXEROFT1       42-44
          EXERHMM1       45-47
          EXEROTH2       48
          EXERACT2       49-50
          EXERDIS2       51-53
          EXEROFT2       54-56
          EXERHMM2       57-59

         _TOTINDX       376

          SMOKE100       60				/* SECTION D: TOBACCO USE */
          SMOKENOW       61
          SMOKENUM       62-63
          STOPSMOK       64
          WHENSTOP       65
          LONGSTOP       66
          LASTSMOK       67

         _SMOKER        353				

          DRINKANY      68				/* SECTION E: ALCOHOL CONSUMPTION */
          ALCOHOL       69-71
          NALCOCC       72-73
          DRINKGE5      74-75
          DRINKDRI      76-77

         _DRNKMO        354-357

          CHECKUP        78				/* SECTION F: PREVENTIVE HEALTH PRACTICES */
          TYPEDR         79
          BLOODCHO       80
          CHOLCHK        81
          TOLDLEV        82
          LEVEL          83-85
          TOLDHI         86
          REDCHOL        87
          CHOLMED        88
          CHOLDIET       89
          CHOLHELP       90

         _CHOL          381

          DIABETES       91

          HADMAM        107				/* SECTION H: WOMEN'S HEALTH */
          HOWLONG       108
          NOTDONE       109
          WHYDONE       110
          MAMMIDEA      111
          PROFEXAM      112
          LENGEXAM      113
          REASEXAM      114
          PREGNANT      115
          WHENDUE       116-117

          AIDSHIV       118					/* SECTION I: AIDS */
          MEDSAIDS      119
          HLTHYAID      120
          BLOODAID      121
          MOSQAIDS      122
          YOUNGCLD      123
          SCHLAIDS      124
          EDUCAIDS      125-126
          COOKAIDS      127
          WORKAIDS      128
          TEST1AID      129-130
          TEST2AID      131-132
          CONDOM        133

          CTYCODE       135-137				/* MODULE 1: COUNTY CODE */

          USEEVER       138					/* MODULE 2: SMOKELESS TOBACCO USE */
          USENOW        139

         _SMKLESS       377

          PAPTEST       140					/* MODULE 3: CERVICAL CANCER SCREENING */
          HADPAP        141
          LASTPAP       142
          HADHYST       143

          DIGRECTL      144					/* MODULE 4: COLORECTAL CANCER SCREENING */
          HADRECTL      145
          LASTEXAM      146
          BLDSTOOL      147
          HADBSTES      148
          LASTBST       149
          PROCEXAM      150
          HADPROCT      151
          LASTPROC      152


          DETECTOR      153					/* MODULE 5: INJURY CONTROL AND CHILD SAFETY */
          TESTH2O       154
          YOUNGAGE      155-156
          POISON        157
          IPECAC        158
          BUCKLEUP      159

          LOSEWT        160					/* MODULE 6: WEIGHT CONTROL PRACTICES */
          TRYLOSE       161-163
          WHATWGT       164-166
          WTDESIRE      167-169
          MAINTAIN      170
          FEWCAL        171
          COUNTCAL      172-175
          CALORIES      176-178
          PHYACT        179
          DIETPILL      180
          SUPPLEMT      181
          FASTING       182
          PROGRAM       183
          VOMIT         184
          DRADVICE      185
          CONSIDWT      186

         _WTFORHT       358-362
         _BMI           378-380

          RADONGAS      187					/* MODULE 7: RADON TESTING */
          TESTAIR       188
          HOWTEST       189
          PLANTEST      190
          OPINION       191
          HEADACHE      192
          ASTHMA        193
          ARTHRIT       194
          LUNGCAN       195
          CANCERS       196
          RESIDE        197

          HOTDOGS     198-200				/* MODULE 8: DIETARY FAT */
          BACON       201-203
          PORK        204-206
          HAMBURG     207-209
          BEEF        210-212
          FRIEDCHI    213-215
          FRENCHFR    216-218
          CHEESE      219-221
          DOUGHNUT    222-224
          SNACKS      225-227
          BUTTER      228-230
          EGGS        231-233
          MILK        234-236

         _GRAMFAT     382-387 2
         _FATINDX     388

          FRUITJUI    237-239				/* MODULE 9: FRUITS AND VEGETABLES */
          FRUIT       240-242
          GREENSAL    243-245
          POTATOES    246-248
          CARROTS     249-251
          VEGETABL    252-254

         _FRTSERV     389-393 2
         _FRTINDX     394

          STATEQUE  $ 260-350			/* STATE SPECIFIC INFORMATION */

         _RFSEATB       363				/* CALCULATED RISK FACTOR VARIABLES */
         _RFSEAT2       364
         _RFHYPE2       366
         _RFHYPE4       367
         _RFOBESE       368
         _RFSMOKE       369
         _RFDRACU       370
         _RFDRDRI       371
         _RFDRCHR       372
         _RFLIFES       373
         _RFTOBAC       374
         _RFWHBMI       375

         _RAW           395-398 2
         _CSA           399-402 2
         _WT1           403-406 2
         _POSTSTR       407-416 2
         _FINALWT       417-426 2

         _AGEG_         427;

 OPTION LABEL;

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
            11 = 'RESPONDENT HAD/PHYSICAL/MENTAL IMPAIRMENT' */;

LABEL WINDDOWN = INTERVIEW ACCORDING TO WAKSBERG DESIGN
 /*          . = 'REGULAR MODE'
             9 = 'WINDDOWN' */;

LABEL NUMADULT = NUMBER OF ADULTS IN HOUSEHOLD
      NUMMEN   = NUMBER OF ADULT MALES IN HOUSEHOLD
      NUMWOMEN = NUMBER OF ADULT FEMALES IN HOUSEHOLD
      NUMPHONS = NUMBER OF UNIQUE PHONE NUMBERS IN HH;

LABEL AGE = REPORTED AGE IN YEARS
 /*        18,...,99 = 'VALID AGE'
                  08 = 'DO NOT KNOW'
                  09 = 'REFUSED' */;

LABEL _AGEG_ = AGE GROUP USED IN POSTSTRATIFICATION
 /*                1 = '18-24'
                   2 = '25-34'
                   3 = '35-44'
                   4 = '45-54'
                   5 = '55-64'
                   6 = '65+' */;

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
                  11 = '70+'
                  12 = 'REFUSED' */;

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
 /*      1 = 'WHITE'
         2 = 'BLACK'
         3 = 'WHITE HISPANICS'
         4 = 'BLACK HISPANICS'
         5 = 'OTHER HISPANICS'
         6 = 'ASIAN/PACIFIC ISLAND'
         7 = 'ALU./ESK./AMERICAN INDIAN'
         8 = 'OTHER'
        77 = 'DO NOT KNOW'
        99 = 'REFUSED' */;

LABEL _RACEG = RACE GROUPED
 /*        1 = 'WHITE'
           2 = 'NON-WHITE'  */;

LABEL _RACEGR = RACE GROUPED
 /*         1 = 'WHITE'
            2 = 'BLACK'
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
          8 = 'POST GRAD'
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
           8 = 'OVER $50,000'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL WEIGHT = REPORTED WEIGHT IN POUNDS
 /*      ### = 'HOW MUCH YOU WEIGH NOW'
         777 = 'DO NOT KNOW'
         999 = 'REFUSED' */;

LABEL HEIGHT = REPORTED HEIGHT IN FEET AND INCHES
 /*      NNN = 'HOW TALL IN FEET AND INCHES (EX., 506=5 FT AND 6 IN)'
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

LABEL SEATBELT = SEATBELT USE
 /*          1 = 'ALWAYS'
             2 = 'NEARLY ALWAYS'
             3 = 'SOMETIMES'
             4 = 'SELDOM'
             5 = 'NEVER'
             7 = 'DO NOT KNOW'
             8 = 'NEVER RIDE IN A CAR'
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

LABEL USETREAT = TAKING MEDICINE FOR HIGH BP
 /*          1 = 'YES, ALL OR MOST OF THE TIME'
             2 = 'YES, OCCASIONALLY'
             3 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

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
           12 = 'DANCING-AEROBIC/BALLET'
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
 /*        NNN = '# MINUTES/HOURS(EX. NNN=045 IS 45 MINS.,100 IS 1 HR)'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL EXEROTH2 = PARTICIPATE IN ANOTHER ACTIVITY
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL EXERACT2 = TYPE OF OTHER PHYSICAL ACTIVITY
 /*         NN = '01-56 (SEE CODES FOR EXERACT1)'
            77 = 'DO NOT KNOW'
            99 = 'REFUSED' */;

LABEL EXERDIS2 = DISTANCE IN MILES AND TENTHS
 /*        NNN = 'MILES AND TENTHS OF MILES'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL EXEROFT2 = HOW MANY TIMES SECOND ACTIVITY DONE
 /*        1NN = '# TIMES/WEEK (WHERE 1NN=101-198)'
           2NN = '# TIMES/MONTH (WHERE 2NN=201-298)'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL EXERHMM2 = HOW LONG SECOND ACTIVITY DONE
 /*        NNN = '# MINUTES/HOURS(EX. NNN=045 IS 45 MINS.,100 IS 1 HR)'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL _TOTINDX = PHYSICAL ACTIVITY LEVEL
 /*          1 = 'SEDENTARY'
             2 = 'IRREGULAR ACTIVITY'
             3 = 'REGULAR ACTIVITY'
             4 = '1990 OBJECTIVE'
           0,9 = 'UNKNOWN' */;

LABEL SMOKE100 = SMOKED AT LEAST 100 CIGS
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL SMOKENOW = CURRENTLY SMOKE
 /*          1 = 'YES'
             2 = 'NO'
             9 = 'REFUSED' */;

LABEL SMOKENUM = NUMBER OF CIGS SMOKED A DAY
 /*         NN = '# OF CIGS SMOKE (EX. 01,02,03,04,...,87)'
            88 = 'NOT REGULAR SMOKR'
            99 = 'REFUSED' */;

LABEL STOPSMOK = SERIOUS ATTEMPT TO STOP SMOKING CIGS
 /*          1 = 'YES'
             2 = 'NO'
             9 = 'REFUSED' */;

LABEL WHENSTOP = START OF MOST RECENT QUIT ATTEMPT
 /*          1 = 'PAST WEEK'
             2 = 'PAST 2 WEEKS'
             3 = 'PAST MONTH'
             4 = 'PAST 6 MONTHS'
             5 = 'PAST YEAR'
             6 = 'MORE THAN 1 YEAR AGO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LONGSTOP = HOW LONG ACTUALLY STAY OFF CIGS
 /*          1 = 'LESS THAN 1 DAY'
             2 = '1 TO 6 DAYS'
             3 = '7 DAYS TO LESS THAN 3 MOS'
             4 = '3 MOS TO LESS THAN 6 MOS'
             5 = '6 MOS TO LESS THAN 1 YR'
             6 = '1 OR MORE YEARS'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LASTSMOK = HOW LONG SINCE LAST SMOKED CIGS
 /*          1 = 'LESS THAN 1 MONTH'
             2 = '1 MO, BUT LESS THAN 3 MOS'
             3 = '3 MOS, BUT LESS THAN 6 MOS'
             4 = '6 MOS, BUT LESS THAN 1 YR'
             5 = '1 OR MORE YEARS'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL _SMOKER = SMOKING STATUS
 /*         1 = 'CURRENT SMOKER'
            2 = 'FORMER SMOKER'
            3 = 'NEVER SMOKED'
            4 = 'NEVER SMOKED REGULARLY'
            9 = 'REFUSED ONE OR MORE SMOKING QUESTIONS' */;

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

LABEL _DRNKMO=TOTAL NUMBER ALL DRINKS A MONTH;

LABEL CHECKUP = HOW LONG SINCE LAST ROUTINE CHECKUP
 /*         1 = 'WITHIN PAST YEAR'
            2 = 'WITHIN PAST TWO YEARS'
            3 = 'WITHIN PAST FIVE YEARS'
            4 = 'MORE THAN FIVE YEARS'
            8 = 'NEVER'
            7 = 'UNKOWN'
            9 = 'REFUSED' */;

LABEL TYPEDR = TYPE OF DOCTOR FOR ROUTINE CHECKUP
 /*        1 = 'FAMILY OR GENERAL PRACTITIONER'
           2 = 'INTERIST'
           3 = 'SPECIALIST (E.G., HEART, LUNG)'
           4 = 'OTHER'
           5 = 'OBSTETRICIAN/GYNECOLOGIST'
           7 = 'DO NOT KNOW'
         .,9 = 'REFUSED'*/ ;

LABEL BLOODCHO = EVER HAD BLOOD CHOLESTEROL CHECKED
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'UNKNOWN'
             9 = 'REFUSED' */;

LABEL CHOLCHK = HOW LONG SINCE CHOLESTEROL CHECKED
 /*         1 = 'WITHIN PAST YEAR'
            2 = 'WITHIN PAST TWO YEARS'
            3 = 'WITHIN PAST FIVE YEARS'
            4 = 'MORE THAN FIVE YEARS'
            7 = 'UNKNOWN'
            9 = 'REFUSED' */;

LABEL TOLDLEV = EVER TOLD BLOOD CHOLESTEROL LEVEL
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'UNKNOWN'
            9 = 'REFUSED' */;

LABEL LEVEL = BLOOD CHOLESTEROL LEVEL
 /*     NNN = 'LEVEL IN NUMBERS'
        777 = 'DO NOT KNOW'
        999 = 'REFUSED' */;

LABEL TOLDHI = EVER TOLD BLOOD CHOLESTEROL HIGH
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'UNKNOWN'
           9 = 'REFUSED' */;

LABEL REDCHOL = DOCTOR ADVISE REDUCE CHOLESTEROL
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'UNKNOWN'
            9 = 'REFUSED' */;

LABEL CHOLMED = DOCTOR PRESCRIBE MED TO LOWER CHOL
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL CHOLDIET = DOCTOR PROVIDE LOW FAT OR LOW CHOL DIET
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL CHOLHELP = DID DOCTOR REFER TO DIETITIAN FOR HELP
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL       _CHOL = CHOLESTEROL RISK
 /*  NOTE:     1 <= CHOL < 200 - DESIRABLE
             200 <= CHOL < 240 - BORDERLINE-HIGH
             240 <= CHOL < 777 - HIGH
                9 = CHOL - UNK/REFUSED

             0 = 'NOT AT RISK'
             1 = 'AT RISK'
             3 = 'BORDERLINE-HIGH'
             9 = 'UNKNOWN' */;

LABEL DIABETES = BEEN TOLD BY DOCTOR YOU HAVE DIABETES
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

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
            9 = 'REFUSED' */;

LABEL NOTDONE = DID NOT HAVE MAMMOGRAPHY
 /*         1 = 'NOT RECOMMENDED BY DOCTOR'
            2 = 'NOT NEEDED'
            3 = 'NEVER HEARD OF MAMMOGRAM'
            4 = 'COST'
            5 = 'NO INSURANCE'
            6 = 'OTHER'
            7 = 'DO NOT KNOW'
          .,9 = 'REFUSED' */;

LABEL WHYDONE = REASON YOU HAD MAMMOGRAM
 /*         1 = 'ROUTINE CHECKUP'
            2 = 'BREAST PROBLEM'
            3 = 'HAD BREAST CANCER'
            7 = 'DO NOT KNOW'
          .,9 = 'REFUSED' */;

LABEL MAMMIDEA = WHOSE IDEA WAS IT TO HAVE A MAMMOGRAM
 /*          1 = 'RESPONDENT''S IDEA'
             2 = 'DOCTOR''S IDEA'
             3 = 'SOMEONE ELSE''S IDEA'
             7 = 'DO NOT KNOW'
           .,9 = 'REFUSED' */;

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
             9 = 'REFUSED' */;

LABEL REASEXAM = REASON YOU HAD BREAST PHYSICAL EXAM
 /*          1 = 'ROUTINE CHECKUP'
             2 = 'BREAST PROBLEM'
             3 = 'HAD BREAST CANCER'
             7 = 'DO NOT KNOW'
           .,9 = 'REFUSED' */;

LABEL PREGNANT = PREGNANCY STATUS
 /*          1 = 'YES'
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

LABEL MOSQAIDS = CAN GET AIDS FROM MOSQUITOES/INSECTS
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
         08 = 'COMMUNITY HEALTH CLINIC, PRIMARY CARE'
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

LABEL CTYCODE = 'COUNTY CODE';
 /*       NNN = 'COUNTY CODE'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

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

LABEL _SMKLESS = SMOKELESS STATUS
 /*          1 = 'CURRENT USER'
             2 = 'FORMER USER'
             3 = 'NEVER USED'
             9 = 'UNKNOWN' */;

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

LABEL LASTPAP = WHEN DO YOU HAVE LAST PAP SMEAR
 /*         1 = 'WITHIN PAST YEAR'
            2 = 'WITHIN PAST TWO YEARS'
            3 = 'WITHIN PAST FIVE YEARS'
            4 = 'MORE THAN FIVE YEARS AGO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL HADHYST = HAVE YOU HAD A HYSTERECTOMY
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

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

LABEL   LOSEWT = TRYING TO LOSE WEIGHT
 /*          1 = 'YES'
             2 = 'NO'
             3 = 'NO, TRYING TO GAIN WEIGHT'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL TRYLOSE = HOW LONG AGO ATTEMPT TO LOSE WEIGHT
 /*       1NN = 'DAYS (EX., 105)'
          2NN = 'WEEKS (EX., 202)'
          3NN = 'MONTHS (EX., 303)'
          4NN = 'YEARS (EX., 401)'
          555 = 'ALWAYS TRYING TO LOSE WEIGHT'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

LABEL WHATWGT = WHAT WAS YOUR BEGINNING WEIGHT
 /*       ### = 'RECORD WEIGHT'
          777 = 'DO NOT KNOW'
        .,999 = 'REFUSED' */;

LABEL WTDESIRE = HOW MUCH WOULD YOU LIKE TO WEIGH
 /*        ### = 'RECORD WEIGHT'
           777 = 'DO NOT KNOW'
        ., 999 = 'REFUSED' */;

LABEL MAINTAIN = TRYING TO MAINTAIN CURRENT WEIGHT
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL FEWCAL = EATING FEWER CALORIES TO LOSE WEIGHT
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL COUNTCAL = HOW MANY CALORIES EATEN PER DAY
 /*       NNNN = 'NUMBER OF CALORIES'
          7777 = 'DON''T COUNT CALORIES'
        .,9999 = 'REFUSED' */;

LABEL CALORIES = HOW LONG BEEN EATING NUMBER OF CALORIES
 /*        1NN = 'DAYS (EX., 105)'
           2NN = 'WEEKS (EX., 202)'
           3NN = 'MONTHS (EX., 303)'
           4NN = 'YEARS (EX., 401)'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL   PHYACT = PHYSICAL ACTIVITY TO LOSE WEIGHT
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL DIETPILL = TAKING DIET PILLS TO DECREASE APPETITE
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL SUPPLEMT = TAKING SPECIAL PRODUCTS TO CONTOL WEIGHT
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL  FASTING = FASTING 24 HRS OR LONGER AS PART OF DIET
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL  PROGRAM = PARTICIPANT IN ORGANIZED WEIGHT PROGRAM
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL    VOMIT = INDUCING VOMITING AFTER EATING
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL DRADVICE = ADVISED BY A DOCTOR TO REDUCE WEIGHT
 /*          1 = 'YES, BY A DOCTOR'
             2 = 'YES, BY A NURSE/PHYSICIAN''S ASST.'
             3 = 'YES, BY A NUTRITIONIST/DIETITIAN'
             4 = 'YES, OTHER HEALTH PROFESSIONAL'
             5 = 'NO'
             7 = 'DO NOT KNOW'
           .,9 = 'REFUSED' */;

LABEL CONSIDWT = SELF IMAGE
 /*          1 = 'OVERWEIGHT'
             2 = 'UNDERWEIGHT'
             3 = 'ABOUT AVERAGE'
             7 = 'DO NOT KNOW'
           .,9 = 'REFUSED'*/ ;

LABEL _WTFORHT = WEIGHT FOR HEIGHT PERCENT OF MEDIAN
 /*      99999 = 'UNKNOWN (2 DECIMAL PLACES IMPLIED)'*/;

LABEL _BMI = BODY MASS INDEX
  /*  CALCULATED AS WEIGHT IN KILOGRAMS DIVIDED BY
      HEIGHT IN METERS SQUARED

       999 = 'UNKNOWN (1 DECIMAL PLACE IMPLIED)' */;

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
           2 = 'APT/CONDO/BASEMENT OR 1ST OR 2ND FLOOR'
           3 = 'APT/CONDO/ABOVE 2ND FLOOR'
           4 = 'TRAILER/MOBILE HOME'
           5 = 'OTHER'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL HOTDOGS = HOW OFTEN DO YOU EAT HOT DOGS, ETC.
 /*       1NN = 'PER DAY (EX., 101)'
          2NN = 'PER WEEK (EX., 202)'
          3NN = 'PER MONTH (EX., 327)'
          4NN = 'PER YEAR (EX., 406)'
          555 = 'NEVER'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

LABEL   BACON = HOW OFTEN DO YOU EAT BACON OR SAUSAGE
 /*       1NN = 'PER DAY (EX., 101)'
          2NN = 'PER WEEK (EX., 202)'
          3NN = 'PER MONTH (EX., 327)'
          4NN = 'PER YEAR (EX., 406)'
          555 = 'NEVER'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

LABEL    PORK = HOW OFTEN DO YOU EAT PORK
 /*       1NN = 'PER DAY (EX., 101)'
          2NN = 'PER WEEK (EX., 202)'
          3NN = 'PER MONTH (EX., 327)'
          4NN = 'PER YEAR (EX., 406)'
          555 = 'NEVER'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

LABEL HAMBURG = HOW OFTEN DO YOU EAT HAMBURGERS, ETC.
 /*       1NN = 'PER DAY (EX., 101)'
          2NN = 'PER WEEK (EX., 202)'
          3NN = 'PER MONTH (EX., 327)'
          4NN = 'PER YEAR (EX., 406)'
          555 = 'NEVER'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

LABEL    BEEF = HOW OFTEN DO YOU EAT OTHER BEEF
 /*       1NN = 'PER DAY (EX., 101)'
          2NN = 'PER WEEK (EX., 202)'
          3NN = 'PER MONTH (EX., 327)'
          4NN = 'PER YEAR (EX., 406)'
          555 = 'NEVER'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

LABEL FRIEDCHI = HOW OFTEN DO YOU EAT FRIED CHICKEN
 /*        1NN = 'PER DAY (EX., 101)'
           2NN = 'PER WEEK (EX., 202)'
           3NN = 'PER MONTH (EX., 327)'
           4NN = 'PER YEAR (EX., 406)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL FRENCHFR = HOW OFTEN DO YOU EAT FRENCH FRIES
 /*        1NN = 'PER DAY (EX., 101)'
           2NN = 'PER WEEK (EX., 202)'
           3NN = 'PER MONTH (EX., 327)'
           4NN = 'PER YEAR (EX., 406)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL   CHEESE = HOW OFTEN DO YOU EAT CHEESE
 /*        1NN = 'PER DAY (EX., 101)'
           2NN = 'PER WEEK (EX., 202)'
           3NN = 'PER MONTH (EX., 327)'
           4NN = 'PER YEAR (EX., 406)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL DOUGHNUT = HOW OFTEN DO YOU EAT DOUGHNUTS, ETC.
 /*        1NN = 'PER DAY (EX., 101)'
           2NN = 'PER WEEK (EX., 202)'
           3NN = 'PER MONTH (EX., 327)'
           4NN = 'PER YEAR (EX., 406)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL   SNACKS = HOW OFTEN DO YOU EAT SNACKS
 /*        1NN = 'PER DAY (EX., 101)'
           2NN = 'PER WEEK (EX., 202)'
           3NN = 'PER MONTH (EX., 327)'
           4NN = 'PER YEAR (EX., 406)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL   BUTTER = HOW OFTEN DO YOU ADD BUTTER
 /*        1NN = 'PER DAY (EX., 101)'
           2NN = 'PER WEEK (EX., 202)'
           3NN = 'PER MONTH (EX., 327)'
           4NN = 'PER YEAR (EX., 406)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL     EGGS = HOW MANY EGGS
 /*        1NN = 'PER DAY (EX., 101)'
           2NN = 'PER WEEK (EX., 202)'
           3NN = 'PER MONTH (EX., 327)'
           4NN = 'PER YEAR (EX., 406)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL     MILK = HOW MANY GLASSES OF WHOLE MILK
 /*        1NN = 'PER DAY (EX., 101)'
           2NN = 'PER WEEK (EX., 202)'
           3NN = 'PER MONTH (EX., 327)'
           4NN = 'PER YEAR (EX., 406)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL _GRAMFAT = GRAMS OF FAT CONSUMED DAILY
 /*     999999 = 'GRAMS OF FAT CONSUMED (2 DECIMAL PLACES IMPLIED)' */;

LABEL _FATINDX = SUMMARY INDEX OF DIETARY FAT
 /*          1 = '25TH OR LESS PERCENTILE'
             2 = '25TH TO 75TH PERCENTILE'
             3 = 'GREATER THAN 75TH PERCENTILE'
           .,9 = 'UNK/REFUSED' */;

LABEL FRUITJUI = HOW OFTEN DO YOU DRINK FRUIT JUICES
 /*        1NN = 'PER DAY (EX., 101)'
           2NN = 'PER WEEK (EX., 202)'
           3NN = 'PER MONTH (EX., 327)'
           4NN = 'PER YEAR (EX., 406)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL    FRUIT = HOW OFTEN DO YOU EAT FRUIT
 /*        1NN = 'PER DAY (EX., 101)'
           2NN = 'PER WEEK (EX., 202)'
           3NN = 'PER MONTH (EX., 327)'
           4NN = 'PER YEAR (EX., 406)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL GREENSAL = HOW OFTEN DO YOU EAT GREEN SALAD
 /*        1NN = 'PER DAY (EX., 101)'
           2NN = 'PER WEEK (EX., 202)'
           3NN = 'PER MONTH (EX., 327)'
           4NN = 'PER YEAR (EX., 406)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL POTATOES = HOW OFTEN DO YOU EAT POTATOES
 /*        1NN = 'PER DAY (EX., 101)'
           2NN = 'PER WEEK (EX., 202)'
           3NN = 'PER MONTH (EX., 327)'
           4NN = 'PER YEAR (EX., 406)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL  CARROTS = HOW OFTEN DO YOU EAT CARROTS
 /*        1NN = 'PER DAY (EX., 101)'
           2NN = 'PER WEEK (EX., 202)'
           3NN = 'PER MONTH (EX., 327)'
           4NN = 'PER YEAR (EX., 406)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL VEGETABL = SERVINGS OF VEGETABLES
 /*        1NN = 'PER DAY (EX., 101)'
           2NN = 'PER WEEK (EX., 202)'
           3NN = 'PER MONTH (EX., 327)'
           4NN = 'PER YEAR (EX., 406)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL _FRTSERV = DAILY SERVINGS OF FRTS AND VEGS
 /* 99999 = 'SERVINGS OF FRTS AND VEGS (2 DECIMAL PLACES IMPLIED)' */;

LABEL _FRTINDX = SUMMARY INDEX OF FRTS AND VEGS
 /*          1 = 'LESS THAN ONCE PER DAY OR NEVER'
             2 = '1 TO LESS THAN 3 TIMES PER DAY'
             3 = '3 TO LESS THAN 5 TIMES PER DAY'
             4 = '5 OR MORE TIMES PER DAY'
           .,9 = 'UNK/REFUSED' */;

LABEL STATEQUE = STATE ADDED QUESTIONS;

LABEL _RFSEATB = AT RISK FOR LACK OF SEATBELT USAGE
 /*         AT RISK DEFINED AS SELDOM OR NEVER USE SEATBELTS

       NOTE FOR ALL _RF VARIABLES FOLLOWING ARE CODES:
            1 = 'NOT AT RISK'
            2 = 'AT RISK'
            9 = 'REFUSED' */;

LABEL _RFSEAT2 = AT RISK FOR LACK OF SEATBELT USAGE
 /*         AT RISK DEFINED AS SOMETIMES, SELDOM,
                     OR NEVER USE SEATBELTS */;

LABEL _RFHYPE2 = AT RISK FOR HYPERTENSION
 /*        AT RISK DEFINED AS EVER BEEN TOLD YOU HAVE HIGH
           BLOOD PRESSURE  */;

LABEL _RFHYPE4 = AT RISK FOR HYPERTENSION
 /*        AT RISK DEFINED AS TOLD MORE THAN ONCE BLOOD PRESSURE
           HIGH OR CURRENTLY ON MEDICATION FOR HIGH BLOOD PRESSURE */;

LABEL _RFOBESE = AT RISK FOR OVERWEIGHT
 /*        AT RISK DEFINED AS GREATER THAN 120% OF MEDIAN
           WEIGHT FOR HEIGHT (_WTFORHT)
           BASED ON 1959 METROPOLITAN LIFE TABLES */;

LABEL _RFWHBMI = AT RISK FOR OVERWEIGHT (BASED ON BMI)
 /*        AT RISK DEFINED AS BMI GE 27.8 FOR MALES
           AND 27.3 FOR FEMALES (LOWER EXCEPTABLE LIMIT IS
           12.0 FOR MALE AND FEMALE, UPPER 57.0-M & 73.0-F */;

LABEL _RFLIFES = AT RISK FOR SEDENTARY LIFESTYLE
 /*        AT RISK DEFINED AS SEDENTARY OR IRREGULAR
           PHYSICAL ACTIVITY PROFILE */;

LABEL _RFSMOKE = AT RISK FOR SMOKING
 /*        AT RISK DEFINED AS CURRENT SMOKER */;

LABEL _RFTOBAC = AT RISK FOR SMOKELESS TOBACCO
 /*        AT RISK DEFINED AS CURRENT USER */;

LABEL _RFDRACU = AT RISK FOR ACUTE DRINKING
 /*        AT RISK DEFINED AS HAVING 5 OR MORE DRINKS ON AN
           OCCASION DURING PAST 4 WEEKS (DRINKGE5) AT LEAST
           ONCE   */;

LABEL _RFDRCHR = AT RISK FOR CHRONIC DRINKING
 /*        AT RISK DEFINED AS HAVING 60 OR MORE DRINKS
           A MONTHS   */;

LABEL _RFDRDRI = AT RISK FOR DRINKING AND DRIVING
 /*        AT RISK DEFINED AS HAVING DRIVEN WHEN YOU HAVE
           HAD TOO MUCH TO DRINK DURING THE PAST 4 WEEKS
           (DRINKDRI) AT LEAST ONCE   */;

LABEL _RFCHOL = AT RISK FOR BLOOD CHOLESTEROL LEVEL
 /*  NOTE:     1 <= CHOL < 200 - DESIRABLE
             200 <= CHOL < 777 - BORDERLINE-HIGH AND HIGH
                9 = CHOL - UNK/REFUSED

             1 = 'NOT AT RISK'
             2 = 'AT RISK'
             9 = 'UNKNOWN' */;

LABEL _RAW     = '# ADULTS/# TELEPHONES'
      _CSA     = 'UNEQUAL CLUSTER SIZE ADJUSTMENT'
      _WT1     = 'PRODUCT OF _RAW AND _CSA'
      _POSTSTR = 'AGE,RACE,SEX ADJ-1989 CENSUS VS SAMPLE';

LABEL _FINALWT = 'PRODUCT OF _POSTSTR AND _WT1';
 /*        10 DIGIT WEIGHT WITH 2 DECIMAL PLACES
           THIS IS THE WEIGHT YOU SHOULD USE */

  IF _FINALWT NE .; IF _FINALWT NE 0;

     IF 18 <= AGE <=34 THEN _AGEG = 1;
       ELSE
     IF 35 <= AGE <=54 THEN _AGEG = 2;
       ELSE
     IF 55 <= AGE <=99 THEN _AGEG = 3;


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
     IF 70 <= AGE <=99 THEN _AGEG5YR = 11;
       ELSE
     IF 07 <= AGE <=09 THEN _AGEG5YR = 12;


     IF RACE = 1 THEN _RACEG = 1;
       ELSE
     IF 2 <= RACE <=8 THEN _RACEG = 2;


     IF RACE = 1 THEN _RACEGR = 1;
       ELSE
     IF RACE = 2 THEN _RACEGR = 2;
       ELSE
     IF 3 <= RACE <=5  THEN _RACEGR = 3;
       ELSE
     IF 6 <= RACE <=8 THEN _RACEGR = 4;
       ELSE
      _RACEGR = 9;


     IF LEVEL GE 1 AND LEVEL LT 200
          THEN _RFCHOL = 1;
       ELSE
     IF LEVEL GE 200 AND LEVEL LT 777
          THEN _RFCHOL = 2;
       ELSE
         _RFCHOL = 9;
RUN;

***************** END OF PROGRAM **************************;