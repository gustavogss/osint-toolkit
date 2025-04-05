# OSNIT TOOLKIT:

===== Menu OSINT =====
1. Info de Domínio
2. Buscar usuário em redes sociais (Sherlock)
3. Info de IP
4. Scan de site (whatweb)
5. Ips do host
6. Links do host
7. Baixar perfil Instagram
8. Sair
=======================

## Dependências:
```
sudo apt update
sudo apt install whois dig traceroute nslookup curl whatweb pipx
pip install instaloader
pipx ensurepath
pipx install sherlock
git clone https://github.com/sherlock-project/sherlock.git
```

### Requisitos:
```
chmod +x menu.sh dominio.sh instagram.sh ipinfo.sh ips.sh links.sh sherlock.sh whatweb.sh
```

### Executar:
```
./menu.sh 
```
