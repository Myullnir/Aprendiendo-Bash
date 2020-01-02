#!/bin/bash
# Este archivo simplemente ejecuta y pasa las variables a VisualizarTTT.sh

chmod 755 VisualizarTTT.sh
dos2unix ./VisualizarTTT.sh
export ${!P*}
./VisualizarTTT.sh