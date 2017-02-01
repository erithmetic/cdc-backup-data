
/****************************************************************************************/
/*  This SAS program reads ASCII format (text format) 2012 SHPPS data and creates a     */
/*  formatted and labeled SAS dataset.                                                  */
/*                                                                                      */
/*  Change the file location specifications from "c:\shpps2012" to the location where   */
/*  you have stored the SHPPS ASCII data file and the format library before you run this*/
/*  program.  Change the location specification in three places - in the "filename"     */
/*  statement and in the two "libname" statements at the top of the program.            */
/*                                                                                      */
/*  Note: Run "SHPPS Formats Program.sas" BEFORE you run                                */
/*  "HLTHSERD_SAS_Input_Program.sas" to create the 2012 SHPPS dataset.                  */
/****************************************************************************************/

filename datain 'c:\shpps2012\hlthserd2012.dat';

libname dataout 'c:\shpps2012';

libname library 'c:\shpps2012';

data dataout.hlthserd2012 ;
infile datain lrecl=2000;
missing A C F N M ;
input
STCMSID			1-2
STATENAME			$3-25
DISTCMSID			26-31
@41 DISTWT 12.7
PSU			   54-61
SAMPSTRA		62-62
CTYPE			$63-90
RTITLE			$91-163
HSD1a			164-164
HSD1b			165-165
HSD1c			166-166
HSD1d			167-167
HSD1e			168-168
HSD1f			169-169
HSD1g			170-170
HSD1h			171-171
HSD1i			172-172
HSD1j			173-173
HSD1k			174-174
HSD1l			175-175
HSD1m			176-176
HSD1n			177-177
HSD2			178-178
HSD3a			179-179
HSD3b			180-180
HSD3c			181-181
HSD3d			182-182
HSD3e			183-183
HSD3f			184-184
HSD3g			185-185
HSD4			186-186
HSD5a			187-187
HSD5b			188-188
HSD5c			189-189
HSD5d			190-190
HSD5e			191-191
HSD5f			192-192
HSD5g			193-193
HSD6			194-194
HSD7a			195-195
HSD7b			196-196
HSD7c			197-197
HSD7d			198-198
HSD7e			199-199
HSD7f			200-200
HSD7g			201-201
HSD8			202-202
HSD9a			203-203
HSD9b			204-204
HSD9c			205-205
HSD10			206-206
HSD11			207-207
HSD12			208-208
HSD13			209-209
HSD14			210-210
HSD15a			211-211
HSD15b			212-212
HSD15c			213-213
HSD15d			214-214
HSD15e			215-215
HSD16a			216-216
HSD16b			217-217
HSD17a			218-218
HAS17b			219-219
HSD18a			220-220
HSD18b			221-221
HSD19			222-222
HSD20			223-223
HSD21			224-224
HSD22			225-225
HSD23			226-226
HSD24			227-227
HSD25_1			228-228
HSD25_2			229-229
HSD25_3			230-230
HSD25_4			231-231
HSD25_5			232-232
HSD25_6			233-233
HSD25_7			234-234
HSD26			235-235
HSD27a			236-236
HSD27b			237-237
HSD27c			238-238
HSD27d			239-239
HSD27e			240-240
HSD28a			241-241
HSD28b			242-242
HSD28c			243-243
HSD28d			244-244
HSD28e			245-245
HSD28f			246-246
HSD28g			247-247
HSD28h			248-248
HSD28i			249-249
HSD28j			250-250
HSD29			251-251
HSD30a			252-252
HSD30b			253-253
HSD30c			254-254
HSD30d			255-255
HSD30e			256-256
HSD31			257-257
HSD32a			258-258
HSD32b			259-259
HSD32c			260-260
HSD32d			261-261
HSD32e			262-262
HSD32f			263-263
HSD32g			264-264
HSD33			265-265
HSD34			266-266
HSD35			267-267
HSD36			268-268
HSD37			269-269
HSD38			270-270
HSD39			271-271
HSD40			272-272
HSD41			273-273
HSD42a			274-274
HSD42b			275-275
HSD42c			276-276
HSD42d			277-277
HSD43			278-278
HSD44a			279-279
HSD44b			280-280
HSD44c			281-281
HSD45			282-282
HSD46a			283-283
HSD46b			284-284
HSD46c			285-285
HSD47			286-286
HSD48a			287-287
HSD48b			288-288
HSD48c			289-289
HSD49			290-290
HSD50			291-291
HSd51			292-292
HSd52			293-293
HSD53a			294-294
HSD53b			295-295
HSD53c			296-296
HSD54a			297-297
HSD54b			298-298
HSD54c			299-299
HSD54d			300-300
HSD54e			301-301
HSD54f			302-302
HSD54g			303-303
HSD54h			304-304
HSD54i			305-305
HSD54j			306-306
HSD54k			307-307
HSD54l			308-308
HSD54m			309-309
HSD54n			310-310
HSD54o			311-311
HSD54p			312-312
HSD54q			313-313
HSD55			314-314
HSD56a			315-315
HSD56b			316-316
HSD56c			317-317
HSD56d			318-318
HSD56e			319-319
HSD56f			320-320
HSD56g			321-321
HSD56h			322-322
HSD56i			323-323
HSD56j			324-324
HSD57a			325-325
HSD57b			326-326
HSD57c			327-327
HSD57d			328-328
HSD57e			329-329
HSD57f			330-330
HSD57g			331-331
HSD57h			332-332
HSD57i			333-333
HSD57j			334-334
HSD57k			335-335
HSD57l			336-336
HSD57m			337-337
HSD57n			338-338
HSD57o			339-339
HSD57p			340-340
HSD57q			341-341
HSD57r			342-342
HSD57s			343-343
HSD57t			344-344
HSD57u			345-345
HSD57v			346-346
HSD58			347-347
HSD59			348-348
HSD60			349-349
HSD61			350-350
HSD62			351-351
HSD62SPEC			$352-452
HSD63a			453-453
HSD63b			454-454
HSD64a			455-455
HSD64b			456-456
HSD65			457-457
HSD66			458-458
HSD67			459-459
HSD68			460-460
HSD69a			461-461
HSD69b			462-462
HSD69c			463-463
HSD69d			464-464
HSD69e			465-465
HSD69f			466-466
HSD69g			467-467
HSD69h			468-468
HSD69i			469-469
HSD69j			470-470
HSD69k			471-471
HSD69l			472-472
HSD69m			473-473
HSD69n			474-474
HSD69o			475-475
HSD69p			476-476
HSD69q			477-477
HSD69r			478-478
HSD70a			479-479
HSD70b			480-480
HSD70c			481-481
HSD70d			482-482
HSD70e			483-483
HSD70f			484-484
HSD70g			485-485
HSD70h			486-486
HSD70i			487-487
HSD70j			488-488
HSD71a			489-489
HSD71b			490-490
HSD71c			491-491
HSD71d			492-492
HSD71e			493-493
HSD71f			494-494
HSD71g			495-495
HSD71h			496-496
HSD71i			497-497
HSD71j			498-498
HSD71k			499-499
HSD71l			500-500
HSD71m			501-501
HSD71n			502-502
HSD71o			503-503
HSD71p			504-504
HSD71q			505-505
HSD71r			506-506
HSD71s			507-507
HSD71t			508-508
HSD71u			509-509
HSD71v			510-510
HSD71w			511-511
HSD71x			512-512
HSD71y			513-513
HSD71z			514-514
HSD71aa			515-515
HSD72a			516-516
HSD72b			517-517
HSD72c			518-518
HSD72d			519-519
HSD73			520-520
HSD74a			521-521
HSD74b			522-522
HSD74c			523-523
HSD74d			524-524
HSD74e			525-525
HSD75			526-530
HSD76			531-535
HSD77_1			538-538
HSD77_2			539-539
HSD77_3			540-540
HSD77_4			541-541
HSD77_5			542-542
HSD77_6			543-543
HSD77_7			544-544
HSD78			545-545
HSD79a			546-546
HSD79b			547-547
HSD79c			548-548
HSD79d			549-549
HSD79e			550-550
HSD79f			551-551
HSD79g			552-552
HSD79h			553-553
HSD79i			554-554
HSD79j			555-555
HSD80a			556-556
HSD80b			557-557
HSD80c			558-558
HSD80d			559-559
HSD80e			560-560
HSD80f			561-561
HSD80g			562-562
HSD80h			563-563
HSD80i			564-564
HSD80j			565-565
HSD80k			566-566
HSD80l			567-567
HSD80m			568-568
HSD80n			569-569
HSD80o			570-570
HSD80p			571-571
HSD81a			572-572
HSD81b			573-573
HSD81c			574-574
HSD81d			575-575
HSD81e			576-576
HSD81f			577-577
HSD81g			578-578
HSD81h			579-579
HSD81i			580-580
HSD81j			581-581
HSD82			582-582
HSD83			583-583
HSD84_1			584-584
HSD84_2			585-585
HSD84_3			586-586
HSD84_3SPEC			$587-687
HSD85			688-688
HSD86_1			689-689
HSD86_2			690-690
HSD86_3			691-691
HSD86_3SPEC			$692-792
HSD87			794-794
HSD88_1			795-795
HSD88_2			796-796
HSD88_3			797-797
HSD88_3SPEC			$798-898
HSD89_1			899-899
HSD89_2			900-900
HSD89_3			901-901
HSD89_4			902-902
HSD89_5			903-903
HSD89_6			904-904
HSD89_7			905-905
HSD89_7SPEC			$906-1006
HSD90a			1007-1007
HSD90b			1008-1008
HSD90c			1009-1009
HSD91a			1010-1010
HSD91b			1011-1011
HSD91c			1012-1012
HSD91d			1013-1013
HSD91dSPEC			$1114-1214
;

