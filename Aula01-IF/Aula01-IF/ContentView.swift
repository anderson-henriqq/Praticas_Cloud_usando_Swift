//
//  ContentView.swift
//  Aula01-IF
//
//  Created by Turma02-1 on 23/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack{
            VStack {
                Rectangle()
                    .fill(.red)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
            Spacer()
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
        }
        
        Spacer()
        
        HStack{
            HStack {
                Rectangle()
                    .fill(.green)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
            Spacer()
            HStack {
                Rectangle()
                    .fill(.yellow)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
        }
       
    }
}

#Preview {
    ContentView()
}
