//
//  ContentView.swift
//  Desafio5
//
//  Created by Turma02-Backup on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            PincelRosa()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush.fill" )
                }
            PincelAzul()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed.fill"  )
                }
            PaletaCinza()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette.fill")
                }
            Lista()
                .tabItem{
                    Label("Lista", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    ContentView()
}
