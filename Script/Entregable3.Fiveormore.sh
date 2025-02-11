#!/bin/bash
#
#Script: Entregable
#Autor: Ramón Díez Parejo
#Fecha: 11-02-2025

clear

# Este es el control de errores de parametros de entrada

if [ $# -eq 2 ]; then
	echo "Parametros correctos"
#-------------------------------------------------------

# Este es el control de errores de directorio existente

	if [ -d $2 ]; then
		echo "Existe el directorio"
#------------------------------------------------------

# Este es el control de errores de fichero esxistente

		if [ ! -f $2/$1 ]; then
			echo "El fichero no existe"
#----------------------------------------------------

# Este es el control de errores de directorio vacio

ruta=$(ls $2 | wc -l)
			if [ ! $ruta -eq 0 ]; then
				echo "El directorio tiene archivos"
#//////////////////////////////////////////////////

echo "Autor: Ramón Díez Parejo"

for i in $2/*txt; do
	lineas=$(cat $i | wc -l)
	if [ $lineas -ge 5 ]; then
		echo $i
		echo $i >> $1
		Pri=$(cat $i | wc -w)
		echo "El fichero original tiene $pri palabras" > $i.q
		cat $i >> $i.q
	fi
done

num=$(cat $1 | wc -l)
echo "Se han encontrado $num ficheros" >> $1

#//////////////////////////////////////////////////
			else
			echo "El directorio esta vacio"
			exit
			fi
#--------------------------------------------------
		else
		echo "El fichero existe"
		exit
		fi
#----------------------------------------------
	else
	echo "No existe el directorio"
	exit
	fi
#---------------------------------------------
else
echo "No son 2"
exit
fi
