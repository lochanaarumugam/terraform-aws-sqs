resource "aws_sqs_queue" "this" {
  name                      = var.queue_name
  visibility_timeout_seconds = var.visibility_timeout
  message_retention_seconds = var.message_retention
  receive_wait_time_seconds = var.receive_wait_time
  redrive_policy            = jsonencode({
    deadLetterTargetArn = var.dead_letter_queue_arn
    maxReceiveCount     = var.max_receive_count
  })

  tags = {
    Environment = var.environment
    Project     = var.project
  }
}
