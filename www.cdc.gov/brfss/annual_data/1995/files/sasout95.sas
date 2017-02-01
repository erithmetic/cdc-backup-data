*****************************************************************************************
* DESCRIPTION:   THIS PROGRAM CONVERTS A STATES ASCII DATAFILE OF COMPLETES LOCATED AT  *
*                <DATAIN> FILEREF, INTO A SAS DATABASE STORED AT <DATAOUT> LIBREF       *
* UPDATED - 07/27/2004                                                                  *
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
* SPECIFY PATH OF WHERE SAS FORMAT LIBRARY IS STORED             *
* SPECIFY PATH OF WHERE THE FORMAT ASSIGNMET STATEMENT IS STORED *
******************************************************************;

*FILENAME DATAIN '<PATH FOR INPUT BRFSS ASCII DATA FILE>' LRECL = 950 ;

*****************************************************************************
* EXAMPLE:                                                                  *
*       FILENAME DATAIN 'C:\BRFSS\2003\CDBRFS03.ASC' LRECL = 950            *
* NOTE: MAKE SURE THE ASTERISK IS REMOVED BEFORE THE WORD FILENAME AND      *
*       MAKE SURE THAT THE GREATER THAN AND LESS THAN SIGNS < > ARE REMOVED *
*       FROM THE FILENAME STATEMENT                                         *
*****************************************************************************;

*LIBNAME DATAOUT '<PATH FOR CREATED OUTPUT SAS DATA SET>';

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

DATA DATAOUT.CDBRFS95;
   LENGTH DEFAULT=4;
   LENGTH _WTFORHT _FRTSERV 6 _DRNKMO 5
          _POSTSTR _FINALWT 8;
   INFILE DATAIN MISSOVER;

* CREATE RISK FACTOR SAS FILE FOR 1995 SURVEILLANCE DATA;

* COLUMN LOCATION OF VARIABLES;
INPUT							
         _STATE           1-2  	 /* IDENTIFICATION INFORMATION */
         _STRATA          3
         _STSTR           1-3
         _PSU             4-8
         _RECORD      $   9
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

          GENHLTH        33      	/* SECTION 1: HEALTH STATUS */
          PHYSHLTH       34-35
          MENTHLTH       36-37
          POORHLTH       38-39

          HLTHPLAN       40     	/* SECTION 2: HEALTH CARE ACCESS */
          PASTPLAN       41
          MEDCOST        42
          CHECKUP        43

          BPTAKE         44			/* SECTION 3: HYPERTENSION AWARENES */
          BPHIGH         45
          HIGHGT1        46

          BLOODCHO       47			/* SECTION 4: CHOLESTEROL AWARENESS */
          CHOLCHK        48
          TOLDHI         49

          DIABETES       50			/* SECTION 5: DIABETES */

          SEATBELT    	 51			/* SECTION 6: INJURY CONTROL */
          CHLDLT16   	 52-53
          SFTYLT16       54
          BIKEHLMT    	 55
          SMKDETEC    	 56

          SMOKE100       57			/* SECTION 7: TOBACCO USE */
          SMOKENOW       58
          SMOKE30        59-60
          SMOKENUM       61-62
          SMOKNM30       63-64
          STOPSMOK       65
          LASTSMOK       66-67

          DRINKANY   	 68			/* SECTION 8: ALCOHOL CONSUMPTION */
          ALCOHOL   	 69-71
          NALCOCC     	 72-73
          DRINKGE5    	 74-75
          DRINKDRI    	 76-77

          AGE            78-79		/* SECTION 9: DEMOGRAPHICS */
          ORACE          80
          HISPANIC       81
          MARITAL        82
          CHLD04         83
          CHLD0512       84
          CHLD1317       85
          EDUCA          86
          EMPLOY         87
          INCOME95       88-89
          WEIGHT         90-92
          HEIGHT    $	 93-95
          HTF            93
          HTI            94-95
          CTYCODE        96-98
          NUMHHOLD       99
          NUMPHONS       100
          SEX            101

          HADMAM         102		/* SECTION 10: WOMEN'S HEALTH */
          HOWLONG        103
          MAMM5YRS       104-105
          WHYDONE        106
          PROFEXAM       107
          LENGEXAM       108
          REASEXAM       109
          HADPAP         110
          LASTPAP        111
          WHYPAP         112
          HADHYST        113 
          PREGNANT       114

          FLUSHOT     	 115		/* SECTION 11: IMMUNIZATION */
          PNEUMVAC   	 116

          HADRECTL   	 117		/* SECTION 12: COLORECTAL CANCER SCREENING */
          LASTEXAM   	 118
          HADPROCT   	 119
          LASTPROC   	 120

          GRADE95       121-122		/* SECTION 13: HIV/AIDS */
          CONDUSE       123
          GETHIV        124
          HIVTEST       125
          DONBLD85      126
          LASTDON       127-130
          LSTTST95      131-134
          RSNTST95      135-136
          WHRTST95      137-138
          RESULTS       139
          COUNSEL       140
          CONEFF95      141
          SEXBEHAV      142
          SEX1PTNR      143
          USECONDM      144
          SELCPTNR      145

          USEEVER       146			/* MODULE 1: SMOKELESS TOBACCO */
          USENOW        147

          FRUITJUI   	148-150		/* MODULE 2: FRUITS AND VEGETABLES */
          FRUIT      	151-153
          GREENSAL      154-156
          POTATOES      157-159
          CARROTS  	    160-162
          VEGETABL      163-165

          DIABAGE    	166-167		/* MODULE 3: DIABETES */
          INSULIN     	168
          INSLNFRQ    	169-171
          BLDSUGAR    	172-174
          HEMOGLBN    	175
          DOCTDIAB    	176-177
          CHKHEMO     	178
          FEETCHK     	179
          EYEEXAM     	180
          VISNDIST    	181
          VISNREAD    	182
          VISIONTV    	183

          EXERANY     	184			/* MODULE 4: EXERCISE */
          EXERACT1    	185-186
          EXERDIS1    	187-189
          EXEROFT1    	190-192
          EXERHMM1    	193-195
          EXEROTH2    	196
          EXERACT2    	197-198
          EXERDIS2    	199-201
          EXEROFT2    	202-204
          EXERHMM2    	205-207

          LOSEWT      	208			/* MODULE 5: WEIGHT CONTROL */
          MAINTAIN    	209
          FEWCAL      	210
          PHYACT      	211
          WTDESIRE    	212-214
          DRADVICE    	215

          PASTYEAR    	216			/* MODULE 6: YEARS OF HEALTHY LIFE */
          STOPWORK    	217
          LMTDWORK    	218
          NOHOUSWK    	219
          LMTDHOUS    	220
          NOJOB       	221
          LMTDJOB     	222
          LMTDACT     	223
          PRSNLCAR    	224
          ROUTNEED    	225
          PRSNL65     	226
          ROUT65      	227
          LMTD65      	228

          QLACTLMT    	229			/* MODULE 7: QUALITY OF LIFE */
          HLTHPROB    	230-231
          LONGLMTD    	232-234
          QLPERSNL    	235
          QLROUTIN    	236
          PAINACTV    	237-238
          QLMENTAL    	239-240
          QLSTRESS    	241-242
          QLREST      	243-244
          QLHLTHY     	245-246

          PRIMCARE    	247			/* MODULE 8: HEALTH CARE UTILIZATION */
          MOSTCARE    	248
          FACILITY    	249-250
          NOPRIMCR    	251-252

          LASTDENT    	253			/* MODULE 9: ORAL HEALTH */
          REASDENT    	254-255
          RMVTEETH    	256
          DENTLINS    	257

          FIREARMS    	258			/* MODULE 10: FIREARMS */
          GUNSCAR     	259
          GUNSHOME    	260
          LOADLOCK    	261
          UNLOADED    	262
          UNLDLOCK    	263
          AMMUNITN    	264
          AMMSTORG    	265
          SFTYLEVL    	266
          PROTECTN    	267

     @275 STATEQUE $CHAR176.		/* STATE ADDED QUESTIONS */

          RACE        451-452		/* CALCULATED VARIABLES*/
         _SMOKER2     453
         _DRNKMO      454-457
         _WTFORHT     458-462
         _BMI         463-465
         _TOTINDX     466
         _SMKLESS     467
    @468 _FRTSERV     5.2
         _FRTINDX     473

         _RFSEAT2     474
         _RFSEAT3     475
         _RFHYPE2     476
         _RFSMOK2     477
         _RFDRACU     478
         _RFDRDRI     479
         _RFDRCHR     480
         _RFLIFES     481
         _RFREGUL     482
         _RFOBESE     483
         _RFWHBMI     484
         _RFTOBAC     485

    @493 _RAW         4.2
    @497 _CSA         4.2
    @501 _WT1         4.2
    @505 _POSTSTR     10.2
    @515 _FINALWT     10.2

         _AGEG_       525
         _RACEG_      526
         _IMPAGE      528-529;

