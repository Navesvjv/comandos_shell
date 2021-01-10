#!/bin/bash

###########################################################################
#
# Nome: GeraBackUpHome.sh
#
# Autor: João Victor Naves ( navesvjv@gmail.com )
#
# Data: 10/01/2021
#
# Descrição: O script fará um backup compactado do diretório home
#            do usuário que estiver executando o script.
#
# Uso: ./GerarBackUpHome.sh
#
###########################################################################

DIRDEST=$HOME/Backup

if [ ! -d $DIRDEST ]
then
	echo "Criando diretório $DIRDEST ... "
	mkdir -p $DIRDEST
fi

DAYS7=$(find $DIRDEST -ctime -7 -name backup_home\*tgz)

if [ "$DAYS7" ]  # Testa se a variável é nula ou não.
then
	echo "Já foi gerado um backup do diretório $HOME nos últimos 7 dias. "
	read -n1 -p "Deseja continuar? (N/s):" CONT
	echo
	if [ "$CONT" = N -o "$CONT" = n -o "$CONT" = "" ]
	then
		echo "Backup abortado!"
		exit 1
	elif [ "$CONT" = S -o "$CONT" = s ]
	then
		echo "Será criado mais um backup para a mesma semana. "
	else
		echo "Opção inválida. "
		exit 2
	fi
fi

echo "Criando BackUp... "
ARQ="backup_home_$( date +%Y%m%d%H%M ).tgz"
tar zcvpf $DIRDEST/$ARQ --absolute-names --exclude="$HOME/Google Drive" --exclude=$HOME/Videos --exclude="$DIRDEST" "$HOME"/* > /dev/null
#tar zcvpf $DIRDEST/$ARQ --exclude="$DIRDEST" "$HOME"/* > /dev/null

echo ""
echo "O backup de nome \""$ARQ"\" foi criado em $DIRDEST"
echo ""
echo "Backup concluído!"
