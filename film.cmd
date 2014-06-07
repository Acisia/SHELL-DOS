cls
REM **************************************************
REM  Extrait les films du plus ancien au plus recent
REM **************************************************
@echo off
set PathDrive=%1
IF "%1"=="" GOTO ErrDrive
Echo Le lecteur est : "%1"
Goto START
  
set RepRacine=%cd%\
set FicFilm=filmLst.log


:START
@echo ------------ DEBUT DU TRAITEMENT --------------------
REM tri par ordre de type de fichier, date du plus recent au moins recent
dir /oE-D %PathDrive%

@echo ------------ FIN DU TRAITEMENT --------------------

goto END
:ERRCASE


:ErrDrive
@echo ------------ ERREUR --------------------
@echo   -- Entrez le lecteur en parametre.

:END
