output "sqs_queue_id" {
  description = "The ID of the SQS queue"
  value       = module.sqs.sqs_queue_id
}

output "sqs_queue_arn" {
  description = "The ARN of the SQS queue"
  value       = module.sqs.sqs_queue_arn
}
