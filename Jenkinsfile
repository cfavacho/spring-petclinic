#!groovy

pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.5.0'
          args '--env HTTP_PROXY=http://servicelinux:Ab123456@10.0.1.186:8080 --env HTTPS_PROXY=http://servicelinux:Ab123456@10.0.1.186:8080'
        }
      }
      steps {
        sh 'mvn clean install'
      }
    } 
  }
}
