# FROM phusion/baseimage:0.9.18
FROM openjdk:8-jdk

ENV FOXTROT_USER="foxtrot" \
FOXTROT_HOME="/home/foxtrot"

RUN useradd --create-home --home ${FOXTROT_HOME} ${FOXTROT_USER}

# Install basic packages and supervisord
RUN apt-get update && apt-get install -y sudo vim python-setuptools
#RUN apt-get install -y python-setuptools sudo
#RUN easy_install supervisor==3.2

# Configure supervisord
#RUN mkdir -p /var/log/supervisor

# Download Oracle Java 8u65
#RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
#RUN add-apt-repository ppa:webupd8team/java
#RUN apt-get update
#RUN apt-get install -y oracle-java8-installer

# Allow users to read these settings so they can run /sbin/my_init
#RUN chmod -R 755 /etc/container_environment
#RUN chmod 644 /etc/container_environment.sh /etc/container_environment.json

#CMD ["/sbin/my_init"]

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
