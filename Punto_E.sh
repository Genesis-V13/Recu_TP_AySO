#!/bin/bash
# Trabajo Practico - Punto E: Filtros Basicos
# Extraemos informacion especifica del hardware sin dejar texto de mas

# 1. Crear el directorio Punto_E en el home si no existe
mkdir -p ~/Punto_E

# 2. Filtrar SOLO la linea del total de memoria RAM y guardarla en el archivo
grep "MemTotal" /proc/meminfo > ~/Punto_E/Filtro_basico.txt

# 3. Filtrar el modelo del microprocesador (que ya incluye la frecuencia) y agregarlo al archivo (>> )
grep "model name" /proc/cpuinfo | head -n 1 >> ~/Punto_E/Filtro_basico.txt
