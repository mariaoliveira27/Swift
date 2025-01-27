let precoProduto = ["Arroz": 2.99, "Feijão": 3.99, "Macarrão": 1.99]
var pessoasIdades = ["João": 20, "Maria": 30, "Pedro": 25]
pessoasIdades["Ana"] = 21

//Percorrer um dicionário
for (nome, idade) in pessoasIdades {
    print("\(nome) tem \(idade) anos")
}
//Outras formas de instaciar dicionários
//Instaciar e criar e criar um objeto apartir de um dicionário


//Vamos treinar? Crie um dicionário com nome e valor de 5 carros e após
//percorra esse dicionário imprimindo a seguinte frase para cara item: 
//“O carro __________ custa ________ reais”.

let got7 = ["JB": 27, "Mark": 26, "Jackson": 25, "Jinyoung": 25, "Youngjae": 24, "BamBam": 23, "Yugyeom": 23]   
for (nome, idade) in got7 {
    print("O nome do integrante é \(nome) e a idade é \(idade)")
}
//se voce não especificar a ordem em que deve ser impresso, a cada consulta feita sera em uma ordem aleatoria.
//Para garantir que a ordem seja mantida, utilize o metodo sorted() para ordenar o dicionario