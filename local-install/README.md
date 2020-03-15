# Local installation sharing docker.sock

A machine or VM with the native Jenkins instalation sharing the docker sock.

This technique allows the Jenkins machine to use the inner connection of Docker.

## The good, the bad and the ugly

Althought easy to implement on small projects the Workloads are executed on the same machine used by Jenkins master and there are several concerns about security cause the Docker services run as root user.

## Install Java

Install the openJDK 8 following the instructions at <https://openjdk.java.net/install/>

## Install Jenkins

- Download the latest LTS version from <https://jenkins.io/download/>
- Folow the steps to configure the instalation at <https://jenkins.io/doc/pipeline/tour/getting-started/>
- After instalation, add the Pipeline plugins (some plugins will be added as dependencies)

## Install Docker

Execute the instalation script "install-docker.sh" or folow instructions at <https://docs.docker.com/install/>

## Add Jenkins to Docker group

By adding the Jenkins user to the docker group the jenkins become able to run docker commmands

```sh
sudo gpasswd -a jenkins root
sudo service docker restart
```
