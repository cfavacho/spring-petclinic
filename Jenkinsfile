#!groovy

pipeline {
  agent { label 'docker-agent' }
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.5.0'   
          args '-v maven_config:/root/mv_config -v maven_repo:/root/repo/ -v vol_apps:/apps'
        }
      }
      steps {
        sh 'cp /root/mv_config/settings.xml /usr/share/maven/conf/settings.xml'
        sh 'mvn clean install'
        sh 'cp target/spring-petclinic-2.0.0.BUILD-SNAPSHOT.jar /apps/spring-petclinic-2.0.0.BUILD-SNAPSHOT.jar'
      }
    }
    stage('Docker Build') {
      agent { label 'docker-agent' }
      steps {
        sh 'pwd'
        sh 'cp /apps/spring-petclinic-2.0.0.BUILD-SNAPSHOT.jar spring-petclinic-2.0.0.BUILD-SNAPSHOT.jar'
        sh 'docker build -t cfavacho/spring-petclinic:latest .'
      }
    }	
  }
}
