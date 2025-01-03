var numero = 1
var menorQueCinco = true

while menorQueCinco {
    if numero < 5 {
        print("O numero \(numero) é menor que 5")
    }else{
        menorQueCinco = false
    }
    numero += 1
}
//break
var numero = 1
var menorQueCinco = true

while menorQueCinco {
    if numero < 5{
        print("O numero \(numero) é menor que 5")
    }else{
        break
    }
    numero += 1
}

//Contador ate 512

var contador = 0

while contador <= 512{
    print(contador)

    contador += 1
}

//O comando repeat-while é uma variação do while cuja a condição só é verificada após a primeira execução dos comandos nele contidos. Vamos à sintaxe e em seguida, a uma comparação com o while:

var x = 5
var y = 5
 
while x != y {
    print("x é diferente de y")
}
 
repeat {
    print("Mesmo sem validar a condição será executado ao menos uma vez")
} while x != y

var numero = 0

repeat{
    print(numero)
    numero += 1
} while (numero < 4)

print("Condição falsa")

var numero1 = 12

repeat{
    print(numero1)
    numero1 += 1
} while (numero1 < 0)

//For

for i in 1...10{
    print("Bom dia")
}
//A..<B Exclui o valor B
//A...B Inclui o valor B 

//Tabuadas


for i in 1...10 {
    print(" 6 x \(i) = \(6 * i)")
}
print("_________________________")
for i in 1...10{
    print("2 x \(i) = \(2 * i)")
}
print("_________________________")
for i in 1...10{
    print("3 x \(i) = \(3 * i)")
}
print("_________________________")
for i in 1...10{
    print("4 x \(i) = \(4 * i)")
}
print("_________________________")
for i in 1...10{
    print("5 x \(i) = \(5 * i)")
}
print("_________________________")
for i in 1...10{
    print("7 x \(i) = \(7 * i)")
}
print("_________________________")
for i in 1...10{
    print("8 x \(i) = \(8 * i)")
}
print("_________________________")
for i in 1...10{
    print("9 x \(i) = \(9 * i)")
}
print("_________________________")
for i in 1...10{
    print("10 x \(i) = \(10 * i)")
}
print("_________________________")

//for dentro do for

for i in 1...10{
    for j in 1...10{
        print(" \(j) x \(i) = \(j * i)")
    }
    print(i)
    print("_________________________")
}