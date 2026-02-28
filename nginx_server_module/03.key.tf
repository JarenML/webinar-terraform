#### SSH #####
resource "aws_key_pair" "nginx-key" {
    key_name = "${var.server_name}-ssh"
    public_key = file("${var.server_name}.key.pub")
    # ssh-keygen -t rsa -b 2048 -f "nginx-server.key"

    tags = {
        Name = "${var.server_name}-ssh"
        Environment = var.environment
        Owner = "jaren.ramos@sistemas.com.pe"
        Team = "DevOps"
        Project = "webinar"
    }
}