FROM java:7
MAINTAINER Mattias Andersson <mattias800@gmail.com>

RUN apt-get update
RUN apt-get -y install wget
RUN wget https://www.atlassian.com/software/bamboo/downloads/binary/atlassian-bamboo-5.8.1.tar.gz
RUN tar xvf atlassian-bamboo-5.8.1.tar.gz
RUN mkdir /opt/atlassian/
RUN mv ./atlassian-bamboo-5.8.1/ /opt/atlassian/bamboo

VOLUME /var/atlassian

ENV STASH_HOME /var/atlassian/application-data/bamboo
EXPOSE 8085 8085

ENTRYPOINT /opt/atlassian/bamboo/bin/start-bamboo.sh -fg
