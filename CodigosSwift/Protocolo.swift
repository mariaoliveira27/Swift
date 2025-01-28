//protocolo em swift e parecido com interface em java

protocol OperacaoMatematica{
    func calcular(x: Double, y: Double)-> Double
}

class Soma: OperacaoMatematica{
    func calcular(x: Double, y: Double) -> Double{
        return x + y
    }
}

class Subtracao: OperacaoMatematica{
    func calcular(x: Double, y: Double)->Double{
    return x - y
    }
}

func realizarOperacao(operacoes: [OperacaoMatematica], a: Double, b: Double) -> [Double]{
    var resultado = [Double]()

    for operacao in operacoes{
        resultado.append(operacao.calcular(x: a, y: b))
    }
    reurn resultado
}

let soma = Soma()
let subtracao = Subtracao()

var operacoes = [OperacaoMatematica]()
operacoes.append(soma)
operacoes.append(subtracao)

print(realizarOperacao(operacoes: operacoes, a: 4.0, b: 2.0))

//Sera impresso: [6.0, 2.0]