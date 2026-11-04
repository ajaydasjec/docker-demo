FROM eclipse-temurin:latest
EXPOSE 8080
ADD target/docker-demo.jar docker-demo.jar
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["java","-jar", "/docker-demo.jar"]