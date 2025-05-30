
mkdir ~/Punto_E
grep MemTotal /proc/meminfo > ~/Punto_E/Filtro_basico.txt
grep -m1 "model name" /proc/cpuinfo >> ~/Punto_E/Filtro_basico.txt
grep -m1 "cpu MHz" /proc/cpuinfo >> ~/Punto_E/Filtro_basico.txt

