
sudo groupadd p1c1_2024_g1
sudo useradd -m -G p1c1_2024_g1 -s /bin/bash p1c1_2024_u1
echo "clave1" | sudo passwd --stdin p1c1_2024_u1

sudo mkdir -p /datos
sudo chown -R p1c1_2024_u1:p1c1_2024_g1 /datos
sudo chmod -R 750 /datos

sudo su -c "whoami > /datos/validar1.txt" p1c1_2024_u1

