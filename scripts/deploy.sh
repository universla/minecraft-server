#!/bin/bash
set -e

echo "🔄 Desplegando configuración y contenido..."

# Simulamos la carpeta del servidor oficial
mkdir -p /tmp/bedrock_server

# Copiar mundos
cp -r server/worlds/* /tmp/bedrock_server/ 2>/dev/null || echo "⚠️ Sin mundos personalizados"

# Copiar packs
cp -r server/resource_packs/ /tmp/bedrock_server/ 2>/dev/null || true
cp -r server/behavior_packs/ /tmp/bedrock_server/ 2>/dev/null || true

# Copiar config
cp configs/server.properties /tmp/bedrock_server/ 2>/dev/null || echo "⚠️ Usando config predeterminada"

echo "✅ Despliegue simulado en /tmp/bedrock_server"
ls -la /tmp/bedrock_server/
