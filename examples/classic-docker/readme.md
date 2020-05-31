# Classic installation with local Docker

A machine or VM with the classic Jenkins installation and Docker communicating through the docker sock.

This technique puts the Jenkins server and Docker on the same machine allows the Jenkins to use Docker images instead of install multiple tools.

## Pros

- Easy to implement
- You don't have to manage build tools
- Every build tool is completely isolated
- Easier to reproduce

## Cons

- The containers are executed on the same machine used by Jenkins Master causing performance issues.

- It is not safe to use in production because the tasks are executed with root permissions.

## Steps

- Execute the steps of the classic instalation or reuse your installation.

- Install Docker 🐋

- Execute the installation script "install-docker.sh"

- Add the recommend plugins on [plugins installation guide](../classic/plugins-installation.md)]

- Configure the docker.sock location on Settings/Jenkins (normally /usr/bin/).
