class Musica {
    var nome: String?
    var artista: String?
    var album: String?
    var anoLancamento: Int?
    var Duracao: Double?
    var rating: Int?
    var linkToPlay: String?


    func quemCanta(){
        print("O nome do artista é:" + artista!)
    }
    func tocar(){
        print("Clique aqui para ouvir:" + linkToPlay!)    
    }
    func feat( participante : String) -> String{
        return "O artista \(artista!) canta a musica \(nome!) com participação de \(particpante)"
    }
    func nota()-> Int{
        return rating!;
    }
    
}