#!/bin/bash

cd ~/scripts/Alura/shell-scripting-2/apache-log

regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

if [[ $1 =~ $regex ]]
then
	cat apache.log | grep $1
else
	echo "Formato não é válido"
fi
