# ----------------------------------------------------- #
# Ambiente de Preparo para o Bootcamp da RocketSeat
# Autor : Guilherme B.(guih.smi2@outlook.com)
# ----------------------------------------------------- #

FROM ubuntu:16.04
MAINTAINER emaloka(guih.smi2@outlook.com)
WORKDIR /home/bootcamp/
RUN apt-get update
RUN apt-get install nano -y
RUN apt-get install curl -y

# Instalando o NodeJS na versao 13
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -  
RUN apt-get install -y nodejs

# Instalação do Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && sudo apt install yarn

EXPOSE 8080
CMD ["/bin/bash"]