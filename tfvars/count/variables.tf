variable "ami_id" {
  type = string # this is the data type
  default = "ami-03265a0778a880afb" # this is the default value
}

variable "zone_id" {
    default = "Z05137822OZWEMAN9Q55F"
  
}
variable "instance_name"{
    type = list
    default = ["MongoDB" , "Cart", "User", "Catalouge", "Shipping", "Mysql", "Redit", "Payment", "RabbitMQ", "Web"] 
}