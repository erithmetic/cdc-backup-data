 ********<<<<<< CHANGE "XX" TO STATE ID CODE >>>>>>>>*******;
 *%LET STATENAM = XX;

 filename CDASC "Q:\BRFSS\SASDATA\CDBRFS98.ASC"  LRECL=700;
 LIBNAME LIBRARY 'Q:\BRFSS\1998\PROGRAMS\FORMATS' ;
 LIBNAME PERMFILE 'Q:\BRFSS\SASDATA\';


 DATA SASOUT98 ;
INFILE CDASC MISSOVER;

    INPUT
 @1 _STATE 2.            @3  _GEOSTR 2.       @5 _DENSTR 1.
 @6 _PSU 5               @11 _RECORD 1.       @12 IDATE $CHAR6.
 @12 IMONTH $CHAR2.      @14 IDAY  $CHAR2.    @16 IYEAR $CHAR2.
 @18 INTVID $CHAR2.      @28 DISPCODE 2.      @30 WINDDOWN 1.
 @31 NUMADULT 2.         @33 NUMMEN 1.        @34 NUMWOMEN 1.
 @35 GENHLTH 1.          @36 PHYSHLTH 2.      @38 MENTHLTH 2.
 @40 POORHLTH 2.         @42 HLTHPLAN 1.      @43 MEDICAR2 1.
 @44 TYPCOVR1 2.         @46 TYPCOVR2 2.      @48 NOCOV12  1.
 @49 PASTPLAN 1.         @50 MEDCOST 1.       @51 CHECKUP 1.
 @52 DIABETES 1.         @53 EXERANY 1.       @54 EXERACT1 2.
 @56 EXERDIS1 3.         @59 EXEROFT1 3.      @62 EXERHMM1 3.
 @65 EXEROTH2 1.         @66 EXERACT2 2.      @68 EXERDIS2 3.
 @71 EXEROFT2 3.         @74 EXERHMM2 3.      @77 SMOKE100 1.
 @78 SMOKEDAY 1.         @79 SMOKENUM 2.      @81 SMOKNM30 2.
 @83 STOPSMOK 1.         @84 LASTSMOK 2.      @86 CIGAR    1.
 @87 LASTCGAR 2.         @89 PASTCGAR 1.      @90 FRUITJUI 3.
 @93 FRUIT 3.            @96 GREENSAL 3.      @99 POTATOES 3.
 @102 CARROTS 3.         @105 VEGETABL 3.     @108 LOSEWT 1.
 @109 MAINTAIN 1.        @110 FEWCAL 1.       @111 PHYACT 1.
 @112 DRADVICE 1.        @113 DIETPILL 1.     @114 PREWGT   3.
 @117 AGE 2.             @119 ORACE 1.        @120 HISPANIC 1.
 @121 MARITAL 1.         @122 CHLD04 1.       @123 CHLD0512 1.
 @124 CHLD1317 1.        @125 EDUCA 1.        @126 EMPLOY 1.
 @127 INCOME2 2.         @129 WEIGHT 3.       @132 WTDESIRE 3.
 @135 HTF     1.         @136 HTI    2.
 @135 HEIGHT 3.          @138 CTYCODE 3.      @141 NUMHHOLD 1.
 @142 NUMPHONS 1.        @143 SEX 1.          @144 HADMAM 1.
 @145 HOWLONG 1.         @146 WHYDONE 1.      @147 PROFEXAM 1.
 @148 LENGEXAM 1.        @149 REASEXAM 1.     @150 HADPAP 1.
 @151 LASTPAP 1.         @152 WHYPAP 1.       @153 HADHYST 1.
 @154 PREGNANT 1.        @155 GRADE2 2.       @157 CONDUSE 1.
 @158 GETHIV 1.          @159 DONBLD85 1.     @160 DON12MO 1.
 @161 HIVTST2A 1.        @162 HIVTST2B 1.     @163 HIV12MO 1.
 @164 TEST12MO 1.        @165 RSNTST3 2.      @167 WHRTST3 2.
 @169 RESULTS 1.         @170 COUNSEL 1.      @171 DIABAGE 2.
 @173 INSULIN 1.         @174 INSLNFRQ 3.     @177 BLDSUGAR 3.
 @180 HEMOGLBN 1.        @181 DOCTDIAB 2.     @183 CHKHEMO 2.
 @185 FEETCHK 2.         @187 EYEEXAM 1.      @188 VISNDIST 1.
 @189 VISNREAD 1.        @190 VISIONTV 1.     @191 SEXINTMN 2.
 @193 SEXCONDM 1.        @194 CONDLAST 1.     @195 CONEFF2 1.
 @196 NEWPARTN 2.        @198 HIVRISK 1.      @199 STDTREAT 1.
 @200 STDCLIN 1.         @201 SEXBEHA2 1.     @202 SELCPTN3 1.
 @203 SEX1PTN3 1.        @204 USECOND3 1.     @205 PREGLST5 1.
 @206 LSTPREG  1.        @207 LSTPREG2 1.     @208 BRTHCNTL 1.
 @209 TYPCNTRL 2.        @211 RSNNOBC  2.     @213 WHRSVCS  1.
 @214 FAMPLAN  1.        @215 LASTUSED 1.     @216 RSNNOCOV 2.
 @218 MCRELNGT 1.        @219 DOCTLIST 1.     @220 CERTDOCT 1.
 @221 HLTHCOVR 1.        @222 RSNWOCOV 2.     @224 RATECARE 1.
 @225 PRIMCARE 1.        @226 NOPRIMCR 2.     @228 MOSTCARE 1.
 @229 FACILIT2 1.        @230 DISTCARE 1.     @231 NUMBDOC2 1.
 @232 CHNGDOCT 1.        @233 LASTCHNG 2.     @235 LASTDENT 1.
 @236 REASDENT 2.        @238 RMVTEETH 1.     @239 DENTLINS 1.
 @240 PCSEATHB 1.        @241 PCSEXER 1.      @242 PCSINJPV 1.
 @243 PCSDRGAB 1.        @244 PCSALCH 1.      @245 PCSSMOK 1.
 @246 PCSAIDS 1.         @247 BPTAKE 1.       @248 BPHIGH 1.
 @249 HIGHGT1 1.         @250 BLOODCHO 1.     @251 CHOLCHK 1.
 @252 TOLDHI 1.          @253 BLDSTOOL 1.     @254 LSTBLDST 1.
 @255 HADPROC2 1.        @256 LSTPROC2 1.     @257 FLUSHOT 1.
 @258 PNEUMVAC 1.        @259 SEATBELT 1.     @260 CHLDLT16 2.
 @262 SFTYLT16 1.        @263 BIKEHLMT 1.     @264 SMKDETE2 1.
 @265 DRINKANY 1.        @266 ALCOHOL 3.      @269 NALCOCC 2.
 @271 DRINKGE5 2.        @273 DRINKDRI 2.     @275 CVDFATRK 1.
 @276 CVDEXRSK 1.        @277 CVDFAT02 1.     @278 CVDEXR02 1.
 @279 CVDINFAR 1.        @280 CVDCORHD 1.     @281 CVDSTROK 1.
 @282 CVDASPRN 1.        @283 ASPUNSAF 1.     @284 WHYASPAN 1.
 @285 WHYASPHA 1.        @286 WHYASPSK 1.     @287 PASTMENO 1.
 @288 DICSESTR 1.        @289 ESTRPILL 1.     @290 CURESTRO 1.
 @291 ESTRHART 1.        @292 ESTRBONE 1.     @293 ESTRFLSH 1.
 @294 PAIN12MN 1.        @295 SYMTMMTH 1.     @296 LMTJOINT 1.
 @297 HAVARTH 1.         @298 TYPEARTH 2.     @300 TRTARTH 1.
 @301 QLACTLMT 1.        @302 HLTHPROB 2.     @304 LONGLMTD 3.
 @307 QLPERSNL 1.        @308 QLROUTIN 1.     @309 PAINACTV 2.
 @311 QLMENTAL 2.        @313 QLSTRESS 2.     @315 QLREST 2.
 @317 QLHLTHY 2.         @319 VITAMINS 1.     @320 MULTIVIT 1.
 @321 FOLICACD 1.        @322 TAKEVIT 3.      @325 RECOMMEN 1.
 @326 FIREARM2 1.        @327 HANDGUNS 1.     @328 RIFLE 1.
 @329 RNSARMED 1.        @330 LOADUNLK 1.     @331 PROTECT2 1.
 @332 RIDARMED 1.        @333 CONFRNTA 1.     @334 SAFWKSHP 1.
 @335 PERFRARM 1.        @336 HOWSAFE 1.      @337 RENTHOME 1.
 @338 CURADRS 1.         @339 NMCLSFRD 1.     @340 ENGHFOOD 1.
 @341 TOBACCO 1.         @342 INDOORS 1.      @343 SMKPUBLC 1.
 @344 SMKWORK 1.         @345 SMKREST 1.      @346 SMKSCHLS 1.
 @347 SMKDAYCR 1.        @348 SMKINDOR 1.     @349 ALLOWADS 1.
 @350 USEEVER 1.         @351 USENOW 1.       @360 _DENWT BEST10.
 @370 STATEQUE   $CHAR181.
 @575 _QSTVER 1.               @576 _STSTR 6.
 @582 _GEOWT BEST10.           @592 _RAW BEST10.
 @602 _CSA BEST10.             @612 _WT1 BEST10.
 @622 _POSTSTR BEST10.         @632 _FINALWT BEST10.
 @642 _REGION 2.               @644 _RACEG_ 1.
 @645 _AGEG_ 2.                @647 _SEXG_ 1.
 @648 _IMPAGE 2.               @650 _MSACODE 4.
 @654 RACE 2.                  @656 _SMOKER2 1.
 @657 _DRNKMO 4.               @661 _WTFORHT 5.
 @666 _BMI 3.                  @669 _TOTINDX 1.
 @670 _SMKLESS 1.              @671 _FRTSERV 5.
 @676 _FRTINDX 1.              @677 _RFSEAT2 1.
 @678 _RFSEAT3 1.              @679 _RFHYPE2 1.
 @680 _RFSMOK2 1.              @681 _RFDRACU 1.
 @682 _RFDRDRI 1.              @683 _RFDRCHR 1.
 @684 _RFLIFES 1.              @685 _RFREGUL 1.
 @686 _RFOBESE 1.              @687 _RFWHBMI 1.
 @688 _RFTOBAC 1.              @689 _AGEG 1.
 @690 _AGEG5YR 2.              @692 _AGE65YR 1.
 @693 _RACEG 1.                @694 _RACEGR 1.
 @695 _CHOLCHK 1.              @696 _BPCHECK 1.
  ;

