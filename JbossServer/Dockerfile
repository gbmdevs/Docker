# Titulo: Criação do Ambiente JBOSS para desenvolvimento Java WEB 1.8
# Autor:  Guilherme B.(Emaloka) : guih.smi2@outlook.com
# Descrição:
FROM ubuntu:16.04
MAINTAINER guih.smi2@outlook.com(Emaloka)
WORKDIR /home/app/java

RUN apt-get update
RUN apt-get install nano -y && apt-get install curl -y
RUN apt-get install git -y  

# Inicialização dos repositorios GIT :  Projetos em Java e SETUP para ambiente
RUN mkdir projetos
RUN git config --global user.name "Guilherme B.(Emaloka)"
RUN git config --global user.email guih.smi2@outlook.com
RUN cd projetos && git init && git remote add origin https://github.com/emaloka/Java.git && git pull origin master

RUN mkdir /usr/lib/jvm

# Copia os arquivos necessários para a configuração do ambiente
COPY apache-maven-3.6.3-bin.tar.gz   /home/app/java
COPY jdk-8u221-linux-x64.tar.gz      /home/app/java
COPY jboss-eap-7.2.0-installer.jar   /home/app/java/jboss-7-2.jar    

#Copia o script de automação, instalação e inicialização
COPY auto.xml                        /home/app/java/auto.xml  
COPY init.sh                         /home/app/java/init.sh 

# Extração do JDK versão 8 e Instalação
RUN tar xzvf jdk-8u221-linux-x64.tar.gz -C /usr/lib/jvm
RUN update-alternatives --install "/usr/bin/java"  "java"  "/usr/lib/jvm/jdk1.8.0_221/bin/java" 0
RUN update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0_221/bin/javac" 0

# Instalação Maven  e especificação do comando MVN
RUN tar xzvf apache-maven-3.6.3-bin.tar.gz -C /opt/
RUN update-alternatives --install "/usr/bin/mvn" "mvn" "/opt/apache-maven-3.6.3/bin/mvn" 0

#Executa a Instalação por completo do JBOSS
RUN java -jar jboss-7-2.jar auto.xml -variables adminPassword=admin

# Lembrar de Rodar sempre com -b  0.0.0.0 , pois o JBOSS nao replica para as outras portas
# -b 0.0.0.0 -bmanagement 0.0.0.0 , para todas as portas



CMD ["/bin/bash"]