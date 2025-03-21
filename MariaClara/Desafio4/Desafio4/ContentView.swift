//
//  ContentView.swift
//  Desafio4
//
//  Created by Turma02-Backup on 20/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var distancia: Float = 0
    @State private var tempo: Float = 0
    @State private var resultado: Float = 0
    @State private var cor: Color = .cinza
    @State private var imagem: Image = Image(.interrogacao)
    var body: some View {
        ZStack(  ) {
            cor.ignoresSafeArea()
            
            VStack{
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/ ){
                    Text("Digite a distancia (Km):")
                    TextField("", value: $distancia, format: .number).multilineTextAlignment(.center)
                        .background(.white)
                        .cornerRadius(11.0)
                        .frame(width:200, height:25)
                    
                    
                }
                
                VStack{
                    Text("Digite o tempo (h):")
                    TextField("", value: $distancia, format: .number).multilineTextAlignment(.center)
                        .background(.white)
                        .cornerRadius(11.0)
                        .frame(width:200, height:25)
                    
                }
                Button("Calcular"){
                    
                }.padding() .background(.black) .cornerRadius(11.0) .foregroundStyle(.rosa)
                VStack{
                    Text("\(resultado) km/h")
                    
                    imagem
                    
                    
                }
                ZStack{
                    Color(.black)
                    HStack{
                        
                        VStack{
                            Text("TARTARUGA").foregroundStyle(.white)
                            Text("ELEFANTE").foregroundStyle(.white)
                            Text("AVESTRUZ").foregroundStyle(.white)
                            Text("LEAO").foregroundStyle(.white)
                            Text("GUEPARDO").foregroundStyle(.white)
                            
                        }
                        VStack{
                            Text("(0 - 9.9km/h)").foregroundStyle(.white)
                            Text("(10 - 29.9km/h)").foregroundStyle(.white)
                            Text("(30 - 69.9km/h)").foregroundStyle(.white)
                            Text("(70- 89.9km/h)").foregroundStyle(.white)
                            Text("(90 - 130km/h)").foregroundStyle(.white)
                        }
                        VStack{
                            Circle().frame(width: 15, height: 15).foregroundStyle(.verdeClaro)
                            Circle().frame(width: 15, height: 15).foregroundStyle(.azulclaro)
                            Circle().frame(width: 15, height: 15).foregroundStyle(.rosa)
                            Circle().frame(width: 15, height: 15).foregroundStyle(.amarelo)
                            Circle().frame(width: 15, height: 15).foregroundStyle(.vermelho)
                        }
                        
                    }
                }.frame(width: 300,height: 200).cornerRadius(6.0)
                
                
            }
            
        }
            
            
           
            
            
     
    }
}
#Preview {
    ContentView()
}
