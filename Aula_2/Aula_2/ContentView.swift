//
//  ContentView.swift
//  Aula_2
//
//  Created by Turma02-1 on 24/10/24.
//

import SwiftUI




struct ContentView: View {
    
    @State private var name: String = ""
    @State private var valor: String = ""
    @State private var msm = false
    
    var body: some View {
        
        VStack{
            
            Text("IFbet - CNAT")
                .font(.largeTitle) // Define o tamanho da fonte
                .bold() // Deixa o texto em negrito
                .foregroundColor(.black) // Cor do texto
                .overlay(
                    Text("IFbet - CNAT")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.green) // Cor do contorno
                        .offset(x: 1, y: 1) // Ajusta a posição do contorno
                )
            ZStack {
                Image("tabela")
                    .resizable()
                    .frame(width: 400, height: 400)
                //Text("Jogo do Bicho").bold().foregroundStyle(Color.yellow)
                Text("Jogo do Bicho")
                    .font(.largeTitle) // Define o tamanho da fonte
                    .bold() // Deixa o texto em negrito
                    .foregroundColor(.black) // Cor do texto
                    .overlay(
                        Text("Jogo do Bicho")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.yellow) // Cor do contorno
                            .offset(x: 1, y: 1) // Ajusta a posição do contorno
                    )
            }
            
            Spacer()
            HStack{
                
                VStack{
                    Text("Valor R$:")
                        .bold()
                    TextField("Digite a aposta", text: $valor)
                }.multilineTextAlignment(.center)
                
                
                
                VStack{
                    Text("Bicho:")
                        .bold()
                    TextField("Escolha o bicho", text: $name)
                }.multilineTextAlignment(.center)
            }
            Spacer()
            
            Button("Confirmar aposta"){
                msm = true
            }.alert("Você apostou R$\(valor) no \(name)",isPresented:$msm){}
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
