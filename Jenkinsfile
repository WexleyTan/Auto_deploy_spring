pipeline {
    agent any 
    tools {
        gradle 'gradle'
    }
    stages {

        stage("build") {
            steps {
              sh ' ./gradlew build '
            }
        }

        stage("deploy") {
            steps {
                sh ' docker build -t springboot_jenkins . '
                sh 'docker start springboot_jenkins || docker run --name springboot_jenkins -d -p 8081:7070 springboot_jenkins '
                sh ' docker ps '
            }
        }
    }
}



