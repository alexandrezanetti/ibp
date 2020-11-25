apt install bind9 -y
cp dns/* /etc/bind
systemctl enable bind9
systemctl start bind9
