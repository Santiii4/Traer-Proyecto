#!/bin/sh

# URLs de los repositorios
BACKEND_REPO="https://github.com/etec-integration-project/etec-pi-2024-backend-Santiii4.git"
FRONTEND_REPO="https://github.com/etec-integration-project/etec-pi-2024-frontend-Santiii4.git"

# Directorios de destino
BACKEND_DIR="etec-pi-2024-backend-Santiii4"
FRONTEND_DIR="etec-pi-2024-frontend-Santiii4"

# Mostrar mensajes de depuración
echo "Clonando el repositorio del backend..."
if [ ! -d "$BACKEND_DIR" ]; then
  git clone $BACKEND_REPO $BACKEND_DIR || echo "Error clonando backend"
else
  echo "El directorio del backend ya existe."
fi

echo "Clonando el repositorio del frontend..."
if [ ! -d "$FRONTEND_DIR" ]; then
  git clone $FRONTEND_REPO $FRONTEND_DIR || echo "Error clonando frontend"
else
  echo "El directorio del frontend ya existe."
fi







