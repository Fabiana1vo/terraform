variable "file_content" {
  default = 25
  description = "Essa variavel representa o valor a ser salvo no arquivo"
  type = string
}

variable "new_value_content" {
  default = "Fabiana"
  description = "Essa variavel representa o valor a ser salvo no arquivo"
  type = string
}

variable "fruits" {
  default = ["banana", "maçã", "laranja"]
  description = "Essa variavel representa uma lista de frutas"
  type = list(string)
  
}