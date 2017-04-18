FROM jenkins:2.46.1
USER root
ADD script.sh /tmp/script.sh
RUN /tmp/script.sh
USER jenkins
