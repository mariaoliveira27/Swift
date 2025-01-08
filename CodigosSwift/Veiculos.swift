//Overloading: add mais metodos
//overriding: reescrever metodos mais detalhadas

class Veiculo{
    var pneus: String?
    var assentos: String?
    var motor: String?
    var cidadeDeRegistro: String?

    func desc(){
                print("Número de rodas \(self.pneus ?? " "), Número de Assentos \(self.assentos ?? " "), Potencia Motor \(self.motor ?? " ")") 
    }
    func registro() {
        print("Nossa cidade de registro é \(self.cidadeDeRegistro ?? " ")") 
    }
    
}

class Carro: Veiculo{
    var tipo: String?
}
class Caminhao: Veiculo{
    var tipo: String?
    var eixos: Int?
}
class Motocicleta: Veiculo{
    var cilindradas: Int?
    func descansar(){
         print("Farei paradas de 2h em 2h, o destino é Maresias.  \n") 
    }
}
class Aviao: Veiculo{
    var numMotores: Int?
    func voar () {
         print("Estamos a 1000 pés de altitude.") 
    }
}

var c = Caminhao()
c.pneus = "TY607 295/80 R22,5"
c.assentos = "3 Lugares"
c.motor = "V8"
c.tipo = " Caçamba "
c.eixos = 5
c.desc()

var m = Motocicleta()
m.pneus = "2"
m.assentos = "2 Lugares"
m.motor = "2 cilindros"
m.cidadeDeRegistro = " Campinas "
m.cilindradas = 800
m.desc()
m.descansar()

var a = Aviao()
a.pneus = "4"
a.assentos = "12 Lugares"
a.motor = "Cirrus SR22 8000"
a.numMotores = 1
a.cidadeDeRegistro = " Campinas "
a.desc()
a.voar()