pipeline
{
    agent any
	
    stages {

        stage("Git")
        {
            steps{
              git "https://github.com/aminahaithem/ProjetKubeJenkins.git"
            }
           
        }
        
        stage("compile")
        {
            steps{
                sh "mvn clean compile"
            }
        }
        stage("test")
        {
            steps{
                sh "mvn clean test"
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
                sh "docker build -t projetkubejenkins ."
            }
        }
       stage("kubernetes run image")
       { 
	       steps{
		        sh "kubectl run projetkubejenkins --image=projetkubejenkins"  
            }
         }  	  
    }
}
   