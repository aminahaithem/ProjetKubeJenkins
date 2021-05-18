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
        stage("install")
        {
            steps{
                sh "mvn clean install package"
            }
        }
        stage("Build docker")
        {
            steps{
                sh "docker build -f Dockerfile -t  ProjetKubeJenkins ."
            }
        }
		stage("deployment kubernetes")
        {
            steps{
                sh "kubectl create deployment ProjetKubeJenkins --image=ProjetKubeJenkins --port=8080"
            }
        }
              
    }
   
}