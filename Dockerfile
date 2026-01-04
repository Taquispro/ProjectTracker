# Use lightweight Java 21 runtime
FROM eclipse-temurin:21-jre

# Set working directory
WORKDIR /app

# Copy the jar into the container
COPY ProjectTracker-0.0.1-SNAPSHOT.jar app.jar

# Expose the port Spring Boot runs on


# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
