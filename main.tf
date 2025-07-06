# Usa-se a linguagem hcl

terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = " ~> 2.1"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
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
Conteúdo do arquivo: ${var.file_content}

Meu pet: ${random_pet.meu_pet.id}
Frutas de acordo com a aula:
${tolist(var.fruits)[1]}

Nome: ${var.person_tuple[0]}
Idade: ${var.person_tuple[1]}
Cidade: ${var.person_map.cidade}
EOF
}



# Criando um novo resource para utilizar com o random provider

resource "random_pet" "meu_pet" {
  length    = 3
  prefix    = "Sr."
  separator = " "
}