* IDENTIFICATION INFORMATION;
LABEL _STATE = 'STATE FIPS CODE';
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

LABEL _STRATA  = 'STRATUM CODE'
      _STSTR   = '_STATE AND _STRATA COMBINED'
      _PSU     = 'PRIMARY SAMPLING UNIT'
      _RECORD  = 'RECORD NUMBER'

      IDATE    = 'DATE OF INTERVIEW'
      IMONTH   = 'MONTH OF INTERVIEW'
      IDAY     = 'DAY OF INTERVIEW'
      IYEAR    = 'YEAR OF INTERVIEW'

      INTVID   = 'INTERVIEWER ID'

      PHONENUM = 'PHONE NUMBER'
      AREACODE = 'AREA CODE'
      PREFIX   = 'PREFIX OF PHONE NUMBER'
      SUFFIX   = 'SUFFIX OF PHONE NUMBER';

LABEL DISPCODE = 'DISPOSITION OF INTERVIEW';
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

LABEL WINDDOWN = 'INTERVIEW ACCORDING TO WAKSBERG DESIGN';
 /*          . = 'REGULAR MODE'
             9 = 'WINDDOWN' */;

LABEL NUMADULT = 'NUMBER OF ADULTS IN HOUSEHOLD'
      NUMMEN   = 'NUMBER OF ADULT MALES IN HOUSEHOLD'
      NUMWOMEN = 'NUMBER OF ADULT FEMALES IN HOUSEHOLD';

* HEALTH STATUS;
LABEL GENHLTH  = 'GENERAL HEALTH';
 /*          1 = 'EXCELLENT'
             2 = 'VERY GOOD'
             3 = 'GOOD'
             4 = 'FAIR'
             5 = 'POOR'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL PHYSHLTH = 'NUMBER OF DAYS PHYSICAL HEALTH NOT GOOD';
 /*         NN = '# OF DAYS (EX. 01,02,03,04,...,30)'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

LABEL MENTHLTH = 'NUMBER OF DAYS MENTAL HEALTH NOT GOOD';
 /*         NN = '# OF DAYS (EX. 01,02,03,04,...,30)'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

LABEL POORHLTH = 'POOR PHYSICAL HEALTH';
 /*         NN = '# OF DAYS (EX. 01,02,03,04,...,30)'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

* HEALTH CARE ACCESS;
LABEL HLTHPLAN = 'HAVE ANY KIND OF HEALTH PLAN';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL PASTPLAN = 'LAST HAD HEALTH COVERAGE';
 /*        1 = 'WITHIN THE PAST 6 MONTHS'
           2 = 'WITHIN THE PAST YEAR'
           3 = 'WITHIN THE PAST TWO YEARS'
           4 = 'WITHIN THE PAST FIVE YEARS'
           5 = '5 OR MORE YEARS AGO'
           7 = 'DO NOT KNOW'
           8 = 'NEVER'
           9 = 'REFUSED' */;

LABEL MEDCOST = 'TIME WHEN COULD NOT AFFORD TO SEE DOCTOR';
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL CHECKUP = 'HOW LONG SINCE LAST ROUTINE CHECKUP';
 /*         1 = 'WITHIN PAST YEAR'
            2 = 'WITHIN PAST TWO YEARS'
            3 = 'WITHIN PAST FIVE YEARS'
            4 = 'MORE THAN FIVE YEARS'
            7 = 'DO NOT KNOW'
            8 = 'NEVER'
            9 = 'REFUSED' */;

* HYPERTENSION AWARENESS;
LABEL BPTAKE = 'HOW LONG SINCE BLOOD PRESSURE TAKEN';
 /*        1 = 'WITHIN THE PAST 6 MONTHS'
           2 = 'WITHIN THE PAST YEAR'
           3 = 'WITHIN THE PAST TWO YEARS'
           4 = 'WITHIN THE PAST FIVE YEARS'
           5 = 'MORE THAN 5 YEARS AGO'
           7 = 'DO NOT KNOW'
           8 = 'NEVER'
           9 = 'REFUSED' */;

LABEL BPHIGH = 'EVER TOLD BLOOD PRESSURE HIGH';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL HIGHGT1 = 'TOLD MORE THAN ONCE BP HIGH';
 /*         1 = 'MORE THAN ONCE'
            2 = 'ONLY ONCE'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

* CHOLESTEROL AWARENESS;
LABEL BLOODCHO = 'EVER HAD BLOOD CHOLESTEROL CHECKED';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL CHOLCHK = 'HOW LONG SINCE CHOLESTEROL CHECKED';
 /*         1 = 'WITHIN PAST YEAR'
            2 = 'WITHIN PAST TWO YEARS'
            3 = 'WITHIN PAST FIVE YEARS'
            4 = 'MORE THAN FIVE YEARS'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL TOLDHI = 'EVER TOLD BLOOD CHOLESTEROL HIGH';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

* DIABETES;
LABEL DIABETES = 'EVER TOLD BY DOCTOR YOU HAVE DIABETES';
 /*          1 = 'YES'
             2 = 'YES, BUT FEMALE TOLD WHILE PREGNANT'
             3 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

* INJURY CONTROL;
LABEL SEATBELT = 'SEATBELT USE';
 /*          1 = 'ALWAYS'
             2 = 'NEARLY ALWAYS'
             3 = 'SOMETIMES'
             4 = 'SELDOM'
             5 = 'NEVER'
             7 = 'DO NOT KNOW'
             8 = 'NEVER DRIVE OR RIDE IN A CAR'
             9 = 'REFUSED' */;

