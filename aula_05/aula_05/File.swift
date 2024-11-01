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
    Song(id: 2, name: "Menina Mulher da Pele Preta", artist: "Jorge Ben Jor", capa: "https://cdns-images.dzcdn.net/images/cover/b0e5b9ffe23de7a857e6d35412950a32/1900x1900-000000-80-0-0.jpg"),
    Song(id: 3, name: "Lie Lie Lie", artist: "Racionais MC's", capa: "https://upload.wikimedia.org/wikipedia/it/4/4e/Lie_Lie_Lie.jpg"),
    Song(id: 4, name: "Eu Não Sou Boa Influência", artist: "Céu", capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/3/7/1/5/885021587407073.jpg"),
    Song(id: 5, name: "Face Oculta", artist: "Trilha Sonora do Gueto", capa: "https://is1-ssl.mzstatic.com/image/thumb/Music113/v4/80/5d/59/805d597d-4f00-aacc-6cd9-445e3a5d551e/0.jpg/800x800cc.jpg"),
    Song(id: 6, name: "Lugar Distante", artist: "Matue", capa: "https://i1.sndcdn.com/artworks-gSeoyxBTQjvDQHes-NBXvxA-t500x500.jpg")
]
