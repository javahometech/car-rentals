pipeline{
    agent any
    stages{
        stage('Demo'){
            when {
                expression { BRANCH_NAME ==~ /(release|master)/ }
            }
            steps{
                echo "Hello Jenkins, This is nice"
            }
        }  
    } 
}
