#!/bin/bash
# Trabajo Practico - Punto F: Filtros Avanzados
# Generacion de reporte de IP y CPU con formato especifico

# 1. Crear el directorio Punto_F en el home si no existe
mkdir -p ~/Punto_F

# 2. Obtener la IP publica y guardarla con el texto prefijado
IP_PUB=$(curl -s ifconfig.me)
echo "Mi ip publica es: $IP_PUB" > ~/Punto_F/Filtro_Avanzado.txt

# 3. Extraer modelo y frecuencia de la CPU usando awk y agregarlo al archivo
CPU_INFO=$(grep "model name" /proc/cpuinfo | head -n 1 | awk -F: '{print $2}' | awk '{print $3, $6}')
echo "CPU Modelo: $CPU_INFO" >> ~/Punto_F/Filtro_Avanzado.txt
