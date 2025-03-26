//
//  ContentView.swift
//  Desafio7
//
//  Created by Turma02-Backup on 25/03/25.
//

import SwiftUI
import MapKit
struct Location: Hashable{
    let nome: String
    let foto: String
    let descricao: String
    let latitude: Double
    let longitude: Double
    let flag : String
}
   
struct ContentView: View {
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -19.924557, longitude: -43.991597),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    )
    var arrayLocation = [
        Location(nome: "Belo Horizonte", foto: "", descricao: "", latitude: -19.924557, longitude: -43.99159, flag: "" ),
        Location(nome: "Belo Horizonte", foto: "", descricao: "", latitude: 0.0, longitude: 0.0, flag: "" ),
        Location(nome: "Belo Horizonte", foto: "", descricao: "", latitude: 0.0, longitude: 0.0, flag: "" )
    ]
    enum Maravilhas: String, CaseIterable, Identifiable {
        case Cristo_Redentor, Praca_Sete, cristo_redentor
        var id: Self { self }
    }


    @State private var selectedCidade: Maravilhas = .Cristo_Redentor
    
    var body: some View {
        ZStack{
            Map(position: $position){
                ForEach(arrayLocation, id: \.self){ l in
                    Annotation("Teste",
                               coordinate:  CLLocationCoordinate2D(
                                latitude: -19.924557, longitude:  -43.99159)){
                                    ZStack{
                                        Image(systemName: "mappin").foregroundColor(.red)
                                        
                                    }
                                }
                    
                }
            }
            VStack{
                ZStack{
                    Color.yellow .frame(width: 200, height: 60).cornerRadius(11.0)
                    Picker("Cidades", selection: $selectedCidade) {
                        ForEach(Maravilhas.allCases){ maravilha in
                            Text(maravilha.rawValue.capitalized)
                            
                        }
                    }
                }
                Spacer()
                
                    ZStack{
                        Color.yellow .frame(width: 200, height: 60).cornerRadius(11.0)
                        Text("Maravilhas").foregroundStyle(.white)
                    }
                }
            
        }
    }
        
        
    
}

#Preview {
    ContentView()
}
