resource "local_file" "devops"{
	filename="/home/subha/Desktop/AWS&DEV/terraform/terraform-day1/devops-automated"
	content= "I am learning terraform"

}

resource "random_string" "rand-str"{
	length=16
	special=true
	override_special="!@#$%^&*()"
}

output "rand-str"{

	value=random_string.rand-str[*].result
}
