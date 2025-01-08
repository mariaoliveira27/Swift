//Crie as classes  Animal, Cao, Gato, faça as devidas associações, 
//e use os conceitos aprendidos de Overloading, e Overriding, 
//para criar os métodos emitirSom( ), comer( ), escalar( ) e babar ( ).



class Animal{
    var nome: String = "nome"
    var raca: String = "raça"

    func emitirSom(){
        print("Barulho emitido pelo bicho")
    }
    func comer(comida: String){
print ("\(nome), da raça \(raca), adoro \(comida)");    }
   
}
class Cao: Animal{
    override func emitirSom(){
        print("Au au")
    }
    func babar(){
        print("Babei! \n")
    }

    init (n: String, r:String){
        super.init()
        nome = n
        raca = r
    }
}

class Gato: Animal{
    override func emitirSom(){
        print("Miau miau!\n")
    }
    func escalar(){
        print("Escalando...")   
    }
    init(n: String, r: String){
        super.init()
        nome = n
        raca = r
    }
}

var toto = Cao(n: "Toto", r:"Canis")
toto.comer(comida: "Carne")
toto.emitirSom()
toto.babar()

var snow = Gato(n: "Snow", r: "Cats")
snow.comer(comida: "Atum")
snow.emitirSom()
snow.escalar()