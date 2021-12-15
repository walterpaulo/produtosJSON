#!/bin/bash

DB=produtos.json
echo -e "$JSON"


(which json-servers > /dev/null 2>&1 && 
        echo -e "API de Carros rodando\nArqueiroVerde" && 
	json-server --watch $DB -p 8900) || 
	echo -e "Instalar o Json-Server\n\nnpm install -g json-server\n"

