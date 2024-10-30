//
//  SwiftUIView.swift
//  Aula_4
//
//  Created by Turma02-1 on 30/10/24.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack{
            Color(.systemPink).edgesIgnoringSafeArea(.top)
            
            Circle().padding()
            
            Image(systemName: "paintbrush.fill")
                .foregroundColor(.pink)
                .multilineTextAlignment(.center)
                .font(.system(size: 200))
        }
    }
}

#Preview {
    RosaView()
}
