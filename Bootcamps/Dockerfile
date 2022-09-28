# -------------------------------------------------- #
#  Area de Estudos para Bootcamps:
#  Rocketseat
#  Digital Innovation
# -------------------------------------------------- #
FROM ubuntu:16.04
WORKDIR /home/app/
RUN apt-get update
RUN apt-get install nano -y && apt-get install git -y

COPY inicia.sh /usr/bin/

ENTRYPOINT [ "inicia.sh" ]
#CMD ["/bin/bash"]