pipeline{
    agent any
    stages{
        stage('Git Checkout'){
            steps{
                git branch: 'master', 
                    credentialsId: 'github', 
                    url: 'https://github.com/javahometech/car-rentals'
            }
        }
        
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
