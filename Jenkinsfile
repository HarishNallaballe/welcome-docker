pipeline {
	agent any
	stages{
	  stage('Build'){
	     steps{
		echo "HI Harish Build"
	     }
	  }
	  stage('Integration Test'){
	     steps{
		echo "HI Harish Integration test"
	     }
	  }
	 stage('Test'){
	     steps{
		echo "HI Harish Test"
	     }
	  }	
	}

  post{
    always{
	echo "always executed"
    }
    success{
        echo "when success"
    }
    failure{
	echo "when failure"
    }
  }
	
}
