       01  BIBMAINI.
           02  FILLER PIC X(12).
           02  OPTL    COMP  PIC  S9(4).
           02  OPTF    PICTURE X.
           02  FILLER REDEFINES OPTF.
             03 OPTA    PICTURE X.
           02  OPTI  PIC X(2).
           02  MSGTXTL    COMP  PIC  S9(4).
           02  MSGTXTF    PICTURE X.
           02  FILLER REDEFINES MSGTXTF.
             03 MSGTXTA    PICTURE X.
           02  MSGTXTI  PIC X(60).
       01  BIBMAINO REDEFINES BIBMAINI.
           02  FILLER PIC X(12).
           02  FILLER PICTURE X(3).
           02  OPTO  PIC X(2).
           02  FILLER PICTURE X(3).
           02  MSGTXTO  PIC X(60).
