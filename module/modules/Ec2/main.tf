###Retrive The deails before instance Lanuch.Help of Data Sources


data "aws_ami" "amazonaminame" {

  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }


  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

}






resource "aws_instance" "os1" {
ami           = data.aws_ami.amazonaminame.id 
instance_type = var.mytype

        tags ={
                Name ="Terraform2"
        }
}
