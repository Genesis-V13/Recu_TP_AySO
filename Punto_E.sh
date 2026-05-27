#!/bin/bash
# Trabajo Practico - Punto E: Filtros Basicos

mkdir -p ~/Punto_E

grep "MemTotal" /proc/meminfo > ~/Punto_E/Filtro_basico.txt

grep "model name" /proc/cpuinfo | head -n 1 >> ~/Punto_E/Filtro_basico.txt
