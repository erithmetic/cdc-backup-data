***********************************************************************************
* FILE NAME:     TRANSPRT.SAS                                                     *
* DESCRIPTION:   THIS PROGRAM CONVERTS A SAS TRANSPORT FILE LOCATED AT <TRANSPRT> *
*                LIBNAME, INTO A SAS DATABASE STORED AT <DATAOUT> LIBREF          *
* REFERENCES:                                                                     *
* INPUT       DATAIN           FILEREF OF TRANSPORT DATAFILE OF COMPLETES         *
* OUTPUT      DATAOUT.SASDATA  SAS DATABASE VERSION OF TRANSPORT DATA AS          *
*                              SPECIFIED IN <TRANSPRT> LIBNAME                    *
* UPDATED - 01/13/2006                                                            *
***********************************************************************************;
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
******************************************************
* INSTRUCTIONS:                                      *
* SPECIFY PATH OF WHERE TRANSPORT DATAFILE IS STORED *
* SPECIFY PATH OF WHERE SAS DATASET IS TO BE STORED  *
******************************************************;

*LIBNAME TRANSPRT XPORT '<FOLDER WHERE SAS TRANSPORT FILE IS STORED>';
*****************************************************************************
* EXAMPLE:                                                                  *
*       LIBNAME TRANSPRT XPORT  'C:\BRFSS\2005\CDBRFS05.XPT'                *
* NOTE: MAKE SURE THE ASTERISK IS REMOVED BEFORE THE WORD LIBNAME AND       *
*       MAKE SURE THAT THE GREATER THAN AND LESS THAN SIGNS < > ARE REMOVED *
*       FROM THE FILENAME STATEMENT                                         *
*       THE QUOTATION MARKS MUST BE THERE FOR THE PROGRAM TO WORK           *
*****************************************************************************;

*LIBNAME DATAOUT V7 '<PATH OF PERMANENTLY STORED SAS DATASET VERSION OF DATAIN FILEREF>'  ;
*****************************************************************************
* EXAMPLE:                                                                  *
*          LIBNAME DATAOUT 'C:\'                                            *
*          A SAS DATABASE WILL BE STORED AT C:\SASDATA.SAS7BDAT             *
* NOTE: MAKE SURE THE ASTERISK IS REMOVED BEFORE THE WORD LIBNAME AND       *
*       MAKE SURE THAT THE GREATER THAN AND LESS THAN SIGNS < > ARE REMOVED *
*       FROM THE LIBNAME STATEMENT                                          *
*       THE QUOTATION MARKS MUST BE THERE FOR THE PROGRAM TO WORK           *
*****************************************************************************;

PROC COPY IN=TRANSPRT OUT=DATAOUT;
RUN;
