#!/bin/bash

echo "Digite o domínio (ex: exemplo.com): "
read dominio

echo "[+] WHOIS:"
whois $dominio

echo "[+] DNS Info:"
dig $dominio any +noall +answer

echo "[+] NS Lookup:"
nslookup $dominio

echo "[+] Informações de IP:"
host $dominio

echo "[+] Traceroute:"
traceroute $dominio
