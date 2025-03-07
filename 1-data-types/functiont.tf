locals {
  greeting = "Hello"
  age = 26
  location = "Bangalore"
}

resource "random_integer" "priority" {
  min = 1
  max = 50000
}
resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

output "random_password" {
  sensitive = true
  value          = random_password.password.result
}

output "hello_world" {
  value = "${local.greeting}, World!"
}
output "print_location" {
  value = "Current Location - ${local.location}"
}

output "random_number" {
  value = random_integer.priority.result
}

output "current_timestamp" {
  value = timestamp()
}

output "formatted_date" {
  value = formatdate("YYYY-MM-DD", "2022-01-01T12:00:00Z")
}
