pipeline {
    agent any
    stages {
        stage('PreBuild') {
            
            steps {
             sh 'git secrets --scan'
            }
        }
    }
}