LABEL CHLDLT16 = 'AGE OF OLDEST CHILD UNDER AGE 16';
 /* CODE <1 YEAR AS 01
            NN = 'AGE IN YEARS (EX. 01,02,03,04,...,15)'
            77 = 'DO NOT KNOW'
            88 = 'NO CHILDREN UNDER AGE 16'
            99 = 'REFUSED' */;

LABEL SFTYLT16 = 'OLDEST CHILD SAFETY BELT USAGE';
 /*          1 = 'ALWAYS'
             2 = 'NEARLY ALWAYS'
             3 = 'SOMETIMES'
             4 = 'SELDOM'
             5 = 'NEVER'
             7 = 'DO NOT KNOW'
             8 = 'NEVER RIDES IN A CAR'
             9 = 'REFUSED' */;

LABEL BIKEHLMT = 'BICYCLE HELMET WORN WHEN RIDING';
 /*          1 = 'ALWAYS'
             2 = 'NEARLY ALWAYS'
             3 = 'SOMETIMES'
             4 = 'SELDOM'
             5 = 'NEVER'
             7 = 'DO NOT KNOW'
             8 = 'NEVER RIDES IN A CAR'
             9 = 'REFUSED' */;

LABEL SMKDETEC = 'LAST TIME TESTED SMOKE DETECTORS';
 /*         1 = 'WITHIN PAST MONTH'
            2 = 'WITHIN PAST 6 MONTHS'
            3 = 'WITHIN PAST YEAR'
            4 = 'ONE OR MORE YEARS AGO'
            5 = 'NEVER'
            6 = 'NO SMOKE DETECTORS IN HOME'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

* TOBACCO USE;
LABEL SMOKE100 = 'SMOKED AT LEAST 100 CIGARETTES';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL SMOKENOW = 'CURRENTLY SMOKE';
 /*          1 = 'YES'
             2 = 'NO'
             9 = 'REFUSED' */;

LABEL SMOKE30 = 'NUMBER OF DAYS SMOKED PAST 30 DAYS';
 /*         NN = '# OF DAYS SMOKED (EX. 01,02,03,04,...,30)'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

LABEL SMOKENUM = 'NUMBER OF CIGS SMOKED A DAY';
 /*         NN = '# OF CIGS SMOKED A DAY (EX. 01,02,03,04,...,76)'
            77 = 'DO NOT KNOW'
            99 = 'REFUSED' */;

LABEL SMOKNM30 = 'CIGS SMOKED WHEN SMOKED < 30 DAYS';
 /*         NN = '# OF CIGS SMOKED A DAY (EX. 01,02,03,04,...,76)'
            77 = 'DO NOT KNOW'
            99 = 'REFUSED' */;

LABEL STOPSMOK = 'QUIT SMOKING A DAY OR LONGER IN PAST YR';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LASTSMOK = 'HOW LONG SINCE LAST SMOKED CIGS';
 /*         01 = 'LESS THAN 1 MONTH'
            02 = '1 MO TO LESS THAN 3 MOS'
            03 = '3 MOS TO LESS THAN 6 MOS'
            04 = '6 MOS TO LESS THAN 1 YR'
            05 = '1 YEAR TO LESS THAN 5 YRS'
            06 = '5 TO LESS THAN 15 YRS'
            07 = '15 OR MORE YEARS AGO'
            77 = 'DO NOT KNOW'
            88 = 'NEVER SMOKED REGULARLY'
            99 = 'REFUSED' */;

* ALCOHOL CONSUMPTION;
LABEL DRINKANY = 'ALCOHOLIC BEVERAGES IN PAST MONTH';
 /* RESPONSE CATEGORIES DIFFERENT FROM 1992
             1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL ALCOHOL = 'HOW OFTEN DRINK LIQUOR';
 /*       1NN = 'DAYS PER WEEK (WHERE 1NN=101-107)'
          2NN = 'DAYS PER MONTH (WHERE 2NN=201-231)'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

LABEL NALCOCC = 'AVERAGE NUMBER OF DRINKS PER OCCASION';
 /*        NN = '# OF DRINKS (EX., 01,02,...,76)'
           77 = 'DO NOT KNOW'
           99 = 'REFUSED' */;

LABEL DRINKGE5 = 'FIVE OR MORE DRINKS ON AN OCCASION';
 /*         NN = 'NUMBER OF TIMES (EX., 01,...,76)'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

LABEL DRINKDRI = 'DRINK AND DRIVE';
 /*         NN = 'NUMBER OF TIMES (EX., 01,...,76)'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

* DEMOGRAPHICS;
LABEL AGE = 'REPORTED AGE IN YEARS';
 /*        18,...,99 = 'VALID AGE'
                  07 = 'DO NOT KNOW'
                  09 = 'REFUSED' */;

LABEL _AGEG = 'REPORTED AGE IN YEARS GROUPED';
 /*                1 = '18-34'
                   2 = '35-54'
                   3 = '55+' */;

LABEL _AGEG5YR = 'REPORTED AGE IN 5 YEAR AGE GROUPS';
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

LABEL _AGE65YR = 'REPORTED AGE IN 65+ YRS GROUPED';
 /*                1 = '18-64'
                   2 = '65+'
                   3 = 'REFUSED' */;

LABEL ORACE = 'ORIGINAL REPORTED RACE';
 /*       1 = 'WHITE'
          2 = 'BLACK'
          3 = 'ASIAN, PACIFIC ISLANDER'
          4 = 'AMERICAN INDIAN, ALASKA NATIVE'
          5 = 'OTHER'
          7 = 'DO NOT KNOW'
          9 = 'REFUSED' */;

LABEL HISPANIC = 'HISPANIC ORIGIN';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL RACE = 'NEW RACE CODE';
 /*      1 = 'WHITE NON-HISPANIC'
         2 = 'BLACK NON-HISPANIC'
         3 = 'WHITE HISPANIC'
         4 = 'BLACK HISPANIC'
         5 = 'OTHER HISPANIC'
         6 = 'ASIAN/PACIFIC ISLANDER'
         7 = 'AMERICAN INDIAN/ALASKA NATIVE'
         8 = 'OTHER'
        99 = 'DON'T KNOW, REFUSED, MISSING' */;

LABEL _RACEG = 'RACE GROUPED';
 /*        1 = 'WHITE NON-HISPANIC'
           2 = 'NON-WHITE OR HISPANIC'
           9 = 'DON'T KNOW, REFUSED, MISSING' */;

LABEL _RACEGR = 'RACE GROUPED';
 /*         1 = 'WHITE NON-HISPANIC'
            2 = 'BLACK NON-HISPANIC'
            3 = 'HISPANIC'
            4 = 'OTHER'
            9 = 'DON'T KNOW, REFUSED, MISSING' */;

LABEL MARITAL = 'MARITAL STATUS';
 /*         1 = 'MARRIED'
            2 = 'DIVORCED'
            3 = 'WIDOWED'
            4 = 'SEPARATED'
            5 = 'NEVER BEEN MARRIED'
            6 = 'MEMBER OF AN UNMARRIED COUPLE'
            9 = 'REFUSED' */;

LABEL CHLD04 = 'NUMBER OF CHILDREN < 5 YEARS OLD';
 /*        1,...,7 = 'NUMBER OF CHILDREN'
                 8 = 'NONE'
                 9 = 'REFUSED' */;

LABEL CHLD0512 = 'NUMBER OF CHILDREN 5 TO 12 YEARS OLD';
 /*        1,...,7 = 'NUMBER OF CHILDREN'
                 8 = 'NONE'
                 9 = 'REFUSED' */;

