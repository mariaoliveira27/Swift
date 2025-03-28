//
//  Model.swift
//  Desafio9
//
//  Created by Turma02-Backup on 27/03/25.
//

import Foundation

struct Kpop: Decodable, Hashable{
    
    let id: String
    var nome: String?
    var idade: Int?
    var grupo: String?
}
