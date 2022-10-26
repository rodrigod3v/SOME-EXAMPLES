*>****************************************************************
*> Author:
*> Date:
*> Purpose:
*> Tectonics: cobc
*>****************************************************************
IDENTIFICATION DIVISION.
PROGRAM-ID. REKT.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
77 WS-TESTE       PIC X(10) VALUE ' MENSAGEM' .
PROCEDURE DIVISION.
MAIN-PROCEDURE.
    DISPLAY "HULLED BRO, REKT " 45 WS-TESTE
    STOP RUN.
END PROGRAM REKT.
