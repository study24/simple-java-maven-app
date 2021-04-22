pipeline
{
agent any

  stages
{
 
  stage ('scm checkout')
 {
 steps { git branch: 'master', url: 'https://github.com/study24/simple-java-maven-app/' }
 }
  
  
 stage('code build')
  { steps {  withMaven(jdk: 'JAVA_HOME', maven: 'MAVEN_HOME') {
      sh 'mvn clean package'                    // provide maven command
    
  } } }
  
  
  stage('upload to nexus')
  { steps { nexusArtifactUploader artifacts: [[artifactId: 'my-app', classifier: '', file: 'target/my-app-1.0-SNAPSHOT.jar', type: 'jar']], 
    credentialsId: 'nexus-cred', 
    groupId: 'prod', 
    nexusUrl: '3.65.14.56:8081', 
    nexusVersion: 'nexus3', 
    protocol: 'http', 
    repository: 'maven-repo', 
    version: '1.0-SNAPSHOT'
           
          }        
  }








}
}  




  
  


 

    


 

