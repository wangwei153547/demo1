FROM java:8
MAINTAINER wangwei
ENTRYPOINT ["java", "-jar", "/app.jar"]
# Add the service itself
ADD ${JAR_FILE} /app.jar