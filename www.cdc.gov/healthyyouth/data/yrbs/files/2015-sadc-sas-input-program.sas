/****************************************************************************************/
/*  This SAS program reads ASCII format (text format) 2015 SADC data and creates a      */
/*  formatted and labeled SAS dataset.                                                  */
/*                                                                                      */
/*  Change the file location specifications from 'c:\SADC2015' to the location where    */
/*  you downloaded, unzipped, and stored the SADC ASCII data file and the format        */
/*  library before you run this program.  Change the location specification in three    */
/*  places - in the 'filename' statement and in the two 'libname' statements at the     */
/*  top of the program.                                                                 */
/*                                                                                      */
/*  Change "xxxxxxx" in the 'filename' statement and the 'data' statement to            */
/*  'national', 'district', 'state_a_m', or 'state_n_z' depending on which file         */
/*  you are analyzing.                                                                  */
/*                                                                                      */
/*  Note: Run '2015 SADC SAS Formats Program.sas' BEFORE you run                        */
/*  '2015 SADC SAS Input Program.sas' to create the 2015SADC dataset.                   */
/****************************************************************************************/
 
filename datain 'c:\SADC2015\sadc_2015_xxxxxxx.dat';
libname dataout 'c:\SADC2015';
libname library 'c:\SADC2015';
data dataout.sadc_2015_xxxxxxx;
infile datain lrecl=850;
input
sitecode $ 1-5
sitename $ 6-55
sitetype $ 56-105
sitetypenum 106-113
year 114-121
survyear 122-124
weight 125-134
stratum 135-142
PSU 143-150
record 151-158
age 159-161
sex 162-164
grade 165-167
race4 168-170
race7 171-173
stheight 174-181
stweight 182-189
bmi 190-197
bmipct 198-205
qnobese 206-208
qnowt 209-211
q68 $ 212-212
q67 $ 213-213
sexid 214-221
sexid2 222-229
sexpart 230-237
sexpart2 238-245
q8 $ 246-246
q9 $ 247-247
q10 $ 248-248
q11 $ 249-249
q12 $ 250-250
q13 $ 251-251
q14 $ 252-252
q15 $ 253-253
q16 $ 254-254
q17 $ 255-255
q18 $ 256-256
q19 $ 257-257
q20 $ 258-258
q21 $ 259-259
q22 $ 260-260
q23 $ 261-261
q24 $ 262-262
q25 $ 263-263
q26 $ 264-264
q27 $ 265-265
q28 $ 266-266
q29 $ 267-267
q30 $ 268-268
q31 $ 269-269
q32 $ 270-270
q33 $ 271-271
q34 $ 272-272
q35 $ 273-273
q36 $ 274-274
q37 $ 275-275
q38 $ 276-276
q39 $ 277-277
q40 $ 278-278
q41 $ 279-279
q42 $ 280-280
q43 $ 281-281
q44 $ 282-282
q45 $ 283-283
q46 $ 284-284
q47 $ 285-285
q48 $ 286-286
q49 $ 287-287
q50 $ 288-288
q51 $ 289-289
q52 $ 290-290
q53 $ 291-291
q54 $ 292-292
q55 $ 293-293
q56 $ 294-294
q57 $ 295-295
q58 $ 296-296
q59 $ 297-297
q60 $ 298-298
q61 $ 299-299
q62 $ 300-300
q63 $ 301-301
q64 $ 302-302
q65 $ 303-303
q66 $ 304-304
q69 $ 305-305
q70 $ 306-306
q71 $ 307-307
q72 $ 308-308
q73 $ 309-309
q74 $ 310-310
q75 $ 311-311
q76 $ 312-312
q77 $ 313-313
q78 $ 314-314
q79 $ 315-315
q80 $ 316-316
q81 $ 317-317
q82 $ 318-318
q83 $ 319-319
q84 $ 320-320
q85 $ 321-321
q86 $ 322-322
q87 $ 323-323
q88 $ 324-324
q89 $ 325-325
qn8 326-328
qn9 329-331
qn10 332-334
qn11 335-337
qn12 338-340
qn13 341-343
qn14 344-346
qn15 347-349
qn16 350-352
qn17 353-355
qn18 356-358
qn19 359-361
qn20 362-364
qn21 365-367
qn22 368-370
qn23 371-373
qn24 374-376
qn25 377-379
qn26 380-382
qn27 383-385
qn28 386-388
qn29 389-391
qn30 392-394
qn31 395-397
qn32 398-400
qn33 401-403
qn34 404-406
qn35 407-409
qn36 410-412
qn37 413-415
qn38 416-418
qn39 419-421
qn40 422-424
qn41 425-427
qn42 428-430
qn43 431-433
qn44 434-436
qn45 437-439
qn46 440-442
qn47 443-445
qn48 446-448
qn49 449-451
qn50 452-454
qn51 455-457
qn52 458-460
qn53 461-463
qn54 464-466
qn55 467-469
qn56 470-472
qn57 473-475
qn58 476-478
qn59 479-481
qn60 482-484
qn61 485-487
qn62 488-490
qn63 491-493
qn64 494-496
qn65 497-499
qn66 500-502
qn69 503-505
qn70 506-508
qn71 509-511
qn72 512-514
qn73 515-517
qn74 518-520
qn75 521-523
qn76 524-526
qn77 527-529
qn78 530-532
qn79 533-535
qn80 536-538
qn81 539-541
qn82 542-544
qn83 545-547
qn84 548-550
qn85 551-553
qn86 554-556
qn87 557-559
qn88 560-562
qn89 563-565
qnfrcig 566-568
qndaycig 569-571
qncigint 572-574
qntob2 575-577
qntob3 578-580
qntob4 581-583
qnnotob2 584-586
qnnotob3 587-589
qnnotob4 590-592
qniudimp 593-595
qnshparg 596-598
qnothhpl 599-601
qndualbc 602-604
qnbcnone 605-607
qnfr0 608-610
qnfr1 611-613
qnfr2 614-616
qnfr3 617-619
qnveg0 620-622
qnveg1 623-625
qnveg2 626-628
qnveg3 629-631
qnsoda1 632-634
qnsoda2 635-637
qnsoda3 638-640
qnmilk1 641-643
qnmilk2 644-646
qnmilk3 647-649
qnbk7day 650-652
qnpa0day 653-655
qnpa7day 656-658
qndlype 659-661
qhowmarijuana $ 662-662
qhallucdrug $ 663-663
qsunscreenuse $ 664-664
qindoortanning $ 665-665
qmusclestrength $ 666-666
qgenderexp $ 667-667
qcelldriving $ 668-668
qbullyweight $ 669-669
qbullygay $ 670-670
qtypealcohol $ 671-671
qcigschool $ 672-672
qchewtobschool $ 673-673
qalcoholschool $ 674-674
qmarijuanaschool $ 675-675
qprescription30d $ 676-676
qcurrentcocaine $ 677-677
qcurrentasthma $ 678-678
qtaughtsexed $ 679-679
qtaughtstd $ 680-680
qtaughtbc $ 681-681
qdietpop $ 682-682
qcoffeetea $ 683-683
qsportsdrink $ 684-684
qenergydrink $ 685-685
qsugardrink $ 686-686
qwater $ 687-687
qfastfood $ 688-688
qfoodallergy $ 689-689
qsunburn $ 690-690
qconcentrating $ 691-691
qspeakenglish $ 692-692
qnhowmarijuana 693-695
qnhallucdrug 696-698
qnsunscreenuse 699-701
qnindoortanning 702-704
qnmusclestrength 705-707
qngenderexp 708-710
qncelldriving 711-713
qnbullyweight 714-716
qnbullygay 717-719
qntypealcohol 720-722
qncigschool 723-725
qnchewtobschool 726-728
qnalcoholschool 729-731
qnmarijuanaschool 732-734
qnprescription30d 735-737
qncurrentcocaine 738-740
qncurrentasthma 741-743
qntaughtsexed 744-746
qntaughtstd 747-749
qntaughtbc 750-752
qndietpop 753-755
qncoffeetea 756-758
qnsportsdrink 759-761
qnspdrk1 762-764
qnspdrk2 765-767
qnspdrk3 768-770
qnenergydrink 771-773
qnsugardrink 774-776
qnwater 777-779
qnwater1 780-782
qnwater2 783-785
qnwater3 786-788
qnfastfood 789-791
qnfoodallergy 792-794
qnsunburn 795-797
qnconcentrating 798-800
qnspeakenglish 801-803
;
 
/****************************************/
/*   Assign formats to SAS variables    */
/****************************************/
;
format
sitecode $SITE.
age AGE.
sex SEX.
grade GRADE.
race4 RACE.
race7 RACE7S.
q68 $H68S.
q67 $H67S.
sexid SEXID.
sexid2 SEXIDB.
sexpart SEXPART.
sexpart2 SEXPARTB.
q8 $H8S.
q9 $H9S.
q10 $H10S.
q11 $H11S.
q12 $H12S.
q13 $H13S.
q14 $H14S.
q15 $H15S.
q16 $H16S.
q17 $H17S.
q18 $H18S.
q19 $H19S.
q20 $H20S.
q21 $H21S.
q22 $H22S.
q23 $H23S.
q24 $H24S.
q25 $H25S.
q26 $H26S.
q27 $H27S.
q28 $H28S.
q29 $H29S.
q30 $H30S.
q31 $H31S.
q32 $H32S.
q33 $H33S.
q34 $H34S.
q35 $H35S.
q36 $H36S.
q37 $H37S.
q38 $H38S.
q39 $H39S.
q40 $H40S.
q41 $H41S.
q42 $H42S.
q43 $H43S.
q44 $H44S.
q45 $H45S.
q46 $H46S.
q47 $H47S.
q48 $H48S.
q49 $H49S.
q50 $H50S.
q51 $H51S.
q52 $H52S.
q53 $H53S.
q54 $H54S.
q55 $H55S.
q56 $H56S.
q57 $H57S.
q58 $H58S.
q59 $H59S.
q60 $H60S.
q61 $H61S.
q62 $H62S.
q63 $H63S.
q64 $H64S.
q65 $H65S.
q66 $H66S.
q69 $H69S.
q70 $H70S.
q71 $H71S.
q72 $H72S.
q73 $H73S.
q74 $H74S.
q75 $H75S.
q76 $H76S.
q77 $H77S.
q78 $H78S.
q79 $H79S.
q80 $H80S.
q81 $H81S.
q82 $H82S.
q83 $H83S.
q84 $H84S.
q85 $H85S.
q86 $H86S.
q87 $H87S.
q88 $H88S.
q89 $H89S.
qhowmarijuana $HOWMARJ.
qhallucdrug $LSD.
qsunscreenuse $SUNSCR.
qindoortanning $SUNTAN.
qmusclestrength $MUSCLE.
qgenderexp $EXPRESS.
qcelldriving $CELLDRV.
qbullyweight $BULLWGT.
qbullygay $BULLGAY.
qtypealcohol $ALCTYPE.
qcigschool $CIGS.
qchewtobschool $CHEWTOB.
qalcoholschool $ALCSCH.
qmarijuanaschool $MARIJSCH.
qprescription30d $DRUG30D.
qcurrentcocaine $CURRCOC.
qcurrentasthma $CURRASTH.
qtaughtsexed $TSEXED.
qtaughtstd $TSTD.
qtaughtbc $TBC.
qdietpop $DIETPOP.
qcoffeetea $COFFEE.
qsportsdrink $SPRTDRNK.
qenergydrink $ENRGDRNK.
qsugardrink $SGRDRNK.
qwater $WATER.
qfastfood $FASTFOOD.
qfoodallergy $ALLERGY.
qsunburn $SUNBURN.
qconcentrating $CONCEN.
qspeakenglish $ENGLISH.
;
 
