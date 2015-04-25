#!/usr/bin/env bash
echo "Creating databases for Atlassian suite..."

gosu postgres postgres --single -jE <<-EOSQL
		CREATE DATABASE jira ;
	EOSQL
	echo

gosu postgres postgres --single -jE <<-EOSQL
		CREATE DATABASE stash ;
	EOSQL
	echo

gosu postgres postgres --single -jE <<-EOSQL
		CREATE DATABASE bamboo ;
	EOSQL
	echo

