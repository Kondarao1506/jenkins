pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "echo this is build"
            }
        }
        stage('Test') {
            steps {
                sh "echo this is test"
            }
        }
        stage('Deploy') {
            steps {
                sh "echo this is deploy"
            }
        }
    }

    post{
        always{
            echo "this section executes always"
        }

        success{
            echo "this section executes only on success"
        }

        failure{
            echo "this section executes only on failures"
        }
    }
}