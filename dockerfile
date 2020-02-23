FROM java:8
MAINTAINER wangwei
ENTRYPOINT ["java", "-jar", "/demo.jar"]
# Add the service itself
ADD ${JAR_FILE} /demo.jar