LENGTH DEFAULT=3;
   LENGTH _PSU  4 _DENWT _STSTR _GEOWT _RAW _CSA _WT1
 _POSTSTR _FINALWT _MSACODE _WTFORHT  8;

 DATA PERMFILE.CDDATA98;
  SET SASOUT98;


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

LABEL _GEOSTR  = 'STRATUM CODE'
      _DENSTR  = 'DENSITY STRATUM'
      _PSU     = 'PRIMARY SAMPLING UNIT'
      _RECORD  = 'RECORD NUMBER'

      IDATE    = 'DATE OF INTERVIEW'
      IMONTH   = 'MONTH OF INTERVIEW'
      IDAY     = 'DAY OF INTERVIEW'
      IYEAR    = 'YEAR OF INTERVIEW'

      INTVID   = 'INTERVIEWER ID'

      PHONENUM = 'PHONE NUMBER'
      AREACODE = 'AREA CODE'
      PREFIX   = 'PREFIX'
      SUFFIX   = 'SUFFIX';

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

LABEL WINDDOWN = 'INTERVIEW IN REGULAR OR WINDDOWN MODE';
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

LABEL MEDICAR2 = 'HAVE MEDICARE';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL TYPCOVR1 = 'TYPE COVERAGE PAYING FOR MOST MED CARE';
 /*         01 = 'YOUR EMPLOYER'
            02 = 'SOMEONE ELSE'S EMPLOYER'
            03 = 'A PLAN THAT YOU OR SOMEONE ELSE BUYS ON YOUR OWN'
            04 = 'MEDICARE'
            05 = 'MEDICAID OR MEDICAL ASSISTANCE'
            06 = 'THE MILITARY, CHAMPUS, OR THE VA'
            07 = 'THE INDIAN HEALTH SERVICE'
            08 = 'SOME OTHER SOURCE'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

LABEL TYPCOVR2 = 'TYPE COVERAGE MAYBE NOT CONSIDERED';
 /*         01 = 'YOUR EMPLOYER'
            02 = 'SOMEONE ELSE'S EMPLOYER'
            03 = 'A PLAN THAT YOU OR SOMEONE ELSE BUYS ON YOUR OWN'
            04 = 'MEDICARE'
            05 = 'MEDICAID OR MEDICAL ASSISTANCE'
            06 = 'THE MILITARY, CHAMPUS, OR THE VA'
            07 = 'THE INDIAN HEALTH SERVICE'
            08 = 'SOME OTHER SOURCE'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

LABEL NOCOV12 = 'NO HEALTH CARE COVERAGE IN PAST 12 MNTHS';
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

* DIABETES;
LABEL DIABETES = 'EVER TOLD BY DOCTOR YOU HAVE DIABETES';
 /*          1 = 'YES'
             2 = 'YES, BUT FEMALE TOLD WHILE PREGNANT'
             3 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

* EXERCISE;
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

* TOBACCO USE;

LABEL SMOKE100 = 'SMOKED AT LEAST 100 CIGARETTES';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL SMOKEDAY = 'FREQUENCY OF DAYS NOW SMOKING';

 /*          1 = 'EVERYDAY'
             2 = 'SOME DAYS'
             3 = 'NOT AT ALL'
             9 = 'REFUSED' */;

