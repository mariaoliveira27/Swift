//
//  PincelAzul.swift
//  Desafio 5
//
//  Created by Turma02-Backup on 21/03/25.
//

import SwiftUI

struct PincelAzul: View {
    var body: some View {
        ZStack{
            Color.blue
                
            Image(systemName: "paintbrush.pointed.fill")
        }
    }
}

#Preview {
    PincelAzul()
}
