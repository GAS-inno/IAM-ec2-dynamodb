resource "aws_instance" "public" {
  ami                         = "${var.ami}" # find the AMI ID of Amazon Linux 2023  
  instance_type               = "${var.instance_type}"
  subnet_id                   = "${var.subnet_id}"  #Public Subnet ID, e.g. subnet-xxxxxxxxxxx
  associate_public_ip_address = true
  key_name                    = "saw-keypair" #Change to your keyname, e.g. jazeel-key-pair
  vpc_security_group_ids = [aws_security_group.saw_sg2.id]
  count = 1
 
  tags = {
    Name = "${var.name}-ec2-${count.index}"    #Prefix your own name, e.g. jazeel-ec2
  }
}


variable "name" {
   type = string
   description = "name of app"
   default = "saw"
}