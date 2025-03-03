# 1️⃣ Use an official Java runtime as the base image
FROM openjdk:17-jdk-slim

# 2️⃣ Set the working directory inside the container
WORKDIR /app

# 3️⃣ Copy the built JAR file from target folder into the container
COPY target/ci-cd-java-api-0.0.1-SNAPSHOT.jar app.jar

# 4️⃣ Expose port 8080 so the application can be accessed
EXPOSE 8080

# 5️⃣ Command to run the application when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