LABEL SMOKENUM = 'NUMBER OF CIGARETTES NOW SMOKED PER DAY';
 /*         NN = '# OF CIGARETTES SMOKED (01,02,03,04,...,76)'
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

LABEL CIGAR='EVER SMOKED A CIGAR' ;
   /*  1='YES'
       2='NO'
       7='DO NOT KNOW'
       9='REFUSED'  ;  */

LABEL LASTCGAR='LAST TIME SMOKED CIGAR';
  /*    01='LESS THAN 1 MONTH'
        02='1 MO TO LESS THAN 3 MOS'
        03='3 MOS TO LESS THAN 6 MOS'
        04='6 MOS TO LESS THAN 1 YR'
        05='1 YEARS TO LESS THAN 5 YRS'
        06='5 YRS TO LESS THAN 15 YRS'
        07='15 OR MORE YEARS AGO'
        77='DO NOT KNOW'
        99='REFUSED';  */

LABEL PASTCGAR='SMOKE CIGAR IN PAST MONTH';
   /*     1='EVERYDAY'
        2='SEVRAL TIMES PER WEEK'
        3='ONCE PER WEEK'
        4='LESS THAN ONCE A WEEK'
        7='DO NOT KNOW'
        9='REFUSED' */ ;


* NUTRITION;
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

* WEIGHT CONTROL;
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

LABEL DRADVICE = 'PROFESSIONAL ADVICE ABOUT WEIGHT';
 /*          1 = 'YES, LOSE WEIGHT'
             2 = 'YES, GAIN WEIGHT'
             3 = 'YES, MAINTAIN CURRENT WEIGHT'
             4 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL DIETPILL='TAKE PRESCRIBED WEIGHT LOSS PILLS';
    /*    1='YES, CURRENTLY TAKING'
        2='YES, NOT CURRENTLY TAKING'
        3='NO, HAVE NOT TAKEN'
        7='DO NOT KNOW'
        9='REFUSED'  ; */

LABEL PREWGT='WEIGHT BEFORE TAKING DIET PILLS';
   /*     NNN='WEIGHT'
        777='DO NOT KNOW'
        999='REFUSED' ;  */


* DEMOGRAPHICS;
LABEL AGE = 'REPORTED AGE IN YEARS';
 /*        18,...,99 = 'VALID AGE'
                  07 = 'DO NOT KNOW'
                  09 = 'REFUSED' */;

LABEL ORACE = 'ORIGINAL REPORTED RACE';
 /*       1 = 'WHITE'
          2 = 'BLACK'
          3 = 'ASIAN, PACIFIC IS'
          4 = 'AM IND, AK NATIVE'
          5 = 'OTHER'
          7 = 'DO NOT KNOW'
          9 = 'REFUSED' */;

LABEL HISPANIC = 'HISPANIC ORIGIN';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

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

LABEL INCOME2 = 'INCOME LEVEL';
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

LABEL WTDESIRE = 'DESIRED WEIGHT';
 /*      ### = 'AMOUNT RESPONDENT WOULD LIKE TO WEIGH'
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


* HIV/AIDS;
LABEL GRADE2 = 'GRADE TO BEGIN HIV INFECTION & AIDS EDUC';
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

LABEL DONBLD85 = 'DONATED BLOOD SINCE MARCH 1985';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL DON12MO='DONATED BLOOD IN PAST 12 MONTHS';
   /*   1='YES'
        2='NO'
        7='DO NOT KNOW'
        9='REFUSED'; */

LABEL HIVTST2A='EVER TSTD FOR HIV OTHR THAN BLOOD DONATN';
   /*   1='YES'
        2='NO'
        7='DO NOT KNOW'
        9='REFUSED'; */

LABEL HIVTST2B='EVER TESTED FOR HIV';
 /*     1='YES'
        2='NO'
        7='DO NOT KNOW'
        9='REFUSED'; */

LABEL HIV12MO='HIV TST PAST 12MO OTHR THAN BLOOD DONATN';
 /*     1='YES'
        2='NO'
        7='DO NOT KNOW'
        9='REFUSED'; */

LABEL TEST12MO='TESTED FOR HIV PAST 12 MONTHS';
 /*     1='YES'
        2='NO'
        7='DO NOT KNOW'
        9='REFUSED'; */

LABEL RSNTST3 = 'MAIN REASON BLOOD TESTED FOR HIV';
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

LABEL WHRTST3 = 'WHERE WAS LAST BLOOD TEST FOR HIV';
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



/***************************************************************/

* MODULE 1:  DIABETES;
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

/***************************************************************/

* MODULE 2:  SEXUAL BEHAVIOR;
LABEL SEXINTMN = 'HOW MANY PARTNERS IN PAST 12 MONTHS';
 /*         NN = '# OF SEX PARTNERS (EX. 01,02,03,04,...,30)'
            77 = 'DO NOT KNOW'
            88 = 'NONE'
            99 = 'REFUSED' */;

LABEL SEXCONDM = 'CONDOM USED LAST INTERCOURSE';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL CONDLAST = 'WHY WAS CONDOM USED';
 /*          1 = 'TO PREVENT PREGNANCY'
             2 = 'TO PREVENT DISEASES'
             3 = 'FOR BOTH OF THESE REASONS'
             4 = 'FOR SOME OTHER REASON'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL CONEFF2 = 'CONDOM EFFECTIVENESS AGAINST HIV';
 /*         1 = 'VERY EFFECTIVE'
            2 = 'SOMEWHAT EFFECTIVE'
            3 = 'NOT AT ALL EFFECTIVE'
            4 = 'DO NOT KNOW HOW EFFECTIVE'
            5 = 'DO NOT KNOW METHOD'
            9 = 'REFUSED' */;

LABEL NEWPARTN = 'NUMBER NEW SEX PRTNRS IN LAST 12 MONTHS';
 /*       1-76 = 'NUMBER (76=76 OR MORE)'
            88 = 'NONE'
            77 = 'DON'T KNOW/NOT SURE'
            99 = 'REFUSED' */;

