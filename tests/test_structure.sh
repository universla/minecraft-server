#!/bin/bash
set -e

echo "🧪 Ejecutando pruebas de estructura..."

# 1. ¿Existe server.properties?
if [ ! -f "configs/server.properties" ]; then
  echo "❌ FALTA: configs/server.properties"
  exit 1
fi

# 2. ¿Hay al menos un mundo?
if [ ! -d "server/worlds" ] || [ -z "$(ls -A server/worlds)" ]; then
  echo "⚠️ ADVERTENCIA: No hay mundos en server/worlds/"
fi

# 3. ¿Scripts ejecutables?
if [ ! -x "scripts/deploy.sh" ]; then
  echo "❌ FALTA: scripts/deploy.sh no es ejecutable"
  exit 1
fi

echo "✅ Todas las pruebas pasaron"
