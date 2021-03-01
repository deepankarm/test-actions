variable "TFID" {
  description = <<EOT
    TFID (uuid recommended) that describes a particular terraform init & apply.
    This is used to store the state in s3 backend during init (as s3 key).
    And to tag all resources in AWS for easier filtering.
    EOT
  type        = string
}

variable "region" {
  description = <<EOT
    Mention the Region where all resources are going to get created
    EOT
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = <<EOT
    Mention the ec2 instance type for all instances
    EOT
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = <<EOT
    Mention the name of JinaD Instance
    EOT
  type        = string
  default     = "JinaD_EC2"
}

variable "vpc_cidr" {
  description = "CIDR of the VPC"
  type        = string
  default     = "10.113.0.0/16"
}


variable "subnet_cidr" {
  description = "CIDR of the VPC"
  type        = string
  default     = "10.113.0.0/16"
}


variable "cloudflare_email" {
  description = <<EOT
    Cloudflare Email ID
    EOT
  type        = string
  sensitive   = true
}

variable "cloudflare_api_key" {
  description = <<EOT
    Cloudflare API Key
    EOT
  type        = string
  sensitive   = true
}

variable "cloudflare_zone_id" {
  description = <<EOT
    Cloudflare Zone ID
    EOT
  type        = string
  sensitive   = true
}

variable "cloudflare_record_name" {
  description = <<EOT
    An optional dns record to be assigned to the JinaD instance.
    If it is empty, we prefix a random 7 letter string to "-cloud.jina.ai"
    If it is cloud, we assign this instance to "cloud.jina.ai"
    EOT
  type        = string
  default     = ""
}
