# Use a lightweight JDK for runtime
FROM eclipse-temurin:17-jre

# Set working directory inside the container
WORKDIR /app

# Copy the built JAR from GitHub Actions (outside Docker)
COPY Spring-Boot-CRUD/target/Spring-Boot-CRUD-0.0.1-SNAPSHOT.jar app.jar

# Expose the application's port (adjust based on your app)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
