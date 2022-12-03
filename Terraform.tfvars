Tags = {
  Owner="Praditi-CloudEQ"
  Purpose="AWSTraining_Praditi"
}

Instance_type = "t2.micro"

AMI-Id = "ami-08bd8e5c51334492e"

Instance_names = [ "Praditi-Training-1" ,"Praditi-Training-4","Praditi-Training-3" ]

ForEachVariable = {
  "Instance1" = {
    "Name"="Praditi-ForLoopTesting1"
    "Owner"="Praditi-CloudEQ"
    "Purpose"="Training"
  }
  "Instance2" = {
    "Name"="Praditi-ForLoopTesting2"
    "Owner"="Praditi-CloudEQ"
    "Purpose"="Training"
  }
  "Instance3" = {
    "Name"="Praditi-ForLoopTesting3"
    "Owner"="Praditi-CloudEQ"
    "Purpose"="Training"
  }
}

BucketNames = [ "Praditi_TrainingBucket1","Praditi_TrainingBucket2" ,"Praditi_TrainingBucket3" ,"Praditi_TrainingBucket4"  ]