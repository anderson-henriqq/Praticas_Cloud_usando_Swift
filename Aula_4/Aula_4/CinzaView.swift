//
//  CinzaView.swift
//  Aula_4
//
//  Created by Turma02-1 on 30/10/24.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack{
            Color(.systemGray).edgesIgnoringSafeArea(.top)
            
            Circle().padding()
            
            Image(systemName: "paintbrush.fill")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .font(.system(size: 200))
        }
    }
}

#Preview {
    CinzaView()
}
