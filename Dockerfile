FROM openjdk:8-jre-alpine3.9
WORKDIR /app
COPY my-app/target/*.jar /app
RUN useradd -m -p Nopassword defuser
USER defuser
CMD ["java", "-jar", "/app.jar"]