LABEL CHLD1317 = 'NUMBER OF CHILDREN 13 TO 17 YEARS OLD';
 /*        1,...,7 = 'NUMBER OF CHILDREN'
                 8 = 'NONE'
                 9 = 'REFUSED' */;

LABEL EDUCA = 'EDUCATION LEVEL';
 /*       1 = 'NEVER ATTENDED SCHOOL/KINDERGARTEN ONLY'
          2 = 'ELEMENTARY'
          3 = 'SOME HIGH SCHOOL'
          4 = 'HIGH SCHOOL GRAD/GED'
          5 = 'SOME COLLEGE OR TECH SCHOOL'
          6 = 'COLLEGE GRADUATE OR HIGHER'
          9 = 'REFUSED' */;

LABEL EMPLOY = 'EMPLOYMENT STATUS';
 /* RESPONSE CATEGORIES DIFFERENT FROM 1992
           1 = 'EMPLOYED FOR WAGES'
           2 = 'SELF EMPLOYED'
           3 = 'OUT OF WORK MORE THAN 1 YEAR'
           4 = 'OUT OF WORK LESS THAN 1 YEAR'
           5 = 'HOMEMAKER'
           6 = 'STUDENT'
           7 = 'RETIRED'
           8 = 'UNABLE TO WORK'
           9 = 'REFUSED' */;

LABEL INCOME95 = 'INCOME LEVEL';
 /*       01 = 'LESS THAN $10,000'
          02 = '$10,000 TO $14,999'
          03 = '$15,000 TO $19,999'
          04 = '$20,000 TO $24,999'
          05 = '$25,000 TO $34,999'
          06 = '$35,000 TO $49,999'
          07 = '$50,000 TO $74,999'
          08 = '$75,000 OR MORE'
          77 = 'DO NOT KNOW'
          99 = 'REFUSED' */;

LABEL WEIGHT = 'REPORTED WEIGHT IN POUNDS';
 /*      ### = 'CURRENT WEIGHT WITHOUT SHOES'
         777 = 'DO NOT KNOW'
         999 = 'REFUSED' */;

LABEL HEIGHT = 'REPORTED HEIGHT IN FEET AND INCHES';
 /* NNN = 'HEIGHT W/O SHOES IN FEET AND INCHES (EX., 506=5 FT AND 6 IN)'
    777 = 'DO NOT KNOW'
    999 = 'REFUSED' */;

LABEL HTF = 'REPORTED HEIGHT FEET';
 /*     N = '# OF FEET'
        7 = 'DO NOT KNOW'
        9 = 'REFUSED' */;

LABEL HTI = 'REPORTED HEIGHT INCHES';
 /*    NN = '# OF INCHES'
       77 = 'DO NOT KNOW'
       99 = 'REFUSED' */;

LABEL CTYCODE = 'COUNTY CODE';
 /*       NNN = 'COUNTY CODE'
          777 = 'DO NOT KNOW'
          999 = 'REFUSED' */;

LABEL NUMHHOLD = 'MORE THAN ONE TELPHONE NUMBER IN HH';
 /*        1 = 'YES'
           2 = 'NO'
           9 = 'REFUSED' */;

*NUMBER OF TELEPHONE NUMBERS REACHING HOUSEHOLD;
*ASKED ONLY OF THOSE INDICATING THEY HAD MORE THAN ONE TELPHONE NUMBER;

LABEL NUMPHONS = 'NUMBER OF UNIQUE PHONE NUMBERS IN HH';
 /*   1,...,7 = 'NUMBER OF PHONE NUMBERS'
            8 = '8 OR MORE'
            9 = 'REFUSED' */;

LABEL SEX = 'SEX';
 /*     1 = 'MALE'
        2 = 'FEMALE' */;

* WOMEN'S HEALTH;
LABEL HADMAM = 'HAVE YOU EVER HAD A MAMMOGRAM';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL HOWLONG = 'HOW LONG SINCE LAST MAMMOGRAM';
 /*          1 = 'WITHIN THE PAST YEAR'
             2 = 'WITHIN THE PAST TWO YEARS'
             3 = 'WITHIN THE PAST THREE YEARS'
             4 = 'WITHIN THE PAST 5 YEARS'
             5 = '5 OR MORE YEARS AGO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL MAMM5YRS = 'MAMMOGRAMS IN THE LAST FIVE YEARS';
 /*        NN = '# OF MAMMOGRAMS (EX., 01,02,...,60)'
           77 = 'DO NOT KNOW'
           88 = 'NONE'
           99 = 'REFUSED' */;

LABEL WHYDONE = 'REASON YOU HAD MAMMOGRAM';
 /*         1 = 'ROUTINE CHECKUP'
            2 = 'BREAST PROBLEM OTHER THAN CANCER'
            3 = 'HAD BREAST CANCER'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL PROFEXAM = 'EVER HAD BREAST PHYSICAL EXAM BY DOCTOR';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL LENGEXAM = 'HOW LONG SINCE LAST BREAST PHYSICAL EXAM';
 /* RESPONSE CATEGORIES DIFFERENT FROM 1992
             1 = 'WITHIN THE PAST YEAR'
             2 = 'WITHIN THE PAST TWO YEARS'
             3 = 'WITHIN THE PAST THREE YEARS'
             4 = 'WITHIN THE PAST 5 YEARS'
             5 = '5 OR MORE YEARS AGO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL REASEXAM = 'REASON YOU HAD BREAST PHYSICAL EXAM';
 /*          1 = 'ROUTINE CHECKUP'
             2 = 'BREAST PROBLEM OTHER THAN CANCER'
             3 = 'HAD BREAST CANCER'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL  HADPAP = 'EVER HAD A PAP SMEAR TEST';
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL LASTPAP = 'WHEN WAS LAST PAP SMEAR';
 /*          1 = 'WITHIN THE PAST YEAR'
             2 = 'WITHIN THE PAST TWO YEARS'
             3 = 'WITHIN THE PAST THREE YEARS'
             4 = 'WITHIN THE PAST 5 YEARS'
             5 = '5 OR MORE YEARS AGO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL WHYPAP = 'REASON YOU HAD PAP SMEAR';
 /*         1 = 'ROUTINE EXAM'
            2 = 'CHECK CURRENT OR PREVIOUS PROBLEM'
            3 = 'OTHER'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL HADHYST = 'EVER HAD A HYSTERECTOMY';
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL PREGNANT = 'ARE YOU NOW PREGNANT';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

* IMMUNIZATION;
LABEL FLUSHOT  = 'HAD FLU SHOT IN PAST 12 MONTHS';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL PNEUMVAC = 'EVER HAD PNEUMONIA VACCINATION';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

* COLORECTAL CANCER SCREENING;
LABEL HADRECTL = 'EVER HAD A DIGITAL RECTAL EXAM';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LASTEXAM = 'HOW LONG SINCE LAST DIGITAL RECTAL EXAM';
 /*          1 = 'WITHIN PAST YEAR'
             2 = 'WITHIN PAST TWO YEARS'
             3 = 'WITHIN PAST FIVE YEARS'
             4 = 'FIVE OR MORE YEARS AGO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL HADPROCT = 'EVER HAD A PROCTOSCOPIC EXAM';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LASTPROC = 'HOW LONG SINCE PROCTOSCOPIC EXAM';
 /*          1 = 'WITHIN PAST YEAR'
             2 = 'WITHIN PAST TWO YEARS'
             3 = 'WITHIN PAST FIVE YEARS'
             4 = 'FIVE OR MORE YEARS AGO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

* AIDS;
LABEL GRADE95 = 'GRADE TO BEGIN HIV INFECTION & AIDS EDUC';
 /*       01,...,12 = 'GRADE CODE'
                 55 = 'KINDERGARTEN'
                 77 = 'DO NOT KNOW'
                 88 = 'NEVER'
                 99 = 'REFUSED' */;

