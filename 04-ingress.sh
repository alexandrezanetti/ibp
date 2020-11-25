kubectl apply -f ingress/deploy.yaml

apt install -y nginx
cp ingress/default /etc/nginx/sites-available
cp ingress/passthrough.conf /etc/nginx
cp ingress/nginx.conf /etc/nginx
systemctl enable nginx
systemctl start nginx

#iptables -I PREROUTING -t nat -p tcp --dport 443 -j REDIRECT --to-ports 30443
#iptables -t nat -I OUTPUT -o lo -p tcp --dport 443 -j REDIRECT --to-port 30443
#iptables -I PREROUTING -t nat -p tcp --dport 80 -j REDIRECT --to-ports 30080
#iptables -t nat -I OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 30080
