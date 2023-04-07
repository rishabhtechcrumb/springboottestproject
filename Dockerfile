#FROM openjdk:17-jdk-alpine
#ARG JAR_FILE=target/*.jar
#COPY ./target/SpringAPI-0.0.1.jar app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]
#FROM java:17.0.6
FROM openjdk:17
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar/
ENTRYPOINT ["java","-jar","/app.jar"]