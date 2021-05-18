FROM openjdk:8-jdk-alpine
EXPOSE 8080
ADD target/*.jar ProjetKubernetesJenkins.jar
ENTRYPOINT ["java","-jar","./ProjetKubernetesJenkins.jar"]
