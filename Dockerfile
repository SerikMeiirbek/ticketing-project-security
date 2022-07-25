#FROM openjdk:11-jdk
##will get jar file and copy to image
#COPY ./target/Spring-24-docker-0.0.1-SNAPSHOT.jar  /usr/app/
##to  direct any folder
#WORKDIR /usr/app
##will provide exacutable application when container starts the run
#ENTRYPOINT ["java","-jar","Spring-24-docker-0.0.1-SNAPSHOT.jar"]

FROM amd64/maven:3.8.6-openjdk-11
WORKDIR usr/app
COPY  .  .
ENTRYPOINT ["mvn","spring-boot:run"]