************************************
*  Assign formats to SAS variables.*
************************************;
format
HSD1a 
HSD1b 
HSD1c 
HSD1d 
HSD1e 
HSD1f 
HSD1g 
HSD1h 
HSD1i 
HSD1j 
HSD1k 
HSD1l
HSD1m 
HSD1n 
HSD2 
HSD3a 
HSD3b 
HSD3c 
HSD3d 
HSD3e 
HSD3f 
HSD3g 
HSD5a 
HSD5b 
HSD5c 
HSD5d 
HSD5e 
HSD5f 
HSD5g 
HSD7a 
HSD7b 
HSD7c 
HSD7d 
HSD7e 
HSD7f 
HSD7g 
HSD9a 
HSD9b 
HSD9c 
HSD15a 
HSD15b 
HSD15c 
HSD15d 
HSD15e 
HSD16a 
HSD16b 
HSD17a 
HAS17b 
HSD18a 
HSD18b 
HSD25_1 
HSD25_2 
HSD25_3 
HSD25_4 
HSD25_5 
HSD25_6 
HSD25_7 
HSD26 
HSD28a 
HSD28b 
HSD28c 
HSD28d 
HSD28e 
HSD28f 
HSD28g 
HSD28h 
HSD28i 
HSD28j 
HSD29 
HSD30a 
HSD30d 
HSD30e 
HSD31 
HSD32a 
HSD32b
HSD32c 
HSD32d 
HSD32e 
HSD32f 
HSD32g 
HSD33 
HSD34 
HSD35 
HSD36 
HSD37 
HSD39 
HSD40 
HSD41 
HSD42a 
HSD42b
HSD42c 
HSD42d 
HSD43 
HSD44a 
HSD44b 
HSD44c 
HSD45 
HSD46a 
HSD46b 
HSD46c 
HSD47 
HSD48a 
HSD48b 
HSD48c 
HSD49 
HSD50 
HSD51 
HSD52 
HSD53a
HSD53b
HSD53c 
HSD54a 
HSD54b 
HSD54c 
HSD54d 
HSD54e 
HSD54f 
HSD54g 
HSD54h 
HSD54i 
HSD54j 
HSD54k 
HSD54l 
HSD54m 
HSD54n 
HSD54o
HSD54p 
HSD54q 
HSD55 
HSD56a 
HSD56b 
HSD56c 
HSD56d 
HSD56e 
HSD56f 
HSD56g 
HSD56h 
HSD56i 
HSD56j 
HSD57a 
HSD57b 
HSD57c 
HSD57d 
HSD57e 
HSD57f 
HSD57g 
HSD57h 
HSD57i 
HSD57j 
HSD57k 
HSD57l 
HSD57m 
HSD57n 
HSD57o 
HSD57p 
HSD57q 
HSD57r 
HSD57s 
HSD57t 
HSD57u 
HSD57v 
HSD58 
HSD59 
HSD60 
HSD61 

