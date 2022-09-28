module "aws_instance" {
	source = "../modules/Ec2/"
	mytype = "t3.small"

}