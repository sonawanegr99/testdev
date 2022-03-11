pipeline {
    agent any
    stages {
        stage('PreBuild') {
            
            steps {
             sh 'git secret --version'
             sh 'pwd'
             sh 'git secrets --scan-history'
            }
        }
    }
}
