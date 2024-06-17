provider "aws" {
  region = var.region
}

module "sqs" {
  source = "./modules/sqs"
  
  queue_name             = var.queue_name
  visibility_timeout     = var.visibility_timeout
  message_retention      = var.message_retention
  receive_wait_time      = var.receive_wait_time
  environment            = var.environment
  project                = var.project
}
