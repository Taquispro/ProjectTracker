# Use official Java 21 JDK image
FROM eclipse-temurin:21-jdk-jammy

# Set working directory inside container
WORKDIR /app

# Copy the built JAR into container
COPY target/ProjectTracker-0.0.1-SNAPSHOT.jar app.jar

# Expose the port (Render will map automatically)
EXPOSE 8080

# Run the Spring Boot JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
