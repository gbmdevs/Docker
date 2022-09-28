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

# Git - Hercules Servidor de Ragnarok
RUN git config --global user.name "Guilherme B.(Emaloka)"
RUN git config --global user.email guih.smi2@outlook.com
RUN cd desenvolvimento && git init && git remote add origin https://github.com/HerculesWS/Hercules.git && git pull origin master

# Instalação do PHP
RUN apt-get install software-properties-common -y 
RUN add-apt-repository ppa:ondrej/php -y
RUN apt-get install php8.0 -y
RUN apt-get install php8.0-gd php8.0-xml php8.0-soap php8.0-mbstring php8.0-mysql -y

# Requisitos para Intalação do Servidor
RUN apt-get install make -y
RUN apt-get install libmysqlclient-dev -y
RUN apt-get install libpcre3-dev -y
RUN apt-get install gnupg -y
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138
RUN echo "deb http://ftp.us.debian.org/debian unstable main contrib non-free" >> /etc/apt/sources.list.d/unstable.list
RUN apt-get update
RUN apt-get install -t unstable gcc-5 -y
RUN apt-get install -t unstable g++-5 -y
RUN ln -s /usr/bin/gcc-5 /usr/bin/gcc
RUN ln -s /usr/bin/g++-5 /usr/bin/g++

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
RUN rm -r /home/ragnarok/servidor/desenvolvimento/phpMyAdmin-5.1.1-all-languages.tar.gz

COPY docker-entrypoint.sh /usr/local/bin/ 

# Libera para Todos
RUN useradd -ms /bin/bash hercules
RUN chmod 777 -R /home/ragnarok/servidor/desenvolvimento
#RUN mkdir /var/run/mysqld && chown -R hercules /var/run/mysqld 
#RUN chown hercules /etc/init.d/mysql
RUN echo 'root:admin' | chpasswd

USER hercules

EXPOSE 80
EXPOSE 3306
EXPOSE 6900
EXPOSE 6121
EXPOSE 5121
#ENTRYPOINT [ "docker-entrypoint.sh"]
CMD ["/bin/bash"]