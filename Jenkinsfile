pipeline {
  agent any
  stages {
    stage('Corriendo en paralelo') {
      parallel {
        stage('a') {
          steps {
            echo 'Test en Linux'
          }
        }

        stage('b') {
          steps {
            echo 'Test en Windos'
          }
        }

      }
    }

    stage('build') {
      steps {
        sh 'echo "un paso sencillo de una linea"'
        sh '''
        echo "pasos multilinea"
        cd /tmp
        ls -lrt
        '''
      }
    }

    stage('test: integracion y calidad') {
      steps {
        sh 'echo "paso test"'
        sh 'pwd'
        sh 'chmod 777 ./miscript.sh'
        sh './miscript.sh'
      }
    }

    stage('test: funcional') {
      when {
        branch 'test'
      }
      steps {
        sh 'echo "paso test" '
      }
    }

    stage('test: aprobacion') {
      steps {
        sh 'echo "paso test" '
      }
    }

    stage('deploy:prod') {
      input {
        message 'presiona ok para continuar'
        submitter 'user1,user2'
        parameters {
          string(name: 'username', defaultValue: 'user', description: 'nombre del usuario que esta dando ok')
        }
      }
      steps {
        sh 'echo "a produccion " '
        echo "User: ${username} dijo que ok"
      }
    }

  }
  environment {
    OUTPUT_PATH = './tmp'
  }
  post {
    always {
      echo 'Un paso de A'
    }

    aborted {
      echo 'Un paso de Abor'
    }

    failure {
      echo 'Un paso de Abor'
      mail(to: 'ferjavrivera@gmail.com', subject: 'error', body: 'cuerpo')
    }

  }
  triggers {
    cron('0 */4 * * 1-5')
  }
}