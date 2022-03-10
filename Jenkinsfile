pipeline {
    agent any
    stages {
        stage('Install') {
            steps {
                sh 'sudo yum install git'
                sh 'git --version'
                sh 'git clone https://github.com/awslabs/git-secrets.git'
                sh 'make install'
                sh 'yum install docker  &>/dev/null'
                sh 'docker --version'
                sh ' wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64  &>/dev/null'
                sh  'chmod +x /bin/hadolint  &>/dev/null'
                sh 'hadolint --version'
                sh 'yum install python3  &>/dev/null'
                sh 'python3 --version'
                sh 'yum install pip3  &>/dev/null'
                sh 'pip3 --version'
                sh 'pip3 install checkov  &>/dev/null'
                sh 'checkov --version'
            }
        }
    }
}
