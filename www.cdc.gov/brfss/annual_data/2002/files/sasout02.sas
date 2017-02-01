*****************************************************************************************
* FILE NAME:     SASOUT02.SAS                                                           *
* DESCRIPTION:   THIS PROGRAM CONVERTS A STATES ASCII DATAFILE OF COMPLETES LOCATED AT  *
*                <DATAIN> FILEREF, INTO A SAS DATABASE STORED AT <DATAOUT> LIBREF       *
* REFERENCES:                                                                           *
* INPUT       DATAIN           FILEREF OF ASCII DATAFILE OF COMPLETES                   *
* FORMATS     FORMATS.sas7bcat      SAS FORMATS DATABASE                                *
* OUTPUT      DATAOUT.SASDATA  SAS DATABASE VERSION OF ASCII DATA AS SPECIFIED IN       *
*                              <DATAIN> FILEREF                                         *
* UPDATED - 08/11/2004                                                                  *
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
 
*FILENAME DATAIN '<PATH OF INPUT STATE ASCII DATAFILE OF COMPLETES>' LRECL = 954 ;
*****************************************************************************
* EXAMPLE:                                                                  *
*       FILENAME DATAIN 'C:\BRFSS\2000\GA02COMP.DAT' LRECL = 954            *
* NOTE: MAKE SURE THE ASTERISK IS REMOVED BEFORE THE WORD FILENAME AND      *
*       MAKE SURE THAT THE GREATER THAN AND LESS THAN SIGNS < > ARE REMOVED *
*       FROM THE FILENAME STATEMENT                                         *
*****************************************************************************;
 
*LIBNAME DATAOUT '<PATH OF PERMANENTLY STORED SAS DATASET VERSION OF DATAIN FILEREF>' ;
*****************************************************************************
* EXAMPLE:                                                                  *
*          LIBNAME DATAOUT 'C:\'                                            *
*          A SAS DATABASE WILL BE STORED AT C:\SASDATA.sas7bdat             *
* NOTE: MAKE SURE THE ASTERISK IS REMOVED BEFORE THE WORD LIBNAME AND       *
*       MAKE SURE THAT THE GREATER THAN AND LESS THAN SIGNS < > ARE REMOVED *
*       FROM THE LIBNAME STATEMENT                                          *
*****************************************************************************;
 
