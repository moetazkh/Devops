FROM openjdk:8-jre-alpine
ADD target/eventsProject-1.0.0-SNAPSHOT.jar eventsProject.jar
EXPOSE 8089
ENTRYPOINT ["java","-jar","/eventsProject.jar"]
