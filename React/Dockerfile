# ------------------------------------------------------- #
# Ambiente para Front-end Plataform - React               #
# --------------------------------------------------------#
FROM ubuntu:16.04
WORKDIR  /home/app/react
RUN apt-get update
RUN apt-get install nano -y
RUN apt-get install curl -y
RUN apt-get install git -y

# Instalando o NodeJS na versao 13
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -  
RUN apt-get install -y nodejs

# Instala o ambiente de React
RUN npm install -g create-react-app


EXPOSE 3000
CMD ["/bin/bash"]
