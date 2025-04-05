#!/bin/bash

read -p "Digite o domínio (ex: exemplo.com): " dominio

dir="ips"

if [ ! -d "$dir" ]; then
    echo "Criando diretório $dir..."
    mkdir "$dir"
fi

echo "Criando lista de IPs do host $dominio..."

arquivo="$dir/ips_$dominio.txt"

for url in $(curl -s -k https://www.$dominio | grep -Eo '(http|https)://[^"]+' | cut -d "/" -f 3 | grep "$dominio" | sort -u); do
    host $url | grep "has address" | cut -d " " -f 4
done | sort -u > "$arquivo"

quantidade_ips=$(wc -l < "$arquivo")

echo "Foram encontrados $quantidade_ips IPs para o domínio $dominio."
echo "Lista salva em $arquivo"
