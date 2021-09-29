pipeline{
    agent any
    stages{
        stage('Demo'){
            when {
                branch 'release'
            }
            steps{
                echo "Hello Jenkins, This is nice"
            }
        }  
    } 
}
