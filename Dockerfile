FROM openjdk:8-jdk-alpine
RUN mkdir -p /app
ADD target/eureka-server-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 8761
ENTRYPOINT [ "/usr/bin/java", "-jar", "/app/app.jar" ]
