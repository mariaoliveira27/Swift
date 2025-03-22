//
//  Lista.swift
//  Desafio 5
//
//  Created by Turma02-Backup on 21/03/25.
//

import SwiftUI

struct Lista: View {
    var body: some View {
        VStack(){
            Text("List")
            List {
            
                HStack{
                    Text("Item")
                   Spacer()
                Image(systemName: "paintbrush")
                }
                HStack{
                    Text("Item")
                   Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
                HStack{
                    Text("Item")
                   Spacer()
                    Image(systemName: "paintpalette")

                }
                    
                }
        }
        
    }
}

#Preview {
    Lista()
   // ContentView()
}