LABEL HIVRISK = 'ANY HIGH RISK SITUATIONS APPLY';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL STDTREAT = 'TREATED FOR STD OR VD IN PAST FIVE YEARS';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL STDCLIN = 'TREATED AT HEALTH DEPT STD CLINIC?';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL SEXBEHA2 = 'CHANGED SEXUAL BEHAVIOR LAST 12 MOS.';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL SELCPTN3 = 'DECREASE NUMB SEX PTNRS OR ABSTINENT';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL SEX1PTN3=  'NOW HAVE SEX WITH ONLY THE SAME PARTNER';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL USECOND3 = 'NOW ALWAYS USE CONDOMS FOR PROTECTION';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;
 /*************************************************************/

* MODULE 3: FAMILY PLANNING;

LABEL PREGLST5='PREGNANT IN LAST 5 YEARS';
 /*     1='YES'
        2='NO'
        7='DO NOT KNOW'
        9='REFUSED'; */

LABEL LSTPREG='FEEL ABOUT BECOMING PREGNANT-LAST';
  /*      1='WANTED TO BE PREGNANT SOONER'
        2='WANTED TO BE PREGNANT LATER'
        3='WANTED TO BE PREGNANT THEN'
        4='DID NOT WANT TO BE'
        7='DO NOT KNOW'
        9='REFUSED';  */

LABEL LSTPREG2='FEEL ABOUT BECOMING PREGNANT-CURRENT';
  /*      1='WANTED TO BE PREGNANT SOONER'
        2='WANTED TO BE PREGNANT LATER'
        3='WANTED TO BE PREGNANT THEN'
        4='DID NOT WANT TO BE'
        7='DO NOT KNOW'
        9='REFUSED';  */

LABEL BRTHCNTL='CURRENT BIRTH CONTROL USE';
 /*       1='YES'
        2='NO'
        3='NOT SEXUALLY ACTIVE'
        7='DO NOT KNOW'
        9='REFUSED';   */

LABEL TYPCNTRL='BIRTH CONTROL TYPE';
  /*      01='TUBES TIED'
        02='VASECTOMY'
        03='PILL'
        04='CONDOMS'
        05='FOAM,JELLY,CREAM'
        06='DIAPHRAGM'
        07='NORPLANT'
        08='SHOTS'
        09='WITHDRAWAL'
        87='OTHER'
        77='DO NOT KNOW'
        99='REFUSED';   */

LABEL RSNNOBC='REASON NO BIRTH CONTROL';
 /*        01='NO SEX'
        02='WANT TO GET PREGNANT'
        03='DO NOT WANT TO USE'
        04='PARTNER DOES NOT WANT TO USE'
        05='DO NOT THINK CAN GET PREGNANT'
        06='CAN NOT PAY FOR'
        87='OTHER'
        77='DO NOT KNOW'
        99='REFUSED' ;  */

LABEL WHRSVCS='USUAL SOURCE FOR FEMALE HEALTH CARE';
 /*       1='FAMILY PLNG CLINIC'
        2='HEALTH DEPT CLINIC'
        3='COMMUNITY HEALTH CTR'
        4='PRIVATE GYN'
        5='GENERAL OR FAMILY DOCTOR'
        8='OTHER PLACE'
        7='DO NOT KNOW'
        9='REFUSED'; */

LABEL FAMPLAN='EVER USE FAMILY PLANNING CLINIC';
    /*       1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LASTUSED='WHEN LAST USED CLINIC';
 /*       1='1 TO 12 MOS AGO'
        2='1 TO 2 YRS AGO'
        3='2 TO 3 YRS AGO'
        4='3 TO 5 YRS AGO'
        5='5 OR MORE YRS AGO'
        7='DO NOT KNOW'
        9='REFUSED';  */

/********************************************************/

* MODULE 4: HEALTH CARE COVERAGE;

LABEL RSNNOCOV = 'MAIN REASON WITHOUT HEALTH CARE COVERAGE';
 /*         01 = 'LOST JOB OR CHANGED EMPLOYERS'
            02 = 'SPOUSE OR PARENT LOST JOB OR CHANGED EMPLOYERS'
            03 = 'BECAME DIVORCED OR SEPARATED'
            04 = 'SPOUSE OR PARENT DIED'
            05 = 'BECAME INELIGIBLE BECAUSE OF AGE/LEFT SCHOOL'
            06 = 'EMPLOYER DOES NOT OFFER/STOPPED OFFERING COVERAGE'
            07 = 'CUT BACK TO PART TIME/TEMPORARY EMPLOYEE'
            08 = 'BENEFITS FROM EMPLOYER/FORMER RAN OUT'
            09 = 'COULD NOT AFFORD TO PAY PREMIUMS'
            10 = 'INSURANCE COMPANY REFUSED COVERAGE'
            11 = 'LOST MEDICAID OR MEDICAL ASSISTANCE ELIGIBILITY';
            77 = 'DO NOT KNOW'
            87 = 'OTHER'
            99 = 'REFUSED' */;

LABEL MCRELNGT = 'HOW LONG HAD THIS HEALTH COVERAGE';
 /*        1 = 'FOR LESS THAN TWELVE MONTHS'
           2 = 'FOR LESS THAN TWO YEARS'
           3 = 'FOR LESS THAN THREE YEARS'
           4 = 'FOR LESS THAN FIVE YEARS'
           5 = 'FOR 5 OR MORE YEARS'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL DOCTLIST = 'BOOK OR LIST OF DOCTORS WITH PLAN';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL CERTDOCT = 'PLAN REQUIRES CERTAIN DOCTOR/CLINIC';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL HLTHCOVR = 'ANY OTHER TYPE HEALTH CARE COVERAGE';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;


LABEL RSNWOCOV = 'REASON N0 COVERAGE IN PAST TWELVE MONTHS';
 /*         01 = 'LOST JOB OR CHANGED EMPLOYERS'
            02 = 'SPOUSE OR PARENT LOST JOB OR CHANGED EMPLOYERS'
            03 = 'BECAME DIVORCED OR SEPARATED'
            04 = 'SPOUSE OR PARENT DIED'
            05 = 'BECAME INELIGIBLE BECAUSE OF AGE/LEFT SCHOOL'
            06 = 'EMPLOYER DOES NOT OFFER/STOPPED OFFERING COVERAGE'
            07 = 'CUT BACK TO PART TIME/TEMPORARY EMPLOYEE'
            08 = 'BENEFITS FROM EMPLOYER/FORMER RAN OUT'
            09 = 'COULD NOT AFFORD TO PAY PREMIUMS'
            10 = 'INSURANCE COMPANY REFUSED COVERAGE'
            11 = 'LOST MEDICAID OR MEDICAL ASSISTANCE ELIGIBILITY';
            77 = 'DO NOT KNOW'
            87 = 'OTHER'
            99 = 'REFUSED' */;

