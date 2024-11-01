//
//  File.swift
//  aula_05
//
//  Created by Turma02-1 on 31/10/24.
//

import Foundation

struct Song: Identifiable{
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

var arrayMusicas = [
    Song(id: 1, name: "Eu e a Tábua", artist: "Gabriel o Pensador", capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/1/f/1/1/68991443819081.jpg"),
    Song(id: 2, name: "Menina Mulher da Pele Preta", artist: "Jorge Ben Jor", capa: "exemplo"),
    Song(id: 3, name: "Lie Lie Lie", artist: "Racionais MC's", capa: "exemplo"),
    Song(id: 4, name: "Eu Não Sou Boa Influência Para Você", artist: "Céu", capa: "exemplo"),
    Song(id: 5, name: "Face Oculta", artist: "Trilha Sonora do Gueto", capa: "exemplo"),
    Song(id: 6, name: "Lugar Distante", artist: "Matue", capa: "exemplo")
]
