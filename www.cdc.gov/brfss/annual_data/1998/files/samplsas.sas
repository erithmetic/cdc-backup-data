   /*NOTE:     This is PC-based SAS code used in producing Tables for the 1998 Summary
   Prevalence Report */

LIBNAME LIBRARY  "Q:\BRFSS\1998\PROGRAMS\FORMATS";
libname SUMPRV98 'q:\brfss\sasdata\';
libname SUMPRV97 'q:\brfss\sasdata\';
libname SUMPRV96 'q:\brfss\sasdata\';
filename SASCODE "q:\brfss\wcm5\sasworks";
libname STATWM   'c:\sasmaps\';
************* TEST PROGRAM FOR FOR 98 SUMPREV ********************;
OPTIONS SOURCE2 NODATE ;
 %LET VAR1=fewcal;
 DATA RISKFT (KEEP=_STSTR _PSU _RECORD _FINALWT _RFWHBMI MAINTAIN
                                         _STATE SEX  AGE RISK &VAR1 _RFWHBMI PHYACT);
   SET SUMPRV98.DBRFS98;

%MACRO RISKCODE;
***CREATE RISK FACTOR FOR EATING FEWER CALORIES AND/OR LESS FAT;
 RISK=7;
 if _rfwhbmi =2;
   if fewcal in(1,2,3) and phyact in(1) then RISK=2;
     else if fewcal in(1,2,3) and phyact in(2) OR
       fewcal in(4) and phyact in(1,2) then RISK=1;
%MEND RISKCODE;

%LET RISKDATA=TEST98;
%LET DEFRISK='ARE NOT EATING FEWER CALORIES AND/OR LESS FAT AND
EXERCISING TO LOSE WEIGHT';
%LET PAGENO='   ';
%LET TITLAB1='LOSEWT: NOT EATING FEWER CALORIES AND EXERCISING';
%LET TITLAB2='DENOMINATOR EXCLUDES MISSING, DON''T KNOW, AND REFUSED';
%LET OBJ2000='  ';
%INCLUDE SASCODE("SUDTST98");
 %LET REPORTA = TABLE 98.1;
  %SESUTOT;
 %LET REPORTB = TABLE 98.2;
 %LET PAGENO='   ';
 %SEXGRP;
 %LET REPORTC = TABLE 98.3;
 %LET PAGENO='   ';
 %YEARDIF;
  RUN;
