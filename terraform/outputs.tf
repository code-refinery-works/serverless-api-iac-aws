output "api_endpoint" {
  description = "HTTP API invoke URL"
  value       = aws_apigatewayv2_stage.default.invoke_url
}

output "lambda_function_name" {
  description = "Lambda function name for CI/CD code deployment"
  value       = aws_lambda_function.main.function_name
}

output "dynamodb_table_name" {
  description = "DynamoDB table name"
  value       = aws_dynamodb_table.main.name
}

output "dynamodb_table_arn" {
  description = "DynamoDB table ARN"
  value       = aws_dynamodb_table.main.arn
}

output "github_actions_role_arn" {
  description = "IAM Role ARN for GitHub Actions OIDC"
  value       = aws_iam_role.github_actions.arn
}

output "lambda_log_group" {
  description = "Lambda CloudWatch Log Group name"
  value       = aws_cloudwatch_log_group.lambda.name
}