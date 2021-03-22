FROM ubuntu:16.04
WORKDIR /home/server/minecraft
MAINTAINER guilherme braga(Emaloka)

RUN apt-get update
RUN apt-get install curl -y
RUN apt-get install wget -y

RUN mkdir /usr/lib/jvm

# Arquivos de instalação do server
RUN wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar

COPY inicia.sh /usr/local/bin/ 

# Arquivo java para Instalação
COPY jdk-8u221-linux-x64.tar.gz   /home/server/minecraft

# Extração do JDK versão 8 e Instalação
RUN tar xzvf jdk-8u221-linux-x64.tar.gz -C /usr/lib/jvm
RUN update-alternatives --install "/usr/bin/java"  "java"  "/usr/lib/jvm/jdk1.8.0_221/bin/java" 0
RUN update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0_221/bin/javac" 0

# Extração dos arquivos do servdor
RUN java -jar server.jar

#Copiar o Eula.txt
COPY eula.txt /home/server/minecraft

EXPOSE 25565

ENTRYPOINT [ "inicia.sh" ]
CMD ["/bin/bash"]