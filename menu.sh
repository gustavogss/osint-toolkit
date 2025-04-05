#!/bin/bash

while true; do
    echo "===== Menu OSINT ====="
    echo "1. Info de Domínio"
    echo "2. Buscar usuário em redes sociais"
    echo "3. IPs do host"
    echo "4. Links do host"
    echo "5. Baixar perfil do Instagram"
    echo "6. Scan de site (whatweb)"
    echo "0. Sair"
    echo "======================="
    read -p "Escolha uma opção: " opcao

    case $opcao in
        1) bash dominio.sh ;;
        2) bash sherlock.sh ;;
        3) bash ips.sh ;;
        4) bash links.sh ;;
        5) bash instagram.sh ;;
        6) bash whatweb.sh ;;    
        0) exit ;;
        *) echo "Opção inválida!" ;;
    esac

    echo ""
    read -p "Pressione Enter para voltar ao menu..."
    clear
done
