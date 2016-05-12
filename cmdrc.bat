@echo off

rem Add PyCmd to PATH
set PATH=%PATH%;%USERPROFILE%\AppData\Local\PyCmd

rem Add bin directories
set PATH=%PATH%;C:\bin;%USERPROFILE%\bin

rem Add python directory
set PATH=%PATH%;%USERPROFILE%\AppData\Local\Programs\Python\Python35

rem Add perl directory
set PATH=%PATH%;C:\Strawberry\perl\bin

rem Add php7 directory
set PATH=%PATH%;C:\php7

rem Add apache2 directory
set PATH=%PATH%;C:\apache2\bin

set PATH=%PATH%;"C:\Program Files\Sublime Text 3"

if /i "%PYCMD_RUNNING%" EQU "" (

    set PYCMD_RUNNING=0
)

rem Zmian wygl¹du na uniksowy

rem prompt adam@adam-laptop: $p$g

if /i "%PYCMD_RUNNING%" EQU "1" (
   goto :EOF
)

set PYCMD_RUNNING=1

doskey composer=php %USERPROFILE%\composer.phar

pycmd.exe

