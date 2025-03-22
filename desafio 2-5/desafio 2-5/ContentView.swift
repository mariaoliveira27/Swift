//
//  ContentView.swift
//  desafio 2-5
//
//  Created by Turma02-Backup on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.azulDark) .ignoresSafeArea()
                VStack{
                    Image(.logohacka).resizable().scaledToFit().frame(width: 250)
                    
                    VStack{
                        NavigationLink( destination: Modo1()){
                            ZStack{
                                Rectangle().frame(width: 250, height: 80).foregroundColor(.rosa).cornerRadius(9.0)
                                Text("Modo 1").foregroundStyle(.white)
                            }
                        }
                        
                        NavigationLink( destination: Modo1()){
                            ZStack{
                                Rectangle().frame(width: 250, height: 80).foregroundColor(.rosa).cornerRadius(9.0)
                                Text("Modo 2").foregroundStyle(.white)
                            }
                        }
                        NavigationLink( destination: Modo1()){
                            ZStack{
                                Rectangle().frame(width: 250, height: 80).foregroundColor(.rosa).cornerRadius(9.0)
                                Text("Modo 3").foregroundStyle(.white)
                            }
                        }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
