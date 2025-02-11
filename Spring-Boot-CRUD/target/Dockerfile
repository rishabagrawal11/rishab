FROM openjdk:17-jdk-slim

# Copy the JAR file into the container
COPY ./Spring-Boot-CRUD-0.0.1-SNAPSHOT.jar Spring-Boot-CRUD-0.0.1-SNAPSHOT.jar

# Grant execution permission
RUN chmod +x Spring-Boot-CRUD-0.0.1-SNAPSHOT.jar

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "Spring-Boot-CRUD-0.0.1-SNAPSHOT.jar"]
