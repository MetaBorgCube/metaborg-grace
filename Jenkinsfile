properties([
  disableConcurrentBuilds()
])

node{
  try{
    notifyBuild('Started')

    stage('Checkout') {
      checkout scm
      sh "git clean -fXd"
    }

    stage('Build and Test') {
      withMaven(
        mavenLocalRepo: "${env.JENKINS_HOME}/m2repos/${env.EXECUTOR_NUMBER}",
        mavenOpts: '-Xmx2G -Xms1G -Xss32m'
      ){
        sh 'pwd'
        sh 'cd grace'
        sh 'pwd'
        sh 'mvn -B -U clean verify -DforceContextQualifier=\$(date +%Y%m%d%H%M)'
      }
    }

    stage('Cleanup') {
      sh 'cd ..'
      sh "git clean -fXd"
    }

    notifyBuild('Succeeded')

  } catch (e) {

    notifyBuild('Failed')
    throw e

  }
}

def notifyBuild(String buildStatus) {
  def message = """${buildStatus}: ${env.JOB_NAME} [${env.BUILD_NUMBER}] ${env.BUILD_URL}"""

  if (buildStatus == 'Succeeded') {
    color = 'good'
  } else if (buildStatus == 'Failed') {
    color = 'danger'
  } else {
    color = '#4183C4' // Slack blue
  }

  //slackSend (color: color, message: message, channel: '#webdsl2-dev')
}