currentBuild.displayName = "${currentBuild.projectName}#${currentBuild.number}"
pipeline{
    agent any
    environment {
        TOMCAT_USR = "ec2-user"
        TOMCAT_HOST = "${TOMCAT_USR}@172.31.33.192"
        TOMCAT_SVC = "/usr/sbin/service tomcat"
    }
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
                    sh "scp -o StrictHostKeyChecking=no  target/car-rentals*.war  ${TOMCAT_HOST}:/opt/tomcat8/webapps/"
                    sh "ssh ${TOMCAT_HOST} ${TOMCAT_SVC} stop"
                    sh "ssh ${TOMCAT_HOST} ${TOMCAT_SVC} start"
                }
            }
        }
        
    }
    post {
      failure {
          mail body: "Hi Developer, Your ${env.JOB_NAME} Job failed, This is your build URL ${env.BUILD_URL}",
            subject: "${env.JOB_NAME} - Failed", 
             to: 'javahome2020@gmail.com'
      }
    }
    
}
