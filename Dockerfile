FROM gradle:jdk11 AS build
WORKDIR /home/app
COPY . /home/app/
RUN gradle build --no-daemon

FROM openjdk:11-jre-slim
EXPOSE 8081
RUN mkdir /app
#
COPY --from=build /home/app/target/hola-mundo.jar hola-mundo.jar
ENTRYPOINT ["sh", "-c", "java -jar /hola-mundo.jar"]