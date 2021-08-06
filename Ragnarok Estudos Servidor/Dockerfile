# ---------------------------------------------------------------- #
# Ragnarok Online Servidor
# ---------------------------------------------------------------- #
FROM ubuntu:18.04
MAINTAINER guilherme Braga(emaloka)
WORKDIR /home/ragnarok/servidor

# Não interagir com o APT-get bem util 
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

# Servidor de Desenvolvimento do Ragnarok
RUN mkdir desenvolvimento

# Recursos necessarios para o servidor
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install nano -y
RUN apt-get install wget -y
RUN apt-get install curl -y

# Instalação do PHP
RUN apt-get install software-properties-common -y 
RUN add-apt-repository ppa:ondrej/php -y
RUN apt-get install php8.0 -y
RUN apt-get install php8.0-gd php8.0-xml php8.0-soap php8.0-mbstring php8.0-mysql -y

# Instalando o Servidor Apache 2
RUN apt-get install apache2 -y
COPY apache2.conf /etc/apache2

# Instalação do MySQL Server 
RUN echo mysql-server-5.7 mysql-server/root_password password admin | debconf-set-selections
RUN echo mysql-server-5.7 mysql-server/root_password_again password admin | debconf-set-selections
RUN apt-get install mysql-server -y

# Instalação do PHPmyAdmin
COPY phpMyAdmin-5.1.1-all-languages.tar.gz /home/ragnarok/servidor/desenvolvimento
RUN tar xzvf /home/ragnarok/servidor/desenvolvimento/phpMyAdmin-5.1.1-all-languages.tar.gz -C /home/ragnarok/servidor/desenvolvimento
RUN mv /home/ragnarok/servidor/desenvolvimento/phpMyAdmin-5.1.1-all-languages /var/www/html/phpmyadmin

EXPOSE 80
EXPOSE 3306
CMD ["/bin/bash"]