*>****************************************************************
*> Author:
*> Date:
*> Purpose:
*> Tectonics: cobc
*>****************************************************************
IDENTIFICATION DIVISION.
PROGRAM-ID. YOUR-PROGRAM-NAME.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
77 WS-NUM-1                   PIC 99 VALUE 0.
77 WS-NUM-2                   PIC 99 VALUE 0.
01 WS-PAGTO                   PIC X VALUE 'N'.
   88 WS-CONFIRM              VALUE 'S' FALSE'N'.
PROCEDURE DIVISION.
MAIN-PROCEDURE.

     DISPLAY 'SITUACAO DO PAGTO ATUAL.......: ' WS-PAGTO
     SET WS-CONFIRM         TO TRUE

     DISPLAY 'NOVA SITUACAO DO PAGTO ATUAL......: ' WS-PAGTO
     SET WS-CONFIRM         TO FALSE
     DISPLAY 'SITUACAO DO PAGTO CORRIGIDO......: ' WS-PAGTO

    STOP RUN.
END PROGRAM YOUR-PROGRAM-NAME.
