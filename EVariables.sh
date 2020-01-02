#!/bin/bash
# Este archivo es el que va a printear una palabra aleatoria de una lista
# de palabras, todas separadas por comas. Este programa puede leer un
# archivo csv e identificar el número de filas y columnas.

archivo=$( ls ./ | egrep -i "palabras" )

fil=$( cut -f 1 -d "," ./$archivo | wc -w )
col=$( head -1 ./$archivo | sed "s/,/ /g" | wc -w )

# Suponiendo que las palabras vienen separadas por comas
# Y que todas las casillas de la cuadrículas están llenas
# Esto puede tomar el archivo sin que yo se lo pase, calcular su cantidad
# de filas y columnas.
#-----------------------------------------------------------------------

# Ahora armemos la fila y columna aleatoria

rf=$((($RANDOM%$fil)+1))
rc=$((($RANDOM%$col)+1))

#-----------------------------------------------------------------------

palabra=$(cut -f $rc -d "," ./$archivo | head -$rf | tail -1)

echo "La palabra aleatoria es $palabra"

# Ya funciona la parte de tirar palabras aleatorias. 26/12/2019
#------------------------------------------------------------------------