LABEL CONDUSE  = 'ENCOURAGE SEX ACTIVE TEEN TO USE CONDOM';
 /*          1 = 'YES'
             2 = 'NO'
             3 = 'WOULD GIVE OTHER ADVICE'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL GETHIV  = 'CHANCES OF GETTING INFECTED WITH HIV';
 /*          1 = 'HIGH'
             2 = 'MEDIUM'
             3 = 'LOW'
             4 = 'NONE'
             5 = 'NOT APPLICABLE'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL HIVTEST = 'BLOOD TESTED FOR HIV';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL DONBLD85 = 'DONATED BLOOD SINCE MARCH 1985';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LASTDON = 'DATE LAST DONATED BLOOD';
 /*   0385-1295 = 'MONTH AND YEAR LAST BLOOD DONATION'
      7785-7795 = 'UNK MONTH & KNOWN YEAR OF LAST DONATION'
      9985-9995 = 'REF MONTH & KNOWN YEAR OF LAST DONATION'
           7777 = 'DO NOT KNOW'
           9999 = 'REFUSED' */;

LABEL LSTTST95 = 'LAST BLOOD TEST FOR HIV';
 /*   0180-1295 = 'MONTH AND YEAR LAST AIDS TEST'
      7780-7795 = 'UNK MONTH & KNOWN YEAR OF LAST AIDS TEST'
      9980-9995 = 'REF MONTH & KNOWN YEAR OF LAST AIDS TEST'
           7777 = 'DO NOT KNOW'
           9999 = 'REFUSED' */;

LABEL RSNTST95 = 'MAIN REASON BLOOD TESTED FOR HIV';
 /*      01 = 'FOR HOSPITALIZATION OR SURGINAL PROCEDURE'
         02 = 'TO APPLY FOR HEALTH INSURANCE'
         03 = 'TO APPLY FOR LIFE INSURANCE'
         04 = 'FOR EMPLOYMENT'
         05 = 'TO APPLY FOR A MARRIAGE LICENSE'
         06 = 'FOR MILITARY INDUCTION OR MILITARY SERVICE'
         07 = 'FOR IMMIGRATION'
         08 = 'JUST TO FIND OUT IF YOU WERE INFECTED'
         09 = 'BECAUSE OF REFERRAL BY A DOCTOR'
         10 = 'BECAUSE OF PREGNANCY'
         11 = 'REFERRED BY YOUR SEX PARTNER'
         12 = 'BECAUSE IT WAS PART OF A BLOOD DONATION PROCESS'
         13 = 'FOR ROUTINE CHECKUP'
         14 = 'BECAUSE OF OCCUPATIONAL EXPOSURE'
         15 = 'BECAUSE OF ILLNESS'
         77 = 'DO NOT KNOW'
         87 = 'OTHER'
         99 = 'REFUSED' */;

LABEL WHRTST95 = 'WHERE WAS LAST BLOOD TEST FOR HIV';
 /*      01 = 'PRIVATE DOCTOR, HMO'
         02 = 'BLOOD BANK, PLASMA CENTER, RED CROSS'
         03 = 'HEALTH DEPARTMENT'
         04 = 'AIDS CLINIC, COUNSELING, TESTING SITE'
         05 = 'HOSPITAL, EMERGENCY ROOM, OUTPATIENT CLINIC'
         06 = 'FAMILY PLANNING CLINIC'
         07 = 'PRENATAL CLINIC'
         08 = 'TUBERCULOSIS CLINIC'
         09 = 'STD CLINIC'
         10 = 'COMMUNITY HEALTH CLINIC'
         11 = 'CLINIC RUN BY EMPLOYER'
         12 = 'INSURANCE COMPANY CLINIC'
         13 = 'OTHER PUBLIC CLINIC'
         14 = 'DRUG TREATMENT FACILITY'
         15 = 'MILITARY INDUCTION OR MILITARY SERVICE SITE'
         16 = 'IMMIGRATION SITE'
         17 = 'AT HOME, HOME VISIT BY NURSE OR HEALTH WORKER'
         18 = 'AT HOME, USING SELF-TESTING KIT'
         77 = 'DO NOT KNOW'
         87 = 'OTHER'
         99 = 'REFUSED' */;

LABEL RESULTS = 'RECEIVED RESULTS OF LAST TEST';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL COUNSEL  = 'RECEIVED COUNSELING ABOUT TEST RESULTS';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL CONEFF95 = 'CONDOM EFFECTIVENESS AGAINST HIV';
 /*         1 = 'VERY EFFECTIVE'
            2 = 'SOMEWHAT EFFECTIVE'
            3 = 'NOT AT ALL EFFECTIVE'
            4 = 'DO NOT KNOW HOW EFFECTIVE'
            5 = 'DO NOT KNOW METHOD'
            9 = 'REFUSED' */;

LABEL SEXBEHAV = 'CHANGED SEXUAL BEHAVIOR LAST 12 MOS.';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL SEX1PTNR = 'SEXUAL INTERCOURSE WITH ONLY ONE PARTNER';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL USECONDM = 'USED CONDOMS FOR PROTECTION';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL SELCPTNR = 'CAREFUL IN SELECTING SEXUAL PARTNERS';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

* MODULE 1:  SMOKELESS TOBACCO;
LABEL USEEVER = 'EVER USED SMOKELESS TOBACCO PRODUCTS';
 /*         1 = 'YES, CHEWING TOBACCO'
            2 = 'YES, SNUFF'
            3 = 'YES, BOTH'
            4 = 'NO, NEITHER'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL  USENOW = 'CURRENTLY USE SMOKELESS TOBACCO PRODUCTS';
 /*         1 = 'YES, CHEWING TOBACCO'
            2 = 'YES, SNUFF'
            3 = 'YES, BOTH'
            4 = 'NO, NEITHER'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

* MODUEL 2:  NUTRITION;
LABEL FRUITJUI = 'HOW OFTEN DO YOU DRINK FRUIT JUICES';
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL    FRUIT = 'HOW OFTEN DO YOU EAT FRUIT';
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL GREENSAL = 'HOW OFTEN DO YOU EAT GREEN SALAD';
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL POTATOES = 'HOW OFTEN DO YOU EAT POTATOES';
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL  CARROTS = 'HOW OFTEN DO YOU EAT CARROTS';
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL VEGETABL = 'SERVINGS OF VEGETABLES';
 /*        1NN = 'PER DAY (WHERE 1NN=101-199)'
           2NN = 'PER WEEK (WHERE 2NN=201-299)'
           3NN = 'PER MONTH (WHERE 3NN=301-399)'
           4NN = 'PER YEAR (WHERE 4NN=401-499)'
           555 = 'NEVER'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

* MODULE 3:  DIABETES;
*ASKED ONLY OF THOSE INDICATING THEY HAD BEEN TOLD THEY HAVE DIABETES;
LABEL DIABAGE  = 'AGE WHEN TOLD DIABETIC';
 /*    NN = 'AGE IN YEARS (EX. 01, 02, 03,...76)'
       77 = 'DO NOT KNOW'
       99 = 'REFUSED' */;

