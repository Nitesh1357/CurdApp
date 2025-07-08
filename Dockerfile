# Use official Java image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy the built JAR file
COPY target/curdapp-0.0.1-SNAPSHOT.jar app.jar

# Set environment variable for port
ENV PORT=8080

# Run the application
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
