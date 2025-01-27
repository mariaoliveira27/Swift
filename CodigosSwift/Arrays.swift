let pares: Array<Int> = [2, 4, 6, 8]
let impares = [1, 3, 5, 7] 
// Perceba que o compilador irá inferir o tipo Array<Int> na constante impares.
// Esse tipo também pode ser definido como Array[Int] (entre chaves e não somente entre <>) em Swift.

let paresImutavel = [2, 4, 6, 8]
paresImutavel.append(10) //Erro! Array imutável não pode receber novos elementos
var imparesMutaveis = [1, 3, 5, 7]
imparesMutaveis.append(9) // Agora, imparesMutaveis = [1, 3, 5, 7, 9]

var imparesMutaveis = [1, 3, 5, 7]
imparesMutaveis.append(9)

for impar in imparesMutaveis {
    print(impar)
}

// Será impresso:
// 1
// 3
// 5
// 7
// 9

// Caso prefira também pode-se utilizar um for com 
// a quantidade de elementos do Array, obtida com 
// o método count
for i in 0 ..< imparesMutaveis.count {
    print(imparesMutaveis[i])
}
//Crie um Array com o nome de 3 pessoas e um segundo Array com as respectivas idades. 
//Utilizando os laços de repetições já vistos crie a seguinte estrutura de frase:
//“A 1a pessoa tem o nome _________ e a idade __________”.
//“A 2a pessoa tem o nome _________ e a idade __________”.

let nome = ["Maria", "joao", "pedro"]
let idade = [19,21,21]

for i in 0..<nome.count{
    print("A \(i+1) a pessoa tem o nome \(nome[i]) e a idade \(idade[i])")
}

//Crie um Array com o nome de 3 pessoas e um segundo Array com as respectivas idades. 
//Utilizando os laços de repetições já vistos crie a seguinte estrutura de frase:
//“A 1a pessoa tem o nome _________ e a idade __________”.
//“A 2a pessoa tem o nome _________ e a idade __________”.

var nomes = [String]() 
var idades = [Int]()

nomes.append("João");
nomes.append("Pedro");
nomes.append("Fernando");
nomes.append("Alex");
nomes.append("Marcos");

idades.append(10);
idades.append(2);
idades.append(18);
idades.append(21);
idades.append(29);

for i in 0 ..< nomes.count{
    print("A \(i+1)a pessoa tem o nome \(nomes[i]) e a idade \(idades[i])")
}


