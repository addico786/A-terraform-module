# resource "aws_key_pair" "new-key-pair-15-5-2025" {
#     key_name   = "kurunin4-key-15-5-2025"
#     public_key = file("${path.module}/kurunin4-key-15-5-2025.pub") # it means looking for the key here in this folder only 
# }

# resource "aws_default_vpc" "default" {
# }

# resource "aws_security_group" "ultra-level" {
#     vpc_id = aws_default_vpc.default.id
#     name = "ultra-level-secured-group"

#     ingress {
#         from_port = 22
#         to_port = 22
#         protocol = "tcp"
#         cidr_blocks = [ "0.0.0.0/0" ]
#         description = "SSH open"
#     }

#     egress {
#         from_port = 0
#         to_port = 0
#         protocol = "tcp"
#         cidr_blocks = [ "0.0.0.0/0" ]
#         description = "ALL open"
#     }
    
# }


resource "aws_instance" "new-instance-15-5-2025" {
    count = var.instance_count
    # security_groups = [ aws_security_group.ultra-level.name ]
    # key_name = aws_key_pair.new-key-pair-15-5-2025.key_name
    instance_type = var.instance_type
    ami = var.ami

    root_block_device {
      volume_size = var.instance_volume
      volume_type = "gp3"
    }

    tags = {
      Name = "${var.environment}-application"
    }

    
}