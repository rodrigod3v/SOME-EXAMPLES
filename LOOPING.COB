      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOPING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
         77 WS-CONTAR               PIC 999.
         77 WS-CONDICAO             PIC 999.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

              DISPLAY 'INFORME ATE QUANDO DESEJAR CONTAR: '
              ACCEPT WS-CONDICAO

                                       *> PARA CONTAR DE 2 EM 2
                                       *> TROCAR 1 BY 1
                                       *> 1 BY 2 PARA CONTAR EM IMPAR
              *> LOGICA 1
              *>PERFORM VARYING WS-CONTAR FROM 1 BY 1 UNTIL
              *> LOGICA 2


              PERFORM WITH TEST BEFORE UNTIL
                              WS-CONTAR GREATER THAN WS-CONDICAO
                              ADD 1     TO WS-CONTAR
                      DISPLAY WS-CONTAR
           END-PERFORM


            STOP RUN.
       END PROGRAM LOOPING.
