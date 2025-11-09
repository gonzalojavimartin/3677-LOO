//CBIBMENU JOB (ACCT),'COMPILA BIBMENU',CLASS=A,MSGCLASS=X,
//             MSGLEVEL=(1,1),NOTIFY=&SYSUID
//*--------------------------------------------------------------*
//* COMPILACION COBOL CICS + LINK-EDIT PROGRAMA BIBMENU          *
//* FUENTE : KC03C9E.COBOL.SOURCE(BIBMENU)                       *
//* LOAD   : KC03C9E.LOAD.LIBRARY(BIBMENU)                       *
//*--------------------------------------------------------------*
//* IMPORTANTE: AJUSTAR LAS LIBRERIAS SEGUN EL ENTORNO           *
//*  - &COBOL.SIGYCOMP  : LIBRERIA DEL COMPILADOR COBOL          *
//*  - &CICS.SDFHCOB    : COPYBOOKS CICS (DFHEIBLK, DFHBMSCA)    *
//*  - &CICS.SDFHLOAD   : LOAD CICS PARA LINK-EDIT               *
//*--------------------------------------------------------------*
//COBOL   EXEC PGM=IGYCRCTL,REGION=0M,
//             PARM=('LIB,RENT,APOST,NOSEQ,QUOTE')
//STEPLIB  DD DSN=IGY.SIGYCOMP,DISP=SHR
//*              ^^^^^^^^^^^^ AJUSTAR: LIBRERIA COMPILADOR COBOL
//SYSIN    DD DSN=KC03C9E.COBOL.SOURCE(BIBMENU),DISP=SHR
//SYSLIB   DD DSN=KC03C9E.COBOL.COPY,DISP=SHR
//         DD DSN=CICSTSxx.CICS.SDFHCOB,DISP=SHR
//*              ^^^^^^^^^^^^^^^^^^^^^ AJUSTAR: LIBRERIA COPY CICS
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSUT1   DD UNIT=SYSDA,SPACE=(CYL,(1,1))
//SYSUT2   DD UNIT=SYSDA,SPACE=(CYL,(1,1))
//SYSUT3   DD UNIT=SYSDA,SPACE=(CYL,(1,1))
//SYSUT4   DD UNIT=SYSDA,SPACE=(CYL,(1,1))
//SYSUT5   DD UNIT=SYSDA,SPACE=(CYL,(1,1))
//SYSUT6   DD UNIT=SYSDA,SPACE=(CYL,(1,1))
//SYSUT7   DD UNIT=SYSDA,SPACE=(CYL,(1,1))
//SYSLIN   DD DSN=&&OBJ,
//            DISP=(NEW,PASS),
//            UNIT=SYSDA,
//            SPACE=(CYL,(1,1))
//*--------------------------------------------------------------*
//* LINK-EDIT A LOAD LIBRARY CICS                               *
//*--------------------------------------------------------------*
//LKED    EXEC PGM=HEWL,REGION=0M,PARM='LIST,XREF,RENT',
//             COND=(0,LT,COBOL)
//SYSLIN   DD DSN=&&OBJ,DISP=(OLD,DELETE)
//SYSLMOD  DD DSN=KC03C9E.LOAD.LIBRARY(BIBMENU),DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD UNIT=SYSDA,SPACE=(CYL,(1,1))
//SYSLIB   DD DSN=CICSTSxx.CICS.SDFHLOAD,DISP=SHR
//*              ^^^^^^^^^^^^^^^^^^^^ AJUSTAR: LIBRERIA LOAD CICS
//*--------------------------------------------------------------*
//* FIN JCL CBIBMENU                                            *
//*--------------------------------------------------------------*
