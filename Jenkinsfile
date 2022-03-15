pipeline {
    agent any
    environment {
        AWS_ACCOUNT_ID="088585194665"
        AWS_DEFAULT_REGION="ap-south-1" 
        IMAGE_REPO_NAME="opensourcedevsecops"
        IMAGE_TAG="NodeApp"
        REPOSITORY_URI = "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}"
    }
   
   
 stages {
      stage('Cloning Git') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '', url: 'https://github.com/sonawanegr99/testdev.git']]])     
            }
        }

         stage('Logging into AWS ECR') {
            steps {
                script {
                sh "aws ecr get-login-password --region ${AWS_DEFAULT_REGION} | docker login --username AWS --password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com"
                }
                 
            }
        }
  
    // Building Docker images
    stage('Building image') {
      steps{
        script {
	  echo "Building image started"
	  sh 'date'
          dockerImage = docker.build "${IMAGE_REPO_NAME}:${IMAGE_TAG}"
	  echo "Image Build Successful"
	  sh 'date'
        }
      }
    }
   

    // Uploading Docker images into AWS ECR
    stage('Pushing to ECR') {
     steps{  
         script {
	   	echo "Tagging the Docker image"
                sh "docker tag ${IMAGE_REPO_NAME}:${IMAGE_TAG} ${REPOSITORY_URI}:$IMAGE_TAG"
		echo "Scanning for vulnerabilities in container image using trivy"
                sh "/usr/local/bin/trivy image ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}:${IMAGE_TAG}"
		echo "Pushing image to ECR"
                sh "docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}:${IMAGE_TAG}"
         }
        }
      }
    }
}

