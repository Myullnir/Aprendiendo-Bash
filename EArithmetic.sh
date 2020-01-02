#!/bin/bash
# Este archivo es para hacer la ejercitación de Arithmetic de Bash

# Esto lo puse para que se auto "bautice", pero no sé si sea la mejor solución

# Lo primero que voy a hacer es tomar los argumentos de Línea de comando,
# multiplicarlos y probar las distintas formas de hacer Arithmetic

let a=$1\*$2
echo Usando let obtuve $a
echo

echo Usando expr obtuve 
expr $1 \* $2
echo

echo "Usando doble paréntesis obtuve $(( $1 * $2 ))"

#--------------------------------------------------------------------------
# Ahora hagamos que también me printee la fecha de mañana

manana=$(date --date=tomorrow)

echo La fecha de mañana es $manana

#--------------------------------------------------------------------------
# Voy a saltear el tercer punto y vamos directo al cuarto
# La idea es que con el input de línea de comando quiero obtener números random
# entre $1 y $2, suponiendo que $2 siempre es el límite superior

resultado=$(( (($RANDOM % ($2-$1+1))+$1) ))

echo El número Random obtenido es $resultado