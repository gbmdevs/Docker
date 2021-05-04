# -------------------------------------------------- #
#  AMBIENTE DE DESENVOLVIMENTO MOBILE
# -------------------------------------------------- #
#  Tecnologia utilizadas: React Native
# -------------------------------------------------- #
FROM ubuntu:16.04
MAINTAINER gbmdevs(guih.smi2@outlook.com)
WORKDIR /home/desen/mobile

# Ferramentas necessarias para o trabalho
RUN apt-get update
RUN apt-get install nano -y && apt-get install curl -y
RUN apt-get install git -y  

# Instalação do Node.js 13.0
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get install -y nodejs

# Instalando a JDK para Android

# Iniciando o backup de projetos
RUN git config --global user.name "Guilherme B.(Emaloka)"
RUN git config --global user.email guih.smi2@outlook.com
RUN git init && git remote add origin 'https://github.com/gbmdevs/Mobile.git' && git pull origin main

EXPOSE 19006 19001 19002

CMD ["/bin/bash"]