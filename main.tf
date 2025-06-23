# Usa-se a linguagem hcl

//'local_file = provider'
// 'name' = identificador do arquivo 
resource "local_file" "exemple" {
  filename = "exemple1.txt"
  content = "Hello Full!"
}