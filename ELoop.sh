#!/bin/bash
# Este programa es para ir probando los loops
# Voy a aprovechar para usar los if o case para probar todo junto

# Antes de continuar con el siguiente script, separemos esto para que pueda
# Correr los dos script y no se haga quilombo. Para eso voy a usar case y select.
# Para usar select, tengo que armar una lista de tareas. Por ahora tengo dos

Lista="Contar Leer Salir"
# Después modifico el PS3 para que me de un prompt más acorde
PS3="¿Qué tarea tengo que cumplir?: "

select tarea in $Lista
do
	echo
	if [ $tarea = Salir ]
	then
		echo Chau
		break
	else
		case $tarea in
		Contar)
			# Primero hago un script que escriba números del 1 al 10 y que diga
			# si es par o impar.
			for x in {0..10}
			do
				prueba=$(($x%2))
				if [ $prueba -eq 0 ]
				then
					echo $x es par
				else
					echo $x es impar
				fi
			done
			;;
		Leer)
			# Ahora hagamos el segundo script, que es el que va a recibir un
			# directorio según linea de comando y va a printear cada elemento en ese directorio.
			# Si el elemento es otro directorio, me va a decir cuántos elementos hay adentro.
			# Si el elemento es un archivo, me va a decir cuanto pesa.

			test -d "$1"
			directorio=$?

			if [ $directorio -eq 0 ]
			then
				for item in $1/*
				do
					test -d "$item"
					directorio=$?
					test -e "$item"
					archivo=$?

					if [ $directorio -eq 0 ]
					then
						cantidad=$( ls -l "$item" | head -1 | cut -f 2 -d " " )
						nombre=$( basename "$item" )
						echo En el directorio $nombre hay $cantidad elementos
					elif [ $archivo -eq 0 ]
					then
						espacio=$( ls -lh "$item" | uniq | cut -f 5 -d " " )
						nombre=$( basename "$item" )
						echo El archivo $nombre pesa $espacio
					else
						echo Me pasaste algo que no es un directorio
					fi
				done
			else
				echo Lo que me pasaste no es un directorio
			fi
			;;
		esac
	fi
done
