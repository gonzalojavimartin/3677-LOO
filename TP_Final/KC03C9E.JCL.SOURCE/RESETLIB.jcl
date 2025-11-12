//RESETLIB JOB (ACCT),'LIMPIA DATA.LIBROS',CLASS=A,MSGCLASS=X,
//             MSGLEVEL=(1,1),NOTIFY=&SYSUID
//*-------------------------------------------------------------------*
//* OBJETIVO: VACIAR EL ARCHIVO MAESTRO DE LIBROS (DATA.LIBROS)       *
//*-------------------------------------------------------------------*
//STEP1    EXEC PGM=IEBGENER
//SYSUT1   DD DUMMY,
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=0)
//SYSUT2   DD DSN=KC03C9E.DATA.LIBROS,
//            DISP=OLD
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
