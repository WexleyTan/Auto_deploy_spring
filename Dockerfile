# Stage 2: Run the application
FROM eclipse-temurin:17-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the build stage
COPY build/libs/*.jar app.jar

# Expose the port that the application will run on
EXPOSE 7070

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
