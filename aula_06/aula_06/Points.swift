//
//  Points.swift
//  aula_06
//
//  Created by Turma02-1 on 01/11/24.
//

import Foundation
import MapKit

struct Location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate:  CLLocationCoordinate2D
    let flag: String
    let description: String
}

var arrayBandeiras = [
    Location(name: "Natal - RN", coordinate: CLLocationCoordinate2D(latitude:-5.79448, longitude: -35.211), flag: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqe78oTCHd4kuSXKM5DliaPNMYL6ZTCJEBvA&s", description:
                "Natal é a capital do estado de Rio Grande do Norte, na extremidade nordeste do Brasil. É conhecida pelas extensas dunas de areia costeiras e pelo Forte dos Reis Magos, em forma de estrela, uma fortaleza portuguesa do século XVI na foz do rio Potengi. A norte do rio, Genipabu é uma área de enormes dunas com uma lagoa de água doce. A autoestrada Via Costeira liga uma faixa de 15 km de praias a sul do forte."),
   //flag:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1uAEBsH9BH28Z758mgGmZozNoUWVkqTdJJg&s"
]
