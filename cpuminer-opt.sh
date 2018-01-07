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






sleep 1
echo "Baixando e compilando o CPUMiner-OPT v3.7.8..."
sleep 1
sudo apt-get update
sudo apt-get install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake -y
memsize=`free | awk '/Mem/ { print $2 }'`
swapsize=`free | awk '/Swap/ { print $2 }'`
if [ "$memsize" -lt "1000000" ]
then
 if [ "$swapsize" -eq "0" ]
 then
  sudo dd if=/dev/zero of=/var/swap.img bs=1024k count=1000
  sudo mkswap /var/swap.img
  sudo chmod 600 /var/swap.img
  swapon /var/swap.img
 fi
fi
wget https://github.com/JayDDee/cpuminer-opt/archive/v3.7.8.tar.gz
tar -zxvf v3.7.8.tar.gz
cd cpuminer-opt-3.7.8
./build.sh
ln ./cpuminer ../cpuminer
echo "Instalado com sucesso..."







sleep 1.5s
echo "$cyan [1] MINER-BITCOIN"
echo "$cyan [2] MINER-DOGECOIN" 
echo "$cyan [3] MINER-DIGIBYTE"
echo "$cyan [4] MINER-ADCOIN"
echo "$cyan [5] MINER-BITCOIN CASH"
read utilitario

if [ "$utilitario" = "10" ]
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
wget https://raw.githubusercontent.com/MrSSH/MinerCrypt/master/doge-opt.sh
echo "\033[44;1;37m Instalado com Sucesso!     \033[0m "

echo "Você Pode Executar o Utilitario Assim:\n"
echo "$verde sudo sh doge-opt.sh CARTEIRA DOGECOIN\033[0m"
echo "$verde                OU                   \033[0m"
echo "$verde ssh doge-opt.sh  CARTEIRA DOGECOIN\033[0m"
fi

if [ "$utilitario" = "30" ]
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

if [ "$utilitario" = "40" ]
then
sleep 1
echo "\033[44;1;37m Instalando....     \033[0m "
sleep 0.5s
wget https://raw.githubusercontent.com/MrSSH/MinerCrypt/master/minerADCOIN.sh
echo "\033[44;1;37m Instalado com Sucesso!     \033[0m "

echo "Você Pode Executar o Utilitario Assim:\n"
echo "$verde sudo sh minerADCOIN.sh CARTEIRA ADCOIN\033[0m"
echo "$verde                OU                   \033[0m"
echo "$verde sh minerADCOIN.sh CARTEIRA ADCOIN\033[0m"
fi

if [ "$utilitario" = "50" ]
then
sleep 1
echo "\033[44;1;37m Instalando....     \033[0m "
sleep 0.5s
wget https://raw.githubusercontent.com/MrSSH/MinerCrypt/master/minerBITCASH.sh
echo "\033[44;1;37m Instalado com Sucesso!     \033[0m "

echo "Você Pode Executar o Utilitario Assim:\n"
echo "$verde sudo sh minerBITCASH.sh CARTEIRA BITCOIN CASH\033[0m"
echo "$verde                OU                   \033[0m"
echo "$verde sh minerBITCASH.sh CARTEIRA BITCOIN CASH\033[0m"
fi
