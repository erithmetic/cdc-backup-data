*****************************************************************************************
* FILE NAME:     SASOUT12_LLCP.SAS                                                      *
* DESCRIPTION:   THIS PROGRAM CONVERTS A STATES ASCII DATAFILE OF COMPLETES LOCATED AT  *
*                <DATAIN> FILEREF, INTO A SAS DATABASE STORED AT <DATAOUT> LIBREF       *
* REFERENCES:                                                                           *
* INPUT       DATAIN           FILEREF OF ASCII DATAFILE OF COMPLETES                   *
* FORMATS     FORMATS.SAS7BCAT      SAS FORMATS DATABASE                                *
* OUTPUT      DATAOUT.SASDATA  SAS DATABASE VERSION OF ASCII DATA AS SPECIFIED IN       *
*                              <DATAIN> FILEREF                                         *
* UPDATED - 07/14/2013                                                                  *
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

*FILENAME DATAIN '<PATH OF INPUT STATE ASCII DATAFILE OF COMPLETES>' LRECL = 1682 ;
*****************************************************************************
* EXAMPLE:                                                                  *
*       FILENAME DATAIN 'C:\BRFSS\2012\LLCP2012.ASC' LRECL = 1682           *
* NOTE: MAKE SURE THE ASTERISK IS REMOVED BEFORE THE WORD FILENAME AND      *
*       MAKE SURE THAT THE GREATER THAN AND LESS THAN SIGNS < > ARE REMOVED *
*       FROM THE FILENAME STATEMENT                                         *
*****************************************************************************;

*LIBNAME DATAOUT V7 '<PATH OF PERMANENTLY STORED SAS DATASET VERSION OF DATAIN FILEREF>'  ;
*****************************************************************************
* EXAMPLE:                                                                  *
*          LIBNAME DATAOUT 'C:\'                                            *
*          A SAS DATABASE WILL BE STORED AT C:\SASDATA.sas7bdat             *
* NOTE: MAKE SURE THE ASTERISK IS REMOVED BEFORE THE WORD LIBNAME AND       *
*       MAKE SURE THAT THE GREATER THAN AND LESS THAN SIGNS < > ARE REMOVED *
*       FROM THE LIBNAME STATEMENT                                          *
*****************************************************************************;

*LIBNAME LIBRARY '<PATH OF STORED SAS FORMAT12.SAS7BCAT>' ;
*****************************************************************************
* EXAMPLE:                                                                  *
*          LIBNAME LIBRARY 'C:\'                                            *
* NOTE: MAKE SURE THE ASTERISK IS REMOVED BEFORE THE WORD LIBNAME AND       *
*       MAKE SURE THAT THE GREATER THAN AND LESS THAN SIGNS < > ARE REMOVED *
*       FROM THE LIBNAME STATEMENT                                          *
*****************************************************************************;

*FILENAME FORMATIN '<PATH OF FORMAT ASSIGNMENT STATEMENT>' ;
*****************************************************************************
* EXAMPLE:                                                                  *
*          FILENAME FORMATIN 'C:\FORMATSTATEMENT.SAS'                       *
* NOTE: MAKE SURE THE ASTERISK IS REMOVED BEFORE THE WORD FILENAME AND      *
*       MAKE SURE THAT THE GREATER THAN AND LESS THAN SIGNS < > ARE REMOVED *
*       FROM THE FILENAME STATEMENT                                         *
*****************************************************************************;

