#!/bin/bash

mkdir /publico /adm /ven /sec

echo "-------------------------------------------------------------------------"
echo "------ Diretórios </publico>, </adm>, </ven>, </sec> foram criados! -----"
echo "-------------------------------------------------------------------------"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo
echo "-------------------------------------------------------------------------"
echo "------------ Grupos <GRP_ADM>, <GRP_VEN>, <GRP_SEC> criados! ------------"
echo "-------------------------------------------------------------------------"
useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM
passwd -d -e -q carlos
passwd -d -e -q maria
passwd -d -e -q joao

useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN
passwd -d -e -q debora
passwd -d -e -q sebastiana
passwd -d -e -q roberto

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC
passwd -d -e -q josefina
passwd -d -e -q amanda
passwd -d -e -q rogerio

echo
echo "---------------------------------------------------------------------------------"
echo "Usuários <carlos>, <maria>, <joao> criados e adicionados ao grupo GRP_ADM"
echo
echo "Usuários <debora>, <sebastiana>, <roberto> criados e adicionados ao grupo GRP_VEN"
echo
echo "Usuários <josefina>, <amanda>, <rogerio> criados e adicionados ao grupo GRP_SEC"
echo
echo "Será necessário cadastro de senhas no próximo login dos usuários criados"
echo "---------------------------------------------------------------------------------"
echo

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo
echo "----------------- Diretrizes de permissões configuradas! ----------------"
echo "-------------------------------------------------------------------------"
echo "-------------------------- Processo finalizado --------------------------"
echo "-------------------------------------------------------------------------"
