# Atlassian suite in Docker

This is an easy way to get JIRA, Stash and Bamboo up and running, connected to Postgres, inside of Docker.

It uses Docker Compose to start the environment.

### Please note*

This is very much work in progress, and might not work.

## Data

All data is stored in /data in the host file system.

## Requirements

An environment with Docker and Docker Compose installed.

## Usage

```
git clone https://github.com/mattias800/atlassian-docker.git
cd atlassian-docker.git
sudo docker-compose build
sudo docker-compose up
```

## Database configuration

* Database type: Postgres
* Host: db
* Database: jira for JIRA, stash for Stash, bamboo for Bamboo.
* Username: atlassian
* Password: atlassian
