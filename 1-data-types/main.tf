# 1. String primitive type
variable "environment" {
   type = string
   default = "production"
   description = "Environment name"
}

#2. Number - Primitive type
variable "instance_count" {
  type = number
  default = 4
  description = "number of instances to create"
}

# 3. boolean - primitive type
variable "enable_monitoring" {
  type = bool
  default = true
  description = "enable monitoring features"
}

# 4 list of strings
variable "allowed_ips" {
  type = list(string)
  default = [ "10.0.0.0", "10.0.0.1", "10.0.0.2", "10.0.0.4" ]
  description = "list of allowed IP addresses"
}

# 5. list of numbers
variable "ports" {
  type = list(number)
  default = [ 80,443,3306 ]
  description = "list of allowed ports"
}

# map of strings
variable "environment_tags" {
  type = map(string)
  default = {
    "prod" = "production"
    "dev" = "development"
    "qa"  = "quality-assurance"
  }
}

output "portNumbers" {
 value = var.enable_monitoring
}


