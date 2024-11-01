//
//  ContentView.swift
//  aula_06
//
//  Created by Turma02-1 on 01/11/24.
//

import SwiftUI
import MapKit
import Foundation

struct ContentView: View {
    
    struct Location: Identifiable{
        let id = UUID()
        let name: String
        let coordinate:  CLLocationCoordinate2D
        let flag: String
        let description: String
    }
    
    @State private var position =  MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D( latitude: -14.2350, longitude: -51.9253),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    )
    
    var body: some View {
        VStack {
            Map(position: $position).ignoresSafeArea()
        }
        
    }
}

#Preview {
    ContentView()
}
