FROM tomcat:9.0.106-jdk8-corretto


LABEL "version"="1.0"


WORKDIR /usr/local/tomcat

COPY **/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD [ "catalina.sh", "run" ]