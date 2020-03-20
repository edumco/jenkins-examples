# Classic Jenkins

A machine or VM with the native Jenkins instalation and all tools necessary for build and test projects.

## Pros

- Easy to understand
- Helps learners to understand details of build tools and enviroments

## Cons

- You have to manage multiple tools and configurations
- Diferent projects can have confliting configurations
- Hard to replicate

## Instalation

- Install Java ☕

  - Install the openJDK8 following the instructions at <https://openjdk.java.net/install/>

  - Add a JAVA_HOME enviroment variable pointing to your instalation

- Install Jenkins 🤵

  - Download the latest LTS version from <https://jenkins.io/download/>
  - Folow the steps to configure the instalation at <https://jenkins.io/doc/pipeline/tour/getting-started/>
  - After instalation add some plugins by following the [plugins installation guide](plugins-installation.md).
  - Add a JENKINS_HOME variable on your enviroment

- Install the plugins and build tools for your stack:

  - Java: Maven Jenkins plugin, Maven for linux
  - NodeJS: NodeJS Jenkins plugin, NPM
    ...