HSD63a 
HSD63b 
HSD64a 
HSD65 
HSD66 
HSD67 
HSD68 
HSD69a 
HSD69b 
HSD69c 
HSD69d 
HSD69e 
HSD69f 
HSD69g 
HSD69h 
HSD69i 
HSD69j 
HSD69k 
HSD69l 
HSD69m 
HSD69n 
HSD69o 
HSD69p 
HSD69q
HSD69r 
HSD70a 
HSD70b
HSD70c
HSD70d 
HSD70e 
HSD70f 
HSD70g 
HSD70h 
HSD70i 
HSD70j 
HSD71a 
HSD71b 
HSD71c 
HSD71d 
HSD71e 
HSD71f 
HSD71g 
HSD71h 
HSD71i 
HSD71j 
HSD71k 
HSD71l 
HSD71m 
HSD71n 
HSD71o 
HSD71p 
HSD71q 
HSD71r 
HSD71s 
HSD71t 
HSD71u 
HSD71v 
HSD71w 
HSD71x 
HSD71y 
HSD71z 
HSD71aa 
HSD72a 
HSD72b 
HSD72c 
HSD72d 
HSD74a 
HSD74b 
HSD74c 
HSD74d 
HSD74e 
HSD77_1 
HSD77_2 
HSD77_3 
HSD77_4 
HSD77_5 
HSD77_6 
HSD77_7 
HSD78 
HSD79a 
HSD79b 
HSD79c 
HSD79d 
HSD79e 
HSD79f
HSD79g 
HSD79h 
HSD79i 
HSD79j 
HSD80a 
HSD80b 
HSD80c 
HSD80d 
HSD80e 
HSD80f 
HSD80g 
HSD80h 
HSD80i 
HSD80j 
HSD80k 
HSD80l 
HSD80m 
HSD80n 
HSD80o 
HSD80p 
HSD81a 
HSD81b 
HSD81c 
HSD81d 
HSD81e 
HSD81f 
HSD81g 
HSD81h 
HSD81i 
HSD81j 
HSD82 
HSD83 
HSD84_1 
HSD84_2 
HSD84_3 
 
HSD86_1 
HSD86_2 
HSD86_3 
HSD87 
HSD88_1 
HSD88_2 
HSD88_3 
HSD89_1 
HSD89_2 
HSD89_3 
HSD89_4 
HSD89_5 
HSD89_6 
HSD89_7 
HSD90a 
HSD90b 
HSD90c 
HSD91a 
HSD91c 
HSD91d 
YESNO.

HSD4
HSD4HE.

HSD6 
HSD6HE.

HSD8 
HSD8HE.

HSD10
HSD10HE.

HSD11 
HSD11HE.

HSD12 
HSD12HE.

HSD13 
HSD13HE.

HSD14 
HSD14HE.

HSD19 
HSD21
HSD23 
HSD19HE. 

HSD20 
HSD22 
HSD24 
HSD20HE.

HSD27a 
HSD27b 
HSD27c 
HSD27d 
HSD27e 
HSD27HE.

HSD73 
HSD73HE.

HSD30b 
HSD30c 
HSD64b 
HSD91b 
YESNONA.

HSD62
HSD62F.

HSD85
HSD85F.

SAMPSTRA
SAMPSTRAFD.

