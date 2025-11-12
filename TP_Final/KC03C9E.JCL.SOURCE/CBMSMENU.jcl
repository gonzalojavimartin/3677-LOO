//CBMSMENU JOB (ACCT),'COMPILA BIBMENU',CLASS=A,MSGCLASS=X,
//             MSGLEVEL=(1,1),NOTIFY=&SYSUID
//*================================================================*
//* COMPILACION MAPSET BIBMENU USANDO PROC DFHMAPS DE CICS         *
//*================================================================*
//* DFH610.CICS.SDFHPROC --> LIBRERIA DE PROCEDIMIENTOS CICS       *
//* DFHMAPS --> PROCEDIMIENTO PARA COMPILAR MAPAS BMS              *
//*================================================================*
//IBMLIB  JCLLIB ORDER=DFH610.CICS.SDFHPROC
//*------------------------------------------*
//CPLSTP  EXEC DFHMAPS,
//   MAPLIB='KC03C9E.LOAD.LIBRARY',
//   DSCTLIB='KC03C9E.COBOL.COPY',
//   MAPNAME='BIBMENU',
//   INDEX='DFH610.CICS'
//*
//SYSUT1  DD DSN=KC03C9E.BMS.SOURCE(BIBMENU),DISP=SHR
//*------------------------------------------*
//* FIN DE JOB COMPBMS                       *
//*------------------------------------------*
