FROM maven:3.9.2-eclipse-temurin-17 as builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=builder /app/target/welcome-api-0.0.1-SNAPSHOT.jar welcome-api-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "welcome-api-0.0.1-SNAPSHOT.jar"]
