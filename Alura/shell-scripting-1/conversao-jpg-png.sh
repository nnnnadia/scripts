#!/bin/bash

convert_image(){
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
}
convert_image 2>erros.txt
if [ $? -eq 0 ]
then
	echo "Conversão realizada com sucesso"
else
	echo "Houve uma falha no processo de conversão"
fi
