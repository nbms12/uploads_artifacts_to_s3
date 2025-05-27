

step1: take previous job1 state to run job2 

![image](https://github.com/user-attachments/assets/7029a458-d3b8-444a-a859-d9fa5f05034b)


step2: write  pipeline script below and dont run 

pipeline {
agent any
stages {
    stage('S3download') {
      steps {
    withAWS(credentials:'aws-cred') {
        s3Download(file: 'builds/maven-web-app.war', bucket: 'mybkt-2tier', force: true, path: 'target/maven-web-app.war')
      }
    }
    }

  stage('Deploy to Tomcat') {
            steps {
                deploy adapters: [tomcat9(
                  credentialsId: 'tomcat-creds',
                  url: 'http://43.204.142.215:9090/'
                )], 
                war: 'builds/maven-web-app.war',  // Path to WAR file
                contextPath: 'myapp'        // App context (optional)
            }
        }
    
}   
}



step3: wait untill CI ( job 1 )  is completes 

step4: deployed web app for HR consutancy agency 


![image](https://github.com/user-attachments/assets/ba1cfe91-9d30-4aae-87e2-57ceb21c5eac)
