FROM ubuntu:20.04
MAINTAINER gbmdevs
WORKDIR /home/desenv/python

RUN apt-get update
RUN apt-get install nano -y
RUN apt-get install curl -y
RUN apt-get install git -y

RUN apt-get install python3 -y

RUN git config --global user.name "Guilherme B.(Emaloka)"
RUN git config --global user.email guih.smi2@outlook.com
RUN git init && git remote add origin https://github.com/gbmdevs/Python.git && git pull origin main


EXPOSE 80
EXPOSE 8080