/****************************************/
/*   Assign labels to SAS variables    */
/****************************************/
;
label
sitecode="Site code "
sitename="Site name "
sitetype="Site type "
sitetypenum="1=District, 2=State, 3=National "
year="4-digit Year of survey "
survyear="1=1991...13=2015 "
weight="Analysis weight "
stratum="Analysis stratum "
PSU="Analysis primary sampling unit "
record="Record ID "
age="1= <=12...7=18+ years old "
sex="1=Female, 2=Male "
grade="1=9th...4=12th grade "
race4="4-level race variable "
race7="7-level race variable "
stheight="Height in meters "
stweight="Weight in kilograms "
bmi="Body Mass Index "
bmipct="BMI percentile "
qnobese="Were Obese "
qnowt="Were Overweight "
q68="Sexual identity "
q67="Sex of sexual contacts "
sexid="Sexual identity "
sexid2="Collapsed sexual identity "
sexpart="Sex of sex contact(s) "
sexpart2="Collapsed sex of sex contact(s) "
q8="Bicycle helmet use "
q9="Seat belt use "
q10="Riding with a drinking driver "
q11="Drinking and driving "
q12="Texting and driving "
q13="Weapon carrying "
q14="Gun carrying "
q15="Weapon carrying at school "
q16="Safety concerns at school "
q17="Threatened at school "
q18="Physical fighting "
q19="Injurious physical fighting "
q20="Physical fighting at school "
q21="Ever been forced to have sexual intercourse "
q22="Did date physically hurt them 12 mo "
q23="Sexual dating violence "
q24="Bullying at school "
q25="Electronic bullying "
q26="Sad or hopeless "
q27="Considered suicide "
q28="Made a suicide plan "
q29="Attempted suicide "
q30="Injurious suicide attempt "
q31="Ever cigarette use "
q32="Initiation of cigarette use "
q33="Current cigarette use "
q34="Smoked >10 cigarettes "
q35="Cigarettes from store "
q36="Smoking cessation "
q37="Current smokeless tobacco use "
q38="Current cigar use "
q39="Electronic vapor product use "
q40="Current electronic vapor product use "
q41="Ever alcohol use "
q42="Initiation of alcohol use "
q43="Current alcohol use "
q44="5 or more drinks in a row "
q45="Largest number of drinks "
q46="Source of alcohol "
q47="Ever marijuana use "
q48="Initiation of marijuana use "
q49="Current marijuana use "
q50="Ever cocaine use "
q51="Ever inhalant use "
q52="Ever heroin use "
q53="Ever methamphetamine use "
q54="Ever ecstasy use "
q55="Ever synthetic marijuana use "
q56="Ever steroid use "
q57="Ever prescription drug use "
q58="Illegal injected drug use "
q59="Illegal drugs at school "
q60="Ever sexual intercourse "
q61="Sex before 13 years "
q62="Multiple sex partners "
q63="Current sexual activity "
q64="Alcohol/drugs and sex "
q65="Condom use "
q66="Birth control pill use "
q69="Perception of weight "
q70="Weight loss "
q71="Fruit juice drinking "
q72="Fruit eating "
q73="Salad eating "
q74="Potato eating "
q75="Carrot eating "
q76="Other vegetable eating "
q77="Soda drinking "
q78="How many glass of milk 7 days "
q79="Breakfast eating "
q80="Physical activity >= 5 days "
q81="Television watching "
q82="Computer use "
q83="PE attendance "
q84="Sports team participation "
q85="HIV testing "
q86="Oral health care "
q87="Asthma "
q88="Hours of sleep on school night "
q89="Grades in school "
qn8="Rarely or never wore a bicycle helmet "
qn9="Rarely or never wore a seat belt "
qn10="Rode with a driver who had been drinking alcohol "
qn11="Drove when drinking alcohol "
qn12="Texted or e-mailed while driving a car or other vehicle "
qn13="Carried a weapon "
qn14="Carried a gun "
qn15="Carried a weapon on school property "
qn16="Did not go to school because they felt unsafe at school or on their way to or from school "
qn17="Were threatened or injured with a weapon on school property "
qn18="Were in a physical fight "
qn19="Were injured in a physical fight "
qn20="Were in a physical fight on school property "
qn21="Were ever physically forced to have sexual intercourse "
qn22="Experienced physical dating violence "
qn23="Experienced sexual dating violence "
qn24="Were bullied on school property "
qn25="Were electronically bullied "
qn26="Felt sad or hopeless "
qn27="Seriously considered attempting suicide "
qn28="Made a plan about how they would attempt suicide "
qn29="Attempted suicide "
qn30="Attempted suicide that resulted in an injury, poisoning, or overdose that had to be treated by a doctor or nurse "
qn31="Ever tried cigarette smoking "
qn32="Smoked a whole cigarette before age 13 years "
qn33="Currently smoked cigarettes "
qn34="Smoked more than 10 cigarettes per day "
qn35="Usually obtained their own cigarettes by buying them in a store or gas station "
qn36="Tried to quit smoking cigarettes "
qn37="Currently used smokeless tobacco "
qn38="Currently smoked cigars "
qn39="Ever used electronic vapor products "
qn40="Currently used electronic vapor products "
qn41="Ever drank alcohol "
qn42="Drank alcohol before age 13 years "
qn43="Currently drank alcohol "
qn44="Drank five or more drinks of alcohol in a row "
qn45="Reported that the largest number of drinks they had in a row was 10 or more "
qn46="Usually obtained the alcohol they drank by someone giving it to them "
qn47="Ever used marijuana "
qn48="Tried marijuana before age 13 years "
qn49="Currently used marijuana "
qn50="Ever used cocaine "
qn51="Ever used inhalants "
qn52="Ever used heroin "
qn53="Ever used methamphetamines "
qn54="Ever used ecstasy "
qn55="Ever used synthetic marijuana "
qn56="Ever took steroids without a doctor's prescription "
qn57="Ever took prescription drugs without a doctor's prescription "
qn58="Ever injected any illegal drug "
qn59="Were offered, sold, or given an illegal drug on school property "
qn60="Ever had sexual intercourse "
qn61="Had sexual intercourse before age 13 years "
qn62="Had sexual intercourse with four or more persons "
qn63="Were currently sexually active "
qn64="Drank alcohol or used drugs before last sexual intercourse "
qn65="Used a condom "
qn66="Used birth control pills "
qn69="Described themselves as slightly or very overweight "
qn70="Were trying to lose weight "
qn71="Did not drink fruit juice "
qn72="Did not eat fruit "
qn73="Did not eat salad "
qn74="Did not eat potatoes "
qn75="Did not eat carrots "
qn76="Did not eat other vegetables "
qn77="Did not drink a can, bottle, or glass of soda or pop "
qn78="Did not drink milk "
qn79="Did not eat breakfast "
qn80="Were physically active at least 60 minutes per day on 5 or more days "
qn81="Watched television 3 or more hours per day "
qn82="Played video or computer games or used a computer 3 or more hours per day "
qn83="Attended physical education classes on 1 or more days "
qn84="Played on at least one sports team "
qn85="Were ever tested for HIV "
qn86="Saw a dentist "
qn87="Had ever been told by a doctor or nurse that they had asthma "
qn88="Had 8 or more hours of sleep "
qn89="Made mostly A's or B's in school "
qnfrcig="Currently frequently smoked cigarettes "
qndaycig="Currently smoked cigarettes daily "
qncigint="Usually obtained their own cigarettes by buying on the internet "
qntob2="Currently smoked cigarettes or cigars "
qntob3="Currently used cigarettes, cigars, or smokeless tobacco "
qntob4="Currently used tobacco "
qnnotob2="Did not currently smoke cigarettes or cigars "
qnnotob3="Did not currently use cigarettes, cigars, or smokeless tobacco "
qnnotob4="Did not currently use tobacco "
qniudimp="Used an IUD (e.g., Mirena or ParaGard) or implant (e.g., Implanon or Nexplanon) "
qnshparg="Used a shot (e.g., Depo-Provera), patch (e.g., OrthoEvra), or birth control ring (e.g., NuvaRing) "
qnothhpl="Used birth control pills; an IUD or implant; or a shot, patch, or birth control ring "
qndualbc="Used both a condom during and birth control pills; an IUD or implant; or a shot, patch, or birth control ring before last sexual intercourse "
qnbcnone="Did not use any method to prevent pregnancy "
qnfr0="Did not eat fruit or drink 100% fruit juices "
qnfr1="Ate fruit or drank 100% fruit juices one or more times per day "
qnfr2="Ate fruit or drank 100% fruit juices two or more times per day "
qnfr3="Ate fruit or drank 100% fruit juices three or more times per day "
qnveg0="Did not eat vegetables "
qnveg1="Ate vegetables one or more times per day "
qnveg2="Ate vegetables two or more times per day "
qnveg3="Ate vegetables three or more times per day "
qnsoda1="Drank a can, bottle, or glass of soda or pop one or more times per day "
qnsoda2="Drank a can, bottle, or glass of soda or pop two or more times per day "
qnsoda3="Drank a can, bottle, or glass of soda or pop three or more times per day "
qnmilk1="Drank one or more glasses per day of milk "
qnmilk2="Drank two or more glasses per day of milk "
qnmilk3="Drank three or more glasses per day of milk "
qnbk7day="Ate breakfast on all 7 days "
qnpa0day="Did not participate in at least 60 minutes of physical activity on at least 1 day "
qnpa7day="Were physically active at least 60 minutes per day on all 7 days "
qndlype="Attended physical education classes on all 5 days "
qhowmarijuana="Usual use of marijuana "
qhallucdrug="Ever used LSD "
qsunscreenuse="Sunscreen use outside "
qindoortanning="How many times indoor tanning "
qmusclestrength="Strengthen muscles past 7 days "
qgenderexp="How others would describe you "
qcelldriving="Did you talk on cell phone while driving "
qbullyweight="Ever been teased because of weight "
qbullygay="Ever been teased b/c labeled GLB "
qtypealcohol="What type of alcohol usually drink 30d "
qcigschool="Days use cigarettes school property 30 days "
qchewtobschool="Days use snuff school property 30 days "
qalcoholschool="How many days drink @ school 30 days "
qmarijuanaschool="How many times marijuana@school 30 days "
qprescription30d="Times take drug w/o prescription 30d "
qcurrentcocaine="How many times use cocaine 30 days "
qcurrentasthma="Do you still have asthma "
qtaughtsexed="Ever had sex education in school "
qtaughtstd="Ever been taught in school about STDs "
qtaughtbc="Ever been taught about BC methods in sch "
qdietpop="How many times diet soda past 7 days "
qcoffeetea="Times drink coffee or tea past 7 days "
qsportsdrink="How many times sports drink past 7 days "
qenergydrink="How many times energy drink past 7 days "
qsugardrink="Times sugar-sweetened beverage past 7d "
qwater="How many times plain water past 7 days "
qfastfood="Days 1+ meal/snack fast food past 7d "
qfoodallergy="Food allergies "
qsunburn="Sunburn "
qconcentrating="Difficulty concentrating "
qspeakenglish="How well speak English "
qnhowmarijuana="Usually used marijuana by smoking it in a joint, bong, pipe, or blunt "
qnhallucdrug="Used LSD 1+ times "
qnsunscreenuse="Mostly or always wear sunscreen "
qnindoortanning="Used 1+ times indoor tanning "
qnmusclestrength="Strengthened muscles 3+ of past 7 days "
qngenderexp="Equally feminine and masculine "
qncelldriving="Talked on cell phone driving 1+ past 30d "
qnbullyweight="Been teased b/c of weight past 12 mos "
qnbullygay="Been teased b/c labeled GLB past 12 mos "
qntypealcohol="Liquor type alcohol drank past 30 days "
qncigschool="Used cigarettes at school 1+ 30 days "
qnchewtobschool="Used snuff/dip at school 1+ 30 days "
qnalcoholschool="Had 1+ drinks at school 1+ 30 days "
qnmarijuanaschool="Used marijuana@school 1+ times 30 day "
qnprescription30d="Prescription drug 1+ times past 30 days "
qncurrentcocaine="Used cocaine 1+ times past 30 days "
qncurrentasthma="With current asthma "
qntaughtsexed="Had sex education in school ever "
qntaughtstd="Been taught in school about STDs ever "
qntaughtbc="Been taught in school about BC methods "
qndietpop="Drink 1+ times/day diet soda past 7d "
qncoffeetea="Drank 1+ times/day coffee/tea past 7d "
qnsportsdrink="Did not drink a can, bottle, or glass of a sports drink "
qnspdrk1="Drank a can, bottle, or glass of a sports drink one or more times per day "
qnspdrk2="Drank a can, bottle, or glass of a sports drink two or more times per day "
qnspdrk3="Drank a can, bottle, or glass of a sports drink three or more times per day "
qnenergydrink="Drank 1+ times/day energy drink past 7d "
qnsugardrink="Drank 1+times/day sugar beverage past 7d "
qnwater="Did not drink a bottle or glass of plain water "
qnwater1="Drank one or more glasses per day of water "
qnwater2="Drank two or more glasses per day of water "
qnwater3="Drank three or more glasses per day of water "
qnfastfood="Ate 1+ meal/snack fast food 3+ days "
qnfoodallergy="Have to avoid some foods because eating the food could cause an allergic reaction "
qnsunburn="Had a sunburn "
qnconcentrating="Have serious difficulty concentrating, remembering, or making decisions "
qnspeakenglish="Speak English well or very well "
;
run;
