FROM anapsix/alpine-java
MAINTAINER wangwei
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} /demo/demo.jar
WORKDIR /demo
RUN bash -c 'touch /demo.jar'
EXPOSE 21000
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom", "-jar", "./demo.jar","--spring.profiles.active=pre"]
