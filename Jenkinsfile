pipeline {
  agent any
  stages {
    stage('Say hello') {
      steps {
        echo "hello_world ${MY_NAME}!"
        echo "Hello ${params.Name}!"
        sh 'java --version'
      }
    }

  }
  environment {
    MY_NAME = 'Fer'
    Name = 'jdk'
  }
  parameters {
    string(name: 'Name', defaultValue: 'whoever you are', description: 'Who should I say hi to?')
  }
}