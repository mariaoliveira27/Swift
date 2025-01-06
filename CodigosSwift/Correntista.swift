class Correntista {
    var nome: String = "Leandro"

    private var saldo: Double = 1000

    func mudarSaldo(novoSaldo:Double){
        saldo = novoSaldo
    }
    func verSaldo(){
        print(saldo)
        
    }
}

var pessoa1 = Correntista()
pessoa1.saldo = 2.50

class Person {
    var nome: String?
    var sobrenome: String?

    func nomeCompleto(){
        print(" \(self.nome ?? " ") \(self.sobrenome ?? " ")")
        
    }
    
}