//
//  Atv2.swift
//  Aula01-IF
//
//  Created by Turma02-1 on 23/10/24.
//

import SwiftUI

struct Atv2: View {
    var body: some View {
        
        HStack{
            Text("username").padding()
            Spacer()
            HStack{
                Image("loading")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding()
                Image("menu")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding()
                //Image(systemName: "").foregroundStyle(Color.red)
            }
        }
        
        
        HStack{
            Image("images")
                .resizable()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 150, height: 125)
                .padding(3)
            
            
            
            VStack{
                Text("0").foregroundStyle(Color.black)
                Text("Posts").foregroundStyle(Color.black)
                }
            
            VStack{
                Text("0").foregroundStyle(Color.black)
                Text("Seguidores").foregroundStyle(Color.black)
                
            }
            
            VStack{
                Text("0").foregroundStyle(Color.black)
                Text("Seguindo").foregroundStyle(Color.black)
                
            }
                
        }
        
    }
}

#Preview {
    Atv2()
}
