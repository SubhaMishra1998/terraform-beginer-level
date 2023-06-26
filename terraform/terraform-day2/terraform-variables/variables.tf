variable "filename"{

	default ="/home/subha/Desktop/AWS&DEV/terraform/terraform-day2/terraform-variables/devops_automated.txt"
}

variable "content"{

	default="This is auto-generated from a variable"
}

variable "best_learner" {
	default= "someone"
}


variable "content_map" {
	type=map
	default ={
	"content" ="This is a cool content1"
	"content2"="This is a cooler content"
}
}

variable "aws_ec2_object" {
	type=object({
	name=string
	instances=number
	keys=list(string)
	ami=string

})

	default = {
	name="test_ec2_instance"
	instances=5
	keys=["key1.pem" ,"key2.pem"]
	ami="ubuntudksk"
}
}

variable "no_of_students" {}
