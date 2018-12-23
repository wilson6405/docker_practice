FROM java
MAINTAINER wilson
RUN apt update
RUN apt install -y wget

RUN cd /

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
RUN tar zxvf apache-tomcat-7.0.92.tar.gz
ENV JAVA_HOME=/jdk1.8.0_191
ENV PATH=$PATH:/jdk1.8.0_191/bin
CMD ["/apache-tomcat-7.0.92/bin/catalina.sh", "run"]

EXPOSE 8080
