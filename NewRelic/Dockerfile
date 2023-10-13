FROM ubuntu:20.04
MAINTAINER gbmdevs

ENV NEW_RELIC_API_KEY=NRAK-3OBBHD9AQAK9GY5UZQNPH30B0GU 

WORKDIR /home/app/newrelic

RUN apt-get update
RUN apt-get install sudo -y
RUN apt-get install curl -y
RUN apt-get install openjdk-11-jdk -y
RUN apt-get install gpg -y

# COnfiguração do NEW Relic
RUN curl -Ls https://download.newrelic.com/install/newrelic-cli/scripts/install.sh | bash && sudo NEW_RELIC_API_KEY=${NEW_RELIC_API_KEY} NEW_RELIC_ACCOUNT_ID=4169122 /usr/local/bin/newrelic install
RUN echo "license_key: ${NEW_RELIC_API_KEY}" | sudo tee -a /etc/newrelic-infra.yml
RUN curl -fsSL https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/newrelic-infra.gpg
RUN echo "deb https://download.newrelic.com/infrastructure_agent/linux/apt focal main" | sudo tee -a /etc/apt/sources.list.d/newrelic-infra.list
#RUN apt-get update
#RUN apt-get install newrelic-infra -y

EXPOSE 7777
CMD ["/bin/bash"]