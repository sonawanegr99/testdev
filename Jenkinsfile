pipeline {
    agent any
    stages {
        stage('PreBuild') {
            
            steps {
             sh 'git secret --version'
             sh 'pwd'
             sh '/var/lib/jenkins/workspace/testingpipeling/checkovscript.sh'
           }


          
        }
    }
}
