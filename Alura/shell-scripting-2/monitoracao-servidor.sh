#!/bin/bash

resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost/mutillidae.html)

if [ $resposta_http -eq 200 ]
then
	echo "Tudo está ok com o servidor"
else
	echo "Houve um problema no servidor. Tentando reinicializar..."
	systemctl restart apache2
	echo "Servidor reinicializado"
fi