/*****************************************************/

*MODULE 5: HEALTH CARE UTILIZATION;

LABEL RATECARE = 'RATE SATISFACTION WITH OVERALL CARE';
 /*         1 = 'EXCELLENT'
            2 = 'VERY GOOD'
            3 = 'GOOD'
            4 = 'FAIR'
            5 = 'POOR'
            7 = 'DO NOT KNOW'
            8 = 'NOT APPLICABLE/DO NOT USE HEALTH SERVICES'
            9 = 'REFUSED' */;

LABEL PRIMCARE = 'PARTICULAR DOCTOR OR CLINIC';
 /*          1 = 'YES'
             2 = 'MORE THAN ONE PLACE'
             3 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

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

LABEL MOSTCARE = 'ONE PLACE YOU GO MOST OFTEN';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL FACILIT2 = 'KIND OF PLACE YOU GO TO MOST OFTEN';
 /*      01 = 'DOCTOR'S OFFICE HMO'
         02 = 'CLINIC OR HEALTH CENTER'
         03 = 'HOSPITAL OUTPATIENT DEPT'
         04 = 'HOSPITAL ER'
         05 = 'URGENT CARE CTR'
         8='SOME OTHER KIND OF PLACE'
         7 = 'DO NOT KNOW'
         9 = 'REFUSED' */;

LABEL DISTCARE = 'CONVENIENCE OF MEDICAL FACILITY LOCATION';
 /*         1 = 'EXCELLENT'
            2 = 'VERY GOOD'
            3 = 'GOOD'
            4 = 'FAIR'
            5 = 'POOR'
            6 = 'DO NOT HAVE USUAL PLACE'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;

LABEL NUMBDOC2 = 'ONE PARTICULAR DOCT FOR ROUTINE MED CARE';
 /*          1 = 'YES, ONLY ONE'
             2 = 'MORE THAN ONE'
             3 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL CHNGDOCT = 'LAST CHANGED DOCTORS';
 /*        1 = 'WITHIN THE PAST YEAR'
           2 = 'WITHIN THE PAST TWO YEARS'
           3 = 'WITHIN THE PAST THREE YEARS'
           4 = 'WITHIN THE PAST FIVE YEARS'
           5 = '5 OR MORE YEARS AGO'
           7 = 'DO NOT KNOW'
           8 = 'NEVER'
           9 = 'REFUSED' */;

LABEL LASTCHNG = 'REASON CHANGED DOCTORS LAST TIME';
 /*        01 = 'CHANGED RESIDENCE OR MOVED'
           02 = 'CHANGED JOBS'
           03 = 'CHANGED HEALTH CARE COVERAGE'
           04 = 'PROVIDER MOVED OR RETIRED'
           05 = 'DISSATISFIED WITH FORMER PROVIDER'
           06 = 'FORMER PROVIDER NO LONGER REIMBURSED'
           07 = 'OWED MONEY TO FORMER PROVIDER'
           08 = 'MEDICAL CARE NEEDS CHANGED'
           77 = 'DO NOT KNOW'
           87 = 'OTHER'
           99 = 'REFUSED' */;


/************************************************************/

* MODULE 6:  ORAL HEALTH;
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


/*************************************************************/

* MODULE 7:  PREVENTIVE COUNSELING SERVICES;
LABEL PCSEATHB = 'DOCTOR TALKED ABOUT EATING HABITS';
 /*        1 = 'YES, WITHIN THE PAST 12 MONTHS'
           2 = 'YES, WITHIN THE PAST THREE YEARS'
           3 = 'YES, THREE OR MORE YEARS AGO'
           4 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL PCSEXER = 'DOC TALKED ABOUT EXERCISE OR PHYS ACTVTY';
 /*        1 = 'YES, WITHIN THE PAST 12 MONTHS'
           2 = 'YES, WITHIN THE PAST THREE YEARS'
           3 = 'YES, THREE OR MORE YEARS AGO'
           4 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL PCSINJPV = 'DOCTOR TALKED ABOUT INJURY PREVENTION';
 /*        1 = 'YES, WITHIN THE PAST 12 MONTHS'
           2 = 'YES, WITHIN THE PAST THREE YEARS'
           3 = 'YES, THREE OR MORE YEARS AGO'
           4 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL PCSDRGAB = 'DOCTOR TALKED ABOUT DRUG ABUSE';
 /*        1 = 'YES, WITHIN THE PAST 12 MONTHS'
           2 = 'YES, WITHIN THE PAST THREE YEARS'
           3 = 'YES, THREE OR MORE YEARS AGO'
           4 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL PCSALCH = 'DOCTOR TALKED ABOUT ALCOHOL USE';
 /*        1 = 'YES, WITHIN THE PAST 12 MONTHS'
           2 = 'YES, WITHIN THE PAST THREE YEARS'
           3 = 'YES, THREE OR MORE YEARS AGO'
           4 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL PCSSMOK = 'DOCTOR TALKED ABOUT QUITTING SMOKING';
 /*        1 = 'YES, WITHIN THE PAST 12 MONTHS'
           2 = 'YES, WITHIN THE PAST THREE YEARS'
           3 = 'YES, THREE OR MORE YEARS AGO'
           4 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL PCSAIDS = 'DOCTOR TALKED ABOUT SEXUAL PRACTICES';
 /*        1 = 'YES, WITHIN THE PAST 12 MONTHS'
           2 = 'YES, WITHIN THE PAST THREE YEARS'
           3 = 'YES, THREE OR MORE YEARS AGO'
           4 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

/*************************************************************/
* MODULE 8: HYPERTENSION AWARENESS;

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

/*************************************************************/

* MODULE 9: CHOLESTEROL AWARENESS;
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



/*****************************************************************/

* MODULE 10: COLORECTAL CANCER SCREENING;
LABEL BLDSTOOL = 'EVER HAD BLOOD STOOL TEST USING HOME KIT';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LSTBLDST = 'HOW LONG SINCE LAST HOME BLOOD STOOL TST';
 /*          1 = 'WITHIN PAST YEAR'
             2 = 'WITHIN PAST TWO YEARS'
             3 = 'WITHIN PAST FIVE YEARS'
             4 = 'FIVE OR MORE YEARS AGO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL HADPROC2 = 'EVER HAD A SIGMOIDOSCOPY/PROCTOSCOPY';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LSTPROC2 = 'HOW LONG SINCE SIGMOIDOSCOPY/PROCTOSCOPY';
 /*          1 = 'WITHIN PAST YEAR'
             2 = 'WITHIN PAST TWO YEARS'
             3 = 'WITHIN PAST FIVE YEARS'
             4 = 'FIVE OR MORE YEARS AGO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;
/**********************************************************/

