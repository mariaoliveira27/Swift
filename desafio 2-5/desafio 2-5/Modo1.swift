//
//  Modo1.swift
//  desafio 2-5
//
//  Created by Turma02-Backup on 21/03/25.
//

import SwiftUI

struct Modo1: View {
    var body: some View {
        ZStack{
            Color(.azulDark).ignoresSafeArea()
            
            ZStack{
                Rectangle().frame(width: 250, height: 80).foregroundColor(.rosa).cornerRadius(9.0)
                Text("Modo 1").foregroundStyle(.white)
            }
        }
    }
}
#Preview {
    Modo1()
}
