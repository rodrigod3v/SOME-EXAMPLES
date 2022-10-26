      ******************************************************************
      * Author: RODRIGO ORLANDO
      * Date:15/10/2022
      * Purpose: STUDY
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-TM1                  PIC 99.
       77 WS-TM2                  PIC 99.
       COPY 'LAYOUT001'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE 'RODRIGO'               TO WS-PRIMEIRO-NOME
            MOVE 'CAMPOS'                TO WS-ULTIMO-NOME
            MOVE '5511983844405'         TO WS-TELEFONE
            MOVE 'RUA DEZ, 03'           TO WS-RUA
            MOVE 'SAO JOSE'              TO WS-BAIRRO
            MOVE 'SAO PAULO'             TO WS-CIDADE
            MOVE 'SP'                    TO WS-UF
            MOVE '05818122'              TO WS-CEP
            MOVE 'BR'                    TO WS-NACIONALIDADE
            MOVE 'PEDREIRO'              TO WS-PROFISSAO

           MOVE ZEROS                    TO WS-TM1
            INSPECT FUNCTION REVERSE (WS-PRIMEIRO-NOME)
                      TALLYING WS-TM1 FOR LEADING ' '

           DISPLAY '1 - NOME COMPLETO: '  WS-PRIMEIRO-NOME
               (1:(FUNCTION LENGTH(WS-PRIMEIRO-NOME) - WS-TM1))
                                                 ' '
                                                 WS-ULTIMO-NOME

           DISPLAY '2 - TELEFONE: '       '+' WS-PAIS ' '
                                          '(' WS-DDD ')'
                                          ' ' WS-PREFIXO
                                          '-'
                                              WS-SUFIXO

           MOVE ZEROS                    TO WS-TM1
            INSPECT FUNCTION REVERSE (WS-RUA)
                      TALLYING WS-TM1 FOR LEADING ' '

           MOVE ZEROS                    TO WS-TM2
            INSPECT FUNCTION REVERSE (WS-CIDADE)
                      TALLYING WS-TM2 FOR LEADING ' '


           DISPLAY '3 - ENDERECO: '       WS-RUA
           (1:(FUNCTION LENGTH(WS-RUA) - WS-TM1))
                                          ' '
                                          WS-BAIRRO
                                          WS-CIDADE
            (1:(FUNCTION LENGTH(WS-CIDADE) - WS-TM2))
                                           ' '
                                           WS-UF
            FUNCTION CONCATENATE('- CEP: '
                                           WS-CEP-1
                                           '-'
                                           WS-CEP-2
            )

           DISPLAY '4 - NACIONALIDADE: '  WS-NACIONALIDADE
           DISPLAY '5 - PROFISSAO: '      WS-PROFISSAO





            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
