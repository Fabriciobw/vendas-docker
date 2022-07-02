pipeline {
	agent any
	stages('Build backend') {
		steps{
		 sh 'mvn clean package -DskipTests=true'	
		}		
	}
}