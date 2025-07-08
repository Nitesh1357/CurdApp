# Use official Java 21 image from Eclipse Temurin
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

# Copy the built JAR into the image
COPY target/curdApp-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot app listens on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
