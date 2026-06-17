data "aws_ssm_parameter" "amazon_linux_2023" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "web" {
  ami                         = data.aws_ssm_parameter.amazon_linux_2023.value
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_ids[0]
  vpc_security_group_ids      = [var.web_security_group_id]
  associate_public_ip_address = true

  user_data_replace_on_change = true

  user_data = <<-EOF_USERDATA
              #!/bin/bash
              dnf update -y
              dnf install -y nginx
              systemctl enable nginx
              systemctl start nginx

              cat > /usr/share/nginx/html/index.html <<'HTML'
              <!DOCTYPE html>
              <html>
              <head>
                <title>GhostInfra</title>
                <style>
                  body {
                    font-family: Arial, sans-serif;
                    background: #0f172a;
                    color: #e5e7eb;
                    text-align: center;
                    padding-top: 80px;
                  }
                  .card {
                    background: #111827;
                    border-radius: 16px;
                    padding: 40px;
                    width: 60%;
                    margin: auto;
                    box-shadow: 0 0 25px rgba(0,0,0,0.4);
                  }
                  h1 {
                    color: #38bdf8;
                    font-size: 42px;
                  }
                  p {
                    font-size: 18px;
                    line-height: 1.6;
                  }
                </style>
              </head>
              <body>
                <div class="card">
                  <h1>GhostInfra</h1>
                  <p>AWS infrastructure provisioned using Terraform.</p>
                  <p>VPC, Subnets, Security Groups, and EC2 are live.</p>
                </div>
              </body>
              </html>
              HTML
              EOF_USERDATA

  tags = {
    Name        = "${var.project_name}-${var.environment}-web-server"
    Project     = var.project_name
    Environment = var.environment
    Tier        = "web"
  }
}
