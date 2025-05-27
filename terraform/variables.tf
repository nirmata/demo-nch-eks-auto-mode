variable "name" {
  description = "Name of the EKS Cluster"
  default     = "automode-cluster"
  type        = string
}

variable "region" {
  description = "region"
  default     = "us-west-2"
  type        = string
}

variable "eks_cluster_version" {
  description = "EKS Cluster version"
  default     = "1.32"
  type        = string
}

variable "vpc_id" {
  description = "ID of the existing VPC"
  default     = "vpc-06640a57cdad7c6ee"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs in the existing VPC"
  default     = [
    "subnet-0ecf50090bf3a250d",
    "subnet-01db7a8f6e628d179",
    "subnet-0f09f7ba30b6d5ea6"
  ]
  type        = list(string)
}