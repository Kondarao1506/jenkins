pipeline {
    agent {
       label 'AGENT-1'
    }

    options{
        //timeout(time: 10 , unit: 'SECONDS')
        disableConcurrentBuilds()
       // retry(2)
    }

    parameters{
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')

        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')

        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')

        choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')

        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    }
    stages {
        stage('Build') {
            steps {
                sh "echo this is build"
                //echo '${param.pavan}'
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

        stage('Reading_params'){
            steps{
                echo "Hello ${params.PERSON}"

                echo "Biography: ${params.BIOGRAPHY}"

                echo "Toggle: ${params.TOGGLE}"

                echo "Choice: ${params.CHOICE}"

                echo "Password: ${params.PASSWORD}"
            }
        }

        stage('triggers'){
            steps{
                echo "working with triggers"
            }
        }

        stage('approval'){
            input{
                message "should we continue?"
                ok "we should"
                submiter "pavan"
                parameters{
                    string(name:'PERSON', defaultValue:"PAVAN", description: "who should i say hello too")
                }

            }
            steps{
                echo "Hello ${params.PERSON}, nice to meet you!"
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