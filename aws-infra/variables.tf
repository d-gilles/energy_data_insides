variable "AWS_ACCESS_KEY_ID" {
  type    = string
  default = ""
}

variable "AWS_SECRET_ACCESS_KEY" {
  type    = string
  default = ""
}

variable "PROJECT_NAME" {
  type    = string
  default = "energy_data_etl"
}

variable "DATABASE_CONNECTION_URL" {
  type    = string
  default = ""
}

variable "bucket_name" {
  type = string
  default = "datalake-lenico"
}

variable "app_count" {
  type    = number
  default = 1
}

variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "eu-central-1"
}

variable "aws_cloudwatch_retention_in_days" {
  type        = number
  description = "AWS CloudWatch Logs Retention in Days"
  default     = 30
}

variable "app_name" {
  type        = string
  description = "Application Name"
  default     = "mageetl" 
}

variable "app_environment" {
  type        = string
  description = "Application Environment"
  default     = "development"
}

variable "cidr" {
  description = "The CIDR block for the VPC."
  default     = "10.32.0.0/16"
}

variable "database_user" {
  type        = string
  description = "The username of the Postgres database."
  default     = "mageuser"
}

variable "database_password" {
  type        = string
  description = "The password of the Postgres database."
  sensitive   = true
  default     = "magepassword"
}

variable "docker_image" {
  description = "Docker image url used in ECS task."
  default     = "mageai/mageai:latest"
}

variable "ecs_task_cpu" {
  description = "ECS task cpu"
  default     = 1024
}

variable "ecs_task_memory" {
  description = "ECS task memory"
  default     = 2048
}

variable "public_subnets" {
  description = "List of public subnets"
  default     = ["10.32.100.0/24", "10.32.101.0/24"]
}

variable "private_subnets" {
  description = "List of private subnets"
  default     = ["10.32.0.0/24", "10.32.1.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones"
  default     = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}


## redshift

variable "cluster_identifier" {
  description = "name of the redshift cluster"
  default = "tf-redshift-cluster" 
}

variable "database_name" {
  description = "name of the redshift db"
  default = "energy_dwh"  
}

variable "db_master_user" {
  description = "db master user"
  default = "exampleuser"
}

variable "db_master_pwd" {
  description = "db master user"
  default = "Mustbe8characters"
}