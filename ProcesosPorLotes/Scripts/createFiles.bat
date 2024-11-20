@echo off
REM Script de Entregable
REM Autor: Ramón Díez Parejo
REM Fecha: 20-11-2024
set /p arh="Introduce el nombre del archivo que quieres crear: "
echo Pulsa 1 si quieres crear un archivo .txt
echo Pulsa 2 si quieres crear un archivo .bat
set /p ext=
if %ext% == 1 goto txt
if %ext% == 2 goto bat
:txt
echo > %arh%.txt
echo Resumen de la creacion del archivo: Se ha creado con nombre %arh% y con extension .txt
pause
exit

:bat
echo > %arh%.bat
echo Resumen de la creacion del archivo: Se ha creado con nombre %arh% y con extension .bat
pause
exit
