#!/bin/bash

echo "Digite o IP para consulta:"
read ip

echo "[+] Consultando ipinfo.io..."
curl ipinfo.io/$ip
