FROM openjdk:8

COPY  target/*.jar  myapp.jar

EXPOSE 8082

ENTRYPOINT  [ "java" , "-jar" ,  "myapp.jar"  ]

