This is an easy way to get JIRA, Stash and Bamboo up and running, connected to Postgres, inside of Docker.
It uses Docker Compose to start the environment.

*UpdatingPlease note*
This is very much work in progress, and might not work.

All data is stored in /data in the host file system.

= Usage =

git clone [the repo]
cd [the repo]
sudo docker-compose build
sudo docker-compose up

Database configuration:
Database type: Postgres
Host: db
Database: jira for JIRA, stash for Stash, bamboo for Bamboo.
Username: atlassian
Password: atlassian
