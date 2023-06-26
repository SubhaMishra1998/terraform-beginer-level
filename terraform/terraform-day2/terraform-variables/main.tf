resource "local_file" "devops"{
	filename="/home/subha/Desktop/AWS&DEV/terraform/terraform-day2/terraform-variables/devops_test.txt"
	content=var.content_map["content"]
}



resource "local_file" "devops-var"{

	filename=var.filename
	content = var.content_map["content2"]

}

output "best_learner" {
	value=var.best_learner
}


output "aws_ec2_info" {
	value= var.aws_ec2_object.instances
}


output "no_of_students" {
	value=var.no_of_students
}
