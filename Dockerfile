FROM openjdk:8-stretch

COPY target/*.jar /home/config-server.jar

ENTRYPOINT ["java -jar /home/config-server.jar"]