#!/bin/bash

# Verifica se uma URL foi passada como argumento
if [ -z "$1" ]; then
    echo "Uso: $0 <URL>"
    exit 1
fi


dir="links"


if [ ! -d "$dir" ]; then
    echo "Criando diretório $dir..."
    mkdir "$dir"
fi


dominio=$(echo "$1" | sed 's|https\?://||; s|/.*||')


arquivo_links="$dir/links_${dominio}.txt"

echo "Extraindo links HTTP/HTTPS de $dominio..."


wget -q -O - "$1" | grep -oP '(?<=href=")https?://[^"]+' | grep "$dominio" | sort -u > "$arquivo_links"


quantidade=$(wc -l < "$arquivo_links")

echo "Foram encontrados $quantidade links no domínio $dominio."
echo "Links salvos em $arquivo_links"