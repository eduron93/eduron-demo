FROM openjdk:11-jre-slim
EXPOSE 8081
RUN mkdir /app
#
COPY hola-mundo.jar hola-mundo.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-jar", "hola-mundo.jar"]