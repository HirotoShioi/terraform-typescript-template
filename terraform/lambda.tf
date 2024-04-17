module "hello" {
  source      = "./modules/lambda"
  file_name   = "hello.lambda"
  lambda_name = "${local.prefix}-hello"
  role_arn    = aws_iam_role.iam_for_lambda.arn
  memory_size = local.lambda.memory_size
  timeout     = local.lambda.timeout
}
