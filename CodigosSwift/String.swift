let  entra = "Meu nome é:"
print("Digite seu nome:")
if let nome = readLine() {
    print("\(entra) \(nome)")
}

var cargo = "Admistrador"
if cargo == "Admistrador" {
    print("Bem vindo ao sistema")
} else {
    print("Acesso negado")
}

var nome1 = "Jose"
var nome2 = "Maria"

if nome1 < nome2 {
    print("Ordenação dos nomes: \(nome1), \(nome2)")
}
// Isso serve para verificar a ordem alfabética dos nomes

for c in "Entrada"{
    print(c)
}
// Será impresso:
// E
// n
// t
// r
// a
// d
// a