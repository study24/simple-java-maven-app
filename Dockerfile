FROM openjdk:8

COPY  target/*.jar  myapp.jar

EXPOSE 5001

ENTRYPOINT  [ "java" , "-jar" ,  "myapp.jar"  ]

