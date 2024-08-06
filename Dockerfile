FROM openjdk:17-jdk-alpine 
LABEL maintainer="phamtiendung.090602@gmail.com"
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]