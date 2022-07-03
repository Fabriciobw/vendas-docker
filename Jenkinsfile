pipeline {
   
  agent any
  stages {
  stage('Clone') {
      steps{
      sh 'mkdir -p build'
      dir('build') {
          git branch: "main", url: "https://github.com/Fabriciobw/vendas-docker"
      }  
      }
  }       
   stage('Build backend'){
	steps{
	     sh 'cd /var/lib/jenkins/workspace/deploy-spring-app@2/build/ && sudo mvn clean package -DskipTests=true'
	}
   }
    stage('Deploy backend'){
	steps{
		 sh 'sudo docker rm -f vendas-docker'
		 sh 'sudo docker rmi vendas-docker'
		 sh 'sudo docker image build -t vendas-docker'
		 sh 'sudo docker container run --name vendas-docker -p 9001:9000 -d vendas-docker'
	}
    }
    }
}

  stage('Clone') {
      steps{
      sh 'mkdir -p build'
      dir('build') {
          git branch: "main", url: "https://github.com/Fabriciobw/vendas-docker"
      }  
      }
  }