pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps {  
        git branch: 'master', url:  'https://github.com/study24/simple-java-maven-app' 
  } }

  stage('code build')
  { steps { withMaven (jdk: 'JAVA_HOME', maven: 'MAVEN_HOME') }
   
          { sh 'mvn package'} 
  }
  
  stage('Copy-arifact-to-tomcat')
  {
  steps 
    {
  sshagent (credentials: ['Tomcat-server']) {
    sh 'scp -o StrictHostKeyChecking=no /target/my-app-1.0-SNAPSHOT.jar ec2-user@172.31.34.50:/tomcat/webapps'
  }
}
  }

  


         
  
  
  
  
  
  
  
  
}
}

 

    


 

