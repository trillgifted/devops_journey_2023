provider "aws" {       # Set your desired cloud provider (aws, azure)
  region = "us-east-1" # Set your desired AWS region
}

resource "aws_instance" "example" {       # check terraform documention for resource syntax (or gpt?)
  ami           = "ami-080e1f13689e07408" # Specify an appropriate AMI ID
  instance_type = "t2.micro"
  subnet_id     = "subnet-02d253b252d8d1a5e"
  key_name      = "DEV_OPS_2024_2"

}

#aws_instance(ec2) terraform documention: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
# terraform init - will initializes the configution
# terraform plan - saves you from making a mistake. shows you exact that terraform will do and configure
# terraform apply
