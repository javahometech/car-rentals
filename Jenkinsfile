pipeline{
    agent any
    tools {
      maven 'maven3'
    }
    stages{
        
        stage('Maven Build'){
            when {
                branch 'develop'
            }
            steps{
                sh "mvn clean package"
            }
        }  
    } 
}
