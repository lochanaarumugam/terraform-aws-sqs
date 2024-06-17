variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "queue_name" {
  description = "The name of the SQS queue"
  type        = string
}

variable "visibility_timeout" {
  description = "The visibility timeout for the SQS queue"
  type        = number
  default     = 30
}

variable "message_retention" {
  description = "The message retention period for the SQS queue"
  type        = number
  default     = 345600
}

variable "receive_wait_time" {
  description = "The wait time for receiving messages"
  type        = number
  default     = 20
}

variable "environment" {
  description = "The environment (e.g., dev, prod)"
  type        = string
}

variable "project" {
  description = "The project name"
  type        = string
}
