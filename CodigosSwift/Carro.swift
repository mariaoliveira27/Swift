class Carro {
    var marca: String?
    var modelo: String? //O ? pois essas variaveis podem não ter valor algum
    var ano: Int?
    var cor: String?
    var versao: String?
    private var qtdeCombustivel: Float = 25

//Metodos
    func andar(){
        print("Andado para frente")
    }
    func darRe(){
        print("Andando para trás")
    }    
    func buzinar(){
        print("BIIIIIP BIIIIP BIIP")
        
    }
    func descricao(){
        print("O carro \(self.modelo!) da marca \(self.marca!), versao \(self.versao!) e ano \(self.ano!), e da cor \(self.cor!)")
  
    }
    func quatidadeCombustivel()->Void{
        print(qtdeCombustivel)
        
    }
    func abastacer(qtdeLitros: Float)->Void{
        qtdeCombustivel += qtdeLitros
    }
}
//Objeto
//let saveiro = Carro ()
//let gol = Carro()

var carro1 = Carro()
var carro2 = Carro()
var carro3 = Carro()

carro1.cor = "Laranja"
carro1.modelo = "civic"
carro1.ano = 1999
carro1.versao = "Turbo Shift Auto"
carro1.marca = "x"
carro1.qtdeCombustivel()
carro1.abastacer(qtdeLitros: 80)

carro2.cor = "prata"
carro2.modelo = "civic"
carro2.ano = 1995
carro2.versao = "Turbo Shift Auto"
carro2.marca = "xx"

carro3.cor = "preto"
carro3.modelo = "civic"
carro3.ano = 1990
carro3.versao = "Turbo Shift Auto"
carro3.marca = "xxx"

print(carro1.descricao())
print(carro2.descricao())
print(carro3.descricao())

