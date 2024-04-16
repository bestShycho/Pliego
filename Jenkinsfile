pipeline {
  agent any
  stages {
    stage('Analizar c�digo') {
      parallel {
        stage('Analizar c�digo') {
          steps {
            sh '/usr/local/bin/pmd check -d ./ -R rulesets/java/quickstart.xml -f text -r report.txt'
          }
        }

        stage('Compilar y ejecutar') {
          steps {
            sh '/etc/maven/ clean compile install -f ./pom.xml -Dmaven.tomcat.home=/opt/tomcat > maven_kernel.log'
          }
        }

      }
    }

  }
}