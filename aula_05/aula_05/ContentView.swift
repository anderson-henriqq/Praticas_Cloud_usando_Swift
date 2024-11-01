//
//  ContentView.swift
//  aula_05
//
//  Created by Turma02-1 on 31/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
            ZStack{
                
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black, Color.black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack{
                    Image("capaP")
                        .resizable()
                        .frame(width: 200,height: 200)
                        .padding(20)
                        .padding(.top, 20)
                    Text("HackaFM")
                        .foregroundStyle(Color.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.trailing, 250)
                    
                    
                    VStack{
                        ForEach(arrayMusicas){e in
                            HStack{
                                
                                AsyncImage(url: URL(string: e.capa)) { image in
                                    image
                                        .resizable()
                                        .frame(width: 58, height: 50)
                                } placeholder: {}
                                
                                VStack{
                                    Text(e.name)
                                        .foregroundStyle(Color.white)
                                        .font(.title3)
                                        .bold()
                                    Text(e.artist)
                                        .foregroundStyle(Color.white)
                                        .font(.footnote)
                                }
                                
                                Image(systemName: "ellipsis").foregroundColor(.white)
                                
                            }
                        }
                    }
                
                    
                    Spacer()
                    
                }
            }
            
        }
        
    }


#Preview {
    ContentView()
}
