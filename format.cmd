cls
REM **************************************************
REM  Modifie les colonnes en ligne
REM **************************************************
@echo off
set PathDrive=%1
set RepRacine=%~dp0
set FicFilm=filmLst.log
set RepResult=%RepRacine%RESULTAT
set NbElement=5
REM **TEST LECTEUR ET CHEMIN********************************************
IF "%1"=="" GOTO ErrDrive  
set FicATraiter=%1

:TESTDOSSIER
ECHO Le fichier est : "%FicATraiter%"
IF NOT exist "%RepResult%\*.*" MKDIR "%RepResult%"

Goto START
  


:START
ECHO ------------ DEBUT DU TRAITEMENT --------------------
REM lit le fichier et formate les colonnes en ligne de X elements
ECHO -- DEBUT --  %RepResult%\%FicATraiter%
REM FOR %%a IN ("RESULTAT\%FicATraiter%") do ( @TYPE	 %%a )
REM @for /f %%s in (%1) do call :Remove "%%s" %2
REM Supprime les 7 premieres lignes
sed 1,7d "%RepResult%\%FicATraiter%" > "%RepResult%\fichier.log"
REM ajouter une ligne blanche à chaque cinq lignes (après lignes  5, 10, 15, 20, etc.)
sed n;n;n;n;G;
REM @goto :end
REM :Remove
REM set s=%1
REM set s=%s:~1,-1%
REM set f=%2
REM set s=%s:\r=,%
REM echo %s% >>%RepResult%\result.log
REM :goto :eof
REM :end
REM FOR %%i IN ("RESULTAT\%FicATraiter%") do @TYPE "%%i"
ECHO -- FIN --  ECRITURE dans fichier %RepResult%\%FicATraiter%

ECHO ------------ FIN DU TRAITEMENT --------------------

goto END
:ERRCASE


:ErrDrive
ECHO ------------ ERREUR --------------------
ECHO   -- Pas de fichier a traiter en parametre.
set FicATraiter=%FicFilm%
Goto TESTDOSSIER

:END

