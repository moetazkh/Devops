pipeline {
    agent any
    tools {
    	maven 'M2_HOME'
    }
    stages {
       
        stage('Checkout GIT ') {
            steps {
                echo 'Pulliing ...';
                git branch: 'moatez1', url: 'https://github.com/moetazkh/Devops.git'            }

        }
	    
	    stage('compiler') {
      		steps {
        		sh 'mvn compile'
      		}
    	}
	    stage('Build') {
      		steps {
        		sh 'mvn -B -DskipTests clean package'
      		}
    	}
	    
        stage('Testing maven') {
		    steps {
		    sh """mvn -version"""
	        }
	    }
	  /*   stage("SonarQube Analysis") {
            steps {
              withSonarQubeEnv('SonarQube') {
                sh 'mvn clean -DskipTests package sonar:sonar'
              }
            }
          }/*
	   /* stage("NEXUS") {
        	steps {
		 sh 'mvn clean -DskipTests deploy'
              }
        }*/
  stage('Docker Image Build ') {
		    steps {
		      script{
			    sh 'docker build -t moatezkh/event .'
		    }
		}
		}
		stage('Docker Image Push ') {
            steps {
            script {
		    sh 'docker login -u moatezkh -p moatez123456' 
		    sh 'docker push moatezkh/event'
		    }
		    }
		}
	    stage("DockerCompose") {
			 steps {
				echo "\033[34m*********Starting application*********\033[0m";
				sh 'docker-compose up -d';
				echo "\033[42m\033[97m*********Apllication Is Started *********\033[0m"
			}
		}
    }}
