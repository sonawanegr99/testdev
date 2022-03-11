pipeline {
    agent any
    stages {
        stage('PreBuild') {
            steps {
              sh 'docker run --rm -i hadolint/hadolint < ./Dockerfile'
            }
        }
    }
}
