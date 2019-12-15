pipeline {
   agent { dockerfile true }
    stages{
	stage('Build') {
	    steps {
		sh 'docker build -t nehernandez15/app:test .'
	    }
	}
        stage('Test') {
	    steps {		
		sh 'docker run -p 80:80 --name app app:test'
		sh 'nc -vz localhost 80'
		sh 'docker stop app'
	    }
	}
    }
}
