pipeline {
    agent any
    stages {
        stage('PreBuild') {
            
            steps {
             sh 'git secret --version'
             sh 'pwd'
             sh 'checkov -f /var/lib/jenkins/workspace/testingpipeling/Dockerfile'
           }


          
        }
    }
}
