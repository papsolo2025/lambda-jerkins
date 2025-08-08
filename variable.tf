variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "handler" {
  description = "Lambda handler (file.method)"
  type        = string
  default     = "lambda_function.lambda_handler"
}

variable "runtime" {
  description = "Lambda runtime"
  type        = string
  default     = "python3.12"
}

variable "role_arn" {
  description = "IAM role ARN for Lambda"
  type        = string
}

variable "filename" {
  description = "Path to Lambda zip file"
  type        = string
}
