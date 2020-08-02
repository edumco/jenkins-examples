# Docker installation

Running Jenkins on a container might give you more flexibility.

## Choose an image

You have to choose an image an run the container ataching a persistent volume and 

I recommend the following images:

- The official [jenkins/jenkins](https://hub.docker.com/r/jenkins/jenkins). The LTS tag for production and the weekly latest for evaluation.

- The [saidsef/alpine-jenkins-dockerfile](https://github.com/saidsef/alpine-jenkins-dockerfile). This image contains all the good stuff you're going to need and its based on the official LTS but I recommend you to make a fork from the original repository and tweak it for your project needs.

## Use volumes

Containers are disposeble so to keep data you should create a volume to replace your `jenkins_home` folder where all your data resides.

This can be done on command line with the `-v` flag 

```bash
-v jenkins_home:/var/jenkins_home
```

This can be read like: 

> Create a volume called `jenkins_home` and overlay the folder `/var/jenkins_home` inside the container with this new volume.

Docker uses layers to manipulade data, every layer adds more data without erasing the previous layer so you dont have to create full copies of file systems. An overlay is just a folder/file that replaces the original read-only so you can put data in the overlay and keep it between executions or even reuse it in new containers.

## Enable network ports

Containers are like sealed boxes so nobody get in or get out without permission. To create this permission you have to connect container's internal ports withe the host ports using the `-p` flag.

```bash
-p 8080:8080
```

This can be read like:

> Create a connection between the `8080` port on my machine with the internal `8080` port inside the container.

You can plug any free port on your machine with the port inside the container as long the inside ports are the same, so all the examples below are valid.

```bash
-p 9090:8080
-p 6666:8080
-p 3344:8080
-p 5152:8080
```

Jenkins uses the 8080 port to show the web interface and the 5000 to acess the worker nodes so you have to use the -p flag twice

```bash
-p 8080:8080 -p 50000:50000 
```

## Put it all together

Run the command:

```bash
docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
```

After some download and messages you'll be able to access Jenkins from your browser using the url <<localhost:8080>>.
