FROM jenkins:2.19.4
USER root
ADD script.sh /tmp/script.sh
RUN /tmp/script.sh
USER jenkins