*LIBNAME LIBRARY '<PATH OF STORED SAS FORMAT01.sas7bcat>' ;
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
Input
_STATE      1-2
_GEOSTR     3-4
_DENSTR2    5
PRECALL     7
REPNUM      8-12
REPDEPTH   $13-14
FMONTH      15-16
IDATE      $17-24
IMONTH     $17-18
IDAY       $19-20
IYEAR      $21-24
INTVID     $25-27
DISPCODE    36-38
_PSU        39-48
SEQNO       39-48
NATTMPTS    49-50
NRECSEL     51-56
NRECSTR     57-65
CTELENUM    66
PVTRESID    67
NUMADULT    68-69
NUMMEN      70
NUMWOMEN    71
GENHLTH     72
HLTHPLAN    73
PERSDOC2    74
FACILIT3    75
MEDCARE     76
MEDREAS     77-78
EXERANY2    79
FRUITJUI    80-82
FRUIT       83-85
GREENSAL    86-88
POTATOES    89-91
CARROTS     92-94
VEGETABL    95-97
ASTHMA2     98
ASTHNOW     99
DIABETES    100
LASTDEN2    101
RMVTEETH    102
DENCLEAN    103
FLUSHOT     104
FLUPRO2     105-106
PNEUVAC2    107
SMOKE100    108
SMOKEDAY    109
STOPSMK2    110
ALCDAY3     111-113
AVEDRNK     114-115
DRNK2GE5    116-117
DRINKDRI    118-119
SEATBELT    120
AGE         121-122
HISPANC2    123
MRACE      $124-129
ORACE2      130
MARITAL     131
CHILDREN    132-133
EDUCA       134
EMPLOY      135
INCOME2     136-137
WEIGHT      138-140
HEIGHT      141-143
CTYCODE     144-146
NUMHHOL2    147
NUMPHON2    148
SEX         149
PREGNANT    150
BRTHCNT2    151
TYPCNTR2    152-153
OTHERBC     154-155
NOBCUSE     156-157
HADMAM      158
HOWLONG     159
PROFEXAM    160
LENGEXAM    161
HADPAP      162
LASTPAP     163
HADHYST2    164
PSATEST     165
PSATIME     166
DIGRECEX    167
DRETIME     168
PROSTATE    169
BLDSTOOL    170
LSTBLDS2    171
HADSIGM2    172
LASTSIG2    173
HIVTF1A     174
HIVTF1B     175
HIVOPT1B    176
HIVTST3     177
HIVTSTD2    178-183
RSNTST4     184-185
WHRTST5     186-187
HIVRISK2    188
PCSAIDS2    189
FIREARM4    190
GUNLOAD     191
LOADULK2    192
DIABAGE2    193-194
INSULIN     195
DIABPILL    196
BLDSUGAR    197-199
FEETCHK2    200-202
FEETSORE    203
DOCTDIAB    204-205
CHKHEMO2    206-207
FEETCHK     208-209
EYEEXAM     210
DIABEYE     211
DIABEDU     212
BPHIGH3     213
BPMEDS      214
BLOODCHO    215
CHOLCHK     216
TOLDHI2     217
JOBACTIV    218
MODPACT     219
MODPADAY    220-221
MODPATIM    222-224
VIGPACT     225
VIGPADAY    226-227
VIGPATIM    228-230
PHYSHLTH    231-232
MENTHLTH    233-234
POORHLTH    235-236
QLACTLM2    237
USEEQUIP    238
HLTHPRB2    239-240
LONGLMT2    241-243
QLPERSN2    244
QLROUTN2    245
PAINACT2    246-247
QLMENTL2    248-249
QLSTRES2    250-251
QLREST2     252-253
QLHLTH2     254-255
CHECKUP     256
RSNOCOV2    257-258
PSTPLAN2    259
ASTHMAGE    260-261
ASATTACK    262
ASERVIST    263-264
ASDRVIST    265-266
ASRCHKUP    267-268
ASACTLIM    269-271
ASYMPTOM    272
ASNOSLEP    273
ASTHMEDS    274
CASTHDX     275-276
CASTHNOW    277-278
HASYMP1     279
HASYMP2     280
HASYMP3     281
HASYMP4     282
HASYMP5     283
HASYMP6     284
STRSYMP1    285
STRSYMP2    286
STRSYMP3    287
STRSYMP4    288
STRSYMP5    289
STRSYMP6    290
FIRSTAID    291
CVDFAT02    292
CVDFVG01    293
CVDEXR03    294
CVDFATR2    295
CVDFVEG     296
CVDEXRS2    297
CVDINFR2    298
CVDCRHD2    299
CVDSTRK2    300
HATTKAGE    301-302
STROKAGE    303-304
CVDREHAB    305
CVDASPRN    306
ASPUNSAF    307
WHYASPAN    308
WHYASPHA    309
WHYASPSK    310
LOSEWT      311
MAINTAIN    312
FEWCAL      313
PHYACT      314
WTDESIRE    315-317
DRADVICE    318
VITAMINS    319
MULTIVIT    320
FOLICACD    321
TAKEVIT     322-324
RECOMMEN    325
FIRSTSMK    326-327
REGSMK      328-329
LASTSMK     330-331
GETCARE     332
QUITSMOK    333
HOUSESMK    334
INDOORS     335
SMKPUBLC    336
SMKWORK     337
USEEVER2    338
USENOW2     339
CIGAR2      340
CIGARNOW    341
PIPESMK     342
PIPENOW     343
BIDISMK     344
BIDINOW     345
PAIN30DY    346
JOINTSYM    347
JOINTRT2    348
HAVARTH2    349
LMTJOIN2    350
ARTHDISB    351
STATEQUE   $352-601
RXNRCMOD   $602-609
ATKVICT     711
ATKVID     $712-725
ATKSVCS     726
ATKEMPL     727
ATKNOWRK    728
ATKRSWRK    729
ATKDYWRK    730-731
ATKEVAC     732
ATKMEDIA    733
ATKPRB     $734-749
ATKHELP     750
ATKAID     $751-772
ATKDRNK     773
ATKSMOK     774
ATKNSMOK    775
ATKSITE     776
_STSTR      777-781
_STRWT      782-791
_RAW        792-801
_WT2        802-811
_POSTSTR    812-821
_FINALWT    822-831
_REGION     832-833
_AGEG_      834-835
_SEXG_      836
_RACEG3_    837
_IMPAGE     838-839
_IMPNPH     840
_MSACODE   $841-844
_TOTINDA    845
FTJUDAY_    846-848
FRUTDAY_    849-851
GNSLDAY_    852-854
POTADAY_    855-857
CRTSDAY_    858-860
VEGEDAY_    861-863
_FRTSERV    864-868
_FRTINDX    869
_LTASTHM    870
_CASTHMA    871
_ASTHMST    872
_EXTEETH    873
_ALTEETH    874
_DENTVST    875
_FLUSHOT    876
_PNEUMOC    877
_SMOKER2    878
_RFSMOK2    879
DROCCDY_    880-882
DRNKANY3    883
_RFBING2    884
_DRNKDY2    885-888
_DRNKMO2    889-892
_RFDRHV2    893
_RFDRMN2    894
_RFDRWM2    895
_RFDRDR2    896
_RFSEAT2    897
_RFSEAT4    898
MRACEORG   $899-904
MRACEASC   $905-910
_PRACE      911-912
_MRACE      913-914
RACE2       915
_RACEG2     916
_RACEGR2    917
_CNRACE     918
_CNRACEC    919
_AGEG5YR    920-921
_AGE65YR    922
HTIN        923-924
HTM         925-927
WTKG        928-932
_BMI2       933-936
_BMI2CAT    937
_RFBMI2     938
BRCNTRL_    939
BCMETML_    940
BCMETFM_    941
_FCNTRAC    942
_MCNTRAC    943
_RFMAM2Y    944
_RFPAP3Y    945
_RFPSA2Y    946
_RFBLDST    947
_RFSIGMD    948
_AIDSTST    949
_HIGHRSK    950
_STDCNDM    951
_RFFRARM    952
_RFFRAR2    953
ENDOFREC    954;
*****************************************************************
* TO INCLUDE THE FORMAT ASSIGNEMT STATEMENT REMOVE THE ASTERISK *
* FROM THE BEGINNING OF THE FOLLOWING LINE                      *
*****************************************************************;
* %INCLUDE FORMATIN ;
run;
