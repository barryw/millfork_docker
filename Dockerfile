FROM openjdk:16-jdk-alpine3.12
LABEL maintainer="barrywalker@gmail.com"

ADD https://github.com/KarolS/millfork/releases/download/v0.3.22/millfork-0.3.22.zip /

RUN unzip /millfork-0.3.22.zip

ENTRYPOINT ["java", "-jar", "millfork-0.3.22/millfork.jar"]
