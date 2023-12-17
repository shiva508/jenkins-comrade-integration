FROM openjdk:17-alpine
WORKDIR /opt
ENV PORT 8084
EXPOSE 8084
COPY ./target/jenkins-comrade-integration-0.0.1-SNAPSHOT.jar /opt/jenkins-comrade-integration.jar
ENTRYPOINT exec java $JAVA_OPTS -jar jenkins-comrade-integration.jar
