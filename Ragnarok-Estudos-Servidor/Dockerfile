# ---------------------------------------------------------------- #
# Ragnarok Online Servidor
# Rathena
# ---------------------------------------------------------------- #
FROM ubuntu:22.04
MAINTAINER guilherme Braga(emaloka)
WORKDIR /home/ragnarok/servidor

# Não interagir com o APT-get bem util 
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
ENV MYSQL_USER=default
ENV MYSQL_PASSWORD=password
ENV MYSQL_ROOT_PASSWORD=root

# Preparação
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get clean
RUN apt-get update -o Acquire::CompressionTypes::Order::=gz

# Recursos necessarios para o servidor
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install nano -y
RUN apt-get install wget -y
RUN apt-get install ca-certificates -y
RUN apt-get install curl -y 

# Instalação do MySQL Server  
RUN apt-get update -o Acquire::CompressionTypes::Order::=gz
RUN apt-get install -y mysql-server-8.0 --fix-missing  

# Init DB Mysql Server
COPY ./Ragnarok-Estudos-Servidor/docker-entrypoint.sh /usr/local/bin/ 
COPY ./Ragnarok-Estudos-Servidor/init.sql /docker-entrypoint-initdb.d/

# Git - Hercules Servidor de Ragnarok
RUN git config --global user.name "Guilherme B.(Emaloka)"
RUN git config --global user.email guih.smi2@outlook.com
RUN git config --global http.postBuffer 524288000
RUN git init && git remote add origin https://github.com/rathena/rathena.git && git clone --depth 1 https://github.com/rathena/rathena.git

# Instalação do PHP 
#RUN apt-get update
#RUN apt-get install php libapache2-mod-php -y --fix-missing

# Requisitos para Intalação do Servidor
RUN apt-get install make -y
RUN apt-get install gcc -y
RUN apt-get install g++ -y
RUN apt-get install zlib1g-dev -y
RUN apt-get install zlib1g-dev -y
RUN apt-get install default-libmysqlclient-dev -y
# libmysqlclient-dev zlib1g-dev libpcre3-dev -y --fix-missing
#RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138
#RUN echo "deb http://ftp.us.debian.org/debian unstable main contrib non-free" >> /etc/apt/sources.list.d/unstable.list
#RUN apt-get update 
#RUN apt-get install -t unstable gcc-5 -y
#RUN apt-get install -t unstable g++-5 -y
#RUN ln -s /usr/bin/gcc-5 /usr/bin/gcc
#RUN ln -s /usr/bin/g++-5 /usr/bin/g++

# Instalando o Servidor Apache 2
#RUN apt-get install apache2 -y
#COPY ./Ragnarok-Estudos-Servidor/apache2.conf /etc/apache2

# Instalação do PHPmyAdmin
#COPY ./recursos/phpMyAdmin-5.1.1-all-languages.tar.gz /home/ragnarok/servidor/desenvolvimento
#RUN tar xzvf /home/ragnarok/servidor/desenvolvimento/phpMyAdmin-5.1.1-all-languages.tar.gz -C /home/ragnarok/servidor/desenvolvimento
#RUN mv /home/ragnarok/servidor/desenvolvimento/phpMyAdmin-5.1.1-all-languages /var/www/html/phpmyadmin
#RUN rm -r /home/ragnarok/servidor/desenvolvimento/phpMyAdmin-5.1.1-all-languages.tar.gz

# Libera para Todos
RUN useradd -ms /bin/bash ragnarok
RUN chmod 777 -R /var/log/
# COnfiguração inicial
RUN chmod 777 -R /etc/mysql/debian.cnf
#RUN chmod 777 -R /var/log/apache2/
#RUN chmod 777 -R /etc/init.d/
RUN chmod 777 -R /home/ragnarok
RUN chown 777 -R /var/lib/mysql /var/run/mysqld
RUN chmod 777 -R /var/lib/mysql /var/run/mysqld

#RUN mkdir /var/run/mysqld && chown -R hercules /var/run/mysqld 
#RUN chown hercules /etc/init.d/apache2
#RUN echo 'root:admin' | chpasswd

RUN echo 'root:admin' | chpasswd

USER ragnarok

EXPOSE 80
EXPOSE 3306 
EXPOSE 6900
EXPOSE 6121
EXPOSE 5121
#ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh"]
CMD ["/bin/bash"]