* MODULE 11: IMMUNIZATION;
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

/******************************************************/

* MODULE 12: INJURY CONTROL;
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

LABEL SMKDETE2 = 'LAST TIME TESTED SMOKE DETECTORS';
 /*         1 = 'WITHIN PAST MONTH'
            2 = 'WITHIN PAST 6 MONTHS'
            3 = 'WITHIN PAST YEAR'
            4 = 'ONE OR MORE YEARS AGO'
            5 = 'NEVER'
            6 = 'NO SMOKE DETECTORS IN HOME'
            7 = 'DO NOT KNOW'
            9 = 'REFUSED' */;
/**********************************************************/

* MODULE 13: ALCOHOL CONSUMPTION;
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

/*************************************************************/

* MODULE 14: CARDIOVASCULAR DISEASE;
LABEL CVDFATRK = 'DOCTOR ADVISED FEWER FAT/CHOLESTEROL';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL CVDEXRSK = 'DOCTOR ADVISED EXERCISE MORE';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL CVDFAT02 = 'ARE YOU EATING FEWER FAT/CHOLESTEROL';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL CVDEXR02 = 'ARE YOU EXERCISING MORE';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL CVDINFAR = 'EVER TOLD HAD MYOCARDIAL INFARCTION';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL CVDCORHD = 'EVER TOLD HAD CORONARY HEART DISEASE';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL CVDSTROK = 'EVER TOLD HAD STROKE';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL CVDASPRN = 'TAKE ASPIRIN DAILY OR EVERY OTHER DAY';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL ASPUNSAF = 'HEALTH MAKES TAKING ASPIRIN UNSAFE';
 /*        1 = 'YES, NOT STOMACH RELATED'
           2 = 'YES, STOMACH PROBLEMS'
           3 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL WHYASPAN = 'TAKE ASPIRIN TO RELIEVE PAIN';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL WHYASPHA = 'TAKE ASPIRIN TO REDUCE HEART ATTACK';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL WHYASPSK = 'TAKE ASPIRIN TO REDUCE STROKE';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL PASTMENO = 'GONE THROUGH MENOPAUSE';
 /*        1 = 'YES, HAVE GONE THROUGH MENOPAUSE'
           2 = 'YES, NOW GOING THROUGH MENOPAUSE'
           3 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL DICSESTR = 'DOC DISCUSSED BENEFITS/RISKS OF ESTROGEN';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL ESTRPILL = 'DOCTOR PRESCRIBED ESTROGEN PILLS';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL CURESTRO = 'CURRENTLY TAKING ESTROGEN';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           9 = 'REFUSED' */;

LABEL ESTRHART = 'TAKE/TOOK ESTROGEN TO PREVENT HRT ATTACK';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           8 = 'NEVER TOOK'
           9 = 'REFUSED' */;

LABEL ESTRBONE = 'TAKE/TOOK ESTROGEN FOR BONES';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           8 = 'NEVER TOOK'
           9 = 'REFUSED' */;

LABEL ESTRFLSH = 'TAKE/TOOK ESTROGEN TO TREAT MENOPAUSE';
 /*        1 = 'YES'
           2 = 'NO'
           7 = 'DO NOT KNOW'
           8 = 'NEVER TOOK'
           9 = 'REFUSED' */;



/**********************************************************/

* MODULE 15:  ARTHRITIS;
LABEL PAIN12MN = 'HAD PAIN, ACHING, STIFFNESS, SWELLING';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL SYMTMMTH = 'SYMPTOMS PRESENT AT LEAST ONE MONTH';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LMTJOINT = 'LIMITED BECAUSE OF JOINT SYMPTOMS';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL HAVARTH = 'TOLD HAVE ARTHRITIS BY DOCTOR';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL TYPEARTH = 'TYPE ARTHRITIS DOCTOR DIAGNOSED';
 /*         01 = 'OSTEOARTHRITIS/DEGENERATIVE ARTHRITIS'
            02 = 'RHEUMATISM'
            03 = 'RHEUMATOID ARTHRITIS'
            04 = 'LYME DISEASE'
            07 = 'OTHER'
            77 = 'DO NOT KNOW'
            88 = 'NEVER SAW A DOCTOR'
            99 = 'REFUSED' */;

LABLE TRTARTH = 'CURRENTLY TREATED BY DOC FOR ARTHRITIS';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

/*****************************************************/



* MODULE 16:  QUALITY OF LIFE;
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

/*************************************************************/

*MODULE 17: FOLIC ACID;
LABEL VITAMINS = 'CURRENTLY TAKE VIT PILLS OR SUPPLEMENTS';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL MULTIVIT = 'ANY OF VITS/SUPPLEMENTS A MULTIVITAMIN';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL FOLICACD = 'ANY VITAMINS CONTAIN FOLIC ACID';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL TAKEVIT  = 'HOW OFTEN TAKE VITAMIN OR SUPPLEMENT';
 /*        1NN = '# TIMES/WEEK (WHERE 1NN=101-199)'
           2NN = '# TIMES/MONTH (WHERE 2NN=201-299)'
           777 = 'DO NOT KNOW'
           999 = 'REFUSED' ;  */

LABEL RECOMMEN = 'REASONS HLTH EXPERTS RECMND FOLIC ACID';
 /*          1 = 'TO MAKE STRONG BONES'
             2 = 'TO PREVENT BIRTH DEFECTS'
             3 = 'TO PREVENT HIGH BLOOD PRESSURE'
             4 = 'SOME OTHER REASON'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' ; */

/*****************************************************/

* MODULE 18:  FIREARMS;
LABEL FIREARM2 = 'FIREARMS KEPT AROUND HOME';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL HANDGUNS = 'FIREARMS ARE HANDGUNS';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL RIFLE = 'FIREARMS ARE LONG GUNS, RIFLE/SHOTGUN';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL RNSARMED = 'REASON FIREARMS IN HOME';
 /*          1 = 'HUNTING OR SPORT'
             2 = 'PROTECTION'
             3 = 'WORK'
             4 = 'SOME OTHER REASON'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL LOADUNLK = 'LOADED AND UNLOCKED FIREARM IN HOME';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL PROTECT2 = 'CARRIED LOADED FIREARM FOR PROTECTION';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL RIDARMED = 'RIDDEN IN VEHICLE WITH A LOADED FIREARM';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL CONFRNTA = 'CONFRONTED ANOTHER PERSON WITH A FIREARM';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL SAFWKSHP = 'ATTENDED FIREARM SAFETY WORKSHOP';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL PERFRARM = 'ANY PERSONAL FIREARMS';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

/***********************************************/

