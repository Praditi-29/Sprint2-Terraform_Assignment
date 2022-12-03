variable "AMI-Id" {
    type = string
    description = "Default its Window AMI -ID"
}

variable "Instance_type" {
    type = string
    description = "Default instance is t2.micro free tier eligible"

}

variable "Tags" {
    type = map(any)
    description = "Necessary Tags to Apply"
}

variable "Instance_names" {
    type = list(any)
    description = "Count loop Variable"
}


variable "ForEachVariable" {
    type = map(any)
    description = "ForEachLoop variable"
}

variable "BucketNames" {
    type = list(string)
  
}