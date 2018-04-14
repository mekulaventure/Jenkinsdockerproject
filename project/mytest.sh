#!/bin/bash

docker build -t myjenk .
docker run -itd -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v ~/tmp/jenkins/jenkins_home:/var/jenkins_home --name jenkins myjenk
