# ------------------------------
# Provider
# ------------------------------
provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

# ------------------------------
# EC2 Instance
# ------------------------------
resource "aws_instance" "example" {
  ami           = "ami-0ecb62995f68bb549"
  instance_type = "t3.micro"
  key_name      = var.key_name

  user_data = <<EOF
#!/bin/bash
set -e

apt update -y
apt install -y git docker.io docker-compose

systemctl enable docker
systemctl start docker

git clone https://github.com/shafath1216/terraform.git /home/ubuntu/app

cd /home/ubuntu/app

cat <<EOL > .env
DB_USER=${var.db_user}
DB_PASSWORD=${var.db_password}
DB_NAME=${var.db_name}
DB_HOST=${var.db_host}
DB_PORT=${var.db_port}
EOL

docker-compose up -d
EOF

  tags = {
    Name = "my-fullstack-instance"
  }
}
