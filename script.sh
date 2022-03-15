sudo apt update;
sudo apt upgrade -y;
sudo ufw allow 22;
ufw allow 80,443,3000,996,7946,4789,2377/tcp; ufw allow 7946,4789,2377/udp;
echo "y" | sudo ufw enable;
sudo iptables -F;
systemctl stop iptables;
systemctl disable iptables;

