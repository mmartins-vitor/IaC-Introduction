#!/bin/bash

mkdir /pub
mkdir /adm
mkdir /ven
mkdir /sec

# pastas criadas

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# grupos criados

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

# definicao de grupos para pastas

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
chmod 777 /pub/

# definindo permissoes

useradd carlos -c "carlo user" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

useradd maria -c "maria user" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

useradd joao -c "joao user" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

# criados user de adm


useradd debora -c "deb user" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN

useradd sebastian -c "seb user" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN

useradd roberto -c "rob user" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN

# criado user de ven


useradd josefina -c "jo user" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC

useradd amanda -c "amanda user" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC

useradd rogerio -c "rog user" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC

# criado user de sec
