# ------------------------------------------------------- #
# Ambiente para Front-end Plataform - React               #
# --------------------------------------------------------#
FROM ubuntu:16.04
WORKDIR  /home/app/react

RUN apt-get update
RUN apt-get install nano -y
RUN apt-get install curl -y
RUN apt-get install git -y

# Instalando o NodeJS na versao 13 - Junto ao NPM 
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -  
RUN apt-get install -y nodejs

# Instala o ambiente de React
RUN npm install -g create-react-app

# Backup do Diretirio onde os projetos Front-end estao hospedados
RUN git config --global user.name "Guilherme B.(gbmdevs)"
RUN git config --global user.email guih.smi2@outlook.com
RUN git init && git remote add origin https://github.com/gbmdevs/Front-end.git && git pull origin master 

# Bash para Inicialização 
#COPY docker-entrypoint.sh /home/app/
#RUN chmod 777 /home/app/docker-entrypoint.sh

EXPOSE 3000
#ENTRYPOINT [ "/home/app/docker-entrypoint.sh"]
CMD ["/bin/bash"]
