provider "aws" {
  region = "eu-west-1"
  allowed_account_ids = [
    "547961498044", # emnify-dev
  ]
}

provider "opsgenie" {
    api_key = data.aws_ssm_parameter.Opsgenie_api_key.value
}