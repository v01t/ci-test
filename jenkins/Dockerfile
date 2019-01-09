FROM jenkins/jenkins:lts

USER root
RUN apt-get update && \
	apt-get install -y libltdl-dev

ENV JENKINS_OPTS --httpPort=8000
USER jenkins
