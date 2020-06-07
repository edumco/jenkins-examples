#!/bin/sh

# Get Jenkins CLI
Wget http://localhost:80/jnlpJars/jenkins-cli.jar

# Pipeline
java -jar jenkins-cli.jar -s http://localhost:8080/ install-plugin workflow-aggregator

# Blue Ocean
java -jar jenkins-cli.jar -s http://localhost:8080/ install-plugin blueocean

# GitHub Authentication
java -jar jenkins-cli.jar -s http://localhost:8080/ install-plugin github-oauth

# Matrix Authorization Strategy
java -jar jenkins-cli.jar -s http://localhost:8080/ install-plugin matrix-auth

# Gravatar
java -jar jenkins-cli.jar -s http://localhost:8080/ install-plugin gravatar

# Docker
java -jar jenkins-cli.jar -s http://localhost:8080/ install-plugin docker-plugin

# SSH Build Agents
java -jar jenkins-cli.jar -s http://localhost:8080/ install-plugin ssh-slaves -restart
