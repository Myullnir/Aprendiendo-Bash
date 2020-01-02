#!/bin/bash
# Este archivo es para practicar con el input

# Vamos a hacer que haga algunas preguntas
# echo Comienza el pequeño cuestionario

# read -p "¿Donde vivis?: " varubi
# read -p "¿Que te gusta comer?: " varcomida
# read -sp "¿Cuanto dinero tenes ahorrado?: " vardinero

# echo 
# echo Ya sabemos que vivis en $varubi, en unos minutos iremos para robar tu dinero.
# echo Pero como somos buenos, te vamos a dar un plato de $varcomida.

#--------------------------------------------------------------------------------
# Con esto debería tomar tres pedazos de información y combinarlos en dos salidas
# Ahora pidamosle que tenga a mano el nombre del archivo con palabras

archivo=$(ls ./ | egrep -i "palabras")

# Vamos a pasarle información de las carpetas que están en Documents y que imprima la tercer fila

cat /dev/stdin | head -3 | tail -1

#---------------------------------------------------------------------------------
# Ahora voy a hacer que me imprima la información que reciba del ls -l en cierto orden, usando awk

