cls
REM **************************************************
REM  Extrait les films du plus ancien au plus recent
REM **************************************************
@echo off
set PathDrive=%1
set RepRacine=%~dp0
set FicFilm=filmLst.log
IF "%1"=="" GOTO ErrDrive
Echo Le lecteur est : "%1"
Goto START
  


:START
ECHO ------------ DEBUT DU TRAITEMENT --------------------
REM tri par ordre de type de fichier, date du plus recent au moins recent
dir /oE-D %PathDrive% > "%RepRacine%%FicFilm%"

ECHO ------------ FIN DU TRAITEMENT --------------------

goto END
:ERRCASE


:ErrDrive
ECHO ------------ ERREUR --------------------
ECHO   -- Entrez le lecteur en parametre.

:END
