#!/bin/zsh

# Obtener el día de la semana (1 = lunes, 7 = domingo)
DIA_SEMANA=$(date +%u)

# Verificar si hoy es domingo (7)
if [ "$DIA_SEMANA" -eq 7 ]; then
    echo "Hoy es domingo. Ejecutando 'pacman -Syu'..."
    sudo pacman -Syu
else
    echo "Hoy no es domingo. No se ejecutará 'pacman -Syu'."
fi
