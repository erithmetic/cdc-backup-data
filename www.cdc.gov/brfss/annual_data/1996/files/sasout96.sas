*****************************************************************************************
* DESCRIPTION:   THIS PROGRAM CONVERTS A STATES ASCII DATAFILE OF COMPLETES LOCATED AT  *
*                <DATAIN> FILEREF, INTO A SAS DATABASE STORED AT <DATAOUT> LIBREF       *
* UPDATED - 07/28/2004                                                                  *
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

*FILENAME DATAIN '<PATH FOR INPUT BRFSS ASCII DATA FILE>' LRECL = 950 ;
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
                                                     
                                                                        
DATA DATAOUT.CDBRFS96;                    
   INFILE DATAIN;                                                        
                                                                        
* COLUMN LOCATION OF VARIABLES;                                         
INPUT                                                                   
      @1   _STATE           2.     @503 _STRATA             2.          
      @4   _PSU             5.     @9   _RECORD             1.          
      @10  IDATE       $CHAR6.     @10  IMONTH         $CHAR2.          
      @12  IDAY        $CHAR2.     @14  IYEAR          $CHAR2.          
      @16  INTVID      $CHAR2.                                          
      @18  PHONENUM    $CHAR8.     @18  AREACODE       $CHAR3.          
      @21  PREFIX      $CHAR3.     @24  SUFFIX         $CHAR2.          
      @26  DISPCODE         2.     @28  WINDDOWN            1.          
      @29  NUMADULT         2.     @31  NUMMEN              1.          
      @32  NUMWOMEN         1.                                          
      @33  GENHLTH          1.     @34  PHYSHLTH            2.          
      @36  MENTHLTH         2.     @38  POORHLTH            2.          
      @40  HLTHPLAN         1.     @41  MEDICARE            1.          
      @42  TYPCOVR1         2.     @44  TYPCOVR2            2.          
      @46  MCRELNGT         1.     @47  DOCTLIST            1.          
      @48  CERTDOCT         1.     @49  PASTPLAN            1.          
      @50  MEDCOST          1.     @51  CHECKUP             1.          
      @52  DIABETES         1.     @53  EXERANY             1.          
      @54  EXERACT1         2.     @56  EXERDIS1            3.          
      @59  EXEROFT1         3.     @62  EXERHMM1            3.          
      @65  EXEROTH2         1.     @66  EXERACT2            2.          
      @68  EXERDIS2         3.     @71  EXEROFT2            3.          
      @74  EXERHMM2         3.     @77  SMOKE100            1.          
      @78  SMOKEDAY         1.     @79  SMOKENUM            2.          
      @81  SMOKNM30         2.     @83  STOPSMOK            1.          
      @84  LASTSMOK         2.     @86  FRUITJUI            3.          
      @89  FRUIT            3.     @92  GREENSAL            3.          
      @95  POTATOES         3.     @98  CARROTS             3.          
      @101 VEGETABL         3.     @104 LOSEWT              1.          
      @105 MAINTAIN         1.     @106 FEWCAL              1.          
      @107 PHYACT           1.     @108 DRADVICE            1.          
      @109 AGE              2.     @111 ORACE               1.          
      @112 HISPANIC         1.     @113 MARITAL             1.          
      @114 CHLD04           1.     @115 CHLD0512            1.          
      @116 CHLD1317         1.     @117 EDUCA               1.          
      @118 EMPLOY           1.     @119 INCOME2             2.          
      @121 WEIGHT           3.     @124 WTDESIRE            3.          
      @127 HEIGHT           3.     @127 HTF                 1.          
      @128 HTI              2.     @130 CTYCODE             3.          
      @133 NUMHHOLD         1.     @134 NUMPHONS            1.          
      @135 SEX              1.     @136 HADMAM              1.          
      @137 HOWLONG          1.     @138 WHYDONE             1.          
      @139 PROFEXAM         1.     @140 LENGEXAM            1.          
      @141 REASEXAM         1.     @142 HADPAP              1.          
      @143 LASTPAP          1.     @144 WHYPAP              1.          
      @145 HADHYST          1.     @146 PREGNANT            1.          
      @147 GRADE2           2.     @149 CONDUSE             1.          
      @150 GETHIV           1.     @151 HIVTEST             1.          
      @152 DONBLD85         1.     @153 LASTDON             4.          
      @157 LSTTST2          4.     @161 RSNTST2             2.          
      @163 WHRTST2          2.     @165 RESULTS             1.          
      @166 COUNSEL          1.     @167 CONEFF2             1.          
      @168 SEXBEHAV         1.     @169 SEX1PTNR            1.          
      @170 USECONDM         1.     @171 SELCPTNR            1.          
      @172 DIABAGE          2.     @174 INSULIN             1.          
      @175 INSLNFRQ         3.     @178 BLDSUGAR            3.          
      @181 HEMOGLBN         1.     @182 DOCTDIAB            2.          
      @184 CHKHEMO          2.     @186 FEETCHK             2.          
      @188 EYEEXAM          1.     @189 VISNDIST            1.          
      @190 VISNREAD         1.     @191 VISIONTV            1.          
      @192 SEXINTMN         2.     @194 SEXINTWK            2.          
      @196 SEXCONDM         1.     @197 CONDLAST            1.          
      @198 HIVRISK          1.     @199 STDTREAT            1.          
      @200 STDCLIN          1.     @201 RSNNOCOV            2.          
      @203 HLTHCOVR         1.     @204 NOCOV12             1.          
      @205 RSNWOCOV         2.     @207 RATECARE            1.          
      @208 NUMBDOCT         1.     @209 CHNGDOCT            1.          
      @210 LASTCHNG         2.     @212 DISTCARE            1.          
      @213 USEEVER          1.     @214 USENOW              1.          
      @215 PAIN12MN         1.     @216 SYMTMMTH            1.          
      @217 LMTJOINT         1.     @218 HAVARTH             1.          
      @219 TYPEARTH         2.     @221 TRTARTH             1.          
      @222 QLACTLMT         1.     @223 HLTHPROB            2.          
      @225 LONGLMTD         3.     @228 QLPERSNL            1.          
      @229 QLROUTIN         1.     @230 PAINACTV            2.          
      @232 QLMENTAL         2.     @234 QLSTRESS            2.          
      @236 QLREST           2.     @238 QLHLTHY             2.          
      @240 PRIMCARE         1.     @241 MOSTCARE            1.          
      @242 FACILITY         2.     @244 NOPRIMCR            2.          
      @246 LASTDENT         1.     @247 REASDENT            2.          
      @249 RMVTEETH         1.     @250 DENTLINS            1.          
      @251 PCSEATHB         1.     @252 PCSEXER             1.          
      @253 PCSINJPV         1.     @254 PCSDRGAB            1.          
      @255 PCSALCH          1.     @256 PCSSMOK             1.          
      @257 PCSAIDS          1.     @258 BPTAKE              1.          
      @259 BPHIGH           1.     @260 HIGHGT1             1.          
      @261 BLOODCHO         1.     @262 CHOLCHK             1.          
      @263 TOLDHI           1.     @264 CVDFATRK            1.          
      @265 CVDEXRSK         1.     @266 CVDFAT02            1.          
      @267 CVDEXR02         1.     @268 CVDINFAR            1.          
      @269 CVDCORHD         1.     @270 CVDSTROK            1.          
      @271 CVDASPRN         1.     @272 ASPUNSAF            1.          
      @273 WHYASPAN         1.     @274 WHYASPHA            1.          
      @275 WHYASPSK         1.     @276 PASTMENO            1.          
      @277 DICSESTR         1.     @278 ESTRPILL            1.          
      @279 CURESTRO         1.     @280 ESTRHART            1.          
      @281 ESTRBONE         1.     @282 ESTRFLSH            1.          
      @283 FLUSHOT          1.     @284 PNEUMVAC            1.          
      @285 HADRECTL         1.     @286 LASTEXAM            1.          
      @287 BLDSTOOL         1.     @288 LSTBLDST            1.          
      @289 HADPROC2         1.     @290 LSTPROC2            1.          
      @291 SEATBELT         1.     @292 CHLDLT16            2.          
      @294 SFTYLT16         1.     @295 BIKEHLMT            1.          
      @296 SMKDETEC         1.     @297 DRINKANY            1.          
      @298 ALCOHOL          3.     @301 NALCOCC             2.          
      @303 DRINKGE5         2.     @305 DRINKDRI            2.          
      @307 FIREARM2         1.     @308 HANDGUNS            1.          
      @309 RIFLE            1.     @310 RNSARMED            1.          
      @311 LOADUNLK         1.     @312 PROTECT2            1.          
      @313 RIDARMED         1.     @314 CONFRNTA            1.          
      @315 SAFWKSHP         1.     @316 PERFRARM            1.          
      @317 HOWSAFE          1.     @318 RENTHOME            1.          
      @319 CURADRS          1.     @320 NMCLSFRD            1.          
      @321 ENGHFOOD         1.     @330 STATEQUE     $CHAR171.          
      @501 _STSTR          12.     @505 _DENSTR             2.          
      @513 _DENWT          10.     @523 _ACPRWT            10.          
                                   @533 _REGION             2.          
      @535 _RACEG_          1.     @536 _AGEG_              1.          
      @537 _IMPAGE          2.                                          
                                   @540 _RAW               10.          
      @550 _CSA            10.     @560 _WT1               10.          
      @570 _POSTSTR        10.     @580 _FINALWT           10.          
      @590 _MSACODE         4.                                          
      @601 RACE             2.     @603 _SMOKER2            1.          
      @604 _DRNKMO          4.     @608 _WTFORHT            5.          
      @613 _BMI             3.     @616 _TOTINDX            1.          
      @617 _SMKLESS         1.     @618 _FRTSERV            5.          
      @623 _FRTINDX         1.     @624 _RFSEAT2            1.          
      @625 _RFSEAT3         1.     @626 _RFHYPE2            1.          
      @627 _RFSMOK2         1.                                          
      @628 _RFDRACU         1.     @629 _RFDRDRI            1.          
      @630 _RFDRCHR         1.     @631 _RFLIFES            1.          
      @632 _RFREGUL         1.     @633 _RFOBESE            1.          
      @634 _RFWHBMI         1.     @635 _RFTOBAC            1.          
      @636 _AGEG            1.     @637 _AGEG5YR            2.          
      @639 _AGE65YR         1.                                          
      @640 _RACEG           1.     @641 _RACEGR             1.          
      @642 _CHOLCHK         1.     @643 _BPCHECK            1.          
     ;                                                                  
                                                                        
   LENGTH DEFAULT=4;                                                    
   LENGTH _WTFORHT _FRTSERV 6 _DRNKMO 5  _psu 5                               
          _STSTR _ACPRWT _DENWT _RAW _CSA _WT1 _POSTSTR _FINALWT 8;     
                                                                        
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
                    KKK              44                                 
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
      _STSTR   = 'CONCATENATED STRATIFICATION VARIABLES'                
                                                                        
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
                                                                        
