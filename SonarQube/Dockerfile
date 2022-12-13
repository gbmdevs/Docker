FROM ubuntu:20.04
MAINTAINER guilherme.gois
WORKDIR /home/desenv/sonarqube

ENV JDK11=jdk-11.0.16.1_linux-x64_bin.tar.gz
ENV JDK11PATH=jdk-11.0.16.1
ENV sonar8=sonarqube-7.8
ENV sonar11=sonarqube-9.7.1.62043

RUN apt-get update
RUN apt-get install curl -y
RUN apt-get install nano -y
RUN apt-get install zip -y

COPY ../SonarQube/docker-entrypoint.sh /usr/local/bin/ 
RUN chmod +x /usr/local/bin/docker-entrypoint.sh 

#------ Java ------ #
RUN mkdir /usr/lib/jvm
COPY ../recursos/${JDK11} /home/desenv/sonarqube/${JDK11} 
RUN tar xzvf /home/desenv/sonarqube/${JDK11}  -C /usr/lib/jvm
RUN update-alternatives --install "/usr/bin/java"  "java"  "/usr/lib/jvm/${JDK11PATH}/bin/java" 0
RUN update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/${JDK11PATH}/bin/javac" 0
#------ Java/FIM ------ #

#------ SonarQube ------ #
COPY ../recursos/${sonar8}.zip /home/desenv/sonarqube/sonarqube.zip
RUN unzip sonarqube.zip
RUN export SONAR_JAVA_PATH="/usr/lib/jvm/${JDK11PATH}/bin/java"
RUN useradd -ms /bin/bash sonar
RUN chown -R sonar:sonar /home/desenv/sonarqube/${sonar8}
USER sonar
#------ SonarQube/FIM ------ #


ENTRYPOINT [ "docker-entrypoint.sh"]
CMD ["/bin/bash"]
EXPOSE 9000