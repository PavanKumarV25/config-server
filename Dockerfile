FROM openjdk:11 as build

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} configserver.jar

ENTRYPOINT ["java","-jar","/configserver.jar"]

EXPOSE 9232