LABEL MEDICARE = 'HAVE MEDICARE';                                       
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
*ASKED ONLY OF THOSE INDICATING THEY HAD MORE THAN ONE TELPHONE
NUMBER; 
                                                                        
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
                                                                        
LABEL LSTTST2 = 'LAST BLOOD TEST FOR HIV';                              
 /*   0180-1295 = 'MONTH AND YEAR LAST AIDS TEST'                       
      7780-7795 = 'UNK MONTH & KNOWN YEAR OF LAST AIDS TEST'            
      9980-9995 = 'REF MONTH & KNOWN YEAR OF LAST AIDS TEST'            
           7777 = 'DO NOT KNOW'                                         
           9999 = 'REFUSED' */;                                         
                                                                        
LABEL RSNTST2 = 'MAIN REASON BLOOD TESTED FOR HIV';                     
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
                                                                        
LABEL WHRTST2 = 'WHERE WAS LAST BLOOD TEST FOR HIV';                    
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
                                                                        
LABEL CONEFF2 = 'CONDOM EFFECTIVENESS AGAINST HIV';                     
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
                                                                        
* MODULE 1:  DIABETES;                                                  
*ASKED ONLY OF THOSE INDICATING THEY HAD BEEN TOLD THEY HAVE
DIABETES;  
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
                                                                        
