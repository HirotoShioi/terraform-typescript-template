variable "file_name" {
  description = "Lambda function name"
  type        = string
}

variable "role_arn" {
  description = "IAM role ARN"
  type        = string
}

variable "lambda_name" {
  description = "Lambda function name"
  type        = string
}

variable "timeout" {
  description = "Lambda function timeout"
  type        = number
  default     = 600
}

variable "memory_size" {
  description = "Lambda function memory size"
  type        = number
  default     = 256
}

variable "environment_variables" {
  description = "Lambda function environment variables"
  type        = map(string)
  default     = {}
}

variable "runtime" {
  description = "Lambda function runtime"
  type        = string
  default     = "nodejs20.x"
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)
  default     = {}
}

variable "handler" {
  description = "Lambda function handler"
  type        = string
  default     = "index.handler"
}