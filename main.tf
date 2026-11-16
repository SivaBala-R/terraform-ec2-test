module "ec2-test" {
    source = "../terraform-aws-instance"
    project = var.project
    environment = var.environment
    component = var.component
    ami_id = var.ami_id
    instance_type = var.instance_type
    ec2_tags = var.ec2_tags
}