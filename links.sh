#!/bin/bash

read -p "Digite a URL (ex: https://exemplo.com): " url

dir="links"

if [ ! -d "$dir" ]; then
    echo "Criando diretório $dir..."
    mkdir "$dir"
fi

dominio=$(echo "$url" | sed 's|https\?://||; s|/.*||')

arquivo_links="$dir/links_${dominio}.txt"

echo "Extraindo links HTTP/HTTPS de $dominio..."

wget -q -O - "$url" | grep -oP '(?<=href=")https?://[^"]+' | grep "$dominio" | sort -u > "$arquivo_links"

quantidade=$(wc -l < "$arquivo_links")

echo "Foram encontrados $quantidade links no domínio $dominio."
echo "Links salvos em $arquivo_links"
