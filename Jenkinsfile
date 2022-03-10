pipeline{
  agent any
  stages{
    stage('test'){
      steps{
      
      sh '#!/bin/bash
echo "hello world"
docker run --rm -i hadolint/hadolint < ./Dockerfile '
      
        
      }
      }
     }
    }
	
