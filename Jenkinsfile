pipeline {
  agent any
  stages {
    stage('Analizar código') {
      steps {
        sh '''echo $PATH
export PATH=/home/alumno/pmd-bin-7.0.0/bin/:$PATH
echo $PATH'''
        sh 'pmd check -d ./ -R rulesets/java/quickstart.xml -f text -r report.txt --no-fail-on-violation'
        sleep(unit: 'MINUTES', time: 1)
      }
    }

    stage('Compilar') {
      steps {
        sh 'mvn clean compile -f ./pom.xml'
      }
    }

  }
}