data "aws_ssm_parameter" "Opsgenie_api_key" {
  name = "${module.env.prefix}-api-key"
}
