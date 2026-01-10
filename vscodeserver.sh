#!/data/data/com.termux/files/usr/bin/bash

LOG_FILE="$HOME/vscodeserver.log"

exec > >(tee -a "$LOG_FILE") 2>&1

echo "== VS Code Server Auto (Termux) =="
echo "[INFO] Iniciando instalação..."

echo "[1/4] Atualizando pacotes..."
pkg update -y && pkg upgrade -y

echo "[2/4] Instalando repositório e code-server..."
pkg install tur-repo -y
pkg install code-server -y

echo "[3/4] Configurando senha fixa..."

CONFIG_DIR="$HOME/.config/code-server"
CONFIG_FILE="$CONFIG_DIR/config.yaml"

mkdir -p "$CONFIG_DIR"

cat > "$CONFIG_FILE" <<EOF
bind-addr: 0.0.0.0:8080
auth: password
password: 12345678
cert: false
EOF

chmod 600 "$CONFIG_FILE"

echo "================================="
echo " VS Code Server configurado"
echo " URL:    http://127.0.0.1:8080"
echo " SENHA:  12345678"
echo "================================="

echo "[4/4] Iniciando code-server..."
code-server