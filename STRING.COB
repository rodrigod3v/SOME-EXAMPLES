*>****************************************************************
*> Author:
*> Date:
*> Purpose:
*> Tectonics: cobc
*>****************************************************************
IDENTIFICATION DIVISION.
PROGRAM-ID. STRING1.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
77 WS-CONTEUDO                   PIC X(30) VALUE SPACES.
77 WS-TEXTO                   PIC X(40) VALUE SPACES.
77 WS-PONTEIRO                PIC X(40) VALUE SPACES.
PROCEDURE DIVISION.


*> -------forma   1
      INITIALISE WS-CONTEUDO
                 WS-TEXTO

                 STRING
       'ANDRE'
       ' '
       'COSTA'
       DELIMITED BY SIZE INTO WS-CONTEUDO

     END-STRING

     DISPLAY WS-CONTEUDO

*>---------------- FORMA 2
           INITIALISE WS-CONTEUDO
                      WS-TEXTO

      MOVE 'O ANDRE COSTA ESTA ESTUDANDO' TO WS-TEXTO

      STRING
       WS-TEXTO(1:7)
           ' '
       WS-TEXTO(15:4)
           ' '
       WS-TEXTO(20:9)
       DELIMITED BY SIZE INTO WS-CONTEUDO

     END-STRING


     DISPLAY WS-CONTEUDO

*>---------------- FORMA 3
           INITIALISE WS-CONTEUDO
                      WS-TEXTO

      MOVE 'O ANDRE COSTA ESTA ESTUDANDO' TO WS-TEXTO

      STRING
       WS-TEXTO
       DELIMITED BY 'R' INTO WS-CONTEUDO

     END-STRING


     DISPLAY WS-CONTEUDO

*>---------------- FORMA 4 PONTEIRO
           INITIALISE WS-CONTEUDO
                      WS-TEXTO

      MOVE 'O            ESTA MINISTRANDO O CURSO' TO WS-TEXTO
      SET WS-PONTEIRO                              TO 3

STRING
       'ANDRE COSTA'
       DELIMITED BY SIZE INTO WS-TEXTO
       WITH POINTER WS-PONTEIRO
 END-STRING


     DISPLAY WS-TEXTO

    STOP RUN.
END PROGRAM STRING1.
