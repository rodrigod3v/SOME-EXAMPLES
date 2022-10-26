      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
           03 WS-NUM-1                           PIC S9(04)V99.
           03 WS-NUM-2                           PIC S9(04)V99.
           03 WS-TEXTO                           PIC X(20).
           03 WS-STATUS                          PIC 9.
           03 WS-LINHA                           PIC 9.
           03 WS-CODIGO                          PIC 9.
           03 WS-CAMPO                           PIC 99.
           03 WS-DADO                            PIC 99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM P100-INICIALIZA
           PERFORM P500-CALC
           PERFORM P900-FIM

           .
       P000-ERRO.
           DISPLAY 'ERRO DE PROCESSAMENTO.'
           PERFORM P900-FIM
           .

       P100-INICIALIZA.

           INITIALISE WS-VARIAVEIS.

       P500-CALC.

           SET WS-NUM-2                    TO 5
           COMPUTE WS-NUM-1 = WS-NUM-1 + (WS-NUM-2 * 3)
                       ON SIZE ERROR PERFORM P000-ERRO
           END-COMPUTE

           MOVE 'TEXTO'                    TO WS-TEXTO

           IF WS-NUM-2 IS NUMERIC THEN
               DISPLAY 'CAMPO NUMERICO'
           ELSE
               DISPLAY 'CAMPO NAO NUMERICO'
               PERFORM P000-ERRO
           END-IF

           DISPLAY 'INFORME UM VALOR PARA STATUS: '
           ACCEPT WS-STATUS

           IF WS-STATUS = 1
             DISPLAY 'HOMEM'.
           IF WS-STATUS = 2
             DISPLAY 'MULHER'.
           IF WS-STATUS = 3
             DISPLAY 'OUTRO'.
           IF WS-STATUS GREATER 3
             PERFORM P000-ERRO
           END-IF

           DISPLAY 'INFORME O NUMERO DA LINHA: '
           ACCEPT WS-LINHA

           DISPLAY 'INFORME O NUMERO DA CODIGO: '
           ACCEPT WS-CODIGO

           DISPLAY 'INFORME O NUMERO DA CAMPO: '
           ACCEPT WS-CAMPO

           DISPLAY 'INFORME O NUMERO DA DADO: '
           ACCEPT WS-DADO

           IF  WS-LINHA GREATER 30
               DISPLAY 'LINHA MAIOR QUE 30.'
           ELSE

           IF WS-CODIGO = 2
               DISPLAY'OK, CODIGO CORRETO.'
           ELSE

           IF WS-CAMPO NOT LESS WS-DADO
               DISPLAY 'OK.'
           ELSE
               PERFORM P000-ERRO.

           COMPUTE WS-NUM-1 = WS-NUM-2 * -1

           IF WS-NUM-1 IS NEGATIVE THEN
                DISPLAY 'OK, NEGATIVO...'
           ELSE
                DISPLAY 'NAO EH POSITIVO'
           END-IF

           .
       P900-FIM.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
