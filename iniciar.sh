#!/bin/bash
echo ""
echo "🛒  LISTA DE COMPRAS - ATACADÃO"
echo "================================"
echo ""

IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null || echo "localhost")

echo "📱 Para acessar pelo celular, abra no navegador:"
echo ""
echo "   👉  http://$IP:8080"
echo ""
echo "⚠️  IMPORTANTE: O celular precisa estar na MESMA rede Wi-Fi do computador!"
echo ""

python3 -m http.server 8080 --directory lista-compras
