#!/bin/bash

resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost/mutillidae.html)

if [ $resposta_http -ne 200 ]
then
	mail -s "Problema no servidor" adm.mutillidae@gmail.com<<del
	Houve um problema no servidor e os usuários não têm acesso ao conteúdo web.
	del
	systemctl restart apache2
fi
