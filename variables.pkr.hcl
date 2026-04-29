variable "region" {
  type    = string
  default = "ap-southeast-1"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

# aws ec2 describe-images --image-ids ami-02dd44faa40720bb8 --query "Images[0].Name" --output text (get name from ami id)
variable "source_ami_name" {
  type    = string
  default = "ubuntu/images/hvm-ssd-gp3/ubuntu-resolute-26.04-amd64-server-*"
}

variable "ami_owner" {
  type    = string
  default = "099720109477"
}

variable "ssh_username" {
  type    = string
  default = "ubuntu"
}

variable "ami_name" {
  type    = string
  default = "packer-nginx-ami"
}

variable "ssh_keypair_name" {
  type = string
  default = "your-ssh-key"
}

variable "ssh_private_key_file" {
  type = string
  default = "your-ssh-key.pem"
}