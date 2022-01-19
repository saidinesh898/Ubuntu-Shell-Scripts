sudo apt update;
sudo apt upgrade -y;
sudo ufw allow 22;
echo "y" | sudo ufw enable;
sudo iptables -F;
systemctl stop iptables;
systemctl disable iptables;

