kubectl apply -f ingress/deploy.yaml
#iptables -I PREROUTING -t nat -p tcp --dport 443 -j REDIRECT --to-ports 30443
#iptables -t nat -I OUTPUT -o lo -p tcp --dport 443 -j REDIRECT --to-port 30443
#iptables -I PREROUTING -t nat -p tcp --dport 80 -j REDIRECT --to-ports 30080
#iptables -t nat -I OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 30080
