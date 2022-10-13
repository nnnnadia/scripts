#!/bin/bash

cd ~/scripts/Alura/shell-scripting-1/imagens-livros
if [ ! -d png ]
then
	mkdir png
fi
for imagem in *.jpg
do
	image_wo_extension=$(ls $imagem | awk -F. '{ print $1 }')
	convert $image_wo_extension.jpg png/$image_wo_extension.png
done


