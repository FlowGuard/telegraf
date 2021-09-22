pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    stages {
        stage('Docker build & publish') {
            steps {
                script {
                    dockerImage = docker.build "docker.fg/flowguard/telegraf"

                    bn = env.BUILD_NUMBER
                    gitVersion = sh(script: 'git describe --tags --always', returnStdout: true).toString().trim()
                    currentBuild.displayName = "#${bn}:${gitVersion}"

                    dockerImage.push(gitVersion)
                }
            }
        }
    }
}
