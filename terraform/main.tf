terraform {
    backend "s3" {
        bucket = "blkops-eks"
        key    = "global/prosper/terraform.tfstate"
        region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "pipepline-test" {
  ami = "ami-0533f2ba8a1995cf9"
  instance_type = "t2.small"
  key_name = "terraform-pipeline"
  subnet_id = "subnet-7100612e"
  security_groups = ["sg-025134092706e9410"]
  }
