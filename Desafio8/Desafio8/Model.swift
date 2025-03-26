//
//  Model.swift
//  Desafio8
//
//  Created by Turma02-Backup on 26/03/25.
//

import SwiftUI

struct HaPo: Codable, Identifiable{
    
    var id: String
    let name: String?
    let house: String?
    let wizard: Bool?
    let image: String?
    let wand: Wand
}
struct Wand: Codable{
    let wood: String?
    let core: String?
    let length: Double?
}

struct Model: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Model()
}
