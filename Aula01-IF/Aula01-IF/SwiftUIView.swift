//
//  SwiftUIView.swift
//  Aula01-IF
//
//  Created by Turma02-1 on 23/10/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        
        HStack{
            Image("images").clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).padding(50)
            
            VStack{
                Text("Hackatruck").foregroundStyle(Color.red)
                
                Text("77 Universidades").foregroundStyle(Color.blue)
                Text("5 Regiões do Brasil").foregroundStyle(Color.yellow)
            }
        }
        
        
    }
}

#Preview {
    SwiftUIView()
}