* MODULE 2:  SEXUAL BEHAVIOR;                                           
LABEL SEXINTMN = 'HOW MANY PARTNERS IN PAST 12 MONTHS';                 
 /*         NN = '# OF SEX PARTNERS (EX. 01,02,03,04,...,30)'           
            77 = 'DO NOT KNOW'                                          
            88 = 'NONE'                                                 
            99 = 'REFUSED' */;                                          
                                                                        
LABEL SEXINTWK = 'FREQ OF SEXUAL INTERCOURSE IN PAST WEEK';             
 /*         NN = '# OF TIMES INTERCOURSE (EX. 01,02,03,04,...,30)'      
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
                                                                        
* MODULE 3: HEALTH CARE COVERAGE;                                       
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
                                                                        
LABEL HLTHCOVR = 'ANY OTHER TYPE HEALTH CARE COVERAGE';                 
 /*          1 = 'YES'                                                  
             2 = 'NO'                                                   
             7 = 'DO NOT KNOW'                                          
             9 = 'REFUSED' */;                                          
                                                                        
LABEL NOCOV12 = 'NO HEALTH CARE COVERAGE IN PAST 12 MNTHS';             
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
                                                                        
LABEL RATECARE = 'RATE SATISFACTION WITH OVERALL CARE';                 
 /*         1 = 'EXCELLENT'                                             
            2 = 'VERY GOOD'                                             
            3 = 'GOOD'                                                  
            4 = 'FAIR'                                                  
            5 = 'POOR'                                                  
            7 = 'DO NOT KNOW'                                           
            8 = 'NOT APPLICABLE/DO NOT USE HEALTH SERVICES'             
            9 = 'REFUSED' */;                                           
                                                                        
