class Bicicleta {
    let rodas = 2
    var dono: String

    init(dono: String){
        self.dono = dono
    }
}

let bicicleta = Bicicleta(dono: "João")
print("A bicicleta de \(bicicleta.dono) tem \(bicicleta.rodas) rodas")

bicicleta.dono = "Pedro"
print("A bicicleta de \(bicicleta.dono) tem \(bicicleta.rodas) rodas")

//Resultado: A bicicleta de João tem 2 rodas
//A bicicleta de Pedro tem 2 rodas