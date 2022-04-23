#!/bin/bash

#comprobar instalacion de nodejs , intalacion de snap, instalacion de npm y instalacion de serve instalar si es necesario.
vari=('nodejs' 'npm' 'serve')
echo $vari[@]
node=`which nodejs`
no=`echo $?`
sn=`echo $?`
npm=`which npm`
np=` echo $?`
server=`which serve`
se=`echo $?`
if [ $no -gt 0 ];
then
echo "preparando instalacion de nodejs";
`sudo apt-get update  >/dev/null`
`sudo apt-get upgrade -y  >/dev/null `
`apt install nodejs -y >/dev/null `

else

echo -e "ya esta instaldo";
fi
sleep 5;

apt remove nodejs -y
#evaluar  tamaño de disco para crear carpeta a compartit.

#navegar hasta la carpeta creada  y  darle permisos.
cd ~
mkdir Compartir
chmod 777 Compartir
#crear un enlace simbolico a la carpeta compartida en Escritorio.
touch Compartir/index.html

#exponer el servidor web.

