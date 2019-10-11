#!/bin/bash

if [ -d $(pwd)/jenkins_home ]
then
    echo "Directory jenkins_home already exists."
else
    echo "Creating the directory jenkins_home."
    mkdir $(pwd)/jenkins_home
    chmod -R 777 $(pwd)/jenkins_home
fi

docker build -t machine/jenkins-blueocean .
docker run -d --name=jenkins-blueocean --restart=always -p 8080:8080 -p 50000:50000 -v $(pwd)/jenkins_home:/var/jenkins_home -v $(pwd):/home/DevOps  machine/jenkins-blueocean
echo "Open jenkins on your browser http://localhost:8080"
