#!/bin/bash

echo "Deseja criar a pasta no diretório local ou especificar?"
echo "Tecle 1 para criar no diretório local"
echo "Tecle 2 para especificar um diretório"

read -p "Opção: " OPCAO

if [ "$OPCAO" == "1" ]; then
  LOCAL=$(pwd)
elif [ "$OPCAO" == "2" ]; then
  read -p "Informe o caminho completo do diretório: " LOCAL
  if [ ! -d "$LOCAL" ]; then
    echo "Diretório não encontrado. Criando diretório..."
    mkdir -p "$LOCAL"
  fi
else
  echo "Opção inválida. Encerrando."
  exit 1
fi

PASTA="$LOCAL/minha_pasta"
ARQUIVO="$PASTA/arquivo.txt"

mkdir -p "$PASTA"

echo "Olá, esse é um arquivo criado via Bash!" > "$ARQUIVO"

echo "Pasta e arquivo criados com sucesso em: $PASTA"
