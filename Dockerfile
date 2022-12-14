FROM openjdk:18.0.1
LABEL maintainer="muchirinephat5@gmail.com"
ENV PORT=8761
#
ARG JAR_FILE=target/naming-server.jar
ADD ${JAR_FILE} naming-server.jar

COPY target/*.jar /opt/naming-server.jar
ENTRYPOINT ["java","-jar","/naming-server.jar"]
