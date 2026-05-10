# 1. Use a lightweight Java runtime as the base
FROM eclipse-temurin:17-jre-jammy

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the JAR file from your target folder to the container
# Note: You must run 'mvn clean package' on your Mac before building the image
COPY target/devworks-github-actions-service.jar devworks-github-actions-service.jar

# 4. Tell Docker which port your Spring Boot app runs on
EXPOSE 8080

# 5. The command to run your application
ENTRYPOINT ["java", "-jar", "app.jar"]