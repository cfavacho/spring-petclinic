#!groovy

pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.5.0'   
          args '-v maven_config:/root/mv_config'
        }
      }
      steps {
        sh 'ls -l'
        sh 'mvn  dependency:copy-dependencies'
        sh 'cp /root/mv_config/settings.xml /usr/share/maven/conf/settings.xml'
        sh 'mvn -X clean install'        
      }
    } 
  }
}
