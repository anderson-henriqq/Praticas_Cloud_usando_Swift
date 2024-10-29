//
//  ContentView.swift
//  Aula_3
//
//  Created by Turma02-1 on 29/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var peso: Double = 0
    @State private var altura: Double = 0
    @State private var imc: Double = 0
    @State private var cor: String = ""
    private let Baixo_peso: String = "Baixo_peso"
    private let Normal: String = "Normal"
    private let Sobrepeso: String = "Sobrepeso"
    private let Obesidade: String = "Obesidade"
    
    func calcular(){
        imc = peso/(altura*altura)
        
        if imc<18.5{
            cor = Baixo_peso
        }else if imc>18.5 && imc<24.99{
            cor = Normal
        }else if imc>24.99 && imc<29.99{
            cor = Sobrepeso
        }else{
            cor = Obesidade
        }
        
        
    }
    
    var body: some View {
        ZStack {
            Color(cor).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            VStack{
                
                Text("Calculadora de IMC")
                
                TextField("Peso", value: $peso, format: .number)
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                
                TextField("Altura", value: $altura, format: .number)
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                
            
                
                Button("Calcular") {
                    
                   calcular()
                }
                
                Text(cor)
                
                Spacer()
                
                Image("tabela-IMC")
                    .resizable()
                    .frame(width: 400, height: 200)
                    
                    
                
                    
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
