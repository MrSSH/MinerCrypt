#!/bin/sh -e

echo "			\033[41;1;37m Instalador \033[0m "	
sleep 1
echo "\033[44;1;37m Selecione o Utilitario:     \033[0m "

corPadrao="\033[0m"
preto="\033[0;30m"
vermelho="\033[0;31m"
verde="\033[0;32m"
marrom="\033[0;33m"
azul="\033[0;34m"
purple="\033[0;35m"
cyan="\033[0;36m"
cinzaClaro="\033[0;37m"
pretoCinza="\033[1;30m"
vermelhoClaro="\033[1;31m"
verdeClaro="\033[1;32m"
amarelo="\033[1;33m"
azulClaro="\033[1;34m"
purpleClaro="\033[1;35m"
cyanClaro="\033[1;36m"
branco="\033[1;37m"

sleep 1.5s
echo "$cyan [1] MINER-BITCOIN"
echo "$cyan [2] MINER-DOGECOIN"
echo "$cyan [3] MINER-DIGIBYTE"
read utilitario

if [ "$utilitario" = "1" ]
then
sleep 1
echo "\033[44;1;37m Instalando....     \033[0m "
sleep 0.5s
wget https://raw.githubusercontent.com/MrSSH/MinerCrypt/master/minerBTC.sh
echo "\033[44;1;37m Instalado com Sucesso!     \033[0m "

echo "Você Pode Executar o Utilitario Assim:\n"
echo "$verde sudo sh minerBTC.sh CARTEIRA BITCOIN\033[0m"
echo "$verde                OU                   \033[0m"
echo "$verde sh minerBTC.sh CARTEIRA BITCOIN\033[0m"
fi

if [ "$utilitario" = "2" ]
then
sleep 1
echo "\033[44;1;37m Instalando....     \033[0m "
sleep 0.5s
wget https://raw.githubusercontent.com/MrSSH/MinerCrypt/master/minerDOGE.sh
echo "\033[44;1;37m Instalado com Sucesso!     \033[0m "

echo "Você Pode Executar o Utilitario Assim:\n"
echo "$verde sudo sh minerDOGE.sh CARTEIRA DOGECOIN\033[0m"
echo "$verde                OU                   \033[0m"
echo "$verde sh minerDOGE.sh CARTEIRA DOGECOIN\033[0m"
fi

if [ "$utilitario" = "3" ]
then
sleep 1
echo "\033[44;1;37m Instalando....     \033[0m "
sleep 0.5s
wget https://raw.githubusercontent.com/MrSSH/MinerCrypt/master/minerDBYTE.sh
echo "\033[44;1;37m Instalado com Sucesso!     \033[0m "

echo "Você Pode Executar o Utilitario Assim:\n"
echo "$verde sudo sh minerDBYTE.sh CARTEIRA DIGIBYTE\033[0m"
echo "$verde                OU                   \033[0m"
echo "$verde sh minerDBYTE.sh CARTEIRA DIGIBYTE\033[0m"
fi
