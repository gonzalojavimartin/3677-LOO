//CBIBMENU JOB (ACCT),'BIBMENU CICS',CLASS=A,MSGCLASS=X,MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID
//*------------------------------------------------------------*
//* COMPILAR Y LINKEDITAR PROGRAMA COBOL CICS BIBMENU          *
//* 1) PRECOMPILACION CICS (DFHECP1$)                          *
//* 2) COMPILACION COBOL (IGYWCL)                              *
//*------------------------------------------------------------*
//* ETAPA 1: PRECOMPILACION CICS                               *
//*------------------------------------------------------------*
//PRECOMP  EXEC PGM=DFHECP1$,REGION=4M
//STEPLIB  DD DSN=DFH610.CICS.SDFHLOAD,DISP=SHR
//SYSPRINT DD SYSOUT=*
//*  Fuente original con EXEC CICS
//SYSIN    DD DSN=KC03C9E.COBOL.SOURCE(BIBMENU),DISP=SHR
//*  Libreria de macros CICS (DFHMSD/DFHCOMMAREA/etc.)
//SYSLIB   DD DSN=DFH610.CICS.SDFHMAC,DISP=SHR
//*  Salida precompilada (fuente COBOL puro)
//SYSPUNCH DD DSN=&&COBTEMP,UNIT=VIO,SPACE=(CYL,(1,1)),
//            DISP=(NEW,PASS)
//SYSUT1   DD UNIT=VIO,SPACE=(CYL,(1,1))
//*----------------------------------------------------------------*
//* ETAPA 2: COMPILACION COBOL DEL FUENTE YA PRECOMPILADO          *
//*----------------------------------------------------------------*
//COBOL    EXEC IGYWCL,PARM.COBOL='MAP,XREF,LIST,LIB,RENT,APOST'
//*  COPYBOOKS PROPIOS + COPY CICS (segun tu instalacion)
//COBOL.SYSLIB   DD DSN=KC03C9E.COBOL.COPY,DISP=SHR
//               DD DSN=DFH610.CICS.SDFHCOB,DISP=SHR
//*  Fuente de entrada = salida de la precompilacion
//COBOL.SYSIN    DD DSN=&&COBTEMP,DISP=(OLD,DELETE)
//*  LOAD FINAL DE BIBMENU
//LKED.SYSLMOD   DD DSN=KC03C9E.LOAD.LIBRARY(BIBMENU),DISP=SHR
//LKED.SYSLIB    DD DSN=DFH610.CICS.SDFHLOAD,DISP=SHR
//LKED.SYSIN     DD *
 INCLUDE SYSLIB(DFHEAI)
 NAME BIBMENU(R)
/*
//*------------------------------------------------------------*
//* FIN COMPILACION CICS COBOL BIBMENU                         *
//*------------------------------------------------------------*