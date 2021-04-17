pipeline
{
agent any

  stages
{
 
  stage ('scm checkout')
 {
 steps { git branch: 'master', url: 'https://github.com/study24/simple-java-maven-app/' }
 }
  
  
  stage ('run-gradle-command-to-build-and-geneate-artifacts')
 {
 steps { sh './gradlew clean'
 sh './gradlew assemble'
 sh './gradlew build'
 sh './gradlew jar'
 } 
 }
 
  
  stage('deploy to dev')
    
   { steps {
       sshagent(['tomcat']) {
       sh 'scp -o StrictHostKeyChecking=no target/*.jar ec2-user@172.31.44.215:/var/lib/tomcat/webapps'
    }
            }
         }

}
}  




  
  


 

    


 