LABEL NUMBDOCT = 'ONE USUAL DOCTOR FOR MEDICAL CARE';                   
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
                                                                        
LABEL DISTCARE = 'CONVENIENCE OF MEDICAL FACILITY LOCATION';            
 /*         1 = 'EXCELLENT'                                             
            2 = 'VERY GOOD'                                             
            3 = 'GOOD'                                                  
            4 = 'FAIR'                                                  
            5 = 'POOR'                                                  
            6 = 'DO NOT HAVE USUAL PLACE'                               
            7 = 'DO NOT KNOW'                                           
            9 = 'REFUSED' */;                                           
                                                                        
* MODULE 4:  SMOKELESS TOBACCO;                                         
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
                                                                        
                                                                        
* MODULE 5:  ARTHRITIS;                                                 
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
                                                                        
* MODULE 6:  QUALITY OF LIFE;                                           
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
                                                                        
* MODULE 7:  HEALTH CARE UTILIZATION;                                   
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
                                                                        
* MODULE 8:  ORAL HEALTH;                                               
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
                                                                        
* MODULE 9:  PREVENTIVE COUNSELING SERVICES;                            
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
                                                                        
* MODULE 10: HYPERTENSION AWARENESS;                                    
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
                                                                        
* MODULE 11: CHOLESTEROL AWARENESS;                                     
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
                                                                        
* MODULE 12: CARDIOVASCULAR DISEASE;                                    
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
                                                                        
* MODULE 13: IMMUNIZATION;                                              
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
                                                                        
* MODULE 14: COLORECTAL CANCER SCREENING;                               
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
                                                                        
* MODULE 15: INJURY CONTROL;                                            
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
                                                                        
                                                                        
* MODULE 16: ALCOHOL CONSUMPTION;                                       
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
                                                                        
* MODULE 17:  FIREARMS;                                                 
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
                                                                        
* MODULE 18:  SOCIAL CONTEXT;                                           
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
                                                                        
* STATE ADDED QUESTIONS;                                                
LABEL STATEQUE = 'STATE ADDED QUESTIONS';                               
                                                                        
* COMPUTED VARIABLES;                                                   
LABEL _BPCHECK = 'BLOOD PRESSURE CHECKED'                               
 /*          1 = 'BLOOD PRESSURE CHECKED WITHIN THE PAST 2 YRS.'        
             2 = 'BLOOD PRESSURE NOT CHECKED WITH THE PAST 2 YRS.'      
             9 = 'REFUSED/UNKNOWN' */;                                  
                                                                        
LABEL _CHOLCHK = 'CHOLESTEROL CHECKED'                                  
 /*          1 = 'CHOLESTEROL CHECKED WITHIN THE PAST 5 YRS.'           
             2 = 'CHOLESTEROL NOT CHECKED WITH THE PAST 5 YRS.'         
             9 = 'REFUSED/UNKNOWN' */;                                  
                                                                        
LABEL _SMOKER2 = 'SMOKING STATUS'                                       
 /*          1 = 'CURRENT-NOW SMOKE EVERYDAY'                           
             2 = 'CURRENT-NOW SMOKE SMOKE DAYS'                         
             3 = 'FORMER'                                               
             4 = 'NEVER SMOKED'                                         
             9 = 'REFUSED ONE OR MORE SMOKING QUESTIONS' */;            
                                                                        
