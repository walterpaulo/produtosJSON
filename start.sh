#!/bin/bash

#####   NOME:              start.sh
#####   VERSÃO:            0.1
#####   DESCRIÇÃO:         Rodar uma API de produtos com os verbos GET, POST, PUT e DELETE.
#####   DATA DA CRIAÇÃO:           14/12/2021
#####   ESCRITO POR:              Walter Paulo J
#####   E-MAIL:            walter0paulo@hotmail.com
#####   DISTRO:            Debian GNU/Linux 10 (Buster)
#####   LICENÇA:                 GPLv3
#####   PROJETO:                 https://github.com/walterpaulo/produtosJSON.git

DB=produtos.json
echo -e "$JSON"


(which json-server > /dev/null 2>&1 && 
        echo -e "API de Carros rodando\nArqueiroVerde" && 
	json-server --watch $DB -p 8900) || 
	echo -e "Instalar o Json-Server\n\nnpm install -g json-server\n"

