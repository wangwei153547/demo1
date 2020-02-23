FROM openjdk:8-jre
MAINTAINER wangwei <153547767@qq.com>

ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/demo/demo.jar"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
ADD target/lib           /usr/share/demo/lib
# Add the service itself
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/demo/demo.jar
