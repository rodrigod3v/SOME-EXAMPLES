*>****************************************************************
*> Author:
*> Date:
*> Purpose:
*> Tectonics: cobc
*>****************************************************************
IDENTIFICATION DIVISION.
PROGRAM-ID. NOTAS.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 WS-DATA         PIC X(10) VALUE SPACES.
01 FILLER          REDEFINES WS-DATA.
        03 WS-DATA-DD        PIC 9(02).
        03 FILLER            PIC X.
        03 WS-DATA-MM        PIC 9(02).
        03 FILLER            PIC X.
        03 WS-DATA-AA        PIC 9(04).
        03 FILLER            PIC X.
77 WS-NOME-MES-AUX           PIC X(15) VALUE SPACES.
77 WS-TECLA-AUX              PIC X.
77 WS-TOTAL                  PIC 9(02).
77 FILLER                    PIC X(10) VALUES "11/10/2022".

01 WS-MESES-ANO              PIC 99 VALUE ZEROS.
   88 WS-MES-ATUAL                     VALUE 1 THRU 12.


01 WS-DIAS-MES                  PIC 99 VALUES ZERO.

PROCEDURE DIVISION.
P100-INICIAL.
     DISPLAY "INICIO DO PROCESSAMENTO"


     MOVE "11"               TO WS-DATA(01:02).
     MOVE "/"                TO WS-DATA(03:01).
     MOVE "10"               TO WS-DATA(04:02).
     MOVE "/"                TO WS-DATA(06:01).
     MOVE "2022"             TO WS-DATA(07:04).

MAIN-PROCEDURE.
    DISPLAY WS-DATA.

    *> INSPECT 1 APRENDIDO NA AULA
    *>INSPECT WS-DATA TALLYING WS-TOTAL FOR ALL "/"
    *>BEFORE INITIAL "2022".
    *>DISPLAY "CONTAGEM TOTAL DE CARACTER: " WS-TOTAL.

    INSPECT WS-DATA REPLACING ALL "/" BY "-" AFTER "11".
    DISPLAY WS-DATA

    STOP RUN.
END PROGRAM NOTAS.
