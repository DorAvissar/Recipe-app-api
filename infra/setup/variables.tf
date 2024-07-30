variable "tf_state_bucket" {
    description = "Name of S3 bucket in AWS for storing TF state"
    default = "devops-recipe-app"
}

variable "tf_state_lock_table" {
    description = "Name of the DynamoDB table for TF state locking"
    default = "devops-recipe-app-lock"
}

variable "project" {
    description = "project name for tagging resources"
    default = "recipe-app-api"
}

variable "contact" {
    description = "Contact name for tagging resources"
    default = "DorAvissar2@gmail.com"
}
