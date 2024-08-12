# Titulo: Criação do Ambiente JBOSS para desenvolvimento Java WEB 1.8
# Autor:  Guilherme B.(Emaloka) : guih.smi2@outlook.com
# Descrição:
FROM ubuntu:24.04
MAINTAINER guih.smi2@outlook.com(Emaloka)
WORKDIR /home/app/java

RUN apt-get clean && apt-get update && apt-get upgrade -y
RUN apt-get install nano -y && apt-get install curl -y
RUN apt-get install git -y  
RUN apt-get install unzip -y

# Inicialização dos repositorios GIT :  Projetos em Java e SETUP para ambiente
RUN mkdir projetos
RUN git config --global user.name "Guilherme B.(Emaloka)"
RUN git config --global user.email guih.smi2@outlook.com
RUN git config --global init.defaultBranch master
RUN git config --global core.compression 9
RUN cd projetos && git init && git clone https://github.com/gbmdevs/Java.git

RUN mkdir /usr/lib/jvm

# Copia os arquivos necessários para a configuração do ambiente
COPY ./recursos/apache-maven-3.8.6-bin.tar.gz    /home/app/java
COPY ./recursos/jdk-8u333-linux-x64.tar.gz       /home/app/java
COPY ./recursos/jdk-17.0.11_linux-x64_bin.tar.gz /home/app/java
COPY ./recursos/jboss-eap-7.2.0-installer.jar    /home/app/java//home/app/java/jboss-7-2.jar    
COPY ./recursos/gradle-8.4-bin.zip               /home/app/java

#Copia o script de automação, instalação e inicialização
COPY ./recursos/auto.xml                        /home/app/java/auto.xml  
COPY ./recursos/init.sh                         /home/app/java/init.sh 

# Instalação do gradle
RUN mkdir /opt/gradle 
RUN unzip gradle-8.4-bin.zip -d /opt/gradle/
RUN update-alternatives --install "/usr/bin/gradle" "gradle" "/opt/gradle/gradle-8.4/bin/gradle" 0

# Extração do JDK versão 17 e Instalação
RUN tar xzvf jdk-17.0.11_linux-x64_bin.tar.gz  -C /usr/lib/jvm
RUN update-alternatives --install "/usr/bin/java"  "java"  "/usr/lib/jvm/jdk-17.0.11/bin/java" 1
RUN update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk-17.0.11/bin/javac" 1
RUN echo "alias java17='echo 1 | update-alternatives --config java | clear'" >> ~/.bashrc

# Extração do JDK versão 8 e Instalação
RUN tar xzvf jdk-8u333-linux-x64.tar.gz        -C /usr/lib/jvm
RUN update-alternatives --install "/usr/bin/java"  "java"  "/usr/lib/jvm/jdk1.8.0_333/bin/java" 2
RUN update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0_333/bin/javac" 2
RUN echo "alias java8='echo 2 | update-alternatives --config java | clear'" >> ~/.bashrc

# Instalação Maven  e especificação do comando MVN
RUN tar xzvf apache-maven-3.8.6-bin.tar.gz -C /opt/
RUN update-alternatives --install "/usr/bin/mvn" "mvn" "/opt/apache-maven-3.8.6/bin/mvn" 0

#Executa a Instalação por completo do JBOSS
RUN java -jar /home/app/java/home/app/java/jboss-7-2.jar auto.xml -variables adminPassword=admin

# Configuração do Servidor
COPY ./recursos/configuration /home/app/java/configuration/

# Lembrar de Rodar sempre com -b  0.0.0.0 , pois o JBOSS nao replica para as outras portas
# -b 0.0.0.0 -bmanagement 0.0.0.0 , para todas as portas


# Instalação do Node.js - Angular 
#RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
#RUN DEBIAN_FRONTEND=noninteractive apt install nodejs -yq
#RUN npm install -g @angular/cli

# Entrypoint para executação de teste
#ENTRYPOINT [ "/home/app/init.sh" ]
CMD ["/bin/bash"]