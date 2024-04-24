pipeline {
  agent any
  stages {
    stage('Analizar código') {
      steps {
        sleep(unit: 'MINUTES', time: 1)
        sh 'echo $PATH'
        sh 'pmd check -d ./ -R rulesets/java/quickstart.xml -f text -r report.txt --no-fail-on-violation'
      }
    }

    stage('Compilar') {
      steps {
        sh 'mvn clean compile -f ./pom.xml'
      }
    }

  }
}