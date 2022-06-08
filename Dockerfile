FROM ubuntu:18.04

ENV TZ=Asia/Almaty
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt install -y default-jdk maven curl git

WORKDIR /app
COPY . .
# RUN mvn package spring-boot:repackage

# CMD ["java", "-jar", "target/spring-data-rest.jar"]
