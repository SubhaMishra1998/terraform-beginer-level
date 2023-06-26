terraform{
	required_providers{

	aws={
	source="hashicorp/aws"
	version= "~>4.16.0"


}
}

required_version=">=1.2.0"
}

provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "my_ec2_testinstance"{

	ami="ami-053b0d53c279acc90"
	instance_type= "t2.micro"
	tags ={
	Name="terraform_IAC"
}

}

resource "aws_s3_bucket" "my_s3_bucket"{
	bucket ="terraform-subha-123bucket"
	tags ={
	Name="terraform-subha-mybucket"
}
}







output "ec2_pub_ips"{
	value = aws_instance.my_ec2_testinstance.public_ip

}