LABEL _DRNKMO  = 'TOTAL NUMBER OF DRINKS A MONTH'                       
 /*  0001-1000 = 'NUMBER OF DRINKS'                                     
          8888 = 'DID NOT DRINK IN PAST MONTH'                          
          9999 = 'REFUSED' */;                                          
                                                                        
LABEL _WTFORHT = 'WEIGHT FOR HEIGHT PERCENT OF MEDIAN'                  
 /*      99999 = 'UNKNOWN (2 DECIMAL PLACES IMPLIED)'*/;                
                                                                        
LABEL _BMI = 'BODY MASS INDEX'                                          
 /*  CALCULATED AS WEIGHT IN KILOGRAMS DIVIDED BY                       
     HEIGHT IN METERS SQUARED (W/H**2)                                  
       999 = 'UNKNOWN (1 DECIMAL PLACE IMPLIED)' */;                    
                                                                        
LABEL _TOTINDX = 'LEVEL OF PHYSICAL ACTIVITY'                           
 /*          1 = 'PHYSICALLY INACTIVE'                                  
             2 = 'IRREGULAR ACTIVITY'                                   
             3 = 'REGULAR ACTIVITY'                                     
             4 = 'REGULAR & VIGOROUS'                                   
           0,9 = 'UNKNOWN' */;                                          
                                                                        
LABEL _SMKLESS = 'SMOKELESS STATUS'                                     
 /*          1 = 'CURRENT USER'                                         
             2 = 'FORMER USER'                                          
             3 = 'NEVER USED'                                           
             9 = 'UNKNOWN' */;                                          
                                                                        
LABEL _FRTSERV = 'DAILY SERVINGS OF FRTS AND VEGS'                      
 /*      99999 = 'UNKNOWN (2 DECIMAL PLACES IMPLIED)' */;               
                                                                        
LABEL _FRTINDX = 'SUMMARY INDEX OF FRTS AND VEGS'                       
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
                                                                        
LABEL _RFSEAT2 = 'SEATBELT (SAFETY BELT) NON-USE (2)'                   
 /*         AT RISK DEFINED AS SOMETIMES, SELDOM,                       
                     OR NEVER USE SEATBELTS */;                         
                                                                        
LABEL _RFSEAT3 = 'SEATBELT (SAFETY BELT) NON-USE (3)'                   
 /*         AT RISK DEFINED AS NEARLY ALWAYS, SOMETIMES,                
                     SELDOM, OR NEVER USE SEATBELTS                     
                     (I.E., DO NOT ALWAYS USE A SEATBELT) */;           
                                                                        
LABEL _RFHYPE2 = 'HYPERTENSION (2)'                                     
 /*        AT RISK DEFINED AS EVER BEEN TOLD YOU HAVE HIGH              
           BLOOD PRESSURE  */;                                          
                                                                        
LABEL _RFSMOK2 = 'CURRENT SMOKING (IRREGULAR & REGULAR)'                
 /*AT RISK DEFINED AS CURRENT SMOKER (IRREGULAR & REGULAR)*/;           
                                                                        
LABEL _RFDRACU = 'ACUTE DRINKING'                                       
 /*        AT RISK DEFINED AS HAVING 5 OR MORE DRINKS AT LEAST          
           ONCE ON AN OCCASION DURING PAST 4 WEEKS (DRINKGE5) */;       
                                                                        
LABEL _RFDRDRI = 'DRINKING AND DRIVING'                                 
 /*        AT RISK DEFINED AS HAVING DRIVEN WHEN YOU HAVE               
           HAD TOO MUCH TO DRINK AT LEAST ONCE DURING THE               
           PAST 4 WEEKS (DRINKDRI)   */;                                
                                                                        
LABEL _RFDRCHR = 'CHRONIC DRINKING'                                     
 /*        AT RISK DEFINED AS HAVING 60 OR MORE DRINKS                  
           A MONTH   */;                                                
                                                                        