DATA DATAOUT.SASDATA ;
INFILE DATAIN MISSOVER ;
INPUT
_STATE        1-2                     /* Record Identification */
_GEOSTR       3-4
_DENSTR2      5
PRECALL       6
REPNUM        7-12
REPDEPTH      13-14
FMONTH        15-16
IDATE         $17-24
IMONTH        $17-18
IDAY          $19-20
IYEAR         $21-24
INTVID        $25-29
DISPCODE      30-33
SEQNO         34-43
_PSU          34-43
NATTMPTS      44-45
NRECSEL       46-51
NRECSTR       52-60
CTELENUM      61
PVTRESID      62
COLGHOUS      63
CELLFON       64
LADULT        65
NUMADULT      66-67
NUMMEN        68-69
NUMWOMEN      70-71
GENHLTH       73                      /* Section 1: Health Status */
PHYSHLTH      74-75                   /* Section 2: Healthy Days - Health-Related Quality of Life */
MENTHLTH      76-77
POORHLTH      78-79
HLTHPLN1      80                      /* Section 3: Health Care Access */
PERSDOC2      81
MEDCOST       82
CHECKUP1      83
EXERANY2      84                      /* Section 4: Exercise */
CVDINFR4      85                      /* Section 5: Chronic Health Conditions */
CVDCRHD4      86
CVDSTRK3      87
ASTHMA3       88
ASTHNOW       89
CHCSCNCR      90
CHCOCNCR      91
CHCCOPD1      92
HAVARTH3      93
ADDEPEV2      94
CHCKIDNY      95
CHCVISN1      96
DIABETE3      97
LASTDEN3      98                      /* Section 6: Oral Health */
RMVTETH3      99
AGE           100-101                 /* Section 7: Demographics */
HISPANC2      102
MRACE         $103-108
ORACE2        109
VETERAN3      110
MARITAL       111
CHILDREN      112-113
EDUCA         114
EMPLOY        115
INCOME2       116-117
WEIGHT2       118-121
HEIGHT3       122-125
CTYCODE1      126-128
NUMHHOL2      134
NUMPHON2      135
CPDEMO1       136
CPDEMO4       137-139
RENTHOM1      140
SEX           141
PREGNANT      142
QLACTLM2      143                     /* Section 8: Disability */
USEEQUIP      144
SMOKE100      145                     /* Section 9: Tobacco Use */
SMOKDAY2      146
STOPSMK2      147
LASTSMK2      148-149
USENOW3       150
ALCDAY5       151-153                 /* Section 10: Alcohol Consumption */
AVEDRNK2      154-155
DRNK3GE5      156-157
MAXDRNKS      158-159
FLUSHOT5      160                     /* Section 11: Immunization */
FLSHTMY2      161-166
IMFVPLAC      167-168
PNEUVAC3      169
FALL12MN      170-171                 /* Section 12: Falls */
FALLINJ2      172-173
SEATBELT      174                     /* Section 13: Seatbelt Use */
DRNKDRI2      175-176                 /* Section 14: Drinking and Driving */
HADMAM        177                     /* Section 15: Breast/Cervical Cancer Screening */
HOWLONG       178
PROFEXAM      179
LENGEXAM      180
HADPAP2       181
LASTPAP2      182
HADHYST2      183
PCPSAAD1      184                     /* Section 16: Prostate Cancer Screening */
PCPSADI1      185
PCPSARE1      186
PSATEST1      187
PSATIME       188
PCPSARS1      189
BLDSTOOL      190                     /* Section 17: Colorectal Cancer Screening */
LSTBLDS3      191
HADSIGM3      192
HADSGCO1      193
LASTSIG3      194
HIVTST6       195                     /* Section 18: HIV/AIDS */
HIVTSTD3      196-201
HIVRISK3      202
PDIABTST      210                     /* Module 1: Pre-Diabetes */
PREDIAB1      211
DIABAGE2      212-213                 /* Module 2: Diabetes */
INSULIN       214
BLDSUGAR      215-217
FEETCHK2      218-220
DOCTDIAB      221-222
CHKHEMO3      223-224
FEETCHK       225-226
EYEEXAM       227
DIABEYE       228
DIABEDU       229
PAINACT2      230-231                 /* Module 3: Healthy Days (Symptoms) */
QLMENTL2      232-233
QLSTRES2      234-235
QLHLTH2       236-237
VIDFCLT2      238                     /* Module 4: Visual Impairment and Access to Eye Care */
VIREDIF2      239
VIPRFVS2      240
VINOCRE2      241-242
VIEYEXM2      243
VIINSUR2      244
VICTRCT4      245
VIGLUMA2      246
VIMACDG2      247
SSBSUGR1      248-250                 /* Module 5: Sugar Sweetened Beverages and Menu Labeling */
SSBFRUT1      251-253
SSBCALRI      254-255
NUMBURN2      256                     /* Module 6: Excess Sun Exposure */
QLREST2       257-258                 /* Module 7: Inadequate Sleep */
SLEPTIME      259-260
SLEPSNOR      261
SLEPDAY       262-263
SLEPDRIV      264
FRUITJU1      265-267                 /* Module 8: Fruits and Vegetables */
FRUIT1        268-270
FVBEANS       271-273
FVGREEN       274-276
FVORANG       277-279
VEGETAB1      280-282
ASTHMAGE      283-284                 /* Module 9: Adult Asthma History */
ASATTACK      285
ASERVIST      286-287
ASDRVIST      288-289
ASRCHKUP      290-291
ASACTLIM      292-294
ASYMPTOM      295
ASNOSLEP      296
ASTHMED3      297
ASINHALR      298
WRKHCF1       299                     /* Module 10: High Risk/Health Care Worker */
DIRCONT1      300
DRHPAD1       301
HAVHPAD       302
SHINGLE1      303                     /* Module 11: Shingles (Zostavax or ZOS) */
TNSARCV       304                     /* Module 12: Tetanus Diphtheria (Adults) */
TNSARCNT      305
TNSASHT1      306
HPVADVC2      307                     /* Module 13: Adult Human Papilloma Virus (HPV) */
HPVADSHT      308-309
PCPSADEC      310                     /* Module 14: Prostate Cancer Screening Decision Making Module */
PCDMDECN      $311-315
CNCRDIFF      316                     /* Module 15: Cancer Survivorship */
CNCRAGE       317-318
CNCRTYP1      319-320
CSRVTRT1      321
CSRVDOC1      322-323
CSRVSUM       324
CSRVRTRN      325
CSRVINST      326
CSRVINSR      327
CSRVDEIN      328
CSRVCLIN      329
CSRVPAIN      330
CSRVCTL1      331
RRCLASS2      332                     /* Module 16: Reactions to Race */
RRCOGNT2      333
RRATWRK2      334
RRHCARE3      335
RRPHYSM2      336
RREMTSM2      337
MISNERVS      338                     /* Module 17: Mental Illness & Stigma */
MISHOPLS      339
MISRSTLS      340
MISDEPRD      341
MISEFFRT      342
MISWTLES      343
MISNOWRK      344-345
MISTMNT       346
MISTRHLP      347
MISPHLPF      348
SCNTMONY      349                     /* Module 18: Social Context */
SCNTMEAL      350
SCNTPAID      351
SCNTWRK1      352-353
SCNTLPAD      354
SCNTLWK1      355-356
GPWELPR3      357                     /* Module 19: General Preparedness */
GP3DYWTR      358
GP3DYFD1      359
GP3DYPRS      360
GPBATRAD      361
GPFLSLIT      362
GPEMRCM1      363
GPEMRIN1      364
GPVACPL1      365
GPMNDEVC      366
GPNOTEV1      367-368
VHCOMBAT      369                     /* Module 20: Veteran�s Health */
VHDRPTSD      370
VHDRTBI       371
VHCOUNSL      372
VHTAKLIF      373
VHSUICID      374
COPDTEST      375                     /* Module 21: Chronic Obstructive Pulmonary Disease (COPD) */
COPDQOL       376
COPDDOC       377
COPDHOSP      378
COPDMEDS      379-380
ACEDEPRS      381                     /* Module 22: Adverse Childhood Experience */
ACEDRINK      382
ACEDRUGS      383
ACEPRISN      384
ACEDIVRC      385
ACEPUNCH      386
ACEHURT       387
ACESWEAR      388
ACETOUCH      389
ACETTHEM      390
ACEHVSEX      391
RCSBIRTH      $392-397                /* Module 23: Random Child Selection */
RCSGENDR      398
RCHISLAT      399
RCSRACE       $400-405
RCSBRACE      406
RCSRLTN2      407
CASTHDX2      408                     /* Module 24: Childhood Asthma Prevalence */
CASTHNO2      409
FLUSHCH2      410                     /* Module 25: Childhood Immunization */
RCVFVCH4      $411-416
WHRTST8       417-418                 /* Module 26: HIV/AIDS */
HIVRDTST      419
EMTSUPRT      420                     /* Module 27: Emotional Support and Life Satisfaction */
LSATISFY      421
CALLBACK      422                     /* Asthma Follow-up Call Back */
ADLTCHLD      423
CTELNUM1      424                     /* Cell Phone Introduction */
CELLFON2      425
CADULT        426
PVTRESD2      427
CCLGHOUS      428
CSTATE        429
RSPSTATE      430-431
LANDLINE      432
PCTCELL       433-435
QSTVER        821-822                 /* Questionnaire Version */
QSTLANG       823-824                 /* Questionnaire Language */
MSCODE        885
_STSTR        886-890
_STRWT        891-900
_RAW          901-910
_WT2          911-920
_RAWRAKE      921-930
_WT2RAKE      931-940
_REGION       941-942
_IMPAGE       943-944
_IMPRACE      945-946
_IMPNPH       947
O_STATE       954-955
CRACEORG      $1128-1133              /* Child Demographic Variables */
CRACEASC      1134-1139
_CRACE        1140-1141
_RAWCH        1142-1151               /* Child Weighting Variables */
_WT2CH        1152-1161
CHILDAGE      1162-1164
_CLCPM01      1253-1255               /* Child Weighting Variables */
_CLCPM02      1256-1258
_CLCPM03      1259-1261
_CLCPM04      1262-1264
_CLCPM05      1265-1267
_CLLCPWT      1268-1277
_DUALUSE      1402
_DUALCOR      1403-1412
_LLCPM01      1413-1415
_LLCPM02      1416-1418
_LLCPM03      1419-1421
_LLCPM04      1422-1424
_LLCPM05      1425-1427
_LLCPM06      1428-1430
_LLCPM07      1431-1433
_LLCPM08      1434-1436
_LLCPM09      1437-1439
_LLCPM10      1440-1442
_LLCPM11      1443-1445
_LLCPM12      1446-1448
_LLCPWT       1449-1458
_RFHLTH       1597                    /* Section 1: Calculated Variables */
_HCVU651      1598                    /* Section 3: Calculated Variables */
_TOTINDA      1599                    /* Section 4: Calculated Variables */
_LTASTH1      1600                    /* Section 5: Calculated Variables */
_CASTHM1      1601
_ASTHMS1      1602
_DRDXAR1      1603
_EXTETH2      1604                    /* Section 6: Oral Health */
_ALTETH2      1605
_DENVST2      1606
MRACEORG      $1607-1612              /* Section 7: Calculated Race Variables */
MRACEASC      1613-1618
_PRACE        1619-1620
_MRACE        1621-1622
RACE2         1623
_RACEG2       1624
_RACEGR2      1625
_RACE_G       1626
_CNRACE       1627
_CNRACEC      1628
_AGEG5YR      1629-1630
_AGE65YR      1631
_AGE_G        1632
HTIN4         1633-1635
HTM4          1636-1638
WTKG3         1639-1643
_BMI5         1644-1647
_BMI5CAT      1648
_RFBMI5       1649
_CHLDCNT      1650
_EDUCAG       1651
_INCOMG       1652
_SMOKER3      1653                    /* Section 9: Calculated Variables */
_RFSMOK3      1654
DRNKANY5      1655                    /* Section 10: Calculated Variables */
DROCDY3_      1656-1658
_RFBING5      1659
_DRNKDY4      1660-1663
_DRNKMO4      1664-1667
_RFDRHV4      1668
_RFDRMN4      1669
_RFDRWM4      1670
_FLSHOT5      1671                    /* Section 11: Calculated Variables */
_PNEUMO2      1672
_RFSEAT2      1673                    /* Section 13: Calculated Variables */
_RFSEAT3      1674
_RFMAM2Y      1675                    /* Section 15: Calculated Variables */
_MAM502Y      1676
_RFPAP32      1677
_RFPSA21      1678                    /* Section 16: Calculated Variables */
_RFBLDS2      1679                    /* Section 17: Calculated Variables */
_RFSIGM2      1680
_AIDTST3      1681                    /* Section 18: Calculated Variables */
;
*****************************************************************
* TO INCLUDE THE FORMAT ASSIGNEMT STATEMENT REMOVE THE ASTERISK *
* FROM THE BEGINNING OF THE FOLLOWING LINE                      *
*****************************************************************;
* %INCLUDE FORMATIN ;
*************************************************
* THIS SECTION CREATES LABELS FOR THE VARIABLES *
*************************************************;
Label
ACEDEPRS = 'LIVE WITH ANYONE DEPRESSED, MENTALLY ILL, OR SUICIDAL?'
ACEDIVRC = 'WERE YOUR PARENTS DIVORCED/SEPERATED?'
ACEDRINK = 'LIVE WITH A PROBLEM DRINKER/ALCOHOLIC?'
ACEDRUGS = 'LIVE WITH ANYONE WHO USED ILLEGAL DRUGS OR ABUSED PRESCRIPTIONS?'
ACEHURT = 'HOW OFTEN DID A PARENT PHYSICALLY HURT YOU IN ANY WAY?'
ACEHVSEX = 'HOW OFTEN DID ANYONE EVER FORCE YOU TO HAVE SEX?'
ACEPRISN = 'LIVE WITH ANYONE WHO SERVED TIME IN PRISON OR JAIL?'
ACEPUNCH = 'HOW OFTEN DID YOUR PARENTS BEAT EACH OTHER UP?'
ACESWEAR = 'HOW OFTEN DID A PARENT SWEAR AT YOU?'
ACETOUCH = 'HOW OFTEN DID ANYONE EVER TOUCH YOU SEXUALLY?'
ACETTHEM = 'HOW OFTEN DID ANYONE MAKE YOU TOUCH THEM SEXUALLY?'
ADDEPEV2 = 'EVER TOLD YOU HAD A DEPRESSIVE DISORDER'
ADLTCHLD = 'WHICH HOUSEHOLD MEMBER WAS SELECTED TO BE THE FOCUS OF THE CALLBACK.'
AGE = 'REPORTED AGE IN YEARS'
ALCDAY5 = 'DAYS IN PAST 30 HAD ALCOHOLIC BEVERAGE'
ASACTLIM = 'ACTIVITIES LIMITED DUE TO ASTHMA DURING PAST 12 MONTHS'
ASATTACK = 'ASTHMA DURING PAST 12 MONTHS'
ASDRVIST = 'URGENT ASTHMA TREATMENT DURING PAST 12 MONTHS'
ASERVIST = 'EMERGENCY ASTHMA CARE DURING PAST 12 MONTHS'
ASINHALR = 'TIMES USED ASTHMA INHALER DURING AN ATTACK IN PAST 30 DAYS'
ASNOSLEP = 'SLEEP DIFFICULTY DUE TO ASTHMA DURING PAST 30 DAYS'
ASRCHKUP = 'ROUTINE ASTHMA CARE DURING PAST 12 MONTHS'
ASTHMA3 = 'EVER TOLD HAD ASTHMA'
ASTHMAGE = 'AGE AT ASTHMA DIAGNOSIS'
ASTHMED3 = 'DAYS USED PRESCRIBED PREVENTATIVE ASTHMA MED IN PAST 30 DAYS'
ASTHNOW = 'STILL HAVE ASTHMA'
ASYMPTOM = 'ASTHMA SYMPTOMS DURING PAST 30 DAYS'
AVEDRNK2 = 'AVG ALCOHOLIC DRINKS PER DAY IN PAST 30'
BLDSTOOL = 'EVER HAD BLOOD STOOL TEST USING HOME KIT'
BLDSUGAR = 'HOW OFTEN CHECK BLOOD FOR GLUCOSE'
CADULT = 'ARE YOU 18 YEARS OF AGE OR OLDER?'
CALLBACK = 'ASTHMA FOLLOW-UP CALL BACK REQUEST'
CASTHDX2 = 'HLTH PRO EVER SAID CHILD HAS ASTHMA'
CASTHNO2 = 'CHILD STILL HAVE ASTHMA?'
CCLGHOUS = 'DO YOU LIVE IN COLLEGE HOUSING?'
CELLFON = 'CELLULAR TELEPHONE'
CELLFON2 = 'IS THIS A CELLULAR TELEPHONE?'
CHCCOPD1 = '(EVER TOLD) YOU HAVE (COPD) CHRONIC OBSTRUCTIVE PULMONARY DISEASE, EMPHYSEMA OR CHRONIC BRONCHITIS?'
CHCKIDNY = '(EVER TOLD) YOU HAVE KIDNEY DISEASE?'
CHCOCNCR = '(EVER TOLD) YOU HAD ANY OTHER TYPES OF CANCER?'
CHCSCNCR = '(EVER TOLD) YOU HAD SKIN CANCER?'
CHCVISN1 = 'DO YOU HAVE ANY TROUBLE SEEING, EVEN WHEN WEARING GLASSES OR CONTACT LENSES?'
CHECKUP1 = 'LENGTH OF TIME SINCE LAST ROUTINE CHECKUP'
CHILDAGE = 'CHILD AGE'
CHILDREN = 'NUMBER OF CHILDREN IN HOUSEHOLD'
CHKHEMO3 = 'TIMES CHECKED FOR GLYCOSYLATED HEMOGLOBIN'
CNCRAGE = 'AGE TOLD HAD CANCER'
CNCRDIFF = 'HOW MANY TYPES OF CANCER?'
CNCRTYP1 = 'TYPE OF CANCER'
COLGHOUS = 'DO YOU LIVE IN COLLEGE HOUSING?'
COPDDOC = 'HAVE YOU SEEN DOCTOR ABOUT SHORTNESS OF BREATH?'
COPDHOSP = 'BEEN TO E.R. OR HOSPITAL BECAUSE OF COPD?'
COPDMEDS = 'HOW MANY MEDICATIONS DO YOU TAKE FOR COPD?'
COPDQOL = 'DOES SHORTNESS OF BREATH AFFECT QUALITY OF LIFE?'
COPDTEST = 'EVER HAD A BREATHING TEST TO DIAGNOSE YOUR COPD?'
CPDEMO1 = 'DO YOU HAVE A CELL PHONE FOR PERSONAL USE?'
CPDEMO4 = 'WHAT PERCENT OF ALL CALLS ARE RECEIVED ON YOUR CELL PHONE?'
CRACEASC = 'CRACEORG WITH RESPONSES IN ASCENDING ORDER'
CRACEORG = 'CRACE WITH TRAILING 7, 8, 9S REMOVED'
CSRVCLIN = 'PARTICIPATE IN CLINICAL TRIAL AS PART OF CANCER TREATMENT?'
CSRVCTL1 = 'IS PAIN UNDER CONTROL?'
CSRVDEIN = 'EVER DENIED INSURANCE COVERAGE BECAUSE OF YOUR CANCER?'
CSRVDOC1 = 'WHAT TYPE OF DOCTOR PROVIDES MAJORITY OF YOUR CARE'
CSRVINSR = 'DID HEALTH INSURANCE PAY FOR ALL OF YOUR CANCER TREATMENT'
CSRVINST = 'INSTRUCTIONS WRITTEN OR PRINTED'
CSRVPAIN = 'CURRENTLY HAVE PHYSICAL PAIN FROM CANCER OR TREATMENT?'
CSRVRTRN = 'EVER RECEIVE INSTRUCTIONS FROM A DOCTOR FOR FOLLOW-UP CHECK-UPS'
CSRVSUM = 'DID YOU RECEIVE A SUMMARY OF CANCER TREATMENTS RECEIVED'
CSRVTRT1 = 'CURRENTLY RECEIVING TREATMENT FOR CANCER'
CSTATE = 'ARE YOU A RESIDENT OF [STATE]?'
CTELENUM = 'CORRECT TELEPHONE NUMBER?'
CTELNUM1 = 'CORRECT PHONE NUMBER?'
CTYCODE1 = 'COUNTY CODE'
CVDCRHD4 = 'EVER DIAGNOSED WITH ANGINA OR CORONARY HEART DISEASE'
CVDINFR4 = 'EVER DIAGNOSED WITH HEART ATTACK'
CVDSTRK3 = 'EVER DIAGNOSED WITH A STROKE'
DIABAGE2 = 'AGE WHEN TOLD DIABETIC'
DIABEDU = 'EVER TAKEN CLASS IN MANAGING DIABETES'
DIABETE3 = '(EVER TOLD) YOU HAVE DIABETES'
DIABEYE = 'EVER TOLD DIABETES HAS AFFECTED EYES'
DIRCONT1 = 'DO YOU PROVIDE DIRECT PATIENT CARE AS PART OF YOUR ROUTINE WORK?'
DISPCODE = 'FINAL DISPOSITION'
DOCTDIAB = 'TIMES SEEN HEALTH PROFESSIONAL FOR DIABETES'
DRHPAD1 = 'HAS A DOCTOR, NURSE, OR OTHER HEALTH PROFESSIONAL EVER SAID THAT YOU HAVE�PROBLEM CAUSED BY A CHRONIC ILLNESS OR BY MEDICINES; TAKEN FOR A CHRONIC ILLNESS?'
DRNK3GE5 = 'BINGE DRINKING'
DRNKANY5 = 'DRINK ANY ALCOHOLIC BEVERAGES IN PAST 30 DAYS'
DRNKDRI2 = 'DID YOU DRIVE AFTER HAVING TOO MUCH TO DRINK IN THE PAST 30 DAYS?'
DROCDY3_ = 'COMPUTED DRINK-OCCASIONS-PER-DAY'
EDUCA = 'EDUCATION LEVEL'
EMPLOY = 'EMPLOYMENT STATUS'
EMTSUPRT = 'HOW OFTEN GET EMOTIONAL SUPPORT NEEDED'
EXERANY2 = 'EXERCISE IN PAST 30 DAYS'
EYEEXAM = 'LAST EYE EXAM WHERE PUPILS WERE DILATED'
FALL12MN = 'HAD FALL PAST TWELVE MONTHS'
FALLINJ2 = 'INJURED IN FALL'
FEETCHK = 'TIMES FEET CHECK FOR SORES/IRRITATIONS'
FEETCHK2 = 'HOW OFTEN CHECK FEET FOR SORES OR IRRITATIONS'
FLSHTMY2 = 'WHEN RECEIVED MOST RECENT SEASONAL FLU SHOT/SPRAY'
FLUSHCH2 = 'HAD SEASONAL FLU SHOT PAST 12 MOS'
FLUSHOT5 = 'SEASONAL FLU SHOT/SPRAY PAST 12 MOS'
FMONTH = 'FILE MONTH'
FRUIT1 = 'HOW MANY TIMES DID YOU EAT FRUIT?'
FRUITJU1 = 'HOW MANY TIMES DID YOU DRINK 100% PURE FRUIT JUICES?'
FVBEANS = 'HOW MANY TIMES DID YOU EAT BEANS OR LENTILS?'
FVGREEN = 'HOW MANY TIMES DID YOU EAT DARK GREEN VEGETABLES?'
FVORANG = 'HOW MANY TIMES DID YOU EAT ORANGE-COLORED VEGETABLES?'
GENHLTH = 'GENERAL HEALTH'
GP3DYFD1 = 'DOES YOUR HOUSEHOLD HAVE A 3-DAY SUPPLY OF NON-PERISHABLE FOOD FOR EVERYONE WHO LIVES THERE?'
GP3DYPRS = 'DOES YOUR HOUSEHOLD HAVE A 3-DAY SUPPLY OF PRESCRIPTION MEDICATION FOR EACH PERSON WHO TAKES PRESCRIBED MEDICINES?'
GP3DYWTR = 'DOES YOUR HOUSEHOLD HAVE A 3-DAY SUPPLY OF WATER FOR EVERYONE WHO LIVES THERE?'
GPBATRAD = 'DOES YOUR HOUSEHOLD HAVE A WORKING BATTERY OPERATED RADIO AND WORKING BATTERIES FOR YOUR USE IF THE ELECTRICITY IS OUT?'
GPEMRCM1 = 'IN A LARGE-SCALE DISASTER OR EMERGENCY, WHAT WOULD BE YOUR MAIN METHOD OF COMMUNICATING WITH RELATIVES AND FRIENDS?'
GPEMRIN1 = 'WHAT WOULD BE YOUR MAIN METHOD OF GETTING INFORMATION FROM AUTHORITIES IN A LARGE-SCALE DISASTER OR EMERGENCY?'
GPFLSLIT = 'DOES YOUR HOUSEHOLD HAVE A WORKING FLASHLIGHT AND WORKING BATTERIES FOR YOUR USE IF THE ELECTRICITY IS OUT?'
GPMNDEVC = 'IF PUBLIC AUTHORITIES ANNOUNCED MANDATORY EVACUATION FROM YOUR COMMUNITY DUE TO A LARGE-SCALE DISASTER OR EMERGENCY, WOULD YOU EVACUATE?'
GPNOTEV1 = 'WHAT WOULD BE THE MAIN REASON WHY YOU MIGHT NOT EVACUATE IF ASKED TO DO SO?'
GPVACPL1 = 'DOES YOUR HOUSEHOLD HAVE A DISASTER EVACUATION PLAN?'
GPWELPR3 = 'HOUSEHOLD PREPARED TO HANDLE LARGE-SCALE DISASTER OR EMERGENCY'
HADHYST2 = 'HAD HYSTERECTOMY'
HADMAM = 'HAVE YOU EVER HAD A MAMMOGRAM'
HADPAP2 = 'EVER HAD A PAP TEST'
HADSGCO1 = 'WAS LAST TEST A SIGMOIDOSCOPY OR COLONOSCOPY'
HADSIGM3 = 'EVER HAD SIGMOIDOSCOPY/COLONOSCOPY'
HAVARTH3 = 'TOLD HAVE ARTHRITIS'
HAVHPAD = 'STILL HAVE THIS HEALTH PROBLEM'
HEIGHT3 = 'REPORTED HEIGHT IN FEET AND INCHES'
HISPANC2 = 'HISPANIC/LATINO'
HIVRDTST = 'WAS YOUR LAST HIV TEST A RAPID TEST?'
HIVRISK3 = 'DO ANY HIGH RISK SITUATIONS APPLY'
HIVTST6 = 'EVER TESTED HIV'
HIVTSTD3 = 'MONTH AND YEAR OF LAST HIV TEST'
HLTHPLN1 = 'HAVE ANY HEALTH CARE COVERAGE'
HOWLONG = 'HOW LONG SINCE LAST MAMMOGRAM'
HPVADSHT = 'NUMBER OF HPV SHOTS RECEIVED'
HPVADVC2 = 'EVER HAD THE HPV VACCINATION?'
HTIN4 = 'COMPUTED HEIGHT IN INCHES'
HTM4 = 'COMPUTED HEIGHT IN METERS'
IDATE = 'INTERVIEW DATE'
IDAY = 'INTERVIEW DAY'
IMFVPLAC = 'WHERE DID YOU GET YOUR LAST FLU SHOT/VACCINE?'
IMONTH = 'INTERVIEW MONTH'
INCOME2 = 'INCOME LEVEL'
INSULIN = 'NOW TAKING INSULIN'
INTVID = 'INTERVIEWER IDENTIFICATION'
IYEAR = 'INTERVIEW YEAR'
LADULT = 'ARE YOU 18 YEARS OF AGE OR OLDER?'
LANDLINE = 'DO YOU ALSO HAVE A LANDLINE TELEPHONE?'
LASTDEN3 = 'LAST VISITED DENTIST OR DENTAL CLINIC'
LASTPAP2 = 'HOW LONG SINCE LAST PAP TEST'
LASTSIG3 = 'TIME SINCE LAST SIGMOIDOSCOPY/COLONOSCOPY'
LASTSMK2 = 'INTERVAL SINCE LAST SMOKED'
LENGEXAM = 'HOW LONG SINCE LAST BREAST PHYSICAL EXAM'
LSATISFY = 'SATISFACTION WITH LIFE'
LSTBLDS3 = 'TIME SINCE LAST BLOOD STOOL TEST'
MARITAL = 'MARITAL STATUS'
MAXDRNKS = 'MOST DRINKS ON SINGLE OCCASION PAST 30 DAYS'
MEDCOST = 'COULD NOT SEE DR. BECAUSE OF COST'
MENTHLTH = 'NUMBER OF DAYS MENTAL HEALTH NOT GOOD'
MISDEPRD = 'HOW OFTEN FEEL DEPRESSED PAST 30 DAYS'
MISEFFRT = 'HOW OFTEN FEEL EVERYTHING WAS AN EFFORT PAST 30 DAYS'
MISHOPLS = 'HOW OFTEN FEEL HOPELESS PAST 30 DAYS'
MISNERVS = 'HOW OFTEN FEEL NERVOUS PAST 30 DAYS'
MISNOWRK = 'EMOTIONAL PROBLEM KEPT YOU FROM DOING WORK PAST 30 DAYS'
MISPHLPF = 'PEOPLE ARE GENERALLY CARING TOWARD PEOPLE WITH MENTAL ILLNESS'
MISRSTLS = 'HOW OFTEN FEEL RESTLESS PAST 30 DAYS'
MISTMNT = 'RECEIVING MEDICINE OR TREATMENT FROM HEALTH PRO FOR EMOTIONAL PROBLEM'
MISTRHLP = 'MENTAL HEALTH TREATMENT CAN HELP PEOPLE LEAD NORMAL LIFE'
MISWTLES = 'HOW OFTEN FEEL WORTHLESS PAST 30 DAYS'
MRACE = 'MULTIPLE RACE'
MRACEASC = 'MRACEORG WITH RESPONSES IN ASCENDING ORDER CALCULATED VARIABLE'
MRACEORG = 'MRACE WITH TRAILING 7,8,9S REMOVED CALCULATED VARIABLE'
MSCODE = 'METROPOLITAN STATUS CODE'
NATTMPTS = 'NUMBER OF ATTEMPTS'
NRECSEL = 'NUMBER OF SAMPLE RECORDS SELECTED FROM STRATUM'
NRECSTR = 'NUMBER OF TELEPHONE NUMBERS IN STRATUM FROM WHICH SAMPLE WAS SELECTED'
NUMADULT = 'NUMBER OF ADULTS IN HOUSEHOLD'
NUMBURN2 = 'NUMBER OF SUNBURNS IN PAST 12 MONTHS'
NUMHHOL2 = 'HOUSEHOLD TELEPHONES'
NUMMEN = 'NUMBER OF ADULT MEN IN HOUSEHOLD'
NUMPHON2 = 'RESIDENTIAL PHONES'
NUMWOMEN = 'NUMBER OF ADULT WOMEN IN HOUSEHOLD'
ORACE2 = 'RESPONDENT RACE CHOICE'
O_STATE = 'ORIGINAL STATE THAT COLLECTED THE CELL PHONE DATA'
PAINACT2 = 'HOW MANY DAYS HARD TO DO USUAL ACTIVITIES IN PAST 30 DAYS'
PCDMDECN = 'WHO MADE THE DECISION WITH YOU TO HAVE PSA TEST?'
PCPSAAD1 = 'HAS A HEALTH PROFESSIONAL EVER TALKED WITH YOU ABOUT THE ADVANTAGES OF THE PSA TEST?'
PCPSADEC = 'WHY WAS PSA TEST DONE?'
PCPSADI1 = 'HAS A HEALTH PROFESSIONAL EVER TALKED WITH YOU ABOUT THE DISADVANTAGES OF THE PSA TEST?'
PCPSARE1 = 'HAS A DOCTOR EVER RECOMMENDED THAT YOU HAVE A PSA TEST?'
PCPSARS1 = 'WHAT WAS THE MAIN REASON YOU HAD THIS PSA TEST?'
PCTCELL = 'WHAT PERCENT OF YOUR CALLS ARE RECEIVED ON YOUR CELL PHONE?'
PDIABTST = 'HAD A TEST FOR HIGH BLOOD SUGAR IN PAST THREE YEARS'
PERSDOC2 = 'MULTIPLE HEALTH CARE PROFESSIONALS'
PHYSHLTH = 'NUMBER OF DAYS PHYSICAL HEALTH NOT GOOD'
PNEUVAC3 = 'PNEUMONIA SHOT EVER'
POORHLTH = 'POOR PHYSICAL OR MENTAL HEALTH'
PRECALL = 'PRE-CALL STATUS CODE'
PREDIAB1 = 'EVER BEEN TOLD YOU HAVE PRE-DIABETES OR BORDERLINE DIABETES'
PREGNANT = 'PREGNANCY STATUS'
PROFEXAM = 'EVER HAD BREAST PHYSICAL EXAM BY DOCTOR'
PSATEST1 = 'EVER HAD PSA TEST'
PSATIME = 'TIME SINCE LAST PSA TEST'
PVTRESD2 = 'DO YOU LIVE IN A PRIVATE RESIDENCE?'
PVTRESID = 'PRIVATE RESIDENCE?'
QLACTLM2 = 'ACTIVITY LIMITATION DUE TO HEALTH PROBLEMS'
QLHLTH2 = 'HOW MANY DAYS FULL OF ENERGY IN PAST 30 DAYS'
QLMENTL2 = 'HOW MANY DAYS DEPRESSED IN PAST 30 DAYS'
QLREST2 = 'HOW MANY DAYS DID YOU GET ENOUGH SLEEP IN PAST 30 DAYS'
QLSTRES2 = 'HOW MANY DAYS FELT ANXIOUS IN PAST 30 DAYS'
QSTLANG = 'LANGUAGE IDENTIFIER'
QSTVER = 'QUESTIONNAIRE VERSION IDENTIFIER'
RACE2 = 'COMPUTED RACE-ETHNICITY GROUPING'
RCHISLAT = 'ETHNICITY OF CHILD'
RCSBIRTH = 'BIRTH DATE OF CHILD'
RCSBRACE = 'RACE OF CHILD'
RCSGENDR = 'GENDER OF CHILD'
RCSRACE = 'RACE OF CHILD (MULTIPLE POSSIBLE)'
RCSRLTN2 = 'RELATIONSHIP TO CHILD'
RCVFVCH4 = 'DATE CHILD RCVD MOST RECENT SEASONAL FLU VACCINE(MMYYYY)'
RENTHOM1 = 'OWN OR RENT HOME'
REPDEPTH = 'REPLICATE DEPTH'
REPNUM = 'REPLICATE NUMBER'
RMVTETH3 = 'NUMBER OF PERMANENT TEETH REMOVED'
RRATWRK2 = 'HOW DO YOU FEEL YOU WERE TREATED AT WORK COMPARED TO PEOPLE OF OTHER RACES IN PAST 12 MONTHS?'
RRCLASS2 = 'HOW DO OTHER PEOPLE USUALLY CLASSIFY YOU IN THIS COUNTRY?'
RRCOGNT2 = 'HOW OFTEN DO YOU THINK ABOUT YOUR RACE?'
RREMTSM2 = 'TIMES PAST 30 DAYS FELT EMOTIONALLY UPSET BECAUSE OF TREATMENT DUE TO YOUR RACE'
RRHCARE3 = 'WHEN SEEKING HEALTH CARE PAST 12 MONTHS, WAS EXPERIENCE WORSE, SAME, BETTER THAN PEOPLE OF OTHER RACES?'
RRPHYSM2 = 'TIMES PAST 30 DAYS FELT PHYSICAL SYMPTOMS BECAUSE OF TREATMENT DUE TO YOUR RACE'
RSPSTATE = 'IN WHAT STATE DO YOU LIVE?'
SCNTLPAD = 'HOW WERE YOU GENERALLY PAID FOR THE WORK YOU DID'
SCNTLWK1 = 'HOW MANY HOURS PER WEEK DID YOU WORK'
SCNTMEAL = 'TIMES PAST 12 MONTHS WORRIED/STRESSED ABOUT HAVING ENOUGH MONEY TO BUY NUTRITIOUS MEALS?'
SCNTMONY = 'TIMES PAST 12 MONTHS WORRIED/STRESSED ABOUT HAVING ENOUGH MONEY TO PAY YOUR RENT/MORTGAGE?'
SCNTPAID = 'HOW ARE YOU GENERALLY PAID FOR THE WORK YOU DO'
SCNTWRK1 = 'HOW MANY HOURS PER WEEK DO YOU WORK'
SEATBELT = 'HOW OFTEN USE SEATBELTS IN CAR?'
SEQNO = 'ANNUAL SEQUENCE NUMBER'
SEX = 'RESPONDENTS SEX'
SHINGLE1 = 'HAVE YOU HAD SHINGLES VACCINE?'
SLEPDAY = 'NUMBER OF DAYS IN PAST THIRTY FELL ASLEEP DURING THE DAY'
SLEPDRIV = 'NUMBER OF DAYS IN PAST THIRTY FELL ASLEEP WHILE DRIVING'
SLEPSNOR = 'DO YOU SNORE?'
SLEPTIME = 'HOW MUCH TIME DO YOU SLEEP'
SMOKDAY2 = 'FREQUENCY OF DAYS NOW SMOKING'
SMOKE100 = 'SMOKED AT LEAST 100 CIGARETTES'
SSBCALRI = 'HOW OFTEN DOES CALORIE INFORMATION HELP YOU DECIDE WHAT TO ORDER?'
SSBFRUT1 = 'HOW OFTEN DID YOU DRINK SWEETENED FRUIT DRINKS, SUCH AS KOOL-AID, CRANBERRY JUICE COCKTAIL, AND LEMONADE?'
SSBSUGR1 = 'HOW OFTEN DID YOU DRINK REGULAR SODA OR POP THAT CONTAINS SUGAR?'
STOPSMK2 = 'STOPPED SMOKING IN PAST 12 MONTHS'
TNSARCNT = 'WAS MOST RECENT TETANUS SHOT IN 2005 OR LATER?'
TNSARCV = 'RECEIVED TETANUS SHOT IN THE PAST 10 YEARS?'
TNSASHT1 = 'DID TETANUS SHOT INCLUDED THE PERTUSSIS VACCINE?'
USEEQUIP = 'HEALTH PROBLEMS REQUIRING SPECIAL EQUIPMENT'
USENOW3 = 'USE OF SMOKELESS TOBACCO PRODUCTS'
VEGETAB1 = 'HOW MANY TIMES DID YOU EAT OTHER VEGETABLES?'
VETERAN3 = 'ARE YOU A VETERAN'
VHCOMBAT = 'EVER SERVE IN A COMBAT OR WAR ZONE?'
VHCOUNSL = 'RECEIVE PSYCHOLOGICAL OR PSYCHIATRIC COUNSELING OR TREATMENT PAST 12 MONTHS?'
VHDRPTSD = 'DOCTOR DIAGNOSED DEPRESSION, ANXIETY, OR POST TRAUMATIC STRESS DISORDER (PTSD)?'
VHDRTBI = 'DOCTOR DIAGNOSED TRAUMATIC BRAIN INJURY (TBI)?'
VHSUICID = 'ATTEMPT TO COMMIT SUICIDE IN PAST 12 MONTHS?'
VHTAKLIF = 'THOUGHT OF TAKING YOUR OWN LIFE IN THE PAST 12 MONTHS?'
VICTRCT4 = 'HLTH CARE PRO SAID NOW HAVE CATARACTS'
VIDFCLT2 = 'DIFFICULTY RECOGNIZING FRIEND ACROSS STREET'
VIEYEXM2 = 'WHEN LAST EYEXAM'
VIGLUMA2 = 'HLTH CARE PRO EVER SAID HAVE GLAUCOMA'
VIINSUR2 = 'EYE CARE HEALTH INSURANCE'
VIMACDG2 = 'HLTH CARE PRO EVER SAID HAVE MACULAR DEGENERATION'
VINOCRE2 = 'REASON DID NOT USE EYE DOC PAST 12 MOS'
VIPRFVS2 = 'LAST TIME VISITED EYE CARE PROVIDER'
VIREDIF2 = 'DIFFICULTY READING TYPED TEXT'
WEIGHT2 = 'REPORTED WEIGHT IN POUNDS'
WHRTST8 = 'LOCATION OF LAST HIV TEST'
WRKHCF1 = 'DO YOU CURRENTLY VOLUNTEER OR WORK IN A HOSPITAL, MEDICAL CLINIC, DOCTOR�S OFFICE, DENTIST�S OFFICE, NURSING HOME OR SOME OTHER HEALTH-CARE FACILITY?'
WTKG3 = 'COMPUTED WEIGHT IN KILOGRAMS'
_AGE65YR = 'REPORTED AGE IN TWO AGE GROUPS CALCULATED VARIABLE'
_AGEG5YR = 'REPORTED AGE IN FIVE-YEAR AGE CATEGORIES CALCULATED VARIABLE'
_AGE_G = 'IMPUTED AGE IN SIX GROUPS'
_AIDTST3 = 'EVER BEEN TESTED FOR HIV CALCULATED VARIABLE'
_ALTETH2 = 'ADULTS AGED 65+ WHO HAVE HAD ALL THEIR NATURAL TEETH EXTRACTED'
_ASTHMS1 = 'COMPUTED ASTHMA STATUS'
_BMI5 = 'COMPUTED BODY MASS INDEX'
_BMI5CAT = 'COMPUTED BODY MASS INDEX CATEGORIES'
_CASTHM1 = 'CURRENT ASTHMA CALCULATED VARIABLE'
_CHLDCNT = 'COMPUTED NUMBER OF CHILDREN IN HOUSEHOLD'
_CLCPM01 = 'CHILD COMBINED LAND-LINE AND CELL-PHONE FIRST MARGIN (AGE-GENDER)'
_CLCPM02 = 'CHILD COMBINED LAND-LINE AND CELL-PHONE SECOND MARGIN (RACE/ETHNICITY)'
_CLCPM03 = 'CHILD COMBINED LAND-LINE AND CELL-PHONE THIRD MARGIN (GENDER-RACE/ETHNICITY)'
_CLCPM04 = 'CHILD COMBINED LAND-LINE AND CELL-PHONE FOURTH MARGIN (AGE-RACE/ETHNICITY)'
_CLCPM05 = 'CHILD COMBINED LAND-LINE AND CELL-PHONE FIFTH MARGIN (TELEPHONE SOURCE)'
_CLLCPWT = 'FINAL CHILD WEIGHT: LAND-LINE AND CELL-PHONE DATA'
_CNRACE = 'COMPUTED NUMBER OF CENSUS RACE CATEGORIES CHOSEN'
_CNRACEC = 'COMPUTED NUMBER OF CENSUS RACE CATEGORIES CHOSEN, COLLAPSED'
_CRACE = 'CHILD NON-HISPANIC RACE INCLUDING MULTIRACIAL'
_DENSTR2 = 'HOUSEHOLD DENSITY STRATUM CODE'
_DENVST2 = 'ADULTS WHO HAVE VISITED A DENTIST, DENTAL HYGENIST OR DENTAL CLINIC WITHIN THE PAST YEAR'
_DRDXAR1 = 'RESPONDENTS DIAGNOSED WITH ARTHRITIS'
_DRNKDY4 = 'COMPUTED NUMBER OF DRINKS OF ALCOHOL BEVERAGES PER DAY'
_DRNKMO4 = 'COMPUTED TOTAL NUMBER DRINKS A MONTH'
_DUALCOR = 'DUAL PHONE USE CORRECTION FACTOR'
_DUALUSE = 'DUAL PHONE USE CATEGORIES'
_EDUCAG = 'COMPUTED LEVEL OF EDUCATION COMPLETED CATEGORIES'
_EXTETH2 = 'RISK FACTOR FOR HAVING HAD PERMANENT TEETH EXTRACTED'
_FLSHOT5 = 'FLU SHOT CALCULATED VARIABLE'
_GEOSTR = 'GEOGRAPHIC STRATUM CODE'
_HCVU651 = 'RESPONDENTS AGED 18-64 WITH HEALTH CARE COVERAGE'
_IMPAGE = 'AGE VALUE USED TO DETERMINE AGE GROUPS'
_IMPNPH = 'IMPUTED NUMBER OF PHONES'
_IMPRACE = 'IMPUTED RACE/ETHNICITY VALUE'
_INCOMG = 'COMPUTED INCOME CATEGORIES'
_LLCPM01 = 'COMBINED LAND-LINE AND CELL-PHONE FIRST MARGIN (AGE-GENDER)'
_LLCPM02 = 'COMBINED LAND-LINE AND CELL-PHONE SECOND MARGIN (RACE/ETHNICITY)'
_LLCPM03 = 'COMBINED LAND-LINE AND CELL-PHONE THIRD MARGIN (EDUCATION)'
_LLCPM04 = 'COMBINED LAND-LINE AND CELL-PHONE FOURTH MARGIN (MARITAL STATUS)'
_LLCPM05 = 'COMBINED LAND-LINE AND CELL-PHONE FIFTH MARGIN (HOME OWNERSHIP)'
_LLCPM06 = 'COMBINED LAND-LINE AND CELL-PHONE SIXTH MARGIN (GENDER-RACE/ETHNICITY)'
_LLCPM07 = 'COMBINED LAND-LINE AND CELL-PHONE SEVENTH MARGIN (AGE-RACE/ETHNICITY)'
_LLCPM08 = 'COMBINED LAND-LINE AND CELL-PHONE EIGHTH MARGIN (TELEPHONE SOURCE)'
_LLCPM09 = 'COMBINED LAND-LINE AND CELL-PHONE NINTH MARGIN (REGIONS)'
_LLCPM10 = 'COMBINED LAND-LINE AND CELL-PHONE TENTH MARGIN (REGIONS-AGE)'
_LLCPM11 = 'COMBINED LAND-LINE AND CELL-PHONE ELEVENTH MARGIN (REGIONS-GENDER)'
_LLCPM12 = 'COMBINED LAND-LINE AND CELL-PHONE TWELFTH MARGIN (REGIONS-RACE/ETHNICITY)'
_LLCPWT = 'FINAL WEIGHT: LAND-LINE AND CELL-PHONE DATA'
_LTASTH1 = 'LIFETIME ASTHMA CALCULATED VARIABLE'
_MAM502Y = 'WOMEN RESPONDENTS AGED 50+ WHO HAVE HAD A MAMMOGRAM IN THE PAST TWO YEARS'
_MRACE = 'COMPUTED NON-HISPANIC RACE INCLUDING MULTIRACIAL'
_PNEUMO2 = 'PNEUMONIA VACCINATION CALCULATED VARIABLE'
_PRACE = 'COMPUTED PREFERRED RACE'
_PSU = 'PRIMARY SAMPLING UNIT'
_RACEG2 = 'COMPUTED NON-HISPANIC WHITES/ALL OTHERS RACE CATEGORIES RACE/ETHNIC GROUP CODES USED IN POST-STRATIFICATION.'
_RACEGR2 = 'COMPUTED FIVE LEVEL RACE/ETHNICITY CATEGORY.'
_RACE_G = 'COMPUTED RACE GROUPS USED FOR INTERNET PREVALENCE TABLES'
_RAW = 'RAW WEIGHTING FACTOR'
_RAWCH = 'RAW CHILD WEIGHTING FACTOR'
_RAWRAKE = 'RAW WEIGHTING FACTOR USED IN RAKING'
_REGION = 'REGION'
_RFBING5 = 'BINGE DRINKING CALCULATED VARIABLE'
_RFBLDS2 = 'RESPONDENTS AGED 50+ WHO HAVE HAD A BLOOD STOOL TEST WITHIN THE PAST TWO YEARS'
_RFBMI5 = 'OVERWEIGHT OR OBESE CALCULATED VARIABLE'
_RFDRHV4 = 'HEAVY ALCOHOL CONSUMPTION  CALCULATED VARIABLE'
_RFDRMN4 = 'ADULT MEN HEAVY ALCOHOL CONSUMPTION CALCULATED VARIABLE'
_RFDRWM4 = 'ADULT WOMEN HEAVY ALCOHOL CONSUMPTION CALCULATED VARIABLE'
_RFHLTH = 'ADULTS WITH GOOD OR BETTER HEALTH'
_RFMAM2Y = 'WOMEN RESPONDENTS AGED 40+ WHO HAVE HAD A MAMMOGRAM IN THE PAST TWO YEARS'
_RFPAP32 = 'WOMEN RESPONDENTS AGED 18+ WHO HAVE HAD A PAP TEST IN THE PAST THREE YEARS'
_RFPSA21 = 'MALE RESPONDENTS AGED 40+ WHO HAVE HAD A PSA TEST IN THE PAST 2 YEARS'
_RFSEAT2 = 'ALWAYS OR NEARLY ALWAYS WEAR SEAT BELTS'
_RFSEAT3 = 'ALWAYS WEAR SEAT BELTS'
_RFSIGM2 = 'RESPONDENTS AGED 50 OR OLDER WHO HAVE HAD A SIGMOIDOSCOPY OR COLONOSCOPY'
_RFSMOK3 = 'CURRENT SMOKING CALCULATED VARIABLE'
_SMOKER3 = 'COMPUTED SMOKING STATUS'
_STATE = 'STATE FIPS CODE'
_STRWT = 'STRATUM WEIGHT'
_STSTR = 'SAMPLE DESIGN STRATIFICATION VARIABLE'
_TOTINDA = 'LEISURE TIME PHYSICAL ACTIVITY CALCULATED VARIABLE'
_WT2 = 'DESIGN WEIGHT'
_WT2CH = 'CHILD DESIGN WEIGHT'
_WT2RAKE = 'DESIGN WEIGHT USED IN RAKING'
;
RUN;
