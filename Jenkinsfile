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
  
  stage('docker build')
  {steps {sh 'docker build -t akashjava/sampledocker:v1 .'}}
  
  
   stage('upload dockerhub')
  {  
      steps { 
      withDockerRegistry(credentialsId: 'DockerCred', url: ' https://index.docker.io/v1/')
            }

         {sh 'docker push akashjava/sampledocker:v1'}

  
  
  
  
  
  
  
  
}
}

 

    


 

