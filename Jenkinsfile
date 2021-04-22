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
  { steps {nexusPublisher nexusInstanceId: 'nexus3', nexusRepositoryId: 'maven-repo', 
    packages: [[$class: 'MavenPackage', mavenAssetList: [[classifier: '', extension: 'jar', 
            filePath: 'http://3.66.223.205:8080/job/Demo_Job1/4/execution/node/3/ws/target/']], 
   mavenCoordinate: [artifactId: 'Project-java', 
             groupId: 'prod', packaging: 'jar', 
            version: 'my-app-1.0-SNAPSHOT']]]
           
          }        
  }








}
}  




  
  


 

    


 

