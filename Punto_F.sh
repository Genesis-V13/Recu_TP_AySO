#!/bin/bash
# Trabajo Practico - Punto F: Filtros Avanzados

mkdir -p ~/Punto_F

IP_PUB=$(curl -s ifconfig.me)
echo "Mi ip publica es: $IP_PUB" > ~/Punto_F/Filtro_Avanzado.txt

CPU_INFO=$(grep "model name" /proc/cpuinfo | head -n 1 | awk -F: '{print $2}' | awk '{print $3, $6}')
echo "CPU Modelo: $CPU_INFO" >> ~/Punto_F/Filtro_Avanzado.txt
