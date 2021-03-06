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
cd atlassian-docker
sudo docker-compose build
sudo docker-compose up
```

## Using Upstart

Ubuntu (and other Linus distros) use Upstart to start and stop services.

See directory `upstart/` for an Upstart conf file.

On the following row
```chdir /home/ubuntu/atlassian-docker/``` replace the path with your `atlassian-docker` path.

Copy the file to `/etc/init` and run `sudo start atlassian` to start it up.   
 
## Database configuration

When opening up JIRA, Stash or Bamboo in your browser, it will ask you to input database information.

Use the following.

* Database type: Postgres
* Host: db
* Port: 5432
* Database: jira for JIRA, stash for Stash, bamboo for Bamboo.
* Username: atlassian
* Password: atlassian

## Feedback or problems?

Feel free to send feedback. There are probably tons of possible improvements.
