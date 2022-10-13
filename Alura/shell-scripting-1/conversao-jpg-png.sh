#!/bin/bash

CAMINHO_IMAGENS=~/scripts/Alura/shell-scripting-1/imagens-livros

for imagem in $@
do
	convert $CAMINHO_IMAGENS/$imagem.jpg $CAMINHO_IMAGENS/$imagem.png
done


