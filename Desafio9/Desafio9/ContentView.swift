//
//  ContentView.swift
//  Desafio9
//
//  Created by Turma02-Backup on 27/03/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()

    var body: some View {
        VStack {
                   ScrollView {
                       VStack(spacing: 20) {
                           ForEach(viewModel.personagens, id: \.self) { personagem in
                               VStack(alignment: .leading, spacing: 10) {
                                   Text(personagem.nome ?? "Desconhecido")
                                       .font(.headline)
                                       .foregroundColor(.primary)
                                   
                                   Text("Idade: \(personagem.idade ?? 0)")
                                       .font(.subheadline)
                                       .foregroundColor(.secondary)
                                   
                                   Text("Grupo: \(personagem.grupo ?? "Desconhecido")")
                                       .font(.subheadline)
                                       .foregroundColor(.secondary)
                               }
                               .padding()
                               .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                               .padding([.leading, .trailing])
                           }
                       }
                       .padding(.top)
                   }
               }
               .onAppear {
                   viewModel.fetch()  
               }
               .navigationTitle("Membros de K-pop")
           }
       }





#Preview {
    ContentView()
}
