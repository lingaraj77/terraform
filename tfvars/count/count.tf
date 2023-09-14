resource "aws_instance" "loop" {
    count = 10
    ami = var.ami_id
    instance_type = var.instance_name[count.index] == "MongoDB" || var.instance_name[count.index] == "Mysql" ? "t3.medium" : "t2.micro"
    tags = {
        Name = var.instance_name[count.index]
    }
  
}
resource "aws_route53_record" "Record" {
    count = 10
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.joindevops.blog"
  type    = "A"
  ttl     = 1
  records = [aws_instance.loop[count.index].private_ip]
}