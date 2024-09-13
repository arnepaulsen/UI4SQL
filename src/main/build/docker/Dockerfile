FROM centos

MAINTAINER arne@paulsennetworks.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat

RUN curl -O https://downloads.apache.org/tomcat/tomcat-10/v10.1.10/bin/apache-tomcat-10.1.10.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-10.1.10/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/arnepaulsen/ui4sql/blob/main/ui4sql.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]


