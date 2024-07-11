properties([
  disableConcurrentBuilds()
])

node('spoofax-buildenv-jenkins') {
  // In Jenkins, under Tools, add a JDK Installation with:
  // - Name: JDK 11
  // - JAVA_HOME: /usr/lib/jvm/java-11-openjdk-amd64
  // - Install automatically: false
  // Ensure the JDK 11 is available in the Spoofax Docker image at the specified path.
  jdk = tool name: 'JDK 11'
  env.JAVA_HOME = "${jdk}"
  
  try{
    notifyBuild('Started')

    stage('Echo') {
      // Print important variables and versions for debugging purposes.
      sh 'env'
      sh 'bash --version'
      sh 'git --version'
      sh 'python3 --version'
      sh 'pip3 --version'
      sh "$JAVA_HOME/bin/java -version"
      sh "$JAVA_HOME/bin/javac -version"
      sh 'mvn --version'
    }
    
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
          sh 'mvn -B -U clean verify -DforceContextQualifier=\$(date +%Y%m%d%H%M)'
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
