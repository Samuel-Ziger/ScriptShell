#!/usr/bin/env bash

echo "==== For 1 (C-style) ===="
# Laço estilo C
for (( i=0; i<10; i++ )); do
    echo $i
done

echo "==== For 2 (seq) ===="
# Laço usando seq
for i in $(seq 1 10); do 
    echo $i
done

echo "==== For 3 (array) ===="
# Laço percorrendo todos os elementos do array
Frutas=('Laranja' 'Ameixa' 'Abacaxi')
for fruta in "${Frutas[@]}"; do
    echo $fruta
done

echo "==== While ===="
# Laço while usando contador e tamanho do array
contador=0
while [[ $contador -lt ${#Frutas[@]} ]]; do
    echo "Fruta $contador: ${Frutas[$contador]}"
    contador=$((contador + 1))
done



: '
============================
EXPLICAÇÃO DETALHADA DOS 3 TIPOS DE FOR NO BASH
============================

1️⃣ For C-style (for (( ... )))

- Inspirado na linguagem C.
- Sintaxe: for (( inicialização; condição; incremento )); do ... done
- Permite definir um valor inicial, uma condição de continuação do loop e o incremento/decremento em uma única linha.
- Funciona apenas no Bash (não em shells POSIX antigos).
- Ideal para contagens numéricas precisas ou loops com incrementos complexos.
- Exemplo: for (( i=0; i<10; i++ )); do echo $i; done
  Isso irá imprimir os números de 0 a 9.

2️⃣ For usando seq (for i in $(seq início fim))

- Utiliza o comando `seq` para gerar uma sequência de números.
- Funciona tanto no Bash quanto em outros shells mais antigos.
- Útil para loops numéricos simples sem precisar da sintaxe C-style.
- Sintaxe: for i in $(seq início fim); do ... done
- Exemplo: for i in $(seq 1 10); do echo $i; done
  Isso imprime os números de 1 a 10.
- Permite também usar incrementos diferentes: seq 1 2 10 gera 1,3,5,7,9.

3️⃣ For percorrendo array (for item in "${array[@]}")

- Percorre cada elemento de um array ou lista de strings.
- `"${array[@]}"` garante que todos os elementos sejam lidos corretamente, mesmo que tenham espaços.
- Ideal para listas de itens, nomes de arquivos, frutas, etc.
- Sintaxe: for item in "${array[@]}"; do ... done
- Exemplo: Frutas=('Laranja' 'Ameixa' 'Abacaxi'); for fruta in "${Frutas[@]}"; do echo $fruta; done
  Isso imprime cada fruta em uma linha.

DICAS GERAIS:

- Sempre use aspas ao expandir arrays ou strings para evitar problemas com espaços.
- Para loops numéricos simples, C-style ou seq funcionam bem.
- Para listas de elementos, arrays são mais seguros e claros.
- Bash diferencia maiúsculas e minúsculas, então use sempre `for`, não `For`.
- A escolha do tipo de loop depende do objetivo:
    - Contagem numérica → C-style ou seq
    - Percorrer itens de lista → array

============================
FIM DAS EXPLICAÇÕES
============================
'
