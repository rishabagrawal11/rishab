# Use a lightweight JDK for runtime
FROM eclipse-temurin:17-jre

WORKDIR /app

# Copy the built JAR from GitHub Actions (outside Docker)
COPY Spring-Boot-CRUD/target/*.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
