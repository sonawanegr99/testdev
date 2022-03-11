pipeline {
    agent any
    stages {
        stage('PreBuild') {
            
            steps {
              sh 'checkov -f /var/lib/jenkins/workspace/testdevsecops/Dockerfile'
            }
            steps {
             sh 'git secrets --scan'
            }
        }
    }
}
