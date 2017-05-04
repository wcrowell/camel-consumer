FROM centos
RUN mkdir -p /opt/camel-activemq-jdbc
COPY camel.xml /opt/camel-activemq-jdbc
COPY pom.xml /opt/camel-activemq-jdbc
RUN yum -y install maven
WORKDIR /opt/camel-activemq-jdbc
RUN mvn camel:run
