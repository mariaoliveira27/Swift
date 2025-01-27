enum Bussola {
    case Norte, Sul, Leste, Oeste 
}
var direcao = Bussola.Sul
print(direcao)
direcao = .Leste //atribuição de novo valor
print(direcao)
//Crie um Enum com as 4 estações do ano e imprima cada uma delas

enum Estacoes {

    case verao, outono, inverno, primavera
}

var estacao = Estacoes.inverno
print(estacao)
estacao = .verao
print(estacao)
estacao = .outono
print(estacao)
estacao = .primavera
print(estacao)

//Horarios de trem 
enum HorarioTrem {
    case NoHorario
    case Atrasado(Int)
}

func descricao(status: HorarioTrem) {
    switch status {
    case .NoHorario:
        print("O trem está no horário")
    case .Atrasado(let minutos):
        print("O trem está atrasado por \(minutos) minutos")
    }
 }
 var status = HorarioTrem.NoHorario
 descricao(status: status)
 
 status = .Atrasado(10)
    descricao(status: status)