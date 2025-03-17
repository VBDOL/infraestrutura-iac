#!/bin/bash

echo "Iniciando o provisionamento de infraestrutura..."

# Excluir diretórios, grupos e usuários existentes para evitar conflitos
echo "Removendo diretórios antigos..."
rm -rf /publico /adm /ven /sec

echo "Removendo grupos antigos..."
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Removendo usuários antigos..."
userdel -r carlos
userdel -r maria
userdel -r joao
userdel -r debora
userdel -r sebastiana
userdel -r roberto
userdel -r josefina
userdel -r amanda
userdel -r rogerio

# Criar os diretórios
echo "Criando diretórios..."
mkdir /publico /adm /ven /sec

# Criar os grupos de usuários
echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criar os usuários e adicioná-los aos grupos
echo "Criando usuários e associando aos grupos..."
useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM

useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC

# Definir permissões dos diretórios
echo "Definindo permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Provisionamento concluído com sucesso!"
