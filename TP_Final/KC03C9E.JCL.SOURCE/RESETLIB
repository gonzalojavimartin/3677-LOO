//RESETLIB JOB (ACCT),'LIMPIA DATA.LIBROS',CLASS=A,MSGCLASS=X,
//             MSGLEVEL=(1,1),NOTIFY=&SYSUID
//*---------------------------------------------------------------*
//* OBJETIVO: VACIAR EL ARCHIVO MAESTRO DE LIBROS (DATA.LIBROS)   *
//* UTILIZANDO IEBGENER. SE MANTIENE LA ESTRUCTURA ORIGINAL.      *
//*---------------------------------------------------------------*
//STEP1    EXEC PGM=IEBGENER
//SYSUT1   DD DUMMY
//SYSUT2   DD DSN=KC03C9E.DATA.LIBROS,
//            DISP=OLD
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*---------------------------------------------------------------*
//* RESULTADO:                                                    *
//* - DATA.LIBROS QUEDA VACIO, SIN REGISTROS.                     *
//* - SE MANTIENEN LRECL=250 Y FORMATO FB.                        *
//*---------------------------------------------------------------*
