FROM openjdk:8

COPY  target/*.jar  myapp.jar

EXPOSE 8080

ENTRYPOINT  [ "java" , "-jar" ,  "myapp.jar"  ]

