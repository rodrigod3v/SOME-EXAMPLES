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
           03 WS-MES                                   PIC 99.
           03 WS-STATUS                                PIC 99.
           03 WS-DIA                                   PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           INITIALISE WS-VARIAVEIS

           DISPLAY 'INFORME UM NUMERO DE MES: '
           ACCEPT WS-MES

           DISPLAY 'INFORME UM NUMERO DE STATUS: '
           ACCEPT WS-STATUS

           DISPLAY 'INFORME O DIA 1 - 3 : '
           ACCEPT WS-DIA


           EVALUATE WS-MES
               WHEN 01
               DISPLAY 'JANEIRO'
                              WHEN 02
               DISPLAY 'FEVEREIRO'
                              WHEN 03
               DISPLAY 'MARCO'
                              WHEN 04
               DISPLAY 'MES INVALIDO'
               END-EVALUATE

           EVALUATE WS-STATUS
           WHEN 1
           DISPLAY 'HOMEM'
                      WHEN 2
           DISPLAY 'MULHER'
                      WHEN 3
           DISPLAY 'OUTRO'
                      WHEN 4
           DISPLAY 'STATUS INVALIDO.'

           END-EVALUATE

                      EVALUATE WS-DIA
           WHEN 1
           DISPLAY 'DIA 1'
                      WHEN 2
           DISPLAY 'DIA 2'
                      WHEN 3
           DISPLAY 'DIA 3'
                      WHEN 4
           DISPLAY 'DATA INVALIDA.'

           END-EVALUATE

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
