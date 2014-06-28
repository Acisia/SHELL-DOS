cls
REM **************************************************
REM  Extrait les films du plus ancien au plus recent
REM **************************************************
@echo off
set PathDrive=%1
set RepRacine=%~dp0
set FicFilm=filmLst.log
set RepResult=%RepRacine%RESULTAT
REM **TEST LECTEUR ET CHEMIN********************************************
IF "%1"=="" GOTO ErrDrive 
ECHO Le lecteur est : "%1"
IF NOT exist "%RepResult%\*.*" MKDIR "%RepResult%"

Goto START
  


:START
ECHO ------------ DEBUT DU TRAITEMENT --------------------
REM tri par ordre de type de fichier, date du plus recent au moins recent
ECHO --
ECHO -- DEBUT -- ECRITURE dans fichier %RepResult%\%FicFilm%
ECHO --
ECHO -- ...
ECHO --
dir /oE-D %PathDrive% > "%RepResult%\%FicFilm%"
ECHO -- FIN --  ECRITURE dans fichier %RepResult%\%FicFilm%
ECHO --
ECHO ------------ FIN DU TRAITEMENT -----------------------
ECHO -- 
ECHO --  Lire fichier %RepResult%\%FicFilm%
ECHO -- 
ECHO -------------------------------------------------------

goto END
:ERRCASE


:ErrDrive
ECHO ------------ ERREUR --------------------
ECHO   -- Entrez le lecteur en parametre.
ECHO   -- ex : film.cmd z:
ECHO -----------------------------------------
:END
