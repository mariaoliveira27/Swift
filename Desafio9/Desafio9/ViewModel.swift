//
//  Model.swift
//  Desafio9
//
//  Created by Turma02-Backup on 27/03/25.
//

import Foundation

class ViewModel : ObservableObject {
    @Published var personagens: [Kpop] = []
    func fetch() {
        guard let url = URL(string:"http://127.0.0.1:1880/getMaria" ) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { [ weak self] data, _, error
            in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode([Kpop].self, from: data)
                DispatchQueue.main.async {
                    self?.personagens = parsed
                }
            }catch {
                print(error)
            }
            
        }
        task.resume()
    }
 }
