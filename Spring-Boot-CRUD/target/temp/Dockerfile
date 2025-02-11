# Use OpenJDK 17 base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY ./Spring-Boot-CRUD-0.0.1-SNAPSHOT.jar /app/Spring-Boot-CRUD-0.0.1-SNAPSHOT.jar

# Copy the run.sh script into the container
COPY ./run.sh /app/run.sh

# Fix line endings and ensure script is executable
RUN sed -i 's/\r$//' /app/run.sh && \
    chmod +x /app/run.sh

# Expose the application port
EXPOSE 8080

# Use run.sh as the entrypoint
ENTRYPOINT ["/app/run.sh"]

