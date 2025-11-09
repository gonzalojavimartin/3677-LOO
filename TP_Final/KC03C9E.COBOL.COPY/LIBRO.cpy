000010*****************************************************************
000020* COPYBOOK: LIBRO                                              *
000030* PROPOSITO: ESTRUCTURA DE DATOS PARA LIBROS                   *
000040* AUTOR: KC03C9E                                               *
000050* FECHA: 09/11/2025                                            *
000060* VERSION: 1.0                                                 *
000070*****************************************************************
000080* ESTRUCTURA PRINCIPAL DEL LIBRO                               *
000090*****************************************************************
001000 01 REG-LIBRO.
001010    05 LIB-CODIGO           PIC X(10).
001020    05 LIB-TITULO           PIC X(60).
001030    05 LIB-AUTOR            PIC X(40).
001040    05 LIB-EDITORIAL        PIC X(30).
001050    05 LIB-CATEGORIA        PIC X(20).
001060    05 LIB-STOCK-TOTAL      PIC 9(3).
001070    05 LIB-STOCK-DISPONIBLE PIC 9(3).
001080    05 LIB-UBICACION        PIC X(10).
001090    05 FILLER               PIC X(74).
