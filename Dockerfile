FROM openjdk:11-jre-slim
COPY target/docker-image-0.0.1-SNAPSHOT.jar docker-image.jar
ENTRYPOINT ["java", "-jar", "docker-image.jar"]
