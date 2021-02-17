resource "aws_vpc" "default" {
    cidr_block = "${var.vpc_cidr}"
    enable_dns_hostnames = true
    tags = {
    Name = "${var.vpc_name}"
    Tag1="one1"
    Tag2="two2"
    Tag3="three3"
	Owner = "Sreeharsha Veerapalli"
	environment = "${var.environment}"
    }
 
}


resource "aws_internet_gateway" "default" {
    vpc_id = "${aws_vpc.default.id}"
	tags = {
        Name = "${var.IGW_name}"
    }
}