class Carro {
    var marca: String?
    var modelo: String? //O ? pois essas variaveis podem não ter valor algum
    var ano: Int?
    var chassi: Int?
    var cor: String?
    var versão: String?

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
        print("O carro \(self.modelo!) da marca \(self.marca!), versao \(self.versao!) e ano \(self.ano!), e da cor\(self.cor!)")
        
        
    }
}
//Objeto
let saveiro = Carro ()
let gol = Carro()
