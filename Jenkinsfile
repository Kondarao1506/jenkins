pipeline {
    agent {
       label 'AGENT-1'
    }

    options{
        timeout(time: 10 , unit: 'SECONDS')
        disableConcurrentBuilds()
       // retry(2)
    }

    parameters{
           string(name: "pavan", defaultValue: "hi hello pavan", description: "Saying hello")
    }
    stages {
        stage('Build') {
            steps {
                sh "echo this is build"
                sh 'echo ${param.pavan}'
            }
        }
        stage('Test') {
            steps {
                sh "echo this is test"
               // sleep 10
               //error "pipeline failed"
            }
        }
        stage('Deploy') {
            steps {
                echo "echo this is deploy"
            }
        }
    }

    post{
        always{
            echo "this section executes always"
            deleteDir()
        }

        success{
            echo "this section executes only on success"
        }

        failure{
            echo "this section executes only on failures"
        }
    }
}