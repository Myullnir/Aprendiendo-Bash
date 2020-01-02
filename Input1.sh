#!/bin/bash
# Esto es una prueba para ver como funca la funcion para input

echo Hola, con quien estoy hablando?

read -p "Nombre: " varname
read -sp "Edad: " varage

echo Es un gusto conocerte $varname
echo Tu edad es $varage
