pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'echo "Un paso de una sola linea"'
        sh '''
                  echo "Pasos Multimedia"
                  cd /tmp
                  ls -lrt
                  '''
      }
    }

    stage('test: integración calidad') {
      steps {
        sh 'echo "Un paso de integración"'
      }
    }

    stage('test: funcional') {
      steps {
        sh 'echo "Un paso de funcional"'
      }
    }

    stage('Aprobación') {
      steps {
        sh 'echo "Un paso de Aprobación"'
      }
    }

    stage('deploy:prod') {
      steps {
        sh 'echo "Un paso de deploy"'
      }
    }

  }
}