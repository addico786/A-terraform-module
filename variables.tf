variable "environment" {
    description = "define the type of environment "
    type = string
}

variable "instance_type" {
    description = "define the type of instance in the module"
    type = string
}

variable "instance_count" {
    description = "define the number of instance you wanto create"
    type = number
}

variable "ami" {
    description = "define the amazon machine type "
    type = string
}

variable "instance_volume" {
    description = "defne the volume of the root instacne "
    type = string
}

# variable "s3" {
#     description = "name your bucket "
#     type = string
# }

# variable "table" {
#     description = "define the table you want to create "
#     type = string
  
# }

variable "key_path" {
    description = "set the key path"
    type = string
   
}   
