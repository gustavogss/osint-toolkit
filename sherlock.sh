#!/bin/bash

echo "Digite o nome de usuário para investigar:"
read usuario

# Verifica se o sherlock está disponível (via pipx ou global)
if ! command -v sherlock &> /dev/null
then
    echo "Sherlock não encontrado!"
    echo "Você pode instalar com pipx (recomendado):"
    echo ""
    echo "  sudo apt install pipx -y"
    echo "  pipx install sherlock"
    echo ""
    echo "Ou use um ambiente virtual manualmente."
    exit 1
fi

# Executa o sherlock normalmente
sherlock $usuario
