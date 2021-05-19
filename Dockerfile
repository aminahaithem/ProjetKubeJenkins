FROM openjdk:8-jdk-alpine
EXPOSE 9001
ADD target/*.jar projetkubernetesjenkins.jar
ENTRYPOINT ["java","-jar","./projetkubernetesjenkins.jar"]
