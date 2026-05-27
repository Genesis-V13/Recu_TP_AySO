#!/bin/bash
# Trabajo Practico - Creacion de Usuario (Punto B)

# Creamos el grupo secundario primero
groupadd p1c1_2026_g1

# Creamos el usuario asignando el grupo y la clave usando openssl
useradd -m -g p1c1_2026_g1 -p $(echo "clave1" | openssl passwd -1 -stdin) p1c1_2026_u1
