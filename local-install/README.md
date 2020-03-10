# Local installation sharing docker.sock

A machine or VM with the native Jenkins instalation sharing the docker sock.

This technique allows the Jenkins machine to use the inner connection of Docker.

## The good

Easy to implement on small projects.

## The bad

Workloads are execute on the same machine used by Jenkins master

## The ugly

There are several concerns about security cause the Docker services run as root user
