# Atlassian suite in Docker

This is an easy way to get JIRA, Stash and Bamboo up and running, connected to Postgres, inside of Docker.

There is no setup, and it uses Docker Compose to start the environment.

### Please note

This is very much work in progress.
It is working for me, but don't be surprised if you bump into problems.

## Data

All data is stored in `/data` in the host file system.
If you need to change this, update the paths to the volume mappings in docker-compose.yml.

## Requirements

An environment with Docker and Docker Compose installed.

## Usage

```
git clone https://github.com/mattias800/atlassian-docker.git
cd atlassian-docker.git
sudo docker-compose build
sudo docker-compose up
```

## Using Upstart

See directory `upstart/` for an Upstart conf file.
Replace the path with the path to your atlassian-docker.git path.
 
## Database configuration

* Database type: Postgres
* Host: db
* Port: 5432
* Database: jira for JIRA, stash for Stash, bamboo for Bamboo.
* Username: atlassian
* Password: atlassian
