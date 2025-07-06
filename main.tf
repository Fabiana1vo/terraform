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


data "local_file" "external_source" {
  filename = "datasource.txt"
}


# Criando um novo resource para utilizar com o random provider

resource "random_pet" "meu_pet" {
  length    = 3
  prefix    = "Sr."
  separator = " "
}


#Expõe determinado valor quando usamos o comando terraform apply 
# Isso é usado atribuir um ip de forma dinamica. Após a criação da vm ele pega e mostra o ip da vm criada
output "name_my_pet" {
  value = random_pet.meu_pet.id
}
output "my_name" {
  value = "Fabiana Ivo Souza"
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
Conteúdo vindo de um data source: ${data.local_file.external_source.content}



Meu pet: ${random_pet.meu_pet.id}
Frutas de acordo com a aula:
${tolist(var.fruits)[1]}

Nome: ${var.person_tuple[0]}
Idade: ${var.person_tuple[1]}
Cidade: ${var.person_map.cidade}
EOF
}

