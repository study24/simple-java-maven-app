pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps {  git branch: 'master', url: 'https://github.com/study24/simple-java-maven-app'  } }

  stage('code test')
  { steps {  withMaven(jdk: 'JAVA_HOME', maven: 'MAVEN_HOME') {
      sh 'mvn test'     // provide maven command
    
    } } }
    
    
     stage('code compile')
  { steps {  withMaven(jdk: 'JAVA_HOME', maven: 'MAVEN_HOME') {
      sh 'mvn compile' // provide maven command
    } } }
    
     stage('code build')
  { steps {  withMaven(jdk: 'JAVA_HOME', maven: 'MAVEN_HOME') {
      sh 'mvn clean package'                    // provide maven command
    
    
    } } }


  stage('deploy to dev')
    { steps {
       sshagent(['tomcat']) {
       sh 'scp -o StrictHostKeyChecking=no target/*.jar ec2-user@172.31.44.215:/var/lib/tomcat/webapps'
    }
            }
         }

}
}  




  
  


 

    


 