LABEL _RFLIFES = 'NO ACTIVITY OR IRREGULAR ACTIVITY'                    
 /*        AT RISK DEFINED AS NO ACTIVITY (SEDENTARY) OR                
           PHYSICAL ACTIVITY OR PAIR OF ACTIVITIES THAT                 
           WERE DONE FOR LESS THAN 20 MINUTES/SESSION,                  
           AND/OR LESS THAN 3 TIMES/WEEK DURING THE PAST                
           MONTH */;                                                    
                                                                        
LABEL _RFREGUL = 'REGULAR & SUSTAINED PATTERN'                          
 /*        AT RISK DEFINED AS 5+ TIMES/WEEK, 30+ MINUTES/               
           SESSION, REGARDLESS OF INTENSITY (YEAR 2000                  
           OBJECTIVE 1.3) */;                                           
                                                                        
LABEL _RFOBESE = 'GREATER THAN OR EQUAL TO 120% OF MEDIAN'              
 /*        AT RISK DEFINED AS GREATER THAN 120% OF MEDIAN               
           WEIGHT FOR HEIGHT (_WTFORHT)                                 
           BASED ON 1959 METROPOLITAN LIFE TABLES */;                   
                                                                        
LABEL _RFWHBMI = 'BASED ON BODY MASS INDEX (BMI)'                       
 /*        AT RISK DEFINED AS BMI GE 27.8 FOR MALES                     
           AND 27.3 FOR FEMALES (LOWER EXCEPTABLE LIMIT IS              
           12.0 FOR MALE AND FEMALE, UPPER 57.0-M & 73.0-F */;          
                                                                        
LABEL _RFTOBAC = 'CURRENT SMOKELESS TOBACCO USER'                       
 /*        AT RISK DEFINED AS CURRENT SMOKELESS TOBACCO USER */;        
                                                                        
LABEL _MSACODE = 'FIPS METROPOLITAN STATISTICAL AREA CODE';             
                                                                        
* WEIGHTING FACTORS;                                                    
LABEL                                                                   
 _ACPRWT  = 'WEIGHT OF AREA CODE/PREFIX STRATUM' /*(BEST10 FORMAT)*/    
 _DENWT   = 'DENSITY STRATUM WEIGHT' /* (BEST10 FORMAT)*/               
 _RAW     = '# ADULTS/# PHONES' /* (BEST10 FORMAT)*/                    
 _CSA     = 'UNEQUAL CLUSTER SIZE ADJ' /* (BEST10 FORMAT)*/             
 _WT1     = 'PRODUCT OF PRECEDING WEIGHTING FACTORS'/*(BEST10 FORMAT)*/ 
 _POSTSTR = 'AGE,RACE,SEX WT-95 ST POP' /*(BEST10 FORMAT)*/             
 _DENSTR  = 'DENSITY STRATUM' /*(USUALLY 0 AND 1+ HUNDRED BANKS)*/      
 _REGION  = 'GEOGRAPHIC REGION WITHIN A STATE'                          
          /*BASED ON COUNTY.  IF COUNTY IS MISSING, BASED ON STRATUM.*/;
* FINAL WEIGHT;                                                         
LABEL _FINALWT = 'PRODUCT OF _POSTSTR & _WT1' /*(BEST10 FORMAT)*/       
          /*THIS IS THE WEIGHT YOU SHOULD USE */;                       
                                                                        
* AGE GROUPS USED IN POSTSTRATIFICATION;                                
LABEL _AGEG_ = 'AGE GROUPS USED IN POSTSTRATIFICATION'                  
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
LABEL _RACEG_ = 'RACE CATEGORIES USED IN POST-STRAT'                    
   /* NOTE:  INCLUDES VALUES OF IMPUTED RACE FOR RECORDS WITH UNKNOWN 
 
             RACE (IMPUTED ONLY FOR STATES POST-STRATIFIED BY           
             AGE-RACE-SEX, NOT IMPUTED FOR STATES POST-STRATIFIED       
             BY AGE-SEX)                                                
                                                                        
             1 = 'WHITE'                                                
             2 = 'NON-WHITE'                                            
             9 = 'MISSING'*/;                                           
                                                                        
* IMPUTED AGE USED IN POSTSTRATIFICATION FOR MISSING AGE VALUES;        
LABEL _IMPAGE = 'IMPUTED AGE USED IN POSTSTRATIFICATION'                
 /*  NOTE: IMPUTE THE AGE OF MEAN AGE OF SEX-RACE GROUPS                
           FOR MISSING AGE VALUES */;                                   
                                                                        
 Run;
