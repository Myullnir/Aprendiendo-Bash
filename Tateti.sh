#!/bin/bash
# Vamos a hacer un tateti
echo Juguemos un Tateti

# Con esto se elige quien empieza. El jugador siempre es la X
moneda=$(( $RANDOM % 2 ))

echo Tiramos una moneda para decidir quien empieza
echo "Elegí, ¿Cara o Cruz?"
select resultado in Cara Cruz
do
	if [ $resultado = Cara ]
	then
		resultado=0
		if [ $resultado -eq $moneda ]
		then
			echo Comienza el jugador
			Turno=X
			break
		else
			echo Comienza la máquina
			Turno=O
			break
		fi
	elif [ $resultado = Cruz ]
	then
		resultado=1
		if [ $resultado -eq $moneda ]
		then
			echo Comienza el jugador
			Turno=X
			break
		else
			echo Comienza la máquina
			Turno=O
			break
		fi
	fi
done
##################################################################
# Armo la lista de variables que voy a usar
for i in {1..9}
do
	Lista[$i]=P$i
done

# Si la condición de victoria quedó de antes, borrala así jugamos
if [ -s Ganar.vic ]
then
	rm Ganar.vic
fi
##################################################################

# Esto es por si comienza primero la máquina
if [ $Turno = O ] 
then
	j=0
	PosibleJugada=( )
	for i in {1..9}
	do
		if [ -z ${!Lista[$i]} ]
		then
			PosibleJugada[$j]=${Lista[$i]}
			((j++))
		fi
	done
	largo=${#PosibleJugada[*]}
	jugadarand=$(( $RANDOM % $largo))
	echo Debería marcar la casilla ${PosibleJugada[$jugadarand]}
	echo Mis posibles jugadas son ${PosibleJugada[*]}
	echo Los índices de mis jugadas son ${!PosibleJugada[*]}
	echo Mi elección es la componente del vector $jugadarand 
	case ${PosibleJugada[$jugadarand]} in
	P1)
		P1=O
		echo La casilla P1 tiene un $P1
		;;
	P2)
		P2=O
		echo La casilla P2 tiene un $P2
		;;
	P3)
		P3=O
		echo La casilla P3 tiene un $P3
		;;
	P4)
		P4=O
		echo La casilla P4 tiene un $P4
		;;
	P5)
		P5=O
		echo La casilla P5 tiene un $P5
		;;
	P6)
		P6=O
		echo La casilla P6 tiene un $P6
		;;
	P7)
		P7=O
		echo La casilla P7 tiene un $P7
		;;
	P8)
		P8=O
		echo La casilla P8 tiene un $P8
		;;
	P9)
		P9=O
		echo La casilla P9 tiene un $P9
		;;
	esac
	Turno=X
fi

echo

echo "	${P1-1}	|	${P2-2}	|	${P3-3}	"
echo ------------------------------------------------------
echo "	${P4-4}	|	${P5-5}	|	${P6-6}	"
echo ------------------------------------------------------
echo "	${P7-7}	|	${P8-8}	|	${P9-9}	"


##################################################################
Posiciones="1 2 3 4 5 6 7 8 9 Salida"

PS3="Elegí que posición marcar: "
select jugada in $Posiciones
do
	if [ $Turno = X ]
	then
		if [ $jugada = Salida ]
		then
			echo Termino en empate
			break
		fi
		case $jugada in
		1)
			if [ -z $P1 ]
			then
				P1=$Turno
				if [ $Turno = X ]
				then
					Turno=O
				else
					Turno=X
				fi
			fi
			;;
		2)
			if [ -z $P2 ]
			then
				P2=$Turno
				if [ $Turno = X ]
				then
					Turno=O
				else
					Turno=X
				fi
			fi
			;;
		3)
			if [ -z $P3 ]
			then
				P3=$Turno
				if [ $Turno = X ]
				then
					Turno=O
				else
					Turno=X
				fi
			fi
			;;
		4)
			if [ -z $P4 ]
			then
				P4=$Turno
				if [ $Turno = X ]
				then
					Turno=O
				else
					Turno=X
				fi
			fi
			;;
		5)
			if [ -z $P5 ]
			then
				P5=$Turno
				if [ $Turno = X ]
				then
					Turno=O
				else
					Turno=X
				fi
			fi
			;;
		6)
			if [ -z $P6 ]
			then
				P6=$Turno
				if [ $Turno = X ]
				then
					Turno=O
				else
					Turno=X
				fi
			fi
			;;
		7)
			if [ -z $P7 ]
			then
				P7=$Turno
				if [ $Turno = X ]
				then
					Turno=O
				else
					Turno=X
				fi

			fi
			;;
		8)
			if [ -z $P8 ]
			then
				P8=$Turno
				if [ $Turno = X ]
				then
					Turno=O
				else
					Turno=X
				fi

			fi
			;;
		9)
			if [ -z $P9 ]
			then
				P9=$Turno
				if [ $Turno = X ]
				then
					Turno=O
				else
					Turno=X
				fi
			fi
			;;
		esac
	fi
	# Visualizamos la jugada del usuario
	export ${!P*}
	./Vexe.sh
	# Revisamos si el jugador ya gano
	export ${!P*}
	export Turno
	./Gexe.sh
	if [ -s Ganar.vic ]
	then
		cat Ganar.vic
		break
	fi
	
	# Jugada de la máquina
	if [ $Turno = O ] 
	then
		j=0
		PosibleJugada=( )
		for i in {1..9}
		do
			if [ -z ${!Lista[$i]} ]
			then
				PosibleJugada[$j]=${Lista[$i]}
				((j++))
			fi
		done
		largo=${#PosibleJugada[*]}
		jugadarand=$(( $RANDOM % $largo))
		# echo Debería marcar la casilla ${PosibleJugada[$jugadarand]}
		# echo Mis posibles jugadas son ${PosibleJugada[*]}
		# echo Mi elección es la componente del vector $jugadarand
		case ${PosibleJugada[$jugadarand]} in
		P1)
			P1=O
			echo La casilla P1 tiene un $P1
			;;
		P2)
			P2=O
			echo La casilla P2 tiene un $P2
			;;
		P3)
			P3=O
			echo La casilla P3 tiene un $P3
			;;
		P4)
			P4=O
			echo La casilla P4 tiene un $P4
			;;
		P5)
			P5=O
			echo La casilla P5 tiene un $P5
			;;
		P6)
			P6=O
			echo La casilla P6 tiene un $P6
			;;
		P7)
			P7=O
			echo La casilla P7 tiene un $P7
			;;
		P8)
			P8=O
			echo La casilla P8 tiene un $P8
			;;
		P9)
			P9=O
			echo La casilla P9 tiene un $P9
			;;
		esac
		Turno=X
	fi
	# Estas dos lineas llaman a un programa que ejecuta al programa que visualiza
	# La razón de usar un programa intermedio es porque siempre hay que "Rebautizar"
	# Los archivos antes de usarlo, y para poder pasarle las variables fácilmente
	export ${!P*}
	./Vexe.sh

	# Establezcamos las condiciones de victoria
	export ${!P*}
	export Turno
	./Gexe.sh
	if [ -s Ganar.vic ]
	then
		cat Ganar.vic
		break
	fi
done
