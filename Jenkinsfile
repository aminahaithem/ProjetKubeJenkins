pipeline
{
    agent any
	environment {
	    DOCKER_TAG = getDockerTag()
	}
    stages {
        
        stage("compile")
        {
            steps{
                sh "mvn clean compile"
            }
        }
        stage("install")
        {
            steps{
                sh "mvn clean install package"
            }
        }
        stage("Build docker")
        {
            steps{
                sh "docker build . -t  bennanihaythem/projetkubejenkins:${DOCKER_TAG}"
				
            }
        }
       stage("Docker Hub push")
       { 
	       steps{
		    withCredentials([string(credentialsId: 'Projet-kube', variable: 'projetkubernetespwd')]) {
			 
			  sh "docker login -u bennanihaythem -p ${projetkubernetespwd}"
              sh "pocker push bennanihaythem/projetkubejenkins:${DOCKER_TAG}"
               }
		    
		   }
	   
	   }	   
    }
}
   
    def getDockerTag(){
	   def tag = sh script:"git rev-parse HEAD" , returnStdout: true
	   return tag
	}
