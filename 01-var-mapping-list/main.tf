variable "variable_name" {
  type = string
  default = "default value of variable_name"
}

variable "mapping" {
  type = map(string)
  default = {
    key = "mapping-value"
  }
}

variable "list" {
  type = list
  default = [
    1,
    2,
    3]
}
