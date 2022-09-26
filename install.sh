#!bin/bash

echo "Installing kensho..."

echo "checking Operating System..."
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  export OS="Linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  export OS="Darwin"
elif [[ "$OSTYPE" == "win32" ]]; then
  export OS="Windows"
else
  echo "Unsupported OS"
  exit 1
fi

echo "checking Operational Archtecture..."
if [[ $(uname -m) == "x86_64" ]]; then
  export ARCH="x86_64"
elif [[ $(uname -m) == "i386" ]]; then
  export ARCH="i386"
elif [[ $(uname -m) == "arm64" ]]; then
  export ARCH="arm64"
else
  echo "Unsupported architecture"
  exit 1
fi

echo "Downloading kensho..."
curl -sL "https://github.com/ArthurMaverick/kensho/releases/download/v0.1.1/kensho_0.1.1_${OS}_${ARCH}.tar.gz" | tar -xz

DIR="/usr/local/bin/"
if [ -d "$DIR" ]; then
  echo "moving kensho to local bin..."
  mv kensho /usr/local/bin/kensho
fi

echo "creating kensho directory..."
mkdir /usr/local/bin/kensho
mv kensho /usr/local/bin/kensho

echo "kensho installed successfully."



