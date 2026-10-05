variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-1"
}

variable "project_name" {
  description = "Project name used as resource name prefix"
  type        = string
}

variable "environment" {
  description = "Deployment environment (dev | prod)"
  type        = string
  validation {
    condition     = contains(["dev", "prod"], var.environment)
    error_message = "environment must be 'dev' or 'prod'."
  }
}

variable "is_prod" {
  description = "Enables prod-only hardening: PITR, deletion protection"
  type        = bool
  default     = false
}

variable "log_retention_days" {
  description = "CloudWatch Logs retention in days (dev=7, prod=90)"
  type        = number
  default     = 7
  validation {
    condition     = contains([1, 3, 5, 7, 14, 30, 60, 90, 120, 180, 365], var.log_retention_days)
    error_message = "log_retention_days must be a valid CloudWatch Logs retention value."
  }
}

variable "lambda_memory_mb" {
  description = "Lambda memory allocation in MB"
  type        = number
  default     = 256
}

variable "apigw_burst_limit" {
  description = "API Gateway default stage throttling burst limit"
  type        = number
  default     = 200
}

variable "apigw_rate_limit" {
  description = "API Gateway default stage throttling rate limit (req/sec)"
  type        = number
  default     = 100
}

variable "github_repo" {
  description = "GitHub repo for OIDC trust (e.g. 'org/repo')"
  type        = string
}