* MODULE 19:  SOCIAL CONTEXT;
LABEL HOWSAFE = 'HOW SAFE IS NEIGHBORHOOD FROM CRIME';
 /*          1 = 'EXTREMELY SAFE'
             2 = 'QUITE SAFE'
             3 = 'SLIGHTLY SAFE'
             4 = 'NOT AT ALL SAFE'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL RENTHOME = 'RENT OR OWN HOME';
 /*          1 = 'OWN'
             2 = 'RENT'
             9 = 'REFUSED' */;

LABEL CURADRS = 'HOW LONG AT CURRENT ADDRESS';
 /*          1 = 'LESS THAN SIX MONTHS'
             2 = 'LESS THAN ONE YEAR'
             3 = 'LESS THAN TWO YEARS'
             4 = 'TWO OR MORE YEARS'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL NMCLSFRD = 'NUMBR OF FRIENDS/CLOSE RELATIVES TO HELP';
  /*         1 = 'THREE OR MORE'
             2 = 'TWO'
             3 = 'ONE'
             4 = 'NONE'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL ENGHFOOD = 'CNCRND ABOUT ENOUGH FOOD IN PAST 30 DAYS';
 /*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

/**************************************************/
*MODULE 20: TOBACCO USE PREVENTION;

LABEL TOBACCO='SMOKING IN HOME PAST 30 DAYS';
/*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL INDOORS='INDOOR WORK LOCATION';
/*          1 = 'YES'
             2 = 'NO'
             7 = 'DO NOT KNOW'
             9 = 'REFUSED' */;

LABEL SMKPUBLC='SMOKING POLICY AT WORK FOR COMMON AREAS';
 /*       1='NOT ALLOWED IN ANY PUBLIC AREA'
        2='ALLOWED IN SOME PUBLIC AREAS'
        3='ALLOWED IN ALL PUBLIC AREAS'
        4='NO OFFICIAL POLICY'
        7='DO NOT KNOW'
        9='REFUSED';  */

LABEL SMKWORK='SMOKING POLICY AT WORK FOR COMMON AREAS';
 /*       1='NOT ALLOWED IN ANY PUBLIC AREA'
        2='ALLOWED IN SOME PUBLIC AREAS'
        3='ALLOWED IN ALL PUBLIC AREAS'
        4='NO OFFICIAL POLICY'
        7='DO NOT KNOW'
        9='REFUSED';  */

LABEL SMKREST='SMOKING ALLOWED IN RESTAURANTS';
 /*       1='ALL AREAS'
        2='SOME AREAS'
        3='NOT ALLOWED'
        7='DO NOT KNOW'
        9='REFUSED';   */

LABEL SMKSCHLS='SMOKING ALLOWED IN SCHOOLS';
  /*       1='ALL AREAS'
        2='SOME AREAS'
        3='NOT ALLOWED'
        7='DO NOT KNOW'
        9='REFUSED';   */

LABEL SMKDAYCR='SMOKING ALLOWED IN DAY CARE CENTERS';
     /*       1='ALL AREAS'
        2='SOME AREAS'
        3='NOT ALLOWED'
        7='DO NOT KNOW'
        9='REFUSED';   */

LABEL SMKINDOR='SMOKING ALLOWED IN INDOOR WORK AREAS';
/*       1='ALL AREAS'
        2='SOME AREAS'
        3='NOT ALLOWED'
        7='DO NOT KNOW'
        9='REFUSED';   */

LABEL ALLOWADS='PLACEMENT OF BILLBOARD ADS ABOUT SMOKING';
   /*   1='YES'
      2='NO'
      7='DON'T KNOW'
      9='REFUSED'   ; */

/**************************************************************/
* MODULE 21:  SMOKELESS TOBACCO;
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

/**********************************************/
  ***Set labels for new variables***;
