FROM openjdk:17-jdk-alpine3.12
LABEL maintainer="barrywalker@gmail.com"

ADD https://github.com/KarolS/millfork/releases/download/v0.3.30/millfork-0.3.30.zip /

RUN unzip /millfork-0.3.30.zip

ENTRYPOINT ["java", "-jar", "millfork-0.3.30/millfork.jar"]
