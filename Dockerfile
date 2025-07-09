# # Use official Java 21 image from Eclipse Temurin
# FROM eclipse-temurin:21-jdk

# # Set working directory
# WORKDIR /app

# # Copy the built JAR into the image
# COPY target/curdApp-0.0.1-SNAPSHOT.jar app.jar

# # Expose the port your Spring Boot app listens on
# EXPOSE 8080

# # Run the application
# ENTRYPOINT ["java", "-jar", "app.jar"]
# Use official Maven image to build the application

# Step 1: Build with Maven
# Phase 1: Build the application
FROM maven:3.9.4-eclipse-temurin-21 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Phase 2: Run the built JAR
FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY target/curdApp-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]


