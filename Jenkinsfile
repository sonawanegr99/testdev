pipeline {
    agent any
    stages {
        stage('PreBuild') {
            steps {
              sh 'docker run --rm -i hadolint/hadolint < /var/lib/jenkins/workspace/testdevsecops/Dockerfile'
            }
        }
    }
}