HSD38
HSD38F.
;
***********************************
*  Assign labels to SAS variables.*
***********************************;
LABEL
STCMSID	=	'STCMSID - State CMS ID'	
STATENAME	=	'STATENAME - State Name'	
DISTCMSID	=	'DISTCMSID - District CMS ID'	
DISTWT	=	'DISTWT -  Analysis Weight for District'	
PSU	=	'PSU -  Sampled Primary Sampling Unit'	
SAMPSTRA	=	'SAMPSTRA -  Stratum 1-Urbanicity and Poverty'	
CTYPE	=	'CTYPE - Web - Paper Complete Module1'	
RTITLE	=	'RTITLE - RESPONDENT TITLE MODULE1'	
HSD1a	=	'HSD1a - Student record - Phys hlth hist'	
HSD1b	=	'HSD1b - Student record - Emot/MH hist'	
HSD1c	=	'HSD1c - Student record - TB screening'	
HSD1d	=	'HSD1d - Student record - Other screening records'	
HSD1e	=	'HSD1e - Student record - Meds needs'	
HSD1f	=	'HSD1f - Student record - Dietary needs/restrictions'	
HSD1g	=	'HSD1g - Student record - Severe food/other allergies'	
HSD1h	=	'HSD1h - Student record - PA restriction '	
HSD1i	=	'HSD1i - Student record - Asthma action plans'	
HSD1j	=	'HSD1j - Student record - Emergency contact info'	
HSD1k	=	'HSD1k - Student record - Authorization for emergency tx'	
HSD1l	=	'HSD1l - Student record - Ins coverage info'	
HSD1m	=	'HSD1m - Student record - Student weight status'	
HSD1n	=	'HSD1n - Student record - Student abs'	
HSD2	=	'HSD2 - Student influenza vaccine'	
HSD3a	=	'HSD3a - K/first grade vaccine - Second measles'	
HSD3b	=	'HSD3b - K/first grade vaccine - Polio '	
HSD3c	=	'HSD3c - K/first grade vaccine - Pertussis'	
HSD3d	=	'HSD3d - K/first grade vaccine - Tetanus'	
HSD3e	=	'HSD3e - K/first grade vaccine - Hepatitis A'	
HSD3f	=	'HSD3f - K/first grade vaccine - Hepatitis B'	
HSD3g	=	'HSD3g - K/first grade vaccine - Chicken pox'	
HSD4	=	'HSD4 - K/first grade student excl w/o req immun'	
HSD5a	=	'HSD5a - MS vaccine - Second measles'	
HSD5b	=	'HSD5b - MS vaccine - Hepatitis A'	
HSD5c	=	'HSD5c - MS vaccine - Hepatitis B'	
HSD5d	=	'HSD5d - MS vaccine - Chicken pox'	
HSD5e	=	'HSD5e - MS vaccine - Tdap'	
HSD5f	=	'HSD5f - MS vaccine - Meningococcal conjugate'	
HSD5g	=	'HSD5g - MS vaccine - HPV'	
HSD6	=	'HSD6 - MS student excl w/o req immun'	
HSD7a	=	'HSD7a - HS vaccine - Second measles'	
HSD7b	=	'HSD7b - HS vaccine - Hepatitis A'	
HSD7c	=	'HSD7c - HS vaccine - Hepatitis B'	
HSD7d	=	'HSD7d - HS vaccine - Chicken pox'	
HSD7e	=	'HSD7e - HS vaccine - Tdap'	
HSD7f	=	'HSD7f - HS vaccine - Meningococcal conjugate'	
HSD7g	=	'HSD7g - HS vaccine - HPV'	
HSD8	=	'HSD8 - HS student excl w/o req immun'	
HSD9a	=	'HSD9a - Immun exempt - Medical'	
HSD9b	=	'HSD9b - Immun exempt - Religious'	
HSD9c	=	'HSD9c - Immun exempt - Personal belief '	
HSD10	=	'HSD10 - TB screening - Prior to K/first grade '	
HSD11	=	'HSD11 - TB testing - Prior to K/first grade'	
HSD12	=	'HSD12 - TB screening - After school entry'	
HSD13	=	'HSD13 - TB testing - After school entry'	
HSD14	=	'HSD14 - Method accept evidence of neg TB test'	
HSD15a	=	'HSD15a - Carry/self admin - Rx quick - relief inhaler'	
HSD15b	=	'HSD15b - Carry/self admin - EpiPen'	
HSD15c	=	'HSD15c - Carry/self admin - Insulin/injected med'	
HSD15d	=	'HSD15d - Carry/self admin - Other prescribed med'	
HSD15e	=	'HSD15e - Carry/self admin - OTC med'	
HSD16a	=	'HSD16a - Who may admin Rx meds to student'	
HSD16b	=	'HSD16b - Who may admin OTC meds to student'	
HSD17a	=	'HSD17a - Not lic hlthcare prof - Rx meds - Must be lic/cert to admin'	
HAS17b	=	'HAS17b - Not lic hlthcare prof - Rx meds - Must be train to admin'	
HSD18a	=	'HSD18a - Not lic hlthcare prof - OTC - Must be lic/cert to admin'	
HSD18b	=	'HSD18b - Not lic hlthcare prof - OTC - Must be train to admin'	
HSD19	=	'HSD19 - Written instr from physician/prescriber before admin rx meds'	
HSD20	=	'HSD20 - Written instr from physician/prescriber before admin OTC meds'	
HSD21	=	'HSD21 - Written req from parent/guardian before admin rx meds '	
HSD22	=	'HSD22 - Written req from parent/guardian before admin OTC meds '	
HSD23	=	'HSD23 - Written info on side effects before admin rx meds'	
HSD24	=	'HSD24 - Written info on side effects before admin OTC meds '	
HSD25_1	=	'HSD25_1 - HSV funding from school dist budget '	
HSD25_2	=	'HSD25_2 - HSV funding from Medicaid'	
HSD25_3	=	'HSD25_3 - HSV funding from SCHIP'	
HSD25_4	=	'HSD25_4 - HSV funding from private ins'	
HSD25_5	=	'HSD25_5 - HSV funding from public grants'	
HSD25_6	=	'HSD25_6 - HSV funding from private grants'	
HSD25_7	=	'HSD25_7 - HSV funding from other'	
HSD26	=	'HSD26 - Schools serve as Medicaid provider'	
HSD27a	=	'HSD27a - Dist HSV staff w HE staff'	
HSD27b	=	'HSD27b - Dist HSV staff w PE staff'	
HSD27c	=	'HSD27c - Dist HSV staff w nutr staff'	
HSD27d	=	'HSD27d - Dist HSV staff w MH/SS staff'	
HSD27e	=	'HSD27e - Dist HSV staff w SBHC staff'	
HSD28a	=	'HSD28a - Dist HSV staff w hlth org'	
HSD28b	=	'HSD28b - Dist HSV staff w local hlth dept'	
HSD28c	=	'HSD28c - Dist HSV staff w local MH/SS agency'	
HSD28d	=	'HSD28d - Dist HSV staff w juv jus dept'	
HSD28e	=	'HSD28e - Dist HSV staff w local college/university'	
HSD28f	=	'HSD28f - Dist HSV staff w local business'	
HSD28g	=	'HSD28g - Dist staff w local child welfare agency'	
HSD28h	=	'HSD28h - Dist HSV staff w local hosp'	
HSD28i	=	'HSD28i - Dist HSV staff w local service club'	
HSD28j	=	'HSD28j - Dist HSV staff w cmty hlthcare provider'	
HSD29	=	'HSD29 - Dist prov families w info on HSV'	
HSD30a	=	'HSD30a - Dist eval - School HSV prog'	
HSD30b	=	'HSD30b - Dist eval - School HSV pol'	
HSD30c	=	'HSD30c - Dist eval - Prof dev/in-service HSV staff'	
HSD30d	=	'HSD30d - Dist eval - Student use HSV'	
HSD30e	=	'HSD30e - Dist eval - Student/family satisfaction w HSV'	
HSD31	=	'HSD31 - School report after student injury'	
HSD32a	=	'HSD32a - Injury report - Location where injury occurred'	
HSD32b	=	'HSD32b - Injury report - Activ during injury'	
HSD32c	=	'HSD32c - Injury report - Nature of injury'	
HSD32d	=	'HSD32d - Injury report - School staff present'	
HSD32e	=	'HSD32e - Injury report - Cause'	
HSD32f	=	'HSD32f - Injury report - Response of school staff'	
HSD32g	=	'HSD32g - Injury report - Immediate outcome of injury'	
HSD33	=	'HSD33 - Submit injury report'	
HSD34	=	'HSD34 - School report serious illness'	
HSD35	=	'HSD35 - Report - Notifiable diseases '	
HSD36	=	'HSD36 - Submit weight status data'	
HSD37	=	'HSD37 - Dist has real - time access info'	
HSD38	=	'HSD38 - How often dist/school submit info'	
HSD39	=	'HSD39 - Abs reasons reported '	
HSD40	=	'HSD40 - Rec specific electronic system'	
HSD41	=	'HSD41 - Req to close/dismiss when abs reach specified level '	
HSD42a	=	'HSD42a - Supplies - Classroom'	
HSD42b	=	'HSD42b - Supplies - Gym/playground/playing field'	
HSD42c	=	'HSD42c - Supplies - Cafeteria'	
HSD42d	=	'HSD42d - Supplies - School buses '	
HSD43	=	'HSD43 - Hearing screening'	
HSD44a	=	'HSD44a - Parent notified when hearing prob'	
HSD44b	=	'HSD44b - Teacher notified when hearing prob'	
HSD44c	=	'HSD44c - Ref prov when hearing prob'	
HSD45	=	'HSD45 - Vision screening'	
HSD46a	=	'HSD46a - Parents notified when vision prob'	
HSD46b	=	'HSD46b - Teacher notified when vision prob'	
HSD46c	=	'HSD46c - Ref prov when vision prob'	
HSD47	=	'HSD47 - Oral hlth screening'	
HSD48a	=	'HSD48a - Parents notified when oral hlth prob'	
HSD48b	=	'HSD48b - Teacher notified when oral hlth prob'	
HSD48c	=	'HSD48c - Ref prov when oral hlth prob'	
HSD49	=	'HSD49 - Weight status/BMI screening '	
HSD50	=	'HSD50 - Parents notified when weight status prob'	
HSd51	=	'HSD51 - Ref prov when weight status prob'	
HSd52	=	'HSD52 - MH screening'	
HSD53a	=	'HSD53a - Parent notified when MH prob'	
HSD53b	=	'HSD53b - Teacher notified when MH prob'	
HSD53c	=	'HSD53c - Ref prov when MH prob'	
HSD54a	=	'HSD54a - Services - First aid'	
HSD54b	=	'HSD54b - Services - CPR'	
HSD54c	=	'HSD54c - Services - Admin of meds'	
HSD54d	=	'HSD54d - Services - Seasonal influenza vaccine'	
HSD54e	=	'HSD54e - Services - Other immun'	
HSD54f	=	'HSD54f - Services - ID/School based mgmt of acute illnesses'	
HSD54g	=	'HSD54g - Services - ID/School based mgmt of chronic hlth conditions'	
HSD54h	=	'HSD54h - Services - Tracking chronic hlth conditions'	
HSD54i	=	'HSD54i - Services - Case mgmt chronic hlth conditions'	
HSD54j	=	'HSD54j - Services - Case mgmt disabilities'	
HSD54k	=	'HSD54k - Services - Sports physicals '	
HSD54l	=	'HSD54l - Services - Oral hlth prob'	
HSD54m	=	'HSD54m - Services - Topical fluorides'	
HSD54n	=	'HSD54n - Services - Dental sealants'	
HSD54o	=	'HSD54o - Services - Prenatal care ref'	
HSD54p	=	'HSD54p - Services - ID/Tx STDs'	
HSD54q	=	'HSD54q - Services - Contraceptives'	
HSD55	=	'HSD55 - MS/HS will make condoms available to students '	
HSD56a	=	'HSD56a - Services - Nutr/dietary behav counseling'	
HSD56b	=	'HSD56b - Services - PA/Fitness counseling'	
HSD56c	=	'HSD56c - Services - Preg prev '	
HSD56d	=	'HSD56d - Services - HIV prev'	
HSD56e	=	'HSD56e - Services - STD prev'	
HSD56f	=	'HSD56f - Services - Suicide prev'	
HSD56g	=	'HSD56g - Services - Tobacco use prev'	
HSD56h	=	'HSD56h - Services - Alcohol/drug use prev'	
HSD56i	=	'HSD56i - Services - Violence prev'	
HSD56j	=	'HSD56j - Services - Injury prev/safety counseling'	
HSD57a	=	'HSD57a - Services - Self-mgmt of chronic hlth conditions'	
HSD57b	=	'HSD57b - Services - Ref for chronic hlth conditions'	
HSD57c	=	'HSD57c - Services - Tobacco use cessation'	
HSD57d	=	'HSD57d - Services - Alcohol/drug use tx'	
HSD57e	=	'HSD57e - Services - Counseling after natural disaster'	
HSD57f	=	'HSD57f - Services - Crisis intervention for personal prob'	
HSD57g	=	'HSD57g - Services - ID emot/behav disorders'	
HSD57h	=	'HSD57h - Services - Counseling emot/behav disorders'	
HSD57i	=	'HSD57i - Services - Stress mgmt'	
HSD57j	=	'HSD57j - Services - Weight mgmt'	
HSD57k	=	'HSD57k - Services - Eating disorder ID/ref'	
HSD57l	=	'HSD57l - Services - HIV counseling/testing/ref'	
HSD57m	=	'HSD57m - Services - Phys/sexual/emot abuse ID/ref'	
HSD57n	=	'HSD57n - Services - Family prob ID/ref'	
HSD57o	=	'HSD57o - Services - After-school prog ref'	
HSD57p	=	'HSD57p - Services - Child care ref'	
HSD57q	=	'HSD57q - Services - LGBT services'	
HSD57r	=	'HSD57r - Services - WIC enrollment/food stamps/banks'	
HSD57s	=	'HSD57s - Services - Temporary/permanent housing'	
HSD57t	=	'HSD57t - Services - Medicaid/SCHIP'	
HSD57u	=	'HSD57u - Services - Accessing benefits students w/ disab'	
HSD57v	=	'HSD57v - Services - Job readiness skills prog'	
HSD58	=	'HSD58 - Nurses will develop IEP'	
HSD59	=	'HSD59 - Nurses will develop IHP'	
HSD60	=	'HSD60 - Nurses will develop 504 plans'	
HSD61	=	'HSD61 - HSV staff will follow DNR orders'	
HSD62	=	'HSD62 - Min level of ed req for newly hired school nurse'	
HSD62SPEC	=	'HSD62SPEC - Min level of ed req for newly hired school nurse (Specify)'	
HSD63a	=	'HSD63a - New hire will have LPN lic'	
HSD63b	=	'HSD63b - New hire will have RN lic'	
HSD64a	=	'HSD64a - New hire will have NBCSN'	
HSD64b	=	'HSD64b - St school nurse cert'	
HSD65	=	'HSD65 - School nurses req to earn cont ed credits '	
HSD66	=	'HSD66 - Maximum student to nurse ratio'	
HSD67	=	'HSD67 - Each school will have specified ratio '	
HSD68	=	'HSD68 - Each school has HSV coord '	
HSD69a	=	'HSD69a - Prof dev - First aid'	
HSD69b	=	'HSD69b - Prof dev - CPR'	
HSD69c	=	'HSD69c - Prof dev - Med admin'	
HSD69d	=	'HSD69d - Prof dev - Seasonal influenza vaccine'	
HSD69e	=	'HSD69e - Prof dev - Other immun'	
HSD69f	=	'HSD69f - Prof dev - ID/school based mgmt acute illnesses'	
HSD69g	=	'HSD69g - Prof dev - ID/school based mgmt chronic hlth conditions'	
HSD69h	=	'HSD69h - Prof dev - Tracking chronic hlth conditions '	
HSD69i	=	'HSD69i - Prof dev - Case mgmt chronic hlth conditions'	
HSD69j	=	'HSD69j - Prof dev - Case mgmt disabilities'	
HSD69k	=	'HSD69k - Prof dev - Sports physicals'	
HSD69l	=	'HSD69l - Prof dev - Oral hlth prob'	
HSD69m	=	'HSD69m - Prof dev - Topical fluorides'	
HSD69n	=	'HSD69n - Prof dev - Dental sealants'	
HSD69o	=	'HSD69o - Prof dev - Prenatal care'	
HSD69p	=	'HSD69p - Prof dev - ID/tx/ref of STDs'	
HSD69q	=	'HSD69q - Prof dev - Contraceptives'	
HSD69r	=	'HSD69r - Prof dev - Infectious disease prev'	
HSD70a	=	'HSD70a - Prof dev - Nutr/dietary behav counseling'	
HSD70b	=	'HSD70b - Prof dev - PA/fitness counseling'	
HSD70c	=	'HSD70c - Prof dev - Preg prev'	
HSD70d	=	'HSD70d - Prof dev - HIV prev'	
HSD70e	=	'HSD70e - Prof dev - STD prev'	
HSD70f	=	'HSD70f - Prof dev - Suicide prev'	
HSD70g	=	'HSD70g - Prof dev - Tobacco use prev'	
HSD70h	=	'HSD70h - Prof dev - Alcohol/drug use prev'	
HSD70i	=	'HSD70i - Prof dev - Violence prev'	
HSD70j	=	'HSD70j - Prof dev - Injury prev/safety counseling'	
HSD71a	=	'HSD71a - Prof dev - Self - mgmt chronic hlth conditions'	
HSD71b	=	'HSD71b - Prof dev - Ref for chronic hlth conditions'	
HSD71c	=	'HSD71c - Prof dev - Tobacco use cessation'	
HSD71d	=	'HSD71d - Prof dev - Alcohol/drug use tx'	
HSD71e	=	'HSD71e - Prof dev - Counseling after natural disaster'	
HSD71f	=	'HSD71f - Prof dev - Crisis intervention for personal prob'	
HSD71g	=	'HSD71g - Prof dev - Emergency preparedness'	
HSD71h	=	'HSD71h - Prof dev - ID emot/behav disorders'	
HSD71i	=	'HSD71i - Prof dev - Counseling emot/behav disorders '	
HSD71j	=	'HSD71j - Prof dev - Stress mgmt'	
HSD71k	=	'HSD71k - Prof dev - Weight mgmt'	
HSD71l	=	'HSD71l - Prof dev - Eating disorder ID/ref'	
HSD71m	=	'HSD71m - Prof dev - HIV counseling/testing/ref'	
HSD71n	=	'HSD71n - Prof dev - Phys/sexual/emot abuse ID/ref'	
HSD71o	=	'HSD71o - Prof dev - Family prob ID/ref'	
HSD71p	=	'HSD71p - Prof dev - After - school prog'	
HSD71q	=	'HSD71q - Prof dev - Child care options'	
HSD71r	=	'HSD71r - Prof dev - LGBT services'	
HSD71s	=	'HSD71s - Prof dev - WIC enrollment/food stamp/bank'	
HSD71t	=	'HSD71t - Prof dev - Temporary/permanent housing'	
HSD71u	=	'HSD71u - Prof dev - Medicaid/SCHIP '	
HSD71v	=	'HSD71v - Prof dev - Accessing benefits students w disab'	
HSD71w	=	'HSD71w - Prof dev - Job readiness skills prog'	
HSD71x	=	'HSD71x - Prof dev - Infectious disease outbreak detection/response'	
HSD71y	=	'HSD71y - Prof dev - Federal laws protecting privacy'	
HSD71z	=	'HSD71z - Prof dev - Measuring student height/weight'	
HSD71aa	=	'HSD71aa - Prof dev - Calculating student weight status using BMI'	
HSD72a	=	'HSD72a - Nurses employ by school dist'	
HSD72b	=	'HSD72b - Nurses employ by school'	
HSD72c	=	'HSD72c - Nurses employ by local hlth dept'	
HSD72d	=	'HSD72d - Nurse employ Other org/agency'	
HSD73	=	'HSD73 - Health aides supervised by RN'	
HSD74a	=	'HSD74a - Prof dev (non nurse) - CPR or AED use'	
HSD74b	=	'HSD74b - Prof dev (non nurse) - HIV/AIDS'	
HSD74c	=	'HSD74c - Prof dev (non nurse) - Severe food/other allergies'	
HSD74d	=	'HSD74d - Prof dev (non nurse) - Chronic hlth conditions'	
HSD74e	=	'HSD74e - Prof dev (non nurse) - Infectious disease prev'	
HSD75	=	'HSD75 - Number of SBHC that offer HSV'	
HSD76	=	'HSD76 - Number of SBHC that offer MHSS'	
HSD77_1	=	'HSD77_1 - SBHC funded by dist budget'	
HSD77_2	=	'HSD77_2 - SBHC funded by Medicaid'	
HSD77_3	=	'HSD77_3 - SBHC funded by SCHIP'	
HSD77_4	=	'HSD77_4 - SBHC funded by private insurance'	
HSD77_5	=	'HSD77_5 - SBHC funded by public grants'	
HSD77_6	=	'HSD77_6 - SBHC funded by private grants'	
HSD77_7	=	'HSD77_7 - SBHC funded by other'	
HSD78	=	'HSD78 - Dist has arrange to prov HSV at other sites'	
HSD79a	=	'HSD79a - Arrange w - School - linked hlth center'	
HSD79b	=	'HSD79b - Arrange w - Community hlth clinic/center '	
HSD79c	=	'HSD79c - Arrange w - Local hlth dept'	
HSD79d	=	'HSD79d - Arrange w - Local hosp'	
HSD79e	=	'HSD79e - Arrange w - Local MH/SS agency'	
HSD79f	=	'HSD79f - Arrange w - University/medical school/nursing school'	
HSD79g	=	'HSD79g - Arrange w - Dental/dental hygiene school'	
HSD79h	=	'HSD79h - Arrange w - Managed care org'	
HSD79i	=	'HSD79i - Arrange w - Private physician'	
HSD79j	=	'HSD79j - Arrange w - Private dentist'	
HSD80a	=	'HSD80a - HSV other sites - Primary care'	
HSD80b	=	'HSD80b - HSV other sites - Rx for med'	
HSD80c	=	'HSD80c - HSV other sites - Seasonal influenza vaccine'	
HSD80d	=	'HSD80d - HSV other sites - Other immun '	
HSD80e	=	'HSD80e - HSV other sites - ID/school - based mgmt of acute illnesses'	
HSD80f	=	'HSD80f - HSV other sites - ID/school - based mgmt of chronic hlth conditions'	
HSD80g	=	'HSD80g - HSV other sites - Case mgmt chronic hlth conditions'	
HSD80h	=	'HSD80h - HSV other sites - Case mgmt disabilities'	
HSD80i	=	'HSD80i - HSV other sites - Sports physicals'	
HSD80j	=	'HSD80j - HSV other sites - Oral hlth/oral hlthcare ref'	
HSD80k	=	'HSD80k - HSV other sites - Topical fluorides'	
HSD80l	=	'HSD80l - HSV other sites -  Dental sealants'	
HSD80m	=	'HSD80m - HSV other sites - Lab tests'	
HSD80n	=	'HSD80n - HSV other sites - Prenatal care/prenatal care ref'	
HSD80o	=	'HSD80o - HSV other sites - ID/tx/ref for STD'	
HSD80p	=	'HSD80p - HSV other sites - Contraceptives'	
HSD81a	=	'HSD81a - HSV other sites - Nutr/dietary behav counseling'	
HSD81b	=	'HSD81b - HSV other sites - PA/fitness counseling'	
HSD81c	=	'HSD81c - HSV other sites - Preg prev'	
HSD81d	=	'HSD81d - HSV other sites - HIV prev'	
HSD81e	=	'HSD81e - HSV other sites - STD prev'	
HSD81f	=	'HSD81f - HSV other sites - Suicide prev'	
HSD81g	=	'HSD81g - HSV other sites - Tobacco use prev'	
HSD81h	=	'HSD81h - HSV other sites - Alcohol/drug use prev'	
HSD81i	=	'HSD81i - HSV other sites - Violence prev'	
HSD81j	=	'HSD81j - HSV other sites - Injury prev/safety counseling'	
HSD82	=	'HSD82 - Dist person oversees/coordinate HSV'	
HSD83	=	'HSD83 - R is person'	
HSD84_1	=	'HSD84_1 - R works for school dist'	
HSD84_2	=	'HSD84_2 - R works for local hlth dept'	
HSD84_3	=	'HSD84_3 - R works for other (Specify)'	
HSD84_3SPEC	=	'HSD84_3SPEC - Specify'	
HSD85	=	'HSD85 - Highest grade/years ed completed'	
HSD86_1	=	'HSD86_1 - R major - Nursing'	
HSD86_2	=	'HSD86_2 - R major - Ed'	
HSD86_3	=	'HSD86_3 - R major - Other (Specify)'	
HSD86_3SPEC	=	'HSD86_3SPEC - R major - Specify'	
HSD87	=	'HSD87 - R has undergrad minor'	
HSD88_1	=	'HSD88_1 - R minor - Nursing'	
HSD88_2	=	'HSD88_2 - R minor - Ed'	
HSD88_3	=	'HSD88_3 - R minor - Other (Specify)'	
HSD88_3SPEC	=	'HSD88_3SPEC - R minor - Specify'	
HSD89_1	=	'HSD89_1 - R grad degree - Nursing'	
HSD89_2	=	'HSD89_2 - R grad degree - Public Health'	
HSD89_3	=	'HSD89_3 - R grad degree - Biology/Other science'	
HSD89_4	=	'HSD89_4 - R grad degree - Hlthcare admin/business'	
HSD89_5	=	'HSD89_5 - R grad degree - Counseling/Psychology/Social work'	
HSD89_6	=	'HSD89_6 - R grad degree - Ed'	
HSD89_7	=	'HSD89_7 - R grad degree - Other (Specify)'	
HSD89_7SPEC	=	'HSD89_7SPEC - Specify'	
HSD90a	=	'HSD90a - LPN lic'	
HSD90b	=	'HSD90b - RN lic'	
HSD90c	=	'HSD90c - CNP lic'	
HSD91a	=	'HSD91a - NBCSN cert'	
HSD91b	=	'HSD91b - St school nurse cert'	
HSD91c	=	'HSD91c - ANCC cert'	
HSD91d	=	'HSD91d - Other cert'	
HSD91dSPEC	=	'HSD91dSPEC - Other cert (Specify)	'
;
run;
