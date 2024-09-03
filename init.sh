#!/bin/sh

# URLs de los repositorios
BACKEND_REPO="https://github.com/etec-integration-project/etec-pi-2024-backend-Santiii4.git"
FRONTEND_REPO="https://github.com/etec-integration-project/etec-pi-2024-frontend-Santiii4.git"

# Directorios de destino
BACKEND_DIR="etec-pi-2024-backend-Santiii4-main"
FRONTEND_DIR="etec-pi-2024-frontend-Santiii4-main"

# Mostrar mensajes de depuración
echo "Clonando el repositorio del backend..."
if [ ! -d "$BACKEND_DIR" ]; then
  git clone $BACKEND_REPO $BACKEND_DIR
  if [ $? -ne 0 ]; then
    echo "Error clonando backend"
    exit 1
  fi
else
  echo "El directorio del backend ya existe."
fi

echo "Instalando dependencias del backend..."
cd $BACKEND_DIR || exit 1
npm install
cd ..

echo "Clonando el repositorio del frontend..."
if [ ! -d "$FRONTEND_DIR" ]; then
  git clone $FRONTEND_REPO $FRONTEND_DIR
  if [ $? -ne 0 ]; then
    echo "Error clonando frontend"
    exit 1
  fi
else
  echo "El directorio del frontend ya existe."
fi

echo "Instalando dependencias del frontend..."
cd $FRONTEND_DIR || exit 1
npm install
cd ..

echo "Repositorios clonados y dependencias instaladas correctamente."








