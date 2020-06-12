# Jenkins Examples 🤵

Some examples of installation and usage of Jenkins Automation Server

![GitHub](https://img.shields.io/github/license/edumco/jenkins-examples)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/392979a83cd1494ab8969900f7240561)](https://www.codacy.com/manual/edumco/jenkins-examples?utm_source=github.com&utm_medium=referral&utm_content=edumco/jenkins-examples&utm_campaign=Badge_Grade)

## About

Jenkins an automation server where you can schedule tests, builds and any other repetitive task where you can use a script.

To learn more about Jenkins visit <https://jenkins.io/>

This is a collection of recipes on installing and using Jenkins on your projects.

## Installation

1. Download or clone this repository.

2. Navigate to the example you wanna use.

3. Add execution permissions to the files you want execute.

## Usage

Each example has a folder with the artifacts and instructions needed to be used and are ordered by complexity (Simpler first) so you can start quickly and evolve to more robust setups in time.

To try the examples you gonna need:

- A machine or VM with at least 8GB ram and 32Gb of disk (4GB is ok for learning)

- Install the Ubuntu Server 18.04 LTS 🐧 (Try always use a LTS version)

### Examples

#### Learning

1. [Classic installation](docs/classic/readme.md)

2. [Plugins Installation](docs/plugins-installation.md)

3. [Docker installation](docs/docker-installation/readme.md)

4. Simple tasks

5. Basic Pipelines

6. Declarative Pipelines

7. Blue Ocean Interface

8. Tests reports

9. Build artifacts

10. Web hooks

11. User authentication

#### Scaling

1. [Connect with local Docker](docs/classic-docker/readme.md)

2. Connecting with slaves

3. Connecting with Docker slaves

4. Publishing Container Images

#### Securing

1. Backup

2. Configuration as code

3. Secrets

4. Key rotation

5. Logging

6. Network

#### Shipping

1. Jenkins as a container

2. Redundant Jenkins Masters

3. Cloud Native Orchestration

4. On Demand Provisioning

## License

[MIT License](LICENSE)
