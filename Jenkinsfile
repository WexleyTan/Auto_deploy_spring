pipeline {
    agent any 
    tools {
        gradle 'gradle'
    }
    stages {

        stage("build") {
            steps {
              script {
                  sh './gradlew cleanFrontendTest --no-daemon'
                  sh './gradlew frontendUnitTest --no-daemon'
                  sh './gradlew tslint --no-daemon'
                  sh './gradlew e2e --no-daemon'
                  sh './gradlew publish --no-daemon'
              }
            }
        }

        stage("deploy") {
            steps {
                sh ' docker build -t springboot_jenkins . '
                sh 'docker start springboot_jenkins || docker run --name springboot_jenkins -d -p 8081:8080 springboot_jenkins '
                sh ' docker ps '
            }
        }
    }
}



