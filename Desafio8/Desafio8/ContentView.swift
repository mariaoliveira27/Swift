//
//  ContentView.swift
//  Desafio8
//
//  Created by Turma02-Backup on 26/03/25.
//

import SwiftUI


struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .onAppear(){
            viewModel.fetch()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
