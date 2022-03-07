data "template_file" "dashboard" {
 template = file("${path.module}/dashboard.json")
 vars = {
   aws_region = var.aws_region
   environment = var.environment
 }
}

resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "${var.resource_prefix}-metrics"
  dashboard_body = data.template_file.dashboard.rendered
}