LABEL INSULIN = 'NOW TAKING INSULIN';
 /*         1 = 'YES'
            2 = 'NO'
            9 = 'REFUSED' */;

LABEL INSLNFRQ = 'HOW OFTEN DO YOU USE INSULIN';
 /*        1NN = '# TIMES/DAY (WHERE 1NN=101-106)'
           2NN = '# TIMES/WEEK (WHERE 2NN=201-242)'
           333 = 'USE INSULIN PUMP'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL BLDSUGAR = 'HOW OFTEN CHECK BLOOD FOR GLUCOSE';
 /*        1NN = '# TIMES/DAY (WHERE 1NN=101-109)'
           2NN = '# TIMES/WEEK (WHERE 2NN=201-263)'
           3NN = '# TIMES/MONTH (WHERE 3NN=301-399)'
           4NN = '# TIMES/YEAR (WHERE 4NN=401-499)'
           777 = 'DO NOT KNOW'
           888 = 'NEVER'
           999 = 'REFUSED' */;

LABEL HEMOGLBN = 'HEARD OF GLYCOSYLATED HEMOGLOBIN';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL DOCTDIAB = 'TIMES SEEN HEALTH PROF FOR DIABETES';
 /*      01-52 = 'TIMES HEALTH PROFESSIONAL SEEN FOR DIABETES'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

LABEL CHKHEMO = 'TIMES CHECK FOR GLYCOSYLATED HEMOGLOBIN';
 /*       1-6 = 'TIMES CHECKED FOR GLYCOSYLATED HEMOGLOBIN'
            7 = 'DO NOT KNOW'
            8 = 'NONE'
            9 = 'REFUSED' */;

LABEL FEETCHK = 'TIMES FEET CHECK FOR SORES/IRRITATIONS';
 /*       1-6 = 'TIMES FEET CHECKED FOR SORES/IRRITATIONS'
            7 = 'DO NOT KNOW'
            8 = 'NONE'
            9 = 'REFUSED' */;

LABEL EYEEXAM = 'LAST EYE EXAM WHERE PUPILS WERE DILATED';
 /*        1 = 'WITHIN THE PAST MONTH'
           2 = 'WITHIN THE PAST YEAR'
           3 = 'WITHIN THE PAST TWO YEARS'
           4 = '2 OR MORE YEARS AGO'
           7 = 'DO NOT KNOW'
           8 = 'NEVER'
           9 = 'REFUSED' */;

LABEL VISNDIST = 'LIMITED VISION SEEING ACROSS STREET';
 /*         1 = 'ALL OF THE TIME'
            2 = 'MOST OF THE TIME'
            3 = 'SOME OF THE TIME'
            4 = 'A LITTLE BIT OF THE TIME'
            5 = 'NONE OF THE TIME'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL VISNREAD = 'LIMITED VISION IN READING PRINT';
 /*         1 = 'ALL OF THE TIME'
            2 = 'MOST OF THE TIME'
            3 = 'SOME OF THE TIME'
            4 = 'A LITTLE BIT OF THE TIME'
            5 = 'NONE OF THE TIME'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL VISIONTV = 'LIMITED VISION IN WATCHING TELEVISION';
 /*         1 = 'ALL OF THE TIME'
            2 = 'MOST OF THE TIME'
            3 = 'SOME OF THE TIME'
            4 = 'A LITTLE BIT OF THE TIME'
            5 = 'NONE OF THE TIME'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

* MODULE 4:  EXERCISE;
LABEL EXERANY = 'PARTICIPATE IN ANY PHYSICAL ACTIVITY';
 /*         1 = 'YES'
            2 = 'NO'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL EXERACT1 = 'TYPE OF PHYSICAL ACTIVITY';
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

LABEL EXERDIS1 = 'DISTANCE IN MILES AND TENTHS';
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

LABEL EXEROFT1 = 'HOW MANY TIMES ACTIVITY DONE';
 /*        1NN = '# TIMES/WEEK (WHERE 1NN=101-199)'
           2NN = '# TIMES/MONTH (WHERE 2NN=201-299)'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL EXERHMM1 = 'HOW LONG ACTIVITY DONE';
 /* NNN = '# MINUTES/HOURS(EX. NNN=045 IS 45 MINS., NNN=100 IS 1 HR)'
    777 = 'DO NOT KNOW'
    999 = 'REFUSED' */;

LABEL EXEROTH2 = 'PARTICIPATE IN ANOTHER ACTIVITY';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL EXERACT2 = 'TYPE OF OTHER PHYSICAL ACTIVITY';
 /*         NN = '01-56 (SEE CODES FOR EXERACT1)'
            99 = 'REFUSED' */;

LABEL EXERDIS2 = 'DISTANCE IN MILES AND TENTHS';
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

LABEL EXEROFT2 = 'HOW MANY TIMES SECOND ACTIVITY DONE';
 /*        1NN = '# TIMES/WEEK (WHERE 1NN=101-199)'
           2NN = '# TIMES/MONTH (WHERE 2NN=201-299)'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL EXERHMM2 = 'HOW LONG SECOND ACTIVITY DONE';
 /* NNN = '# MINUTES/HOURS(EX. NNN=045 IS 45 MINS., NNN=100 IS 1 HR)'
    777 = 'DO NOT KNOW'
    999 = 'REFUSED' */;

* MODULE 5:  WEIGHT CONTROL;
LABEL   LOSEWT = 'TRYING TO LOSE WEIGHT';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL MAINTAIN = 'TRYING TO MAINTAIN CURRENT WEIGHT';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL FEWCAL = 'FEWER CALORIES &/OR LESS FAT';
 /*          1 = 'YES, FEWER CALORIES'
             2 = 'YES, LESS FAT'
             3 = 'YES, FEWER CALORIES AND LESS FAT'
             4 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL   PHYACT = 'INCREASED PHYSICAL ACTIVITY';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL WTDESIRE = 'DESIRED WEIGHT';
 /*      ### = 'AMOUNT RESPONDENT WOULD LIKE TO WEIGH'
         777 = 'DO NOT KNOW'
         999 = 'REFUSED' */;

LABEL DRADVICE = 'PROFESSIONAL ADVICE ABOUT WEIGHT';
 /*          1 = 'YES, LOSE WEIGHT'
             2 = 'YES, GAIN WEIGHT'
             3 = 'YES, MAINTAIN CURRENT WEIGHT'
             4 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

* MODULE 6:  YEARS OF HEALTHY LIFE;
*QUESTIONS ASKED OF RESPONDENTS < 65 YEARS OLD;
LABEL PASTYEAR = 'WHAT WERE YOU DOING MOST OF PAST YR';
 /*          1 = 'WORKING AT A JOB OR BUSINESS'
             2 = 'KEEPING HOUSE'
             3 = 'GOING TO SCHOOL'
             4 = 'SOMETHING ELSE'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL STOPWORK = 'IMPAIR/HEALTH PROB KEEPS YOU FROM WORK';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LMTDWORK = 'LIMITED KIND/AMNT OF WORK DUE TO HLTH';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL NOHOUSWK = 'IMPAIR/HLTH PROB KEEPS YOU FROM HOUSEWK';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LMTDHOUS = 'LMTD KIND/AMNT OF HOUSEWK DUE TO HLTH';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL NOJOB    = 'IMPAIR/HLTH PROB KEEPS YOU FROM WORK';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LMTDJOB  = 'LMTD KIND/AMNT OF WORK DUE TO HLTH';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LMTDACT  = 'LIMITED IN ACTIVITIES DUE TO HEALTH';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL PRSNLCAR = 'NEED HELP OF OTHERS WITH PERSNL CARE';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL ROUTNEED = 'NEED HELP OF OTHERS WITH ROUTINE NEEDS';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

*QUESTIONS ASKED OF RESPONDENTS >= 65 YEARS OLD;
LABEL PRSNL65  = 'NEED HELP OF OTHRS WITH PERSNL CARE';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL ROUT65   = 'NEED HELP OF OTHERS WITH ROUTINE NEEDS';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LMTD65   = 'LIMITED IN ACTIVITIES DUE TO HEALTH';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

* MODULE 7:  QUALITY OF LIFE;
LABEL QLACTLMT = 'LIMITED BECAUSE OF IMPAIRMENT';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL HLTHPROB = 'MAJOR IMPAIRMENT OR HEALTH PROBLEM';
 /*         01 = 'ARTHRITIS/RHEUMATISM'
            02 = 'BACK OR NECK PROBLEM'
            03 = 'FRACTURES, BONE/JOINT INJURY'
            04 = 'WALKING PROBLEM'
            05 = 'LUNG/BREATHING PROBLEM'
            06 = 'HEARING PROBLEM'
            07 = 'EYE/VISION PROBLEM'
            08 = 'HEART PROBLEM'
            09 = 'STROKE PROBLEM'
            10 = 'HYPERTENSION/HIGH BLOOD PRESSURE'
            11 = 'DIABETES'
            12 = 'CANCER'
            13 = 'DEPRESSION/ANXIETY/EMOTIONAL PROB'
            14 = 'OTHER IMPAIRMENT/PROBLEM'
            77 = 'DO NOT KNOW'
            99 = 'REFUSED' */;

LABEL LONGLMTD = 'HOW LONG ACTIVITIES LIMITED';
 /*        1NN = '# OF DAYS (1NN=101-199)'
           2NN = '# OF WEEKS (2NN=201-299)'
           3NN = '# OF MONTHS (3NN=301-399)'
           4NN = '# OF YEARS (4NN=401-499)'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' */;

LABEL QLPERSNL = 'NEED HELP FOR PERSONAL CARE NEEDS';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL QLROUTIN = 'NEED HELP HANDLING ROUTINE NEEDS';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL PAINACTV = 'PAIN MADE IT HARD TO DO USUAL ACTIVITIES';
 /*         NN = '# OF DAYS (WHERE NN=01-30)'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

LABEL QLMENTAL = 'FELT SAD, BLUE, OR DEPRESSED';
 /*         NN = '# OF DAYS (WHERE NN=01-30)'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

LABEL QLSTRESS = 'FELT WORRIED, TENSE, OR ANXIOUS';
 /*         NN = '# OF DAYS (WHERE NN=01-30)'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

LABEL QLREST = 'FELT YOU DID NOT GET ENOUGH REST/SLEEP';
 /*         NN = '# OF DAYS (WHERE NN=01-30)'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

LABEL QLHLTHY = 'FELT VERY HEALTHY AND FULL OF ENERGY';
 /*         NN = '# OF DAYS (WHERE NN=01-30)'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

* MODULE 8:  HEALTH CARE UTILIZATION;
LABEL PRIMCARE = 'PARTICULAR DOCTOR OR CLINIC';
 /*          1 = 'YES'
             2 = 'MORE THAN ONE PLACE'
             3 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL MOSTCARE = 'ONE PLACE YOU GO MOST OFTEN';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL FACILITY = 'KIND OF PLACE YOU GO TO MOST OFTEN';
 /*      01 = 'DOCTOR'S OFFICE OR PRIVATE CLINIC'
         02 = 'COMPANY OR SCHOOL HEALTH CLINIC/CENTER'
         03 = 'COMMUNITY/MIGRANT/RURAL CLINIC/CENTER'
         04 = 'CNTY/CITY/PUBLIC HOSP OUTPATIENT CLINIC'
         05 = 'PRIVATE/OTHER HOSP OUTPATIENT CLINIC'
         06 = 'HOSPITAL EMERGENCY ROOM'
         07 = 'HMO/PREPAID GROUP'
         08 = 'PSYCHIATRIC HOSPITAL OR CLINIC'
         09 = 'VA HOSPITAL OR CLINIC'
         10 = 'MILITARY HEALTH CARE FACILITY'
         11 = 'SOME OTHER KIND OF PLACE'
         77 = 'DO NOT KNOW'
         99 = 'REFUSED' */;

LABEL NOPRIMCR = 'MAIN REASON NO USUAL SOURCE OF CARE';
 /*      01 = 'TWO OR MORE USUAL PLACES'
         02 = 'HAVE NOT NEEDED A DOCTOR'
         03 = 'DO NOT LIKE/TRUST/BELIEVE IN DOCTORS'
         04 = 'DO NOT KNOW WHERE TO GO'
         05 = 'PREVIOUS DOCTOR IS NOT AVAILABLE/MOVED'
         06 = 'NO INSURANCE/CANNOT AFFORD'
         07 = 'SPEAK A DIFFERENT LANGUAGE'
         08 = 'NO PLACE AVAIL/CLOSE ENOUGH/CONVENIENT'
         09 = 'OTHER'
         77 = 'DO NOT KNOW'
         99 = 'REFUSED' */;

* MODULE 9:  ORAL HEALTH;
LABEL LASTDENT = 'LAST VISITED DENTIST OR DENTAL CLINIC';
 /*        1 = 'WITHIN THE PAST YEAR'
           2 = 'WITHIN THE PAST TWO YEARS'
           3 = 'WITHIN THE PAST FIVE YEARS'
           4 = '5 OR MORE YEARS AGO'
           7 = 'DO NOT KNOW'
           8 = 'NEVER'
           9 = 'REFUSED' */;

LABEL REASDENT = 'MAIN REASON NOT VISITED DENTIST';
 /*      01 = 'FEAR,APPREHENSION,NERVOUSNESS,PAIN,DISLIKE GOING'
         02 = 'COST'
         03 = 'DO NOT HAVE/KNOW A DENTIST'
         04 = 'CANNOT GET TO THE OFFICE/CLINIC'
         05 = 'NO REASON TO GO'
         06 = 'OTHER PRIORITIES'
         07 = 'HAVE NOT THOUGHT OF IT'
         08 = 'OTHER'
         77 = 'DO NOT KNOW'
         99 = 'REFUSED' */;

LABEL RMVTEETH = 'NUMBER OF PERMANENT TEETH REMOVED';
 /*        1 = '5 OR FEWER'
           2 = '6 OR MORE BUT NOT ALL'
           3 = 'ALL'
           7 = 'DO NOT KNOW'
           8 = 'NEVER'
           9 = 'REFUSED' */;

LABEL DENTLINS = 'DENTAL INSURANCE COVERAGE';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

* MODULE 10:  FIREARMS;
LABEL FIREARMS = 'LOADED OR UNLOADED FIREARMS';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL GUNSCAR = 'LOADED FIREARMS IN AUTO';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             8 = 'DO NOT DRIVE'
             9 = 'REFUSED' */;

LABEL GUNSHOME = 'LOADED FIREARMS IN HOME';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LOADLOCK = 'LOADED FIREARMS IN LOCKED PLACE';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL UNLOADED = 'UNLOADED FIREARMS IN HOME';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL UNLDLOCK = 'UNLOADED FIREARMS IN LOCKED PLACE';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL AMMUNITN = 'AMMUNITION STORED IN SAME ROOM';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             8 = 'DO NOT OWN ANY AMMUNITION'
             9 = 'REFUSED' */;

LABEL AMMSTORG = 'AMMUNITION LOCKED OR UNLOCKED';
 /*          1 = 'LOCKED'
             2 = 'UNLOCKED'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL SFTYLEVL = 'FEEL SAFER OR LESS SAFE';
 /*          1 = 'SAFER'
             2 = 'LESS SAFE'
             3 = 'NEITHER'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL PROTECTN = 'CARRIED LOADED FIREARM ON PERSON';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

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

LABEL _SMOKER2 = SMOKING STATUS
 /*          1 = 'CURRENT-SMOKED 30 DAYS PAST 30 DAYS'
             2 = 'CURRENT-SMOKED 1-29 DAYS PAST 30 DAYS'
             3 = 'CURRENT-SMOKED 0 DAYS PAST 30 DAYS'
             4 = 'CURRENT-SMOKED UNK DAYS PAST 30 DAYS'
             5 = 'FORMER'
             6 = 'NEVER SMOKED'
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

LABEL _TOTINDX = EXERCISE
 /*          1 = 'PHYSICALLY INACTIVE'
             2 = 'IRREGULAR ACTIVITY'
             3 = 'REGULAR ACTIVITY'
             4 = 'REGULAR & VIGOROUS'
           0,9 = 'UNKNOWN' */;

LABEL _SMKLESS = SMOKELESS STATUS
 /*          1 = 'CURRENT USER'
             2 = 'FORMER USER'
             3 = 'NEVER USED'
             9 = 'UNKNOWN' */;

LABEL _FRTSERV = DAILY SERVINGS OF FRTS AND VEGS
 /*      99999 = 'UNKNOWN (2 DECIMAL PLACES IMPLIED)' */;

LABEL _FRTINDX = SUMMARY INDEX OF FRTS AND VEGS
 /*          1 = 'LESS THAN ONCE PER DAY OR NEVER'
             2 = '1 TO LESS THAN 3 TIMES PER DAY'
             3 = '3 TO LESS THAN 5 TIMES PER DAY'
             4 = '5 OR MORE TIMES PER DAY'
           .,9 = 'UNK/REFUSED' */;

* PREVENTIVE HEALTH MEASURES;

 /*    NOTE FOR ALL _RF VARIABLES FOLLOWING ARE CODES:
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

LABEL _RFSMOK2 = CURRENT SMOKING (IRREGULAR & REGULAR)
 /*AT RISK DEFINED AS CURRENT SMOKER (IRREGULAR & REGULAR)*/;

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
 /*        AT RISK DEFINED AS NO ACTIVITY (SEDENTARY) OR
           PHYSICAL ACTIVITY OR PAIR OF ACTIVITIES THAT
           WERE DONE FOR LESS THAN 20 MINUTES/SESSION,
           AND/OR LESS THAN 3 TIMES/WEEK DURING THE PAST
           MONTH */;

LABEL _RFREGUL = REGULAR & SUSTAINED PATTERN
 /*        AT RISK DEFINED AS 5+ TIMES/WEEK, 30+ MINUTES/
           SESSION, REGARDLESS OF INTENSITY (YEAR 2000
           OBJECTIVE 1.3) */;

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
 _RAW     = '# ADULTS/# PHONES (2 XPLCT DEC PLACES)'
 _CSA     = 'UNEQUAL CLUSTER SIZE ADJ (2 XPLCT DEC)'
 _WT1     = 'PRODUCT OF _RAW AND _CSA (2 XPLCT DEC)'
 _POSTSTR = 'AGE,RACE,SEX WT-95 ST POP(2 XPLCT DEC)';

* FINAL WEIGHT;
LABEL _FINALWT = 'PRODUCT OF _POSTSTR & _WT1(2 EXPLCT DEC)'
 /* NOTE:  POSTSTRATIFICATION MULTIPLIED BY THE PRODUCT OF
           STRATUM ADJUSTEMENT AND THE PRODUCT OF UNEQUAL
           SELECTION PROBABILITY WEIGHT AND CLUSTER SIZE
           ADJUSTMENT

           10 DIGIT WEIGHT WITH 2 EXPLICIT DECIMAL PLACES;
           THIS IS THE WEIGHT YOU SHOULD USE */;

* AGE GROUPS USED IN POSTSTRATIFICATION;
LABEL _AGEG_ = AGE GROUPS USED IN POSTSTRATIFICATION
 /*  NOTE: IF CODES ARE ONLY 1-5, LAST AGE GROUP EQUALS 55+.
           IF CELL SIZES ARE TOO SMALL, AGE CATEGORIES MAY
           HAVE BEEN COLLAPSED

                   1 = '18-24'
                   2 = '25-34'
                   3 = '35-44'
                   4 = '45-54'
                   5 = '55-64'
                   6 = '65+' */;

* RACE CATEGORIES USED IN POST-STRATIFICATION;
LABEL _RACEG_ = RACE CATEGORIES USED IN POST-STRATIFICATION
   /* NOTE:  INCLUDES VALUES OF IMPUTED RACE FOR RECORDS WITH UNKNOWN
             RACE (IMPUTED ONLY FOR STATES POST-STRATIFIED BY
             AGE-RACE-SEX, NOT IMPUTED FOR STATES POST-STRATIFIED
             BY AGE-SEX)

             1 = 'WHITE'
             2 = 'NON-WHITE'
             9 = 'MISSING'*/;

* IMPUTED AGE USED IN POSTSTRATIFICATION FOR MISSING AGE VALUES;
LABEL _IMPAGE = IMPUTED AGE USED IN POSTSTRATIFICATION
 /*  NOTE: IMPUTE THE AGE OF MEAN AGE OF SEX-RACE GROUPS
           FOR MISSING AGE VALUES */;

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
* COMPUTES WHITE NON-HISPANIC AND NON-WHITE OR HISPANIC RACE GROUPS;
***********************************************************************;

     IF RACE = 1 THEN _RACEG = 1;
       ELSE
     IF 2 <= RACE <=8 THEN _RACEG = 2;
       ELSE IF
      RACE EQ 99 THEN _RACEG = 9;
        ELSE DO;
           FILE PRINT;
           TITLE 'RACE HAS AN UNEXPECTED VALUE';
           PUT _N_= +10   RACE=;
           _RACEG = 9;
           END;

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
     IF RACE = 99 THEN _RACEGR = 9;
        ELSE DO;
           FILE PRINT;
           TITLE 'RACE HAS AN UNEXPECTED VALUE';
           PUT _N_= +10   RACE=;
           _RACEGR = 9;
           END;

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

run;