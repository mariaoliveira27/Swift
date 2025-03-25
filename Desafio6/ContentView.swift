//
//  ContentView.swift
//  Desafio6
//
//  Created by Turma02-Backup on 24/03/25.
//

import SwiftUI
struct Song : Identifiable {
    var id: Int
    var name: String
    var artist: String
    var capa: String
}
var arrayMusicas = [
    Song(id: 1, name: "Just Right", artist: "GOT7", capa: "JustRight"),
Song(id: 2, name: "PYTHON", artist: "GOT7", capa: "JustRight"),
Song(id: 3, name: "If you do", artist: "GOT7", capa: "JustRight"),
Song(id: 4, name: "You calling my name", artist: "GOT7", capa: "JustRight"),
Song(id: 5, name: "Neve ever", artist: "GOT7", capa: "JustRight"),
Song(id: 6, name: "THURSDAY", artist: "GOT7", capa: "JustRight"),
Song(id: 7, name: "HARDY CARRY", artist: "GOT7", capa: "JustRight"),
Song(id: 8, name: "IF", artist: "GOT7", capa: "JustRight"),
    Song(id: 9, name: "Every day", artist: "GOT7", capa: "JustRight"),
Song(id: 10, name: "Lullaby", artist: "GOT7", capa: "JustRight")

]
struct ContentView: View {
    
    var body: some View {
        
        ZStack{
            LinearGradient(colors: [.blue, .black],
                           startPoint: .top,
                           endPoint: .center)
            .ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string: "https://www.inovacao.usp.br/wp-content/uploads/sites/300/2019/07/2017_05_21-hackatruck2.png")){
                    image in image.resizable()
                }placeholder: {
                    Color.black
                }.scaledToFit() .frame(width: 250, height: 300)
                    .clipShape(.rect())
                Spacer()
                VStack{
                    Text("HackaFm").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundStyle(.white)
                    HStack{
                        AsyncImage(url: URL(string:"https://e1.pngegg.com/pngimages/234/520/png-clipart-got7-group-of-men-wearing-blue-jackets.png" )){
                            image in image.resizable()
                        }placeholder: {
                            Color.black
                        }.scaledToFit() .frame(width: 50, height: 50)
                            .clipShape(.rect()).padding()
                        Text("hackaSong").foregroundStyle(.white)
                    }
                    Spacer()
                }
VStack{
ForEach(arrayMusicas){musica in
    HStack{
        AsyncImage(url: URL(string: musica.capa)){
                            image in image.resizable()
                        }placeholder: {
                           ProgressView()
                        }.scaledToFit() .frame(width: 50, height: 50)
                        Text(musica.name)
                    Spacer()
                    Image(systemName: "ellipses")
                
               
                    }
                    
                }
            }
        }

//"https://e1.pngegg.com/pngimages/234/520/png-clipart-got7-group-of-men-wearing-blue-jackets.png"
#Preview {
    ContentView()
}
