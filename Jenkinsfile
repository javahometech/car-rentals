pipeline{
    agent any
    stages{
        stage('Demo'){
            when {
                expression { BRANCH_NAME ==~ /(release123|master)/ }
            }
            steps{
                echo "Hello Jenkins, This is nice"
            }
        }  
    } 
}
