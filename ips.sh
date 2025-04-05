#!/bin/bash


if [ -z "$1" ]; then
    echo "Uso: $0 <dominio>"
    exit 1
fi


dir="ips"


if [ ! -d "$dir" ]; then
    echo "Criando diretório $dir..."
    mkdir "$dir"
fi

echo "Criando lista de IPs do host $1..."


arquivo="$dir/ips_$1.txt"


for url in $(curl -s -k https://www.$1 | grep -Eo '(http|https)://[^"]+' | cut -d "/" -f 3 | grep "$1" | sort -u); do
    host $url | grep "has address" | cut -d " " -f 4
done | sort -u > "$arquivo"


quantidade_ips=$(wc -l < "$arquivo")

echo "Foram encontrados $quantidade_ips IPs para o domínio $1."
echo "Lista salva em $arquivo"