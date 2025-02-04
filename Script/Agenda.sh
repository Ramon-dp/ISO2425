#!/bin/bash
#
# Script: Entregable
# Autor: Ramón Díez Parejo
# Fecha: 04-2-2025

Agen="Agenda/Agenda.txt"

clear

while true; do

clear

	echo "a- Añadir una entrada"
	echo "b- Buscar por DNI"
	echo "c- Ver la agenda completa"
	echo "d- Eliminar todas las entradas de la agenda"
	echo "e- Finalizar"

	read -p "Elige una opcion: " op

	case $op in
		a)
			clear
			read -p "Inserta el DNI de la persona a dar de alta: " dni
			if  grep $dni $Agen >> /dev/null ; then

				echo "Esta persona ya esta inscrita en Agenda"
				read -p "Pulsa enter para continuar"
			else
				read -p "Nombre de la persona: " nombre
				read -p "Apellidos de la persona: " ape
				read -p "Localidad de la persona: " loc

				echo "$dni:$nombre:$ape:$loc" >> $Agen
				echo "Se a completado la inscripcion de $nombre"
				read -p "Pulsa enter para continuar"
			fi
		;;


		b)
			clear
			read -p "Insete el DNI que desea buscar: " dni
			if  grep $dni $Agen > /dev/null ; then

				nombre=$(grep $dni $Agen | cut -d ":" -f 2)
				ape=$(grep $dni $Agen | cut -d ":" -f 3)
				loc=$(grep $dni $Agen | cut -d ":" -f 4)
				echo "El DNI $dni pertenece a $nombre $ape vive en $loc"
				read -p "Pulsa enter para continuar"

			else

				echo "Esta persona no exixte en Agenda"
				read -p "Pulsa enter para continuar"
			fi
		;;


		c)
			clear
			if [ -s $Agen ]; then

				cat $Agen
				read -p "Pulsa enter para continuar"

			else

				echo "Agenda vacía"
				read -p "Pulsa enter para continuar"
			fi
		;;


		d)
			clear
			> $Agen
			echo "Contenido de agenda borrado"
			read -p "Pulsa enter para continuar"
		;;


		e)
			clear
			echo "Saliendo"
			break
		;;


		*)
			clear
			echo "Opcion no valida"
			read -p "Pulsa enter para continuar"
		;;
	esac
done
exit
