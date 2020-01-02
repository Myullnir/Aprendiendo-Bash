#!/bin/bash
# Probando el random

# echo $((($RANDOM % 10)+1))

# Lista=( )
# echo La Lista tiene estos elementos ${Lista[*]}
# echo El largo de Lista es ${#Lista[*]}

# for i in {1..9}
# do
	# Lista[$i]=P$i
# done

# echo La Lista tiene estos elementos ${Lista[*]}
# echo El largo de Lista es ${#Lista[*]}

# Lista=( )
# echo La Lista tiene estos elementos ${Lista[*]}
# echo El largo de Lista es ${#Lista[*]}


for i in {1..9}
do
	Lista[$i]=P$i
done

largo=9

while [ $largo -gt 1 ]
do
	PosibleJugada=( )
	j=0
	for i in {1..9}
	do
		if [ -z ${!Lista[$i]} ]
		then
			PosibleJugada[$j]=${Lista[$i]}
			((j++))
		fi
	done

	largo=${#PosibleJugada[*]}
	jugadarand=$(( $RANDOM % $largo ))

	echo jugadarand es $jugadarand
	echo El largo del vector es $largo
	echo Mis posibles jugadas son ${PosibleJugada[*]}
	echo Los índices de mis valores son ${!PosibleJugada[*]}
	echo Debería marcar la casilla ${PosibleJugada[$jugadarand]}
	echo 
	
	case ${PosibleJugada[$jugadarand]} in
	P1)
		P1=O
		# echo Marque la casilla P1
		;;
	P2)
		P2=O
		# echo Marque la casilla P2
		# echo La casilla tiene un $P2
		;;
	P3)
		P3=O
		# echo Marque la casilla P3
		;;
	P4)
		P4=O
		# echo Marque la casilla P4
		# echo La casilla tiene un $P4
		;;
	P5)
		P5=O
		# echo Marque la casilla P5
		;;
	P6)
		P6=O
		# echo Marque la casilla P6
		# echo La casilla tiene un $P6
		;;
	P7)
		P7=O
		# echo Marque la casilla P7
		# echo La casilla tiene un $P7
		;;
	P8)
		P8=O
		# echo Marque la casilla P8
		;;
	P9)
		P9=O
		# echo Marque la casilla P9
		;;
	esac
done
