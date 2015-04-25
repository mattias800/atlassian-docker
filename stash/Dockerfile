FROM java:7
MAINTAINER Mattias Andersson <mattias800@gmail.com>

RUN apt-get update
RUN apt-get -y install wget
RUN wget https://www.atlassian.com/software/stash/downloads/binary/atlassian-stash-3.8.0.tar.gz
RUN tar xvf atlassian-stash-3.8.0.tar.gz
RUN mkdir /opt/atlassian/
RUN mv ./atlassian-stash-3.8.0/ /opt/atlassian/stash

VOLUME /var/atlassian

ENV STASH_HOME /var/atlassian/application-data/stash
EXPOSE 7990 7990
EXPOSE 7999 7999

ENTRYPOINT /opt/atlassian/stash/bin/start-stash.sh -fg
