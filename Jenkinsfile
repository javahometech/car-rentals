// currentBuild.displayName = "${currentBuild.projectName}#${currentBuild.number}"
// pipeline{
//     agent any
//     environment {
//         TOMCAT_USR = "ec2-user"
//         TOMCAT_HOST = "${TOMCAT_USR}@172.31.33.192"
//         TOMCAT_SVC = "/usr/sbin/service tomcat"
//     }
//     stages{
//         stage('Maven Package and Nexus Deploy'){
//             steps{
//                 sh script: 'mvn clean deploy'
//             }
//         }
        
//         stage('Tomcat Dev'){
//             steps{
//                 sshagent(['tomcat-dev']) {
//                     // copy war file to tomcat dev
//                     sh "scp -o StrictHostKeyChecking=no  target/car-rentals*.war  ${TOMCAT_HOST}:/opt/tomcat8/webapps/"
//                     sh "ssh ${TOMCAT_HOST} ${TOMCAT_SVC} stop"
//                     sh "ssh ${TOMCAT_HOST} ${TOMCAT_SVC} start"
//                 }
//             }
//         }
        
//     }
//     post {
//       failure {
//           mail body: "Hi Developer, Your ${env.JOB_NAME} Job failed, This is your build URL ${env.BUILD_URL}",
//             subject: "${env.JOB_NAME} - Failed", 
//              to: 'javahome2020@gmail.com'
//       }
//     }
    
// }
pipeline {
    agent any
    stages {
        stage('git checkout') {
            steps {
                // Get some code from a GitHub repository
                //git branch:'master',url:'https://github.com/sai2662/car-rentals'
                git 'https://github.com/sai2662/car-rentals'
            }
        }
        stage('mvn package') {
            steps {
                // Building war: /home/ec2-user/car-rentals/target/car-rentals.war
                // Building war: /home/ec2-user/car-rentals/target/car-rentals.war
                sh 'mvn clean deploy'
            }
         }
        //  stage('nexus deploy') {
        //     steps {
        //         // Uploaded: http://35.154.34.156:8081/repository/car-rentals-repository/in/javahome/car-rentals/1.0-SNAPSHOT/maven-metadata.xml (766 B at 5.4 KB/sec)
        //       sh 'mvn deploy'
        //     }
        //  }
          stage('tomcat dev') {
            steps {
                echo "this is jus passing"
                // Uploaded: http://35.154.34.156:8081/repository/car-rentals-repository/in/javahome/car-rentals/1.0-SNAPSHOT/maven-metadata.xml (766 B at 5.4 KB/sec)
            //   sh 'mvn deploy'
            }
         }
         
         
        
            
            // post {
            //     // If Maven was able to run the tests, even if some of the test
            //     // failed, record the test results and archive the jar file.
            //     success {
            //         junit '**/target/surefire-reports/TEST-*.xml'
            //         archiveArtifacts 'target/*.jar'
            //     }
            // }
    }
}

