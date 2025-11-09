//CCARGINI JOB (ACCT),'COMPILA CARGINI',CLASS=A,MSGCLASS=X,
//             MSGLEVEL=(1,1),NOTIFY=&SYSUID
//*------------------------------------------------------------*
//* COMPILACION Y LINK-EDIT DE CARGINI                         *
//* Explicacion breve:                                         *
//*       IGYWCL es el procedimiento compila y link-edita.     *
//*       COBOL.SYSLIB apunta a tu PDS de copybooks.           *
//*       SYSIN es tu fuente COBOL.                            *
//*       SYSLMOD es el ejecutable que quedara en LOAD.LIBRARY.*
//*------------------------------------------------------------*
//STEP1   EXEC IGYWCL
//COBOL.SYSLIB   DD DSN=KC03C9E.COBOL.COPY,DISP=SHR
//COBOL.SYSIN    DD DSN=KC03C9E.COBOL.SOURCE(CARGINI),DISP=SHR
//LKED.SYSLMOD   DD DSN=KC03C9E.LOAD.LIBRARY(CARGINI),DISP=SHR
//*------------------------------------------------------------*
//* FIN DE COMPILACION                                         *
//*------------------------------------------------------------*
