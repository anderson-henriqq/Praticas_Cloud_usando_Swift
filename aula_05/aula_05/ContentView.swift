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
                    Text("Hackasong")
                        .foregroundStyle(Color.white)
                        .padding(.trailing, 290)
                        .font(.footnote)
                        .padding(.bottom,10)
                    
                    VStack{
                        ForEach(arrayMusicas){e in
                            HStack{
                                
                                AsyncImage(url: URL(string: e.capa)) { image in
                                    image
                                        .resizable()
                                        .frame(width: 58, height: 50)
                                        .padding(.leading,8)
                                } placeholder: {}
                                
                                VStack{
                                    Text(e.name)
                                        .foregroundStyle(Color.white)
                                        .font(.title3)
                                        .bold()
                                        //.padding(.leading, 1)
                                    Text(e.artist)
                                        .foregroundStyle(Color.white)
                                        .font(.footnote)
                                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                        //.padding(.trailing, 50)
                                }
                                
                                Spacer()
                                
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.white)
                                    .padding(.trailing, 5)
                                
                            }
                        }
                    }.multilineTextAlignment(.leading)
                
                    
                    Spacer()
                    
                }
            }
            
        }
        
    }


#Preview {
    ContentView()
}
