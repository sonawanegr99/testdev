pipeline {
    agent any
    environment {
        AWS_ACCOUNT_ID="088585194665"
        AWS_DEFAULT_REGION="ap-south-1" 
        IMAGE_REPO_NAME="opensourcedevsecops"
	AWS_CLUSTER_NAME="Devsecopcluster"
        IMAGE_TAG="NodeApp2"
        REPOSITORY_URI = "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}"
    }
   
   
 stages {
      
	
stage('eks check') {
            steps {
                
                echo "'export PATH=$PATH:$HOME/bin' >> ~/.bashrc"
                sh 'exec bash'
                echo 'Check kubectl version'
                sh 'kubectl version --short --client'
            }
        }

     stage('eks login') {
            steps {
                
                echo "eks login ..."
                sh 'aws eks --region $AWS_DEFAULT_REGION update-kubeconfig --name $AWS_CLUSTER_NAME'
                sh 'kubectl config view --minify'
                echo "check kubectl access"
                sh 'kubectl get svc'
                echo "EKS login Completed"
            }
        }

  stage('eks deployment application') {
            steps {
                
               sh '/usr/bin/kubectl apply -f ./deployment.yaml'
               sh '/usr/bin/kubectl apply -f ./service.yaml'
            }
        }
	 
	 
    }
}

