def label = "worker-${UUID.randomUUID().toString()}"

podTemplate(label: label, containers: [
  containerTemplate(name: 'terraform', image: 'hashicorp/terraform', ttyEnabled: true, command: 'cat')
],
) {
  node(label) {
   
    stage('Checkout') {

        checkout scm
        sh 'mkdir -p ./creds'
        withCredentials([string(credentialsId: 'terraform-auth', variable: 'TOKEN')]) {
          sh '''
            set +x
            echo "$TOKEN" | base64 -d > ./creds/serviceaccount.json
          '''
        }
    }

    stage('TF Plan') {

        container('terraform') {
          sh 'terraform init'
          sh 'terraform plan -out clouddns'
        
    
    }

    stage('Approval') {

        script {
          def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
        }

    }

    stage('TF Apply') {

        container('terraform') {
          sh 'terraform apply -input=false clouddns'
        }

    }
  }
}
}
