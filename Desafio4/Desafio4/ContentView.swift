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
                    TextField("", value: $tempo, format: .number).multilineTextAlignment(.center)
                        .background(.white)
                        .cornerRadius(11.0)
                        .frame(width:200, height:25)
                    
                }
                Button("Calcular"){
                     resultado = distancia/tempo
                    var corDeFundo:Color{
                        switch resultado{
                        case 0..<10:
                            return Color.verdeClaro
                        case 10..<30:
                            return Color.azulclaro
                        case 30..<70:
                            return Color.rosa
                        case 70..<90:
                            return Color.amarelo
                        case 90...130:
                            return Color.vermelho
                        default:
                            return Color.cinza
                        }
                    }
                    var img:Image{
                        switch resultado{
                        case 0..<10:
                            return Image(.tartaruga)
                        case 10..<30:
                            return Image(.elefante)
                        case 30..<70:
                            return Image(.avestruz)
                        case 70..<90:
                            return Image(.leao)
                        case 90...130:
                            return Image(.guepardo)
                        default:
                            return Image(.interrogacao)
                        }
                    }
                    
                    imagem = img
                    //Color = corDeFundo
                    
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
                }.frame(width: 300,height: 200).cornerRadius(8.0)
                
                
            }
            
        }
            
            
           
            
            
     
    }
    
}
#Preview {
    ContentView()
}
