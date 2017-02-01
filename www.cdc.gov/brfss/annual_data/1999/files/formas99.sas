*1999 FORMAT ASSIGNMENTS;
*THESE ARE THOUGHT TO BE CORRECT BUT SHOULD BE VERIFIED;

proc datasets library=brfss;
modify dbrfs99;
*_STATE                                          $st.;
Format
AGE                                             agegroup.
ALCOHOL                                         alcohol.
ASPUNSAF                                        aspunsaf.
ASTHMA   ASTHNOW  BLDSTOOL BLOODCHO BPHIGH
 CERTDOCT COUNSEL  CURESTRO CVDASPRN CVDCORHD
 CVDEXR02 CVDEXRSK CVDFAT02 CVDFATRK CVDINFAR
 CVDSTROK DICSESTR DOCTLIST DON12MO  DONBLD85
 DRINKANY ENGHFOOD ESTRPILL EXERANY  EXEROTH2
 FAMPLAN                 FOLICACD HADHYST  HADMAM
 HADPAP   HADSIGM  HAVARTH  HEMOGLBN HISPANIC
 HIV12MO  HIVRISK  HIVTST2A HIVTST2B HLTHCOVR
 HLTHPLAN INDOORS  INSULIN  LMTJOINT LOSEWT
 MAINTAIN MEDCOST  MEDICAR2 MOSTCARE MULTIVIT
 NUMHHOLD PAIN12MN PHYACT   PNEUMVAC PREGLST5
 PREGNANT PROFEXAM NOCOV12  RESULTS  SELCPTN3
 SEX1PTN3 SEXBEHA2 SEXCONDM SMOKE100 STDCLIN
 STDTREAT STOPSMOK SUNBURN  SYMTMMTH TEST12MO
 TOBACCO  TOLDHI   TRTARTH  USECOND3 VITAMINS
 WHYASPAN WHYASPHA WHYASPSK _RFSMOK2            prsnfmt.
AVOIDSUN                                        maybe.
BIKEHLMT                                        bikehlmt.
BLDSUGAR                                        bldsugar.
BPTAKE                                          time1f.
BRTHCNTL                                        birthcnt.
BURNTYPE                                        burntype.
CARROTS                                         servings.
CHECKUP CHOLCHK DENCLEAN                        time2f.
CHKHEMO                                         chkhemo.
CHLD04 CHLD0512 CHLD1317                        children.
CHLDLT16 CTYCODE DIABAGE DRINKDRI DRINKGE5      unk2dig.
CHNGDOCT                                        chngdoct.
CONDLAST                                        condlast.
CONDUSE                                         conduse.
CONEFF2                                         coneff.
CURADRS                                         curads.
DIABETES                                        diabetes.
DISPCODE                                        dispfmt.
DISTCARE                                        distcare.
DOCTDIAB                                        doctdiab.
DRADVICE                                        dradvice.
EDUCA                                           educaf.
EMPLOY                                          employa.
ESTRBONE ESTRFLSH ESTRHART                      yesnonvt.
EXERACT1 EXERACT2                               exeractf.
EXERHMM1 EXERHMM2 HEIGHT                        unk3dig.
EXEROFT1 EXEROFT2                               exeroft.
EYEEXAM                                         eyeexam.
FACILIT2                                        facilit.
FEETCHK                                         check.
FEWCAL                                          fewcal.
FLUPROV                                         fluprov.
                         FLUSHOT                  flushot.
FRUIT FRUITJUI GREENSAL VEGETABL POTATOES       servings.
GENHLTH                                         hlthstat.
GETHIV                                          getaids.
GRADE2                                          grade2f.
HIGHGT1                                         toldmore.
HOWLONG LASTPAP LASTUSED LENGEXAM               time3f.
HOWSAFE                                         howsafe.
INCOME2                                         incomeb.
INSLNFRQ                                        inslnfrq.
LASTCHNG                                        lastchng.
LASTDEN2 LSTBLDST LASTSIGM                      time2f.
LASTSMOK                                        lastsmok.
LSTPREG LSTPREG2                                lstpreg.
MARITAL                                         maritalf.
MCRELNGT                                        mcrelngt.
MENTHLTH NALCOCC                                unk2dig.
NEWPARTN                                        sexintmn.
NMCLSFRD                                        nfrie.
NOPRIMCR                                        noprimcr.
NUMBDOC2                                        numbdoct.
NUMBURN                                         numburn.
NUMPHONS                                        numphons.
ORACE                                           racegrp.
PASTMENO                                        menofmt.
PASTPLAN                                        time1f.
PCSAIDS PCSALCH PCSDRGAB PCSEATHB PCSEXER
 PCSINJPV PCSSMOK                               long.
PHYSHLTH POORHLTH SMOKNM30                      unk2dig.
PRIMCARE                                        primcare.
RATECARE                                        ratecare.
REASEXAM                                        whydone.
RECOMMEN                                        reasons.
RENTHOME                                        renthome.
RMVTEETH                                        rmvteeth.
RSNNOBC                                         rsnnobc.
RSNNOCOV RSNWOCOV                               rsnnocov.
RSNTST2                                         whytest.
SEX                                             sexfmt.
SEXINTMN                                        sexintmn.
SMKDAYCR SMKINDOR SMKREST SMKSCHLS              smkplace.
SMKDETE2                                        smoktest.
SMKPUBLC                                        smkpublc.
SMKWORK                                         smkwork.
SMOKEDAY                                        smokeday.
SMOKENUM                                        smokenum.
SPFNUM                                          spfnum.
SUNBLOCK                                        sunblock.
SUNHAT SUNWEAR                                  maybe.
SUNSENS                                         sunsens.
TAKEVIT                                         supple.
TYPCNTRL                                        typcntrl.
TYPCOVR1 TYPCOVR2                               typcovr.
TYPEARTH                                        typearth.
USEEVER USENOW                                  use.
VISIONTV VISNDIST VISNREAD                      visnlmtd.
WEIGHT WTDESIRE                                 weight.
WHRSVCS                                         whrsvcs.
WHRTST3                                         testaids.
WHYDONE                                         whydone.
WHYPAP                                          whypap.
WINDDOWN                                        winddown.
_AGE65YR _AGE65YR.
_AGEG _AGEG.
_AGEG_ AGEGFMT.
_AGEG5YR _AGEG5YR.
_BPCHECK BPCHECK.
_CHOLCHK _CHOLCHK.
_FRTINDX FRTINDX.
_QSTVER _QSTVER.
_RACEG _RACEG2.
_RACEG2_ _RACEG2.
_RACEGR _RACEGR.
_RFDRDRI _RFDRDRI.
_RFLIFES _RFLIFES.
_RFOBESE _RFOBESE.
_RFSMOK2 _RFSMOK.
_RFTOBAC _RFTOBAC.
_RFWHBMI _RFWHBMI.
_SEXG_ SEXFMT.
_SMKLESS _SMKLESS.
_SMOKER2 _SMOKER.
_STATE _STATE.
_TOTINDX _TOTINDX.
;

