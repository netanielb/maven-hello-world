FROM ubuntu:latest
RUN useradd -m -p Nopassword defuser
USER defuser

FROM openjdk:8-jre-alpine3.9
WORKDIR /app
COPY my-app/target/my-app-1.0.0.jar /app.jar
CMD ["java", "-jar", "app/app.jar"]
