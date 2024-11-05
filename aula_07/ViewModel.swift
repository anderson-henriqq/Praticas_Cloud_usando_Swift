//
//  File.swift
//  aula_07
//
//  Created by Turma02-1 on 04/11/24.
//

import Foundation

class ViewModel : ObservableObject {
    
    @Published var chars : [HaPo] = []
    
    func fetch() {
        let task = URLSession.shared.dataTask(with: URL(string: "https://hp-api.onrender.com/api/characters/house/gryffinder")!){ data, _, error in
            do {
                self.chars = try JSONDecoder().decode([HaPo].self, from: data!)
            } catch{
                print(error)
            }
        }
        task.resume()
    }
}
    

