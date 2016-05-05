FROM jenkins
USER root
ADD script.sh /tmp/script.sh
RUN /tmp/script.sh
USER jenkins
