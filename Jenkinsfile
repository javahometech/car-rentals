pipeline{
    agent any
    stages{
        
        stage('Maven Package and Nexus Deploy'){
            steps{
                sh script: 'mvn clean deploy'
            }
        }
        
        stage('Tomcat Dev'){
            steps{
                echo "This need to be implemented"
            }
        }
        
    }
    
}
