data "archive_file" "this" {
  type = "zip"
  source {
    content  = file("../dist/${var.file_name}.js")
    filename = "index.js"
  }
  source {
    content  = file("../dist/${var.file_name}.js.map")
    filename = "index.js.map"
  }
  output_path = "archives/${var.file_name}.zip"
}

resource "aws_lambda_function" "this" {
  filename         = data.archive_file.this.output_path
  function_name    = var.lambda_name
  role             = var.role_arn
  handler          = var.handler
  source_code_hash = data.archive_file.this.output_base64sha256
  runtime          = var.runtime
  timeout          = var.timeout
  memory_size      = var.memory_size
  environment {
    variables = var.environment_variables
  }
  tags = var.tags
}

resource "aws_lambda_function_event_invoke_config" "this" {
  function_name          = aws_lambda_function.this.function_name
  maximum_retry_attempts = 0
}
