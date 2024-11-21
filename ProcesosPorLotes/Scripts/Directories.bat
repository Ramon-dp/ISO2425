@echo off
REM Script de Entregable
REM Autor: Ramón Díez Parejo
REM Fecha: 20-11-2024
echo Eliga una opcion
echo Pulse 1 si quieres crear un fichero.
echo Pulse 2 si quieres ver el arbol de directorios de la carpeta usuario.
echo Pulse 3 si quieres ver todos los achivos con la extension .txt en el directorio actual.
echo Pulse 4 si quieres crear los siguentes directorios (alfredoff, marinapg, ramonam) en tu directorio actual.
echo Pulse 5 si quieres copiar el contenido de la carpeta usuario a la carpeta Copia.
echo Pulse 6 Para cancelar.
set /p elec=
if %elec% == 1 goto crefic
if %elec% == 2 goto arbdir
if %elec% == 3 goto verext
if %elec% == 4 goto credir
if %elec% == 5 goto copcar
if %elec% == 6 goto ext
:crefic
cls
set /p nomfic="Indica el nombre del fichero: "
mkdir %nomfic%
echo La creacion del fichero se a completado.
pause
exit

:arbdir
cls
echo Este es el directorio de %username%:
tree %userprofile%
pause
exit

:verext
cls
echo Estos son todos los archivos con extension .txt de tu directorio actual:
dir *.txt
pause
exit

:credir
cls
echo Creando los directorios alfredoff, marinapg y ramonam en el directorio actual
mkdir alfredoff marinapg ramonam
dir .
pause
exit

:copcar
cls
echo Ejecutando copia de la carpeta de usuario a Copia:
xcopy /e %userprofile% C:\Copia
pause
exit

:ext
exit
