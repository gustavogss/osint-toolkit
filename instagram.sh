#!/bin/bash

echo "Digite o nome de usuário do Instagram:"
read user

if ! command -v instaloader &> /dev/null
then
    echo "Instale com: pip install instaloader"
    exit
fi

instaloader $user
