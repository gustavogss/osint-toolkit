#!/bin/bash

echo "Digite o nome de usuário para investigar:"
read usuario

if ! command -v sherlock &> /dev/null
then
    echo "Sherlock não encontrado. Instale com: git clone https://github.com/sherlock-project/sherlock.git"
    exit
fi

cd sherlock
python3 sherlock $usuario
