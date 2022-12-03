terraform {
  backend "s3" {
    bucket = "pradititfs3"
    key    = "Praditi_BackEndChangeTry1.tfstate"
    region = "ap-south-1"
    
    dynamodb_table = "Praditi_DynamoDbTable"
  }
}

# bucket : S3 bucket name we made on aws.
# key is the name of tfstate file . 
# region is where we want to work.

# Dynamodb table : name of table we made on aws , Also we add partion key as LockID(String)