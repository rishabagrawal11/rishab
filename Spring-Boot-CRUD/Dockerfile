# Use a lightweight JDK for runtime
FROM eclipse-temurin:17-jre

WORKDIR /app

# Copy the built JAR from GitHub Actions (outside Docker)
COPY Spring-Boot-CRUD/target/Spring-Boot-CRUD-0.0.1-SNAPSHOT Spring-Boot-CRUD-0.0.1-SNAPSHOT

# Run the application
ENTRYPOINT ["java", "-jar", "Spring-Boot-CRUD-0.0.1-SNAPSHOT"]
