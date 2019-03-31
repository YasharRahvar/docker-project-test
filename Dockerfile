FROM openjdk:8-alpine
LABEL Author="Yashar Rahvar"
COPY build/libs/docker.jar /app.jar
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Xss512k", "-Xms512m", "-Xmx2048m", "-XX:+UseG1GC", "-jar","app.jar"]
