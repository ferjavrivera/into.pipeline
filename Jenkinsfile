pipeline {
  agent any
  stages {
    stage('Say hello') {
      steps {
        echo "hello_world ${MY_NAME}!"
        echo "Hello ${params.Apellido}!"
        sh 'java --version'
      }
    }

  }
  environment {
    MY_NAME = 'Fer'
  }
  parameters {
    string(name: 'Apellido', defaultValue: 'whoever you are', description: 'Who should I say hi to?')
  }
}