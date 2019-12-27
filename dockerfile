FROM centos:latest
RUN yum -y update
RUN yum -y install maven
WORKDIR /insecure-bank
ADD /home/test/insecure-bank/pom.xml /insecure-bank/pom.xml
ADD /home/test/insecure-bank/src /insecure-bank/src
RUN ["mvn", "package"]
CMD ["mvn", "cargo:run"]
EXPOSE 80
