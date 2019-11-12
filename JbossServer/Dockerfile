#
# Criação do Ambiente JBOSS
#
FROM ubuntu:16.04
MAINTAINER guih.smi2@outlook.com(Emaloka)
WORKDIR /home/app/java

RUN apt-get update
RUN apt-get install nano -y && apt-get install curl -y
RUN apt-get install git -y

RUN mkdir /usr/lib/jvm

# Copia os arquivos necessários para a configuração do ambiente
COPY apache-maven-3.6.1-bin.tar.gz   /home/app/java
COPY jdk-8u221-linux-x64.tar.gz      /home/app/java
COPY jboss-eap-7.2.0-installer.jar   /home/app/java/jboss-7-2.jar          

# Extração do JDK versão 8 e Instalação
RUN tar xzvf jdk-8u221-linux-x64.tar.gz -C /usr/lib/jvm
RUN update-alternatives --install "/usr/bin/java"  "java"  "/usr/lib/jvm/jdk1.8.0_221/bin/java" 0
RUN update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0_221/bin/javac" 0

# Instalação Maven  e especificação do comando MVN
RUN tar xzvf apache-maven-3.6.1-bin.tar.gz -C /opt/
RUN update-alternatives --install "/usr/bin/mvn" "mvn" "/opt/apache-maven-3.6.1/bin/mvn" 0

CMD ["/bin/bash"]