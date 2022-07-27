FROM openjdk:8u212-alpine

LABEL name "Springboot base image"
LABEL maintainer "Cognizant"
LABEL version=1.0

USER root

COPY build/libs/spring-boot.jar $APP_LOC/app.jar

ENTRYPOINT ["java","-jar","app.jar"]

#FROM openjdk:8-jdk-alpine
#VOLUME /tmp
#ARG JAR_FILE
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]