#!bin/bash
apt update;
apt upgrade -y;
systemctl stop iptables;
systemctl disable iptables;
iptables -F;
ufw allow 22 &&  echo "y" |  ufw enable;
ufw allow 80;
ufw allow 443;
ufw allow 3000;
ufw allow 996;
ufw allow 7946;
ufw allow 4789;
ufw allow 2377; 


echo "y" | apt install npm 
echo "y" | apt install docker.io

docker run -p 80:80 -p 443:443 -p 3000:3000 -v /var/run/docker.sock:/var/run/docker.sock -v /captain:/captain caprover/caprover

