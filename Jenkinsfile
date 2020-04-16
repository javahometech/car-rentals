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
                sshagent(['tomcat-dev']) {
                    // copy war file to tomcat dev
                    sh "scp -o StrictHostKeyChecking=no  target/car-rentals*.war  ec2-user@172.31.33.192:/opt/tomcat8/webapps/"
                    sh "ssh ec2-user@172.31.33.192 service tomcat stop"
                    sh "ssh ec2-user@172.31.33.192 service tomcat start"
                }
            }
        }
        
    }
    
}
