FROM tomcat:11.0-jdk21

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY ./target/interests-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war