# Base image with Java 17 (use same JDK version as project)
FROM openjdk:17-jdk-slim

# Copy jar file into container
ARG JAR_FILE=target/student-crud-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# Expose port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
