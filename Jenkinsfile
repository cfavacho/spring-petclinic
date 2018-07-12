#!groovy

pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.5.0'   
          args '-v maven_config:/root/mv_config -v maven_repo:/root/repo/'
        }
      }
      steps {
        sh 'cp /root/mv_config/settings.xml /usr/share/maven/conf/settings.xml'
        sh 'mvn clean install'
      }
    }
    stage('Docker Build') {
      agent docker-agent
      steps {
        sh 'ls -l'
        sh 'docker build -t cfavacho/spring-petclinic:latest .'
      }
    }	
  }
}
