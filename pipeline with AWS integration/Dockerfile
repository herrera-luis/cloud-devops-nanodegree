FROM jenkinsci/blueocean:1.18.1

USER root 
RUN apk update
RUN apk add nano tidyhtml
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt