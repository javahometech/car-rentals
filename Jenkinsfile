pipeline{
    agent any
    tools {
      maven 'maven3'
    }
    parameters {
      booleanParam description: 'Skip test cases?', name: 'skipTest'
    }

    stages{
        
        stage('Maven Build'){
            when {
                branch 'develop'
            }
            steps{
                echo params.skipTest
                sh "mvn clean package"
            }
        }  
        stage('upload artifact to nexus'){
            when {
                branch 'develop'
            }
            steps{
                echo "uploading artifacts to nexus..."
            }
       }
        
       stage('deploy to dev'){
            when {
                branch 'develop'
            }
            steps{
                echo "deploying to dev"
            }
       }
       stage('deploy to qa'){
            when {
                branch 'release'
            }
            steps{
                echo "deploying to qa"
            }
       }
        
        stage('deploy to prod'){
            when {
                branch 'master'
            }
            steps{
                echo "deploying to prod"
            }
       }
    } 
}
