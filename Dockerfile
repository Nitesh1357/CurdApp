# Use official Java 21 or 24 image
FROM eclipse-temurin:21-jdk-alpine  # Use 24 if available and supported

# Set working directory
WORKDIR /app

# Copy the built JAR file (fix casing)
COPY target/curdApp-0.0.1-SNAPSHOT.jar app.jar

# Expose port (Render sets this via env)
EXPOSE 8080

# Start the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
