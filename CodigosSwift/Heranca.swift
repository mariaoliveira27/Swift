class FormaGeometrica{
    func descricao(){
        print("Descrição de um a forma geometrica")
    }
}

class Quadrado : FormaGeometrica{
    ver tamanho: Int
    init(tamanho: Int){
        self.tamanho = tamanho
    }
    func area()->Int{
        return tamanho * tamanho
    }
    override func descricao(){
        super.descricao()
        print ("-Quadrado de area \(area())")
    }
}
let quadrado = Quadrado(tamanho:  2)
let area = quadrado.area()

print("A área do quadrado é \(area)")
//Sera impresso: A área do quadrado é 4
quadrado.descricao()
//Sera impresso: Descrição de um a forma geometrica

class Circulo: FormaGeometrica{
    let pi: Float = 3.14
    var raio: Double

    init(raio: Double){
        self.raio = raio
    }
    func area()->Double{
        return pi * (raio * raio)
    }
    override func descricao(){
        super.descricao()
        print("-Circulo de area \(area())")
    }

}
class Retangulo: FormaGeometrica{
    var base: Double
    var altura: Double

    init(base:Double, altura: Double){
        self.base= base
        self.altura = altura
    }
    func area()-> Double{
        retun base * altura
    }
    override func descricao(){
        supper.descricao()
        print("-Retangulo de area \(area())")   
    }

}
let circulo = Circulo(raio: 2)
circulo.descricao()

let Retangulo = Retangulo(base: 2, altura: 4)
retangulo.descricao()