LABEL _WTFORHT  = 'WEIGHT FOR HEIGHT PERCENT OF MEDIAN'
  /*      99999 = 'UNKNOWN (2 DECIMAL PLACES IMPLIED)'*/

      _SMKLESS = 'SMOKELESS STATUS'
 /*          1 = 'CURRENT USER'
             2 = 'FORMER USER'
             3 = 'NEVER USED'
             9 = 'UNKNOWN' */

        _BMI = 'BODY MASS INDEX'
  /*  CALCULATED AS WEIGHT IN KILOGRAMS DIVIDED BY
      HEIGHT IN METERS SQUARED
       999 = 'UNKNOWN (1 DECIMAL PLACE IMPLIED)' */

      _DRNKMO = 'TOTAL NUMBER ALL DRINKS A MONTH'

      _SMOKER2 = 'SMOKING STATUS'
  /*  NEW    1 = 'CURRENT SMOKER--EVERYDAY'
 CATEGORIES  2 = 'CURRENT SMOKER--SOME DAYS'
             3 = 'FORMER SMOKER'
             4 = 'NEVER SMOKED'
             9 = 'REFUSED ONE OR MORE SMOKING QUESTIONS' */

      _TOTINDX = 'PHYSICAL ACTIVITY LEVEL'
 /*          1 = 'PHYSICALLY INACTIVE (OBJ. 1.5)'
             2 = 'IRREGULAR'
             3 = 'REGULAR'
             4 = 'REGULAR AND VIGOROUS (OBJ. 1.4)'
           0,9 = 'UNKNOWN' */

      RACE = 'NEW RACE CODE'
 /*      1 = 'WHITE NON-HISPANIC'
         2 = 'BLACK NON-HISPANIC'
         3 = 'WHITE HISPANIC'
         4 = 'BLACK HISPANIC'
         5 = 'OTHER HISPANIC'
         6 = 'ASIAN, PACIFIC ISLAND'
         7 = 'AMER IND, ALSK NAT'
         8 = 'OTHER'
        99 = 'DK, REFUSED, MISSING' */

      _RACEG = 'RACE GROUPED'
 /*      1 = WHITE, NONHISPANIC
         2=NON-WHITE OR HISPANIC
         9=UNKNOWN/REFUSED/MISSING   */

       _RACEGR = 'RACE GROUPED'
 /*       1=WHITE, NONHISPANIC
          2=BLACK, NONHISPANIC
          3=HISPANIC
          4=OTHER
          9=UNKNOWN/REFUSED/MISSING   */

       _AGE65YR = 'REPORTED AGE IN 65+ YRS GROUPED'
 /*       1=18-64
          2=65-99
          3=7-9                      */

       _AGEG = 'REPORTED AGE IN YEARS GROUPED'
 /*       1=18-34
          2=35-54
          3=55-99                    */

       _AGEG5YR = 'REPORTED AGE IN 5 YEAR AGE GROUPS'
 /*        1=18-24
           2=25-29
           3=30-34
           4=35-39
            ETC...
           12=75=79
           13=80-99
           14=7-9                     */

        _BPCHECK = 'BLOOD PRESSURE CHECKED'
 /*        1=BP CHECKED WITHIN PAST 2 YRS
           2=BP NOT CHECKED WITHIN PAST 2 YRS
           9=UNKNOWN/REFUSED          */

        _CHOLCHK = 'CHOLESTEROL CHECKED'
 /*        1=CHOLESTEROL CHECKED WITHIN PAST 5 YRS
           2=CHOLESTEROL NOT CHEKCED WITHIN PAST 5 YRS
           3=CHOLESTEROL NEVER CHECKED
           9=UNKNOWN/REFUSED           */

        _FRTSERV = 'DAILY SERVINGS OF FRUITS AND VEGS'

        _FRTINDX = 'SUMMARY INDEX OF FRUITS AND VEGS'


 /*    NOTE FOR ALL _RF VARIABLES FOLLOWING ARE CODES:
            1 = 'NOT AT RISK'
            2 = 'AT RISK'
            9 = 'REFUSED' */

      _RFSEAT2 = 'AT RISK FOR LACK OF SEATBELT USAGE'
 /*         AT RISK DEFINED AS SOMETIMES, SELDOM,
                     OR NEVER USE SEATBELTS */

      _RFSEAT3= 'AT RISK FOR LACK OF SEATBELT USAGE'
 /*         AT RISK DEFINED AS NEARLY ALWAYS, SOMETIMES, SELDOM,
                     OR NEVER USE SEATBELTS */

      _RFHYPE2 = 'AT RISK FOR HYPERTENSION'
 /*        AT RISK DEFINED AS EVER BEEN TOLD YOU HAVE HIGH'
           BLOOD PRESSURE  */

      _RFOBESE = 'AT RISK FOR OVERWEIGHT'
 /*        AT RISK DEFINED AS GREATER THAN 120% OF MEDIAN
           WEIGHT FOR HEIGHT (_WTFORHT)
           BASED ON 1959 METROPOLITAN LIFE TABLES */

      _RFWHBMI = 'AT RISK FOR OVERWEIGHT (BASED ON BMI)'
 /*        AT RISK DEFINED AS BMI GE 27.8 FOR MALES
           AND 27.3 FOR FEMALES (LOWER EXCEPTABLE LIMIT IS
           12.0 FOR MALE AND FEMALE, UPPER 57.0-M & 73.0-F */

      _RFLIFES = 'AT RISK FOR SEDENTARY LIFESTYLE'
 /*        AT RISK DEFINED AS PHYSICALLY INACTIVE AND
           IRREGULAR AND NOT SUSTAINED ACTIVITY.
           LESS THAN 20 MINUTES/SESSION, AND/OR
           LESS THAN 3 TIMES/WEEK OF ACTIVITY
           DURING THE PAST MONTH */

      _RFREGUL = 'REGULAR & SUSTAINED EXERCISE'
 /*        AT RISK DEFINED AS 5+ TIMES/WEEK,
           30+ MINUTES/SESSION, REGARDLESS
           OF INTENSITY (OBJ 1.3) */

      _RFSMOK2 = 'AT RISK FOR SMOKING'
 /*        AT RISK DEFINED AS ALL CURRENT SMOKERS */

      _RFTOBAC = 'AT RISK FOR SMOKELESS TOBACCO'
 /*        AT RISK DEFINED AS CURRENT USER */

      _RFDRACU = 'AT RISK FOR ACUTE DRINKING'
 /*        AT RISK DEFINED AS HAVING 5 OR MORE DRINKS ON AN
           OCCASION DURING PAST 4 WEEKS (DRINKGE5) AT LEAST
           ONCE   */

      _RFDRCHR = 'AT RISK FOR CHRONIC DRINKING'
 /*        AT RISK DEFINED AS HAVING 60 OR MORE DRINKS
           A MONTHS   */

      _RFDRDRI = 'AT RISK FOR DRINKING AND DRIVING'
 /*        AT RISK DEFINED AS HAVING DRIVEN WHEN YOU HAVE
           HAD TOO MUCH TO DRINK DURING THE PAST 4 WEEKS
           (DRINKDRI) AT LEAST ONCE   */
            ;

***DENSITY STRATUM WEIGHT***;
LABEL _DENWT = 'DENSITY STRATUM WEIGHT'
      _RAW='# ADULTS/# PHONES'
      _CSA='UNEQUAL CLUSTER SIZE ADJ'
      _WT1='PRODUCT OF PRECEDING WEIGHTING FACTORS'
      _POSTSTR='AGE, RACE, SEX WT ST POP'
      _FINALWT='PRODUCT OF _POSTSTR & _WT1'
      _AGEG_='AGE GROUPS USED IN POSTSTRATIFICATION'
      _RACEG_='RACE CATEGORIES USED IN POST-STRAT'
      _IMPAGE='IMPUTED AGE USED IN POSTSTRATIFICATION'
      _GEOWT='WEIGHT OF AREA CODE/PREFIX STRATUM'
      _DENSTR='DENSITY STRATUM'
      _DENWT='DENSITY STRATUM WEIGHT'
      _SEXG_='SEX CATEGORIES USED IN POST-STRAT'
      _MSACODE='METROPOLITAN STATISTICAL AREA CODE'
      _REGION='GEOGRAPHIC REGION WITHIN A STATE'
      _STSTR='CONCATENATED STRATIFICATION VARIABLES'
      _QSTVER='QUESTIONNAIRE VERSIONS';

* STATE ADDED QUESTIONS;
LABEL STATEQUE = 'STATE-ADDED QUESTIONS';
**LABEL RACE2='RACE CATEGORIES USED IN POST-STRAT';


/**<< produces a frequency report all variables >>
 excluding:PREFIX SUFFIX PHONENUM _FINALWT _PSU IDATE INTVID STATEQUE */

*DATA VARLIST1
   (DROP=PREFIX SUFFIX PHONENUM _FINALWT _PSU IDATE INTVID STATEQUE);
*SET PERMFILE.CDDATA98;

  *PROC FREQ DATA=VARLIST1;

/**<< produces a contents report of all variables >>**/

DATA VARLIST2;
SET PERMFILE.CDDATA98;
  PROC CONTENTS;

 RUN;