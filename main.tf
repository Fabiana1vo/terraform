# Usa-se a linguagem hcl

terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = " ~> 2.1"
    }
  }
}



//'local_file = provider'
// 'name' = identificador do arquivo 

resource "local_file" "exemple" {
  filename = "created_file.txt"
  content  = <<EOF
${var.fruits[0]} é a minha fruta favorita.  
${var.fruits[1]} é a fruta que eu mais gosto.
${var.fruits[2]} é a fruta que eu menos gosto.

Frutas de acordo com a aula:
${tolist(var.fruits) [1]}

Nome: ${var.person_map.name}
Idade: ${var.person_map.idade}
Cidade: ${var.person_map.cidade}

EOF
}
