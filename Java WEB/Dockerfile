# Autor : Guilherme Braga(Emaloka) - guih.smi2@outlook.com
# Aplicação Java  - Docker construido para serviços em Java
# Objetivo :  Deixar o mais dinamico possivel a instalação do weblogic para
# o projetos em Java e controle financeiro.

FROM ubuntu:16.04
MAINTAINER emaloka:guih.smi2@outlook.com
WORKDIR /home/java/app
# Para Desenvolvimento e automação dos scripts
RUN apt-get update 
RUN apt-get install git -y 
RUN apt-get install curl -y
RUN apt-get install nano -y 
RUN apt-get update -y && apt-get install expect -y

# Cria as pastas para o ambiente java
RUN mkdir /usr/lib/jvm

# Copia os arquivos necessários para a configuração do ambiente
COPY apache-maven-3.6.1-bin.tar.gz /home/java/app/
COPY jdk-8u221-linux-x64.tar.gz    /home/java/app/
COPY wls1036_generic.jar           /home/java/app/          
COPY weblogic.sh                   /home/java/app/

# Retira os espaços que o VS Code deixa no arquivo de script
RUN sed -i -e 's/\r$//' weblogic.sh

# Extração do JDK versão 8 e Instalação
RUN tar xzvf jdk-8u221-linux-x64.tar.gz -C /usr/lib/jvm
RUN update-alternatives --install "/usr/bin/java"  "java" "/usr/lib/jvm/jdk1.8.0_221/bin/java" 0
RUN update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0_221/bin/javac" 0

# Instalação Maven  e especificação do comando MVN
RUN tar xzvf apache-maven-3.6.1-bin.tar.gz -C /opt/
RUN update-alternatives --install "/usr/bin/mvn" "mvn" "/opt/apache-maven-3.6.1/bin/mvn" 0

# Executa o script de Automação
#RUN ./weblogic.sh

CMD ["/bin/bash"]