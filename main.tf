# Usa-se a linguagem hcl

terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = " ~> 2.1"
    }
  }
}



//'local_file = provider'
// 'name' = identificador do arquivo 

resource "local_file" "exemple" {
  filename = "created_file.txt"
  content = "Minha idade é: ${var.file_content}"
}