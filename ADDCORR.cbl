      ******************************************************************
      * Author:RODRIGO ORLANDO
      * Date:
      * Purpose: ADDCORR
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADDCORRR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
         01 WS-REG-1.
           03 WS-CODIGO                  PIC 9(02).
           03 WS-NOME                    PIC X(20).
           03 WS-TEL                     PIC X(20).

         01 WS-REG-2.
           03 WS-CODIGO                  PIC 9(02).
           03 WS-NOME                    PIC X(20).
           03 WS-TEL                     PIC X(20).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           MOVE '01CARLOS GOMES9514-1234' TO  WS-REG-1
           MOVE 02                        TO WS-CODIGO OF WS-REG-2

           DISPLAY WS-REG-1
           DISPLAY WS-REG-2

           ADD CORR WS-REG-1                      TO WS-REG-2
           *>ADD WS-CODIGO OF WS-REG-1      TO WS-CODIGO OF WS-REG-2
           *>MOVE WS-NOME OF WS-REG-1        TO WS-NOME OF WS-REG-2
           *>MOVE WS-TEL OF WS-REG-1         TO WS-TEL OF WS-REG-2

           DISPLAY WS-REG-1
           DISPLAY WS-REG-2

           *> USAR (ADD) EM APENAS VALORES NUMERICOS
           *> USAR (MOVE) PARA ALFANUMERICOS
           *> O MOVE IRA SUBSTITUIR A CARGA DO DESTINO
           *> O ADDCORR VAI PRESERVAR A CARGA MAS SÓ SERVE PARA NUMERICOS
            STOP RUN.
       END PROGRAM ADDCORRR.
