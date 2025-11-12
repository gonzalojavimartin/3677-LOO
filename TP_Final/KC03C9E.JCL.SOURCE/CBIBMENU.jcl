//CBIBMENU JOB (ACCT),'COMPILA BIBMENU',CLASS=A,MSGCLASS=X,
//             MSGLEVEL=(1,1),NOTIFY=&SYSUID
//*--------------------------------------------------------------*
//* COMPILACION + LINK-EDIT PROGRAMA CICS BIBMENU                *
//* USANDO EL PROC IGYWCL (MISMO ENTORNO QUE CARGINI)            *
//*--------------------------------------------------------------*
//*STEP1   EXEC IGYWCL
//STEP1   EXEC IGYWCL,PARM.COBOL='CICS,LIB,RENT,APOST,NOSEQ'
//*-- FUENTE COBOL ----------------------------------------------*
//COBOL.SYSIN    DD DSN=KC03C9E.COBOL.SOURCE(BIBMENU),DISP=SHR
//*-- COPYBOOKS (MAPSET Y OTROS) --------------------------------*
//COBOL.SYSLIB   DD DSN=KC03C9E.COBOL.COPY,DISP=SHR
//               DD DSN=DFH610.CICS.SDFHCOB,DISP=SHR
//*-- LOAD MODULE DE SALIDA -------------------------------------*
//LKED.SYSLMOD   DD DSN=KC03C9E.LOAD.LIBRARY(BIBMENU),DISP=SHR
//*-- LIBRERIAS CICS PARA EL LINK-EDIT --------------------------*
//LKED.SYSLIB    DD DSN=DFH610.CICS.SDFHLOAD,DISP=SHR