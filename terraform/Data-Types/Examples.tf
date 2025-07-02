terraform {
  required_version = "1.12.2"
}

variable "test_string" {
    type = string
    default = "sathish"
}

variable "test_number" {
    type = number
    default = 12345
}

variable "test_bool"{
    type = bool
    default = true
}

output "out-string" {
    value = var.test_string
   
}
output "out-number" { 
    value = var.test_number
}

output "out-bool"{
    value = var.test_bool
}

variable "test_list" {
  type = list (string)
  default = ["Australia", "Japan", "Japan", "Australia"]
 }

output "out-list"{
  #  value = var.test_list[0] #first value in the list
    value = var.test_list #print all the list values
}

variable "test_map"{
    type = map
    default = {
        Country = "Australia"
        City = "Sydney"
        Suborb = "Parramatta"
    }
}

output "out-map" {
    value = var.test_map
}

 variable "test_set"{
     type = set(string)
    default = ["Australia", "1Japan", "Japan", "Australia"]
  }

output "out-set" {
    value = var.test_set
  
}