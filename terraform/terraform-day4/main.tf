terraform {
	required_providers{
	aws = {
	source="hashicorp/aws"
	version= "~>4.16"
}
}

	required_version =">=1.2.0"
}


provider "aws" {
region="us-east-1"
}


locals{
	instance={"raja":"ami-053b0d53c279acc90","subha":"ami-022e1a32d3f742bd8"}
}






resource "aws_instance" "test_instance_terra"{
	for_each=local.instance
	ami= each.value
	instance_type="t2.micro"
	tags= {
	Name= each.key
}
}

