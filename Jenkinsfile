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
  
  

    
   stage ('upload docker image from jenkins to docker hub')
{
    steps { 

    withDockerRegistry(credentialsId: 'Docker', url: 'https://index.docker.io/v1/') 
      
      
      { sh 'docker push akashjava/sampledocker:v1'}
    }
}
  
 
   stage ('run docker image')
{
    steps { 
  
  
  withDockerContainer(args: '', image: 'akashjava/sampledocker:v1') 
  
     { sh 'docker run -dit --name myapp -p 5000:5001 akashjava/sampledocker:v1'}
    
  }
    }
      

         
  
  
  
  
  
  
  
  
}
}

 

    


 

