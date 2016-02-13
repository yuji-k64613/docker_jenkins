FROM debian:latest
MAINTAINER Yuji Konishi
#EXPOSE 8080 8080

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y openjdk-7-jdk
RUN apt-get install -y gradle

#
# jenkins
#
RUN apt-get install -y wget
RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
RUN echo 'deb http://pkg.jenkins-ci.org/debian binary/' >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y jenkins
RUN /etc/init.d/jenkins start

ADD script.sh /tmp/script.sh
CMD [ "/tmp/script.sh" ]
