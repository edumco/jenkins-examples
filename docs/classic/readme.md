# Classic Jenkins Installation

A machine or VM with the native Jenkins installation and all tools necessary for build and test projects.

## Pros

- Easy to understand
- Helps learners to understand details of build tools and enviroments

## Cons

- You have to manage multiple tools and configurations
- Different projects can have conflicting configurations
- Hard to replicate

## Installation

- Install Java ☕

  - Install the openJDK8 following the instructions at <https://openjdk.java.net/install/>

  - Add a JAVA_HOME enviroment variable pointing to your instalation

- Install Jenkins 🤵

  - Download the latest LTS version from <https://jenkins.io/download/>

  - Follow the steps to configure the instalation at <https://jenkins.io/doc/pipeline/tour/getting-started/>

  - After installation add some plugins by following the [plugins installation guide](plugins-installation.md).

  - Add a JENKINS_HOME variable on your environment

- Install the plugins and build tools for your stack:

  - Java: Maven Jenkins plugin, Maven for linux
  - NodeJS: NodeJS Jenkins plugin, NPM
    ...
