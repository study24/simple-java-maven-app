pipeline
{
agent any
stages
{
  stage('scm checkout')
  { steps 
   {  git branch: 'master', url: 'https://github.com/study24/simple-java-maven-app'  } 
  }

 
	
	stage('CODE ANALYSIS with SONARQUBE') {
		
          
	
		
		steps {
			script {
                                withSonarQubeEnv('sonar') 
				{
               sh "mvn sonar:sonar"
		     
            }
			}
		}
	}
				
 

	
	
	
	
	
	
}
}	
