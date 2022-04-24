#!/bin/bash
areglo=('nodejs' 'npm' 'serve')

echo "$areglo"
echo "${areglo[@]}"

for i in ${areglo[@]}
do
which $i
o=`echo $?`
if [ $o -gt 0 ];
then
echo "Se instalara $i"
apt install $i -y
else 
sudo npm install -g $i

 "$i Esta instalado"

fi
done 
