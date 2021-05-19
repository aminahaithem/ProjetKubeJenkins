FROM openjdk:8-jdk-alpine
EXPOSE 8989
ADD target/*.jar projetkubernetesjenkins.jar
ENTRYPOINT ["java","-jar","./projetkubernetesjenkins.jar"]
