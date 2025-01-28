func funcSParamESRetorno(){
    print("Função sem parâmetro e sem retorno")
}
func SParamECRetorno() -> Int {
    return 0
}
func CParamECRetorno(param: Int)->Int {
    return param + 1
}

func Imprima(str: String){
    print("String passada como parâmetro: \(str)")
}

let funcao = Imprima
funcao("Olá, mundo!")
//Resultado: String passada como parâmetro: Olá, mundo!
//NOVA FUNÇÃO
func imprima(str: String){
    print("String passada como parâmetro: \(str)")
}
func funcaoQueChamaFuncao(funcao: (String) ->()){
    funcao("Olá, mundo!")
}
funcaoQueChamaFuncao(funcao: imprima)

//Map recebe uma função como parâmetro

let vetor = [1, 2, 3, 4, 5]
func duplicador(i: Int) -> Int {
    reurn i * 2
}
let vetorDuplicado = vetor.map(duplicador)
print(vetorDuplicado)
//Resultado: [2, 4, 6, 8, 10]

func buscarLatitudeLongitude() ->(String, Double, Double){
    return ("São Paulo", -23.5505, -46.6333)
}
let (cidade, lat, lng) = buscarLatitudeLongitude()
print("Cidade: \(cidade), Latitude: \(lat), Longitude: \(lng)")