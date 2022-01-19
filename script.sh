sudo apt update;
sudo apt upgrade -y;
sudo ufw allow 22;
sudo ufw enable -y;
sudo iptables -F;
systemctl stop iptables;
systemctl disable iptables;

