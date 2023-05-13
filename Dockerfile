# Start with a base image containing Java runtime
FROM openjdk:11

# Add Maintainer Info
LABEL maintainer="shohaibxshaikh@gmail.com"

RUN mkdir -p /opt/project
ADD target/discovery-service.jar /opt/project
WORKDIR /opt/project

# Make port 8761 available to the world outside this container
EXPOSE 8761

ENTRYPOINT java -jar discovery-service.jar