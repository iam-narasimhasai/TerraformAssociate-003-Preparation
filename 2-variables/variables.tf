variable "region" {
  type        = string
  description = "region select"
  default     = "us-east-1"
}
variable "inst_type" {
  type        = string
  description = "instance type"
  default     = "t2.micro"
}
variable "inst_count" {
  type = number
  description = "instance number"
  default = 2
}
variable "enable_public_ip" {
  description = "enable public ip address"
  type = bool
  default = true
}
variable "user_names" {
  description = "IAM usernames"
  type = list(string)
  default = [ "user1","user2","user3" ]
} 

variable "project_environment" {
  description = "project name and environment"
  type = map(string)
  default = {
    "project" = "alpha"
    "environment" = "dev"
  }
}
