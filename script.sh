sudo apt update;
sudo apt upgrade -y;
sudo ufw allow 22;
echo "y" | sudo ufw enable;
ufw allow 80;
ufw allow 443;
ufw allow 3000;
ufw allow 996;
ufw allow 7946;
ufw allow 4789;
ufw allow 2377; 
sudo iptables -F;
systemctl stop iptables;
systemctl disable iptables;

