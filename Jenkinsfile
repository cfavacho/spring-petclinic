#!groovy

pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.5.0'   
          args '-v maven_repo:/root/'
        }
      }
      steps {
        sh 'mvn clean install'
      }
    } 
  }
}
