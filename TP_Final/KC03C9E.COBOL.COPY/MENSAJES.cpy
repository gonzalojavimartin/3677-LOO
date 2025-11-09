000010*****************************************************************
000020* COPYBOOK: MENSAJES                                          *
000030* PROPOSITO: MENSAJES DE ERROR E INFORMATIVOS                 *
000040* AUTOR: KC03C9E                                              *
000050* FECHA: 09/11/2025                                           *
000060* VERSION: 1.0                                                *
000070*****************************************************************
000080* DEFINICION DE MENSAJES DE ERROR                             *
000090*****************************************************************
001000 01 MENSAJES-ERROR.
001010    05 MSG-ERR-CODIGO   PIC X(60)
001020       VALUE 'ERROR: CODIGO OBLIGATORIO O INVALIDO'.
001030    05 MSG-ERR-TITULO   PIC X(60)
001040       VALUE 'ERROR: TITULO OBLIGATORIO'.
001050    05 MSG-ERR-AUTOR    PIC X(60)
001060       VALUE 'ERROR: AUTOR OBLIGATORIO'.
001070    05 MSG-ERR-STOCK    PIC X(60)
001080       VALUE 'ERROR: STOCK INVALIDO'.
000090*****************************************************************
000100* DEFINICION DE MENSAJES INFORMATIVOS                         *
000110*****************************************************************
001100 01 MENSAJES-INFORMATIVOS.
001110    05 MSG-OK-CARGA     PIC X(60)
001120       VALUE 'CARGA FINALIZADA SIN ERRORES'.
001130    05 MSG-OK-PARCIAL   PIC X(60)
001140       VALUE 'CARGA FINALIZADA CON ALGUNOS ERRORES'.
001150    05 MSG-INI-CARGA    PIC X(60)
001160       VALUE 'INICIANDO CARGA DE LIBROS...'.
