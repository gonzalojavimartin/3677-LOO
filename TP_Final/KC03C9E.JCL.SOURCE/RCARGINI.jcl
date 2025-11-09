//RCARGINI JOB (ACCT),'EJECUTA CARGINI',CLASS=A,MSGCLASS=X,
//             MSGLEVEL=(1,1),NOTIFY=&SYSUID
//*------------------------------------------------------------*
//* Explicacion:                                               *
//*  DDIN, DDOUT, DDREP coinciden con los ASSIGN TO del cobol. *
//*  DISP=(MOD,CATLG,DELETE) el maestro permite agregar/recrear*
//*  DISP=(NEW,CATLG,DELETE) el reporte lo crea limpio         *
//*------------------------------------------------------------*
//* EJECUCION DEL PROGRAMA CARGINI                             *
//*------------------------------------------------------------*
//STEP1    EXEC PGM=CARGINI
//STEPLIB  DD DSN=KC03C9E.LOAD.LIBRARY,DISP=SHR
//*------------------------------------------------------------*
//* ARCHIVO DE ENTRADA DE LIBROS (DDIN)                        *
//*------------------------------------------------------------*
//DDIN     DD DSN=KC03C9E.DATA.INPUT,DISP=SHR
//*------------------------------------------------------------*
//* ARCHIVO MAESTRO DE LIBROS (DDOUT)                          *
//*------------------------------------------------------------*
//DDOUT    DD DSN=KC03C9E.DATA.LIBROS,
//            DISP=(MOD,CATLG,DELETE),
//            SPACE=(TRK,(5,2)),UNIT=SYSDA,
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=0)
//*------------------------------------------------------------*
//* ARCHIVO DE REPORTE (DDREP)                                 *
//*------------------------------------------------------------*
//DDREP    DD DSN=KC03C9E.REPORTES.OUTPUT,
//            DISP=OLD,
//            SPACE=(TRK,(5,2)),UNIT=SYSDA,
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0)
//*------------------------------------------------------------*
//* SYSOUT DE MENSAJES                                          *
//*------------------------------------------------------------*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*------------------------------------------------------------*
