variable "ami_id"{
    type = string
    default = "ami-09c813fb71547fc4f"
}
variable "instance_type" {
    type = string
  default = "t3.micro"
    description = "instance _size"
    validation {
            condition     = contains(["t3.micro", "t3.small", "m5.medium"], var.instance_type)
      error_message = "Invalid instance type: ${var.instance_type}. Allowed types are t3.micro, t3.small, t3.medium."
    }
}

variable "sg_id" {
  type = list
}
variable "tags" {
  type= map
}