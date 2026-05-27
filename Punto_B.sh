#!/bin/bash
# Trabajo Practico - Punto B: Permisos y Validacion

# Ejecutamos el script que crea al usuario
bash usuario.sh

# Cambiamos dueño y grupo de forma recursiva a /datos/
chown -R p1c1_2026_u1:p1c1_2026_g1 /datos/

# Permisos: Duenio todo (7), Grupo leer/ejecutar (5), Otros nada (0) -> 750
chmod -R 750 /datos/

# Generamos la salida de validacion ejecutando el comando como el nuevo usuario
su -c "whoami > /datos/validar1.txt" p1c1_2026_u1
