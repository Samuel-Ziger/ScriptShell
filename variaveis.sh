#!/usr/bin/env bash

# Definindo uma variável com o nome
nome="samuel
ziger"
echo "$nome"  # Mostra o nome na tela

# Definindo números
numero_1=23
numero_2=24

# Calculando o total
TOTAL=$(($numero_1 + $numero_2))
echo "$TOTAL"  # Mostra o resultado da soma

# Procurando o usuário 'ziger' no arquivo /etc/passwd
SAIDA_CAT="$(grep ziger /etc/passwd)"
#No curso estava sendo feito assim: SAIDA_CAT="$(cat  /etc/passwd | grep ziger)"
echo "$SAIDA_CAT"  # Mostra a saída do grep
echo "-----------------------------------------------------------------------------------------" #separado a aula


echo "Parametro 1: $1"   # Mostra o primeiro argumento passado ao script
echo "Parametro 2: $2"   # Mostra o segundo argumento passado ao script

echo "Todos os parâmetros: $*"  # Mostra todos os argumentos passados

echo "Quantos parâmetros? $#"  # Mostra quantos argumentos foram passados

echo "Saída do Último comando: $?"  # Mostra o código de saída do último comando (0 = sucesso, 1 ou outro = erro)

echo "PID: $$"  # Mostra o PID (ID do processo) do script em execução

echo "$0"  # Mostra o nome do script sendo executado

