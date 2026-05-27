#!/bin/bash
# Trabajo Practico - Punto C: Usuarios y Permisos Avanzados

groupadd p1c1_2026_Todos

useradd -m -g p1c1_2026_Todos -p $(echo "clave1" | openssl passwd -1 -stdin) p1c1_2026_u2

usermod -aG p1c1_2026_Todos p1c1_2026_u1

chgrp -R p1c1_2026_Todos /datos/

chmod -R 770 /datos/

chmod 775 /datos/
chmod 770 /datos/validar1.txt

su -c "id >> /datos/validar1.txt" p1c1_2026_u2
