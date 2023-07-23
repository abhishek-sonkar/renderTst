FROM eclipse-temurin:17-jdk-alpine
EXPOSE 8080
ADD dbts-ovrflo-app.jar dbts-ovrflo-app.jar
ENTRYPOINT ["java","-jar","/dbts-ovrflo-app.jar"]