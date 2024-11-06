#!/bin/bash

# Para mostrar los comandos que se van ejecutando
set -ex

# Importamos las variables de entorno
source .env

# Eliminamos descargas previas del codigo fuente de WordPress
rm -rf /tmp/latest.tar.gz

# Descargamos el codigo fuente de WordPress
wget https://wordpress.org/latest.tar.gz -P /tmp

# Descomprimimos el codigo fuente de WordPress
tar -xzvf /tmp/latest.tar.gz -C /tmp

# Eliminamos el contenido de instalaciones previas en /var/www/html
rm -rf /var/www/html/*

# Creamos el directorio para la instalación de WordPress
mkdir -p /var/www/html/$WORDPRESS_DIRECTORY

# Movemos el código fuente de WordPress a /var/www/html
mv -f /tmp/wordpress/* /var/www/html/$WORDPRESS_DIRECTORY

exit #<--------------------------------------------------