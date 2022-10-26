      ******************************************************************
      * Author:Rodrigo Orlando
      * Date:23/10/2022
      * Purpose:cadastrar contatos
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CADCONTT.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
                SELECT CONTATOS ASSIGN TO
                'C:\Users\777\Desktop\ESTUDOS\CADCONTT\CONT.TXT'
                ORGANISATION IS SEQUENTIAL
                ACCESS MODE IS SEQUENTIAL
                FILE STATUS IS WS-FS.

       DATA DIVISION.
       FILE SECTION.
       FD CONTATOS.
           COPY DB_CONTT.

       WORKING-STORAGE SECTION.
         01 WS-REGISTRO                     PIC X(32) VALUE SPACES.
         01 FILLER REDEFINES WS-REGISTRO.
           03 WS-ID-CONTATO                 PIC 9(02).
           03 WS-NM-CONTATO                 PIC X(30).
         77 WS-FS                                   PIC 99.
           88 FS-OK                                VALUE 0.
         77 WS-EOF                          PIC X.
           88 EOF-OK                        VALUE 'S' FALSE 'N'.
         77 WS-EXIT                         PIC X     VALUE 'N'.
           88 EXIT-OK                       VALUE 'N' FALSE 'S'.
       PROCEDURE DIVISION.

       MAIN-PROCEDURE.
           DISPLAY '*** CADASTRO DE CONTATO ***'
           SET EXIT-OK               TO FALSE
           PERFORM P300-CADASTRA     THRU P300-FIM UNTIL EXIT-OK
           PERFORM P900-FIM
           .

       P300-CADASTRA.
           SET EOF-OK               TO FALSE
           SET FS-OK                TO TRUE

           DISPLAY 'PARA REGISTRAR CONTATO, INFORME: '
           DISPLAY 'NUMERO PARA INDENTIFICACAO:'
           ACCEPT WS-ID-CONTATO
           DISPLAY 'NOME DO CONTATO: '
           ACCEPT WS-NM-CONTATO
           DISPLAY 'DESEJA CONTINUAR? <S> - <N>'
           ACCEPT WS-EXIT

           OPEN EXTEND CONTATOS

           IF WS-FS EQUAL 35 THEN
               OPEN OUTPUT CONTATOS
           END-IF

           IF FS-OK  THEN
            MOVE WS-ID-CONTATO            TO ID-CONTATO
            MOVE WS-NM-CONTATO            TO NM-CONTATO

            WRITE REG-CONTATOS
            DISPLAY 'CONTATO SALVO COM SUCESSO!'
            ELSE
            DISPLAY 'ERRO AO ABRIR O ARQUIVO DE CONTATOS'
            DISPLAY 'FILE STATUS: ' WS-FS

            CLOSE CONTATOS

            END-IF
           .


       P300-FIM.
       P900-FIM.


            STOP RUN.
       END PROGRAM CADCONTT.
