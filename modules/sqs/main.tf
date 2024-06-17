resource "aws_sqs_queue" "this" {
  name                      = var.queue_name
  visibility_timeout_seconds = var.visibility_timeout
  message_retention_seconds = var.message_retention
  receive_wait_time_seconds = var.receive_wait_time
  tags = {
    Environment = var.environment
    Project     = var.project
  }
}
