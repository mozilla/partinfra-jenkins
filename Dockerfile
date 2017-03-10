FROM jenkins:2.32.3
USER root
ADD script.sh /tmp/script.sh
RUN /tmp/script.sh
USER jenkins
