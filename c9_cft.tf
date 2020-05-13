data "template_file" "this" {
  template = file("c9_cft.yaml")
}

resource "aws_cloudformation_stack" "this" {
  name = "devlab-eks-alb-2048game"
  template_body = data.template_file.this.rendered
  capabilities = ["CAPABILITY_IAM"]
}
