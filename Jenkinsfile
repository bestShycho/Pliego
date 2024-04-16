pipeline {
  agent any
  stages {
    stage('Analizar código') {
      parallel {
        stage('Analizar código') {
          steps {
            sh 'pmd check -d ./ -R rulesets/java/quickstart.xml -f text -r report.txt'
          }
        }

        stage('Compilar y ejecutar') {
          steps {
            sh 'mvn clean compile install -f ./pom.xml -Dmaven.tomcat.home=/opt/tomcat > maven_kernel.log'
          }
        }

      }
    }

  }
}