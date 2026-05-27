#!/bin/bash
# Creacion de Usuario (Punto B)

groupadd p1c1_2026_g1

useradd -m -g p1c1_2026_g1 -p $(echo "clave1" | openssl passwd -1 -stdin) p1c1_2026_u1
