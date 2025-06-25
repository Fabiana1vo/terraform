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
  filename = "exemple1.txt"
  content = "Hello Full!"
}