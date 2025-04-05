# OSNIT TOOLKIT:

===== Menu OSINT =====
1. Info de Domínio
2. Buscar usuário em redes sociais
3. IPs do host, cria um arquivo e salva no diretório ips
4. Links do host, cria um arquivo e salva no diretório links 
5. Baixa perfil do Instagram
6. Scan de site
0. Sair
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
