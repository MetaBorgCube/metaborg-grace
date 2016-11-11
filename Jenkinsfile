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
        mavenLocalRepo: "/tmp/${env.BRANCH_NAME}-${env.EXECUTOR_NUMBER}/.repository",
        mavenOpts: '-Xmx2G -Xms1G -Xss32m'
      ){
        dir('grace') {
          sh 'mvn -B -U clean install clean verify -DforceContextQualifier=\$(date +%Y%m%d%H%M)'
        }
      }
    }

    stage('Cleanup') {
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