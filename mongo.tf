resource "aws_security_group" "mongodb_atlas_sg" {
  vpc_id = module.vpc.vpc_id
  name   = "${var.NOME}_mongodb_atlas_sg"
  description = "Security group for MongoDB Atlas connectivity"

  # Outbound rule for MongoDB Atlas connectivity (using standard MongoDB port)
  egress {
    from_port   = 27017
    to_port     = 27017
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # You might want to restrict this to MongoDB Atlas IP ranges
    description = "Allow outbound connections to MongoDB Atlas"
  }

  # General outbound rule for DNS lookups (needed for SRV records)
  egress {
    from_port   = 53
    to_port     = 53
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow DNS lookups for SRV records"
  }

  # General internet access for other MongoDB Atlas services
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }

  tags = {
    Name    = "${var.NOME}-mongodb-atlas-sg"
    projeto = var.TAGS
  }
}