echo "192.168.56.11 node1.tp2.b2 node1" >> /etc/hosts
echo "192.168.56.12 node2.tp2.b2 node2" >> /etc/hosts
useradd user1
echo "user1     ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
firewall-cmd --set-default-zone=block
firewall-cmd --add-port=22/tcp
firewall-cmd --permanent --zone=trusted --add-source=192.168.56.11
firewall-cmd --permanent --zone=trusted --add-source=192.168.56.12
firewall-cmd --reload
setenforce 0
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
