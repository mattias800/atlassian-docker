FROM java:7
MAINTAINER Mattias Andersson <mattias800@gmail.com>

RUN apt-get update
RUN apt-get -y install wget
RUN wget https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-6.4.2.tar.gz
RUN tar xvf atlassian-jira-6.4.2.tar.gz
RUN mkdir /opt/atlassian/
RUN mv ./atlassian-jira-6.4.2-standalone/ /opt/atlassian/jira

VOLUME /var/atlassian

ENV JIRA_HOME /var/atlassian/application-data/jira
EXPOSE 8080 8080

ENTRYPOINT /opt/atlassian/jira/bin/start-jira.sh -fg
