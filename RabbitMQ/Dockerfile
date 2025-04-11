FROM ubuntu:22.04
MAINTAINER guih.smi2@outlook.com(gbmdevs)
WORKDIR /home/rabbitmq

ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install essential build tools and dependencies
RUN echo "Acquire::http::Pipeline-Depth 0;" > /etc/apt/apt.conf.d/99custom && \
    echo "Acquire::http::No-Cache true;" >> /etc/apt/apt.conf.d/99custom && \
    echo "Acquire::BrokenProxy    true;" >> /etc/apt/apt.conf.d/99custom

RUN apt-get update && apt-get upgrade -y 
RUN apt-get install -y curl
RUN apt-get install -y gnupg
RUN apt-get install -y erlang-base  
RUN apt-get install -y erlang-asn1
RUN apt-get install -y erlang-ftp
RUN apt-get install -y erlang-crypto
RUN apt-get install -y erlang-eldap 
RUN apt-get install -y erlang-inets
RUN apt-get install -y erlang-mnesia
RUN apt-get install -y erlang-os-mon 
RUN apt-get install -y erlang-parsetools
RUN apt-get install -y erlang-public-key

# RabbitMQ      
RUN apt-get install rabbitmq-server -y --fix-missing

RUN rabbitmq-plugins enable rabbitmq_management 

#Script de inicialização
COPY ../RabbitMQ/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

#Portas do RabbitMQ
EXPOSE 5672 15672

ENTRYPOINT ["/entrypoint.sh"] 