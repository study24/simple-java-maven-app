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
  { steps { withMaven (jdk: 'Java home', maven: 'Maven home') }
   
          { sh 'mvn claen package'} 
  }
  
  stage('Copy-arifact-to-tomcat')
  {
  steps 
    {
      sshagent (['Tomcat-server']) {
    sh 'scp -o StrictHostKeyChecking=no /root/maven-project/webapp/target/webapp.war ec2-user@172.31.34.50:/root/tomcat/webapps'
  }
}
  }

  


         
  
  
  
  
  
  
  
  
}
}

 

    


 

