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

    stage('test: integraci�n calidad') {
      steps {
        sh 'echo "Un paso de integraci�n"'
      }
    }

    stage('test: funcional') {
      steps {
        sh 'echo "Un paso de funcional"'
      }
    }

    stage('Aprobaci�n') {
      steps {
        sh 'echo "Un paso de Aprobaci�n"'
      }
    }

    stage('deploy:prod') {
      steps {
        sh 'echo "Un paso de deploy"'
      }
    }

  }
}