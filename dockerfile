FROM anapsix/alpine-java
MAINTAINER kexianjun
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} /app/app.jar
WORKDIR /app
RUN bash -c 'touch /app.jar'
EXPOSE 21000
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom", "-jar", "./app.jar","--spring.profiles.active=pre"]
