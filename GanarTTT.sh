#!/bin/bash
# Este programa se encarga de revisar si se cumplen las condiciones de victoria

if [ $Turno = X ]
then
	Turno=O
else
	Turno=X
fi

####################################################################
# Primero veamos la condicion horizontal
if [ ! -z $P1 ] && [ ! -z $P2 ] && [ ! -z $P3 ]
	then
	if [ $P1 = $P2 ] && [ $P2 = $P3 ]
	then
		echo Ganaron las $Turno > Ganar.vic
		echo Se Formo una linea horizontal
	fi
fi

if [ ! -z $P4 ] && [ ! -z $P5 ] && [ ! -z $P6 ]
	then
	if [ $P4 = $P5 ] && [ $P5 = $P6 ]
	then
		echo Ganaron las $Turno > Ganar.vic
		echo Se Formo una linea horizontal
	fi
fi

if [ ! -z $P7 ] && [ ! -z $P8 ] && [ ! -z $P9 ]
	then
	if [ $P7 = $P8 ] && [ $P8 = $P9 ]
	then
		echo Ganaron las $Turno > Ganar.vic
		echo Se Formo una linea horizontal
	fi
fi

#######################################################################
# Ahora veamos la condición vertical

if [ ! -z $P1 ] && [ ! -z $P4 ] && [ ! -z $P7 ]
	then
	if [ $P1 = $P4 ] && [ $P4 = $P7 ]
	then
		echo Ganaron las $Turno > Ganar.vic
		echo Se Formo una linea vertical
	fi
fi

if [ ! -z $P2 ] && [ ! -z $P5 ] && [ ! -z $P8 ]
	then
	if [ $P2 = $P5 ] && [ $P5 = $P8 ]
	then
		echo Ganaron las $Turno > Ganar.vic
		echo Se Formo una linea vertical
	fi
fi

if [ ! -z $P3 ] && [ ! -z $P6 ] && [ ! -z $P9 ]
	then
	if [ $P3 = $P6 ] && [ $P6 = $P9 ]
	then
		echo Ganaron las $Turno > Ganar.vic
		echo Se Formo una linea vertical
	fi
fi

##########################################################################
# Ahora veamos la condicion diagonal

if [ ! -z $P1 ] && [ ! -z $P5 ] && [ ! -z $P9 ]
	then
	if [ $P1 = $P5 ] && [ $P5 = $P9 ]
	then
		echo Ganaron las $Turno > Ganar.vic
		echo Se Formo una linea diagonal
	fi
fi

if [ ! -z $P3 ] && [ ! -z $P5 ] && [ ! -z $P7 ]
	then
	if [ $P3 = $P5 ] && [ $P5 = $P7 ]
	then
		echo Ganaron las $Turno > Ganar.vic
		echo Se Formo una linea diagonal
	fi
fi

##########################################################################