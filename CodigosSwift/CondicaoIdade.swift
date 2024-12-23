
/*Vamos exercitar:
Crie uma condicional que trate o seguinte cenário:
Idade menor que 3 a saída deve ser “Um bebê”
Idade de 3 a 10 a saída deve ser “Uma criança”
Idade de 11 a 17 saída deve ser “Um adolescente”
Qualquer outra idade deve ser “Um adulto”*/



var idade = 16

if idade <= 3 {
    print("Um bebê")
} else if idade >= 3 && idade <= 10 {
    print("Uma criança")
} else if idade >= 11 && idade <= 17 {
    print("Um adolescente")
} else {
    print("Adulto")
}


// Operadores de intervalo

var idade = 16

switch idade {
    case 0..<3:
        print("Um bebê")
    case 3..<11:
        print("Uma criança")
    case 11..<18:
        print("Um adolescente")
    default:    
        print("Adulto")
}