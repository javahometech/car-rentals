pipeline{
    agent any
    tools {
      maven 'maven3'
    }
    stages{
        when {
            branch 'develop'
        }
        stage('Maven Build'){
            steps{
                sh "mvn clean package"
            }
        }  
    } 
}
