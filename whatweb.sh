#!/bin/bash

echo "Digite a URL (ex: https://exemplo.com):"
read site

if ! command -v whatweb &> /dev/null
then
    echo "Instale o whatweb com: sudo apt install whatweb"
    exit
fi

whatweb $site
