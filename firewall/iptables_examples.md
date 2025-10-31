# Firewall Basics — iptables examples

## Allow only SSH and HTTP, drop others (IPv4)
sudo iptables -F
sudo iptables -P INPUT DROP
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -i lo -j ACCEPT
# Save (Debian/Ubuntu)
sudo apt install iptables-persistent
sudo netfilter-persistent save

## Block a scanning host (example IP)
sudo iptables -A INPUT -s 10.0.0.5 -j DROP
