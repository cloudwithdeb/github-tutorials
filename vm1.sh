#!/bin/bash
sudo su
apt update -y
apt install apache2 -y
systemctl enable apache2
systemctl start apache2
cd /var/www/html
echo "<h1>Welcome to: $(hostname -f)</h1>" > index.html
mkdir vm1
echo "<h1>$(hostname -f)</h1>" > vm1/index.html