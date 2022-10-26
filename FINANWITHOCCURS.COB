      ******************************************************************
      * Author: RODRIGO ORLANDO
      * Date:
      * Purpose: OCCURS ARRAY ESTATICO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FINAN2.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
            SPECIAL-NAMES.
                DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
         01 WS-FINANCIAMENTO.
           03 WS-CLIENTE       PIC X(20).
           03 WS-OBJETO        PIC X(20).
           03 WS-VALOR         PIC 9(06)V99.
           03 WS-NUM-PARCELAS  PIC 99.
           03 WS-PARCELAS      PIC 99.999,99 OCCURS 1 TO 420
                               TIMES DEPENDING ON WS-NUM-PARCELAS.

         01 WS-VARIAVEIS.
           03 WS-VR-PARCELAS  PIC 9(05)V99.
           03 WS-IND          PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           INITIALISE WS-VARIAVEIS


           DISPLAY 'INFORME O NOME DO CLIENTE : '
           ACCEPT WS-CLIENTE
           DISPLAY 'INFORME O OBJETIVO FINANCIADO: '
           ACCEPT WS-OBJETO
           DISPLAY 'INFORME O VALOR DO OBJETO : '
           ACCEPT WS-VALOR
           DISPLAY 'INFORME O NUMERO DE PARCELAR : '
           ACCEPT WS-NUM-PARCELAS


           COMPUTE WS-VR-PARCELAS = WS-VALOR / WS-NUM-PARCELAS

           PERFORM UNTIL WS-IND EQUAL WS-NUM-PARCELAS
              ADD 1      TO WS-IND
              MOVE WS-VR-PARCELAS    TO WS-PARCELAS(WS-IND)
           END-PERFORM

           PERFORM VARYING WS-IND FROM 1 BY 1 UNTIL
                                       WS-IND > WS-NUM-PARCELAS
           DISPLAY 'PARCELA ' WS-IND ':' WS-PARCELAS(WS-IND)
           END-PERFORM


            STOP RUN.
       END PROGRAM FINAN2.
