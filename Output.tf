# Output Block for For loop creating ec2 Instances
output "EC2_Instances_Generated" {
    value= [for i in var.ForEachVariable: i["Name"]]
    description = "Ec2 instances Names"
}

# Output Block for count loop creating s3 bucket
output "S3_Buckets_Generated" {
    value= [for i in var.BucketNames: i]
    description = "S3 buckets Names"
}