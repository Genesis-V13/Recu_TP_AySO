
sudo groupadd p1c1_2024_Todos
sudo useradd -m -g p1c1_2024_Todos -s /bin/bash p1c1_2024_u2
echo "clave1" | sudo passwd --stdin p1c1_2024_u2

sudo usermod -aG p1c1_2024_Todos p1c1_2024_u1

sudo chgrp -R p1c1_2024_Todos /datos
sudo chmod -R g+w /datos
sudo chmod o-x /datos

sudo su -c "id >> /datos/validar1.txt" p1c1_2024_u2

