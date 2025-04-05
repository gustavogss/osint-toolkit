#!/bin/bash

echo "===== Menu OSINT ====="
echo "1. Info de Domínio"
echo "2. Buscar usuário em redes sociais (Sherlock)"
echo "3. Info de IP"
echo "4. Scan de site (whatweb)"
echo "5. Ips do host"
echo "6. Links do host"
echo "7. Baixar perfil do instagram"
echo "0. Sair"
echo "======================="
read -p "Escolha uma opção: " opcao

case $opcao in
    1) bash dominio.sh ;;
    2) bash sherlock.sh ;;
    3) bash ipinfo.sh ;;
    4) bash whatweb.sh ;;
    5) bash ips.sh;;
    6) bash links.sh;;
    7) bash instagram.sh ;;
    0) exit ;;
    *) echo "Opção inválida!" ;;
esac
