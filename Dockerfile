FROM jenkins:2.7.4
USER root
ADD script.sh /tmp/script.sh
RUN /tmp/script.sh
USER jenkins
