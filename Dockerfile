FROM jenkins/jenkins:lts
ENV CASC_JENKINS_CONFIG /var/jenkins_home/my_marvin.yml
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY job_dsl.groovy /var/jenkins_home/job_dsl.groovy
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
COPY my_marvin.yml /var/jenkins_home/my_marvin.yml