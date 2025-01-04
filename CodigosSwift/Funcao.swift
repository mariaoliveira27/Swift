func corPredileta(){
    print("Azul")
}
corPredileta()

func nomeCompleto(){
    print("Meu nome completo é Monteiro de Sousa")
}
nomeCompleto()

func imprimeNome(nome: String){
    print("Meu nome é \(nome)")
}
imprimeNome(nome: "Maria ")
imprimeNome(nome: "Pedro ")

func nomeESobrenome(pNome: String, pSobrenome: String){
    print("Meu nome completo é \(pNome) \(pSobrenome)")
}
var nome: String = "Maria Clara"
var sobrenome: String = "Gomes"

nomeESobrenome(pNome: nome, pSobrenome: sobrenome)

//Funçoes de contas

func somaValores(valorA: Int, valorB: Int){
var total: Int
total = valorA + valorB

print ("O total da soma de \(valorA) + \(valorB) é de \(total)")
}
somaValores(valorA: 12, valorB: 3)

func subtracaoValores(valorA: Int, valorB: Int){
    var total: Int
    total = valorA - valorB
    print ("O total da subtração de \(valorA) - \(valorB) é de \(total)")
}

func operacoesBasicas(valorA: Double, valorB: Double){
    var total: Double

    total = valorA + valorB
    print ("O total da soma de \(valorA) + \(valorB) é de \(total)")

    total = valorA - valorB
    print("O total da subtração de \(valorA) - \(valorB) é de \(total)")

    total = valorA * valorB
    print("O total da multiplicação de \(valorA) x \(valorB) é de \(total)")

    total = valorA / valorB
    print("O total da divisão de \(valorA) / \(valorB) é de \(total)")


    
}
operacoesBasicas(valorA: 12, valorB: 3)

func imprimeNome(nome: String) -> String{
    return "Meu nome é \(nome)"
}

print(imprimeNome(nome: "Paulo"))

func dividir(a: Double, b:Double)->Double{
    return a/b
}
print(dividir(a: 4, b: 2 ))

//Recursão

func contagemRegressiva(numero:Int){

    print(numero)
    if numero > 0 {
        contagemRegressiva(numero: numero - 1)
    }
}
print("Contagem Regressiva:")
contagemRegressiva(numero:3)

func contagemRegressiva(numero:Int){

    if numero > 0 {
        contagemRegressiva(numero: numero - 1)
    }
    print(numero)
}
print("Contagem Regressiva:")
contagemRegressiva(numero:3)

func fatorial(num: Int)-> Int{
    if(num == 0 || num == 1){
        return 1
    }
    return (num * fatorial(num: num - 1))
}
print(fatorial(num: 4))