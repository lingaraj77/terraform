variable "ami_id" {
  type = string # this is the data type
  default = "ami-03265a0778a880afb" # this is the default value
}

variable "zone_id" {
    default = "Z05137822OZWEMAN9Q55F"
}
  
variable "domain" {
  default = "joindevops.blog"
}

variable "instances"{
    type = map
    #default = ["MongoDB" , "Cart", "User", "Catalouge", "Shipping", "Mysql", "Redit", "Payment", "RabbitMQ", "Web"]
    default = {
    MongoDB = "t3.medium"
    Mysql = "t3.medium"
    Catalouge = "t2.micro"
    user = "t2.micro"
    redis = "t2.micro"
    cart = "t2.micro"
    web = "t2.micro"
    RabbitMQ = "t2.micro"
    Shipping= "t2.micro"
    Payment = "t2.micro"
    }
}

variable "sg_name" {
  default   = "allow-all"
}

variable "sg_cidr" {

  default = ["0.0.0.0/0"]
  
}