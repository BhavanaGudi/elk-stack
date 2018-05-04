FROM alpine:3.2
RUN apk --update add openjdk7-jre
CMD ["/usr/bin/java", "-version"]

ENV TOMCAT_MAJOR=8 \
    TOMCAT_VERSION=8.5.3 \ 
    TOMCAT_HOME=/opt/tomcat \
    CATALINA_HOME=/opt/tomcat \
    CATALINA_OUT=/dev/null

RUN apk upgrade --update 
RUN apk add tar
RUN apk add --update curl 
RUN curl http://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomca${TOMCAT_VERSION}.tar.gz
RUN gunzip *.tar.gz 
RUN tar xvzf *.tar.gz   


    

EXPOSE 8080
