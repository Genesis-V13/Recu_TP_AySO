#!/bin/bash
# Trabajo Practico - Punto C: Usuarios y Permisos Avanzados

# 1. Crear el grupo principal solicitado
groupadd p1c1_2026_Todos

# 2. Crear el segundo usuario con ese grupo asignado y la misma clave encriptada
useradd -m -g p1c1_2026_Todos -p $(echo "clave1" | openssl passwd -1 -stdin) p1c1_2026_u2

# 3. Agregar al primer usuario al grupo p1c1_2026_Todos sin pisar sus grupos previos
usermod -aG p1c1_2026_Todos p1c1_2026_u1

# 4. Modificar el grupo propietario de /datos y todo lo que tiene adentro
chgrp -R p1c1_2026_Todos /datos/

# 5. Dar permisos de escritura al grupo (Octal 770: Duenio RUX, Grupo RUX, Otros nada)
chmod -R 770 /datos/

# 6. Ajuste para que 'tu usuario' conozca la existencia pero no lea contenido:
# Le damos permiso de lectura al directorio para listar (ls), pero le sacamos lectura al archivo interno.
chmod 775 /datos/
chmod 770 /datos/validar1.txt

# 7. Agregar la informacion del comando id de u2 al final del archivo de validacion
su -c "id >> /datos/validar1.txt" p1c1_2026_u2
