000010*****************************************************************
000020* COPYBOOK: LINREP                                            *
000030* PROPOSITO: ESTRUCTURA DE LINEAS PARA REPORTES DE CARGA      *
000040* AUTOR: KC03C9E                                              *
000050* FECHA: 09/11/2025                                           *
000060* VERSION: 1.0                                                *
000070*****************************************************************
000080* ESTRUCTURA DE LINEAS DE CABECERA Y DETALLE DEL REPORTE      *
000090*****************************************************************
001000 01 LINEA-CABECERA.
001010    05 FILLER           PIC X(40)
001020       VALUE 'REPORTE DE CARGA INICIAL DE LIBROS'.
001030    05 FILLER           PIC X(93) VALUE SPACES.
001100 01 LINEA-DETALLE.
001110    05 LIN-CODIGO       PIC X(10).
001120    05 FILLER           PIC X VALUE ' '.
001130    05 LIN-TITULO       PIC X(40).
001140    05 FILLER           PIC X VALUE ' '.
001150    05 LIN-RESULTADO    PIC X(20).
001160    05 FILLER           PIC X(61) VALUE SPACES.
