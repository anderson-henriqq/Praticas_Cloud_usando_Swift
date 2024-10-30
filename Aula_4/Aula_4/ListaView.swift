//
//  ListaView.swift
//  Aula_4
//
//  Created by Turma02-1 on 30/10/24.
//

import SwiftUI

struct ListaView: View {
    var body: some View {
        VStack{
            HStack{
                Text("List").multilineTextAlignment(.trailing)
                    .padding()
                    .font(.largeTitle)
                    
                Spacer()
            }
            
            List{
                
                Text("Rosa") + Text(Image(systemName: "paintbrush.fill"))
                Text("Azul") + Text(Image(systemName: "paintbrush.fill"))
                Text("Cinza") + Text(Image(systemName: "paintbrush.fill"))
                
            }
                
        }
    }
}

#Preview {
    ListaView()
}
