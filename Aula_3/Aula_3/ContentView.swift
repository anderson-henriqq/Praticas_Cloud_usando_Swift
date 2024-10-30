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
                
                Text("Calculadora de IMC").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                TextField("Peso", value: $peso, format: .number)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.center)
                    .padding()
                    .keyboardType(.decimalPad)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 350)
                    //.background(Color(.systemGray6))
                    
                
                TextField("Altura", value: $altura, format: .number)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.center)
                    .padding()
                    .keyboardType(.decimalPad)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 350)
                
                Button("Calcular"){
                       calcular()
                    }
                    .frame(width: 100,height: 50)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                
                Spacer()
                
                Text(cor)
                
                //Text(String(imc))
                
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
