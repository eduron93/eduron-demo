FROM gradle:jdk11 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon

FROM openjdk:11-jre-slim
EXPOSE 8081
RUN mkdir /app
#
COPY --from=build /home/gradle/src/build/libs/hola-mundo.jar hola-mundo.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-jar", "hola-mundo.jar"]