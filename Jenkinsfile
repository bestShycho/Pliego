pipeline {
  agent any
  stages {
    stage('Analizar c�digo') {
      parallel {
        stage('Analizar c�digo') {
          steps {
            sh '/opt/pmd-bin-7.0.0/bin/pmd check -d ./ -R rulesets/java/quickstart.xml -f text -r report.txt --no-fail-on-violation'
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