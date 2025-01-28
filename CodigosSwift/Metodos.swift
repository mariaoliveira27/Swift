class Bicicleta{
   // let rodas = 2
   var rodas = Int
    var dono: String
    var qtdCiclistas: Int
    
    init(dono: String){
        self.dono = dono
        self.rodas = rodas
        self.qtdCiclistas = 0 
    }

    func darCarona(para:String)->Bool {
        if qtdCiclistas < qtdMaxima() {
            if para == dono {
                print("\(dono) subiu em sua propria bicicleta")
            }else {
                print("\(para) subiu na bicicleta de \(dono)")

            }
            qtdCiclistas += 1
            return true
        }else {
            print("A bicleta de \(dono) já está lotada! \(qtdCiclistas) ciclistas")
            return false
        }
    }

    private func qtdMaxima() -> Int{
        if rodas > 1 {
            return rodas - 1
        } else {
            return 1
        }
    }

    func emprestar(para: String, horas: Int){
        print("A bicicleta de \(dono) foi emprestada para \(para) por \(horas) horas")
    }

}

let b = Bicicleta(dono: "Pedro")
b.emprestar(para: "João", horas: 2)
b.darCarona(para: "Maria")
b.darCarona(para: "João")
b.rodas = 3
b.darCarona(para: "João")
b.darCarona(para: "Maria")