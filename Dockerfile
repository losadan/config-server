FROM openjdk:8-stretch

EXPOSE 8888

COPY target/*.jar /home/config-server.jar

ENTRYPOINT ["java", "-jar", "/home/config-server.jar"]