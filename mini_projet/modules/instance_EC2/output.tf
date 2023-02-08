output "output_ec2_id"{
    value = aws_instance.ec2.id 
}

output "output_ec2_AZ"{
    value = aws_instance.ec2.availability_zone
}
