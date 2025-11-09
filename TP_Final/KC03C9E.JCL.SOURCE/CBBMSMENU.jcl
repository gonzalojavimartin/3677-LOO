//CBMSMENU JOB (ACCT),'BMS BIBMENU',CLASS=A,MSGCLASS=X,
//             MSGLEVEL=(1,1),NOTIFY=&SYSUID
//*---------------------------------------------------------------*
//* COMPILACION BMS DEL MAPSET BIBMENU                           *
//* - FUENTE   : KC03C9E.BMS.SOURCE(BIBMENU)                     *
//* - COPY COB : KC03C9E.COBOL.COPY(BIBMENUI)                    *
//* - LOAD     : KC03C9E.LOAD.LIBRARY(BIBMENU)                   *
//*---------------------------------------------------------------*
//* STEP1: ENSAMBLADOR BMS -> GENERA COPY + OBJETO               *
//*---------------------------------------------------------------*
//BMSASM   EXEC PGM=ASMA90,REGION=0M,
//             PARM=('DECK,NOOBJECT')
//SYSLIB   DD  DSN=CICSTSxx.CICS.SDFHMAC,DISP=SHR
//*              ^^^^^^^^^^^^^^^^^^^^^ AJUSTAR: MACROS CICS (DFHMSD,etc)
//SYSIN    DD  DSN=KC03C9E.BMS.SOURCE(BIBMENU),DISP=SHR
//SYSPRINT DD  SYSOUT=*
//SYSPUNCH DD  DSN=KC03C9E.COBOL.COPY(BIBMENUI),
//             DISP=SHR
//*  SYSPUNCH: COPY COBOL CON LAS DEFINICIONES DEL MAPSET
//SYSLIN   DD  DSN=&&OBJ,
//             DISP=(NEW,PASS),
//             UNIT=SYSDA,
//             SPACE=(TRK,(5,2))
//*-----------------------------------------------------------------*
//* STEP2: LINK-EDIT -> MAPSET BIBMENU A LOAD LIBRARY               *
//*-----------------------------------------------------------------*
//LKED     EXEC PGM=IEWL,REGION=0M,PARM='LIST,XREF,RENT',
//             COND=(0,LT,BMSASM)
//SYSLIN   DD  DSN=&&OBJ,DISP=(OLD,DELETE)
//SYSLMOD  DD  DSN=KC03C9E.LOAD.LIBRARY(BIBMENU),DISP=SHR
//SYSPRINT DD  SYSOUT=*
//SYSUT1   DD  UNIT=SYSDA,SPACE=(TRK,(5,2))
//SYSLIB   DD  DSN=CICSTSxx.CICS.SDFHLOAD,DISP=SHR
//*              ^^^^^^^^^^^^^^^^^^^^^^ AJUSTAR: LOADLIB CICS
//*---------------------------------------------------------------*
//* FIN JCL CBMSMENU                                              *
//*---------------------------------------------------------------*
