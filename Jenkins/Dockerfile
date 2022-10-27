FROM ubuntu:20.04

WORKDIR /home/desenv/jenkins

ARG jenkinsVersion=2.346.1

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y git
RUN apt-get install -y zip
RUN apt-get install -y nano
RUN mkdir /usr/lib/jvm

COPY ./recursos/apache-maven-3.8.6-bin.tar.gz   /home/desenv/jenkins
COPY ./recursos/jdk-8u333-linux-x64.tar.gz      /home/desenv/jenkins

# Download do Jenkins
RUN curl -L http://get.jenkins.io/war-stable/${jenkinsVersion}/jenkins.war --output jenkins.war

# Extração Java
RUN tar xzvf jdk-8u333-linux-x64.tar.gz -C /usr/lib/jvm
RUN update-alternatives --install "/usr/bin/java"  "java"  "/usr/lib/jvm/jdk1.8.0_333/bin/java" 0
RUN update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0_333/bin/javac" 0


EXPOSE 9101