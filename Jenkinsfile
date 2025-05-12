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
                echo "echo this is deploy"
                error "pipeline failed"
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