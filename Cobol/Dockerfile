#==================================================# 
# Ambiente Cobol para Estudos
#==================================================#

FROM ubuntu:16.04
MAINTAINER gbmedevs(Guilherme Gois)
WORKDIR /home/desen/cobol

COPY hercules-3.07.tar.gz /home/desen/cobol/
RUN tar xzvf hercules-3.07.tar.gz -C /home/desen/cobol/
#-----------------------------------------------------#
#        Comandos Necessários para Execuação          #
#-----------------------------------------------------#
RUN apt-get update
RUN apt-get install gcc -y
RUN apt-get install autoconf -y
RUN apt-get install automake -y
RUN apt-get install gawk -y
RUN apt-get install m4 -y
RUN apt-get install make -y
RUN apt-get install g++ -y
#-----------------------------------------------------#
RUN cd /home/desen/cobol/hercules-3.07/ && ./configure --prefix=/usr/local/hercules && make && make install

EXPOSE 8081
EXPOSE 3270
CMD ["/bin/bash"]