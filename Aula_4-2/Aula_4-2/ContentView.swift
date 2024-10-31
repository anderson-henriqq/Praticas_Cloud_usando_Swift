//
//  ContentView.swift
//  Aula_4-2
//
//  Created by Turma02-1 on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            ZStack {
                Color("azulescuro").edgesIgnoringSafeArea(.all)
                
                VStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 250, height: 150)
                    Spacer()
                    
                    
                    
                    NavigationLink(destination: SegundaTela()){
                        Text("Modo 1")
                    }
                    .padding(.vertical,30)
                    .padding(.horizontal, 80)
                    .background(Color("rosa"))
                    .foregroundColor(.white)
                    .cornerRadius(6.0)
                    
                    
                    NavigationLink(destination: SegundaTela()){
                        Text("Modo 2")
                    }
                    .padding(.vertical,30)
                    .padding(.horizontal, 80)
                    .background(Color("rosa"))
                    .foregroundColor(.white)
                    .cornerRadius(6.0)
                    
                    Button("Modo 3"){
                        
                    }
                        .padding(.vertical,30)
                        .padding(.horizontal, 80)
                        .background(Color("rosa"))
                        .foregroundColor(.white)
                        .cornerRadius(6.0)
                    
                    Spacer()
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
