FROM openjdk:8-jre-alpine
ADD target/eventsProject-1.0.0.jar event.jar
EXPOSE 8089
ENTRYPOINT ["java","-jar","/event.jar"]
