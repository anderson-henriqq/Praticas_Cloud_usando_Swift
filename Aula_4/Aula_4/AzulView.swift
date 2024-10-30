//
//  AzulView.swift
//  Aula_4
//
//  Created by Turma02-1 on 30/10/24.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack{
            Color(.systemBlue).edgesIgnoringSafeArea(.top)
            
            Circle().padding()
            
            Image(systemName: "paintbrush.fill")
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
                .font(.system(size: 200))
        }
    }
}
#Preview {
    AzulView()
}