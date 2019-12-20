#---------------------------------------------------
# Create VPC
#---------------------------------------------------
resource "aws_vpc" "aws_vpc" {
    cidr_block                          = "${var.vpc_cidr}"
    instance_tenancy                    = "default"
    enable_dns_support                  = "true"
    enable_dns_hostnames                = "true"
    assign_generated_ipv6_cidr_block    = "false"
    enable_classiclink                  = "false"
    tags = {
        Name            = "my-vpc"
    }
}

#---------------------------------------------------
# CREATE EIP
#---------------------------------------------------
resource "aws_eip" "aws_eip" {
    instance = "${aws_instance.my-test-instance.id}"
    vpc         = true
}
