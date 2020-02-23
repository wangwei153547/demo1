FROM frolvlad/alpine-java:jdk8-slim
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} demo.jar
RUN sh -c 'touch /demo.jar'zz
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV JAVA_OPTS="-server -Xms512m -Xmx512m -Xss512k"
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /demo.jar" ]
