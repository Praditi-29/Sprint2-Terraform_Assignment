# 1) COUNT LOOP
resource"aws_s3_bucket" "S3_Bucket1"{
    count=length(var.BucketNames) 
    bucket=var.BucketNames[count.index]  
    tags =var.Tags
}  

# 2) FOR EACH LOOP
resource "aws_instance" "Ec2_Instance1" {
    for_each = var.ForEachVariable
    ami    = var.AMI-Id
    instance_type = var.Instance_type
    tags = {
      "Name" = each.value["Name"]
      "Owner"=each.value["Owner"]
      "Purpose"=each.value["Purpose"]
    }
}


# 3) BACKEND CONFIG CHANGE : Implemented in Backend.tf
#    BACKEND CONFIG CHANGE IS DONE WITH HELP OF S3 BUCKET Where We maintain single Tfstate file for everyone . 
#    ONE Lock.hcl IS MAINTAIN WITH HELP OF DYNAMODB TABLE.
#    Some commands used : terraform init --reconfigure (done when we modify backed)


