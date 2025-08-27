#!/usr/bin/env bash

VAR=""
VAR2=""

# ======================================
# 1️⃣ Usando colchetes simples [ ... ]
# Tradicional, compatível com qualquer shell POSIX
# ⚠️ Atenção: precisa de espaços entre [ e ] e os elementos dentro
# ======================================
if [ "$VAR" = "$VAR2" ]; then
    echo "São iguais (usando [ ... ])"
else
    echo "São diferentes (usando [ ... ])"
fi

# ======================================
# 2️⃣ Usando colchetes duplos [[ ... ]]
# Mais moderno, específico do Bash
# Permite operadores lógicos internos e regex, menos cuidado com espaços
# ======================================
if [[ "$VAR" = "$VAR2" ]]; then
    echo "São iguais (usando [[ ... ]])"
else
    echo "São diferentes (usando [[ ... ]])"
fi

# ======================================
# 3️⃣ Usando test
# Funciona igual a [ ... ], mas escrito como comando
# ======================================
if test "$VAR" = "$VAR2"; then
    echo "São iguais (usando test)"
else
    echo "São diferentes (usando test)"
fi

# ======================================
# 4️⃣ Usando operadores curtos && e ||
# Permite comparação e execução em uma linha
# && → executa comando se a condição for verdadeira
# || → executa comando se a condição for falsa
# ======================================
[ "$VAR" = "$VAR2" ] && echo "São iguais (usando &&)"
[ "$VAR" != "$VAR2" ] || echo "São iguais (usando ||)"
