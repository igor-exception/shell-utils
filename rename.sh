#!/bin/bash
#o site mindmup aceita arquivos com extensão .mup, como estava salvando sem a extensão,
#precisaria alterar os nomes um por um.
#como estou aprendendo shell, decidi fazer um script para alterar os nomes

#pega listagem de mapas e coloca em um array
itens=($(ls | grep map_ ))

#pega tamanho do array
len=${#itens[@]}

#looping alterando o nome
for((i=0; i < $len; i++)); do
    mv "${itens[$i]}" "${itens[$i]}.mup"
done

echo "---------Finalizado-------"