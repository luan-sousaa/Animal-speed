//
//  ContentView.swift
//  fisica
//
//  Created by Turma02-15 on 22/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var distancia: Double = 0
    @State private var tempo: Double = 0
    @State private var media: Double = 0
    @State private var cor: Color = .green
    @State private var mostrar_imagem = false
    var body: some View {
        ZStack {
            cor.ignoresSafeArea()
            
            
            VStack(spacing: 20){
                
                Text("Digite a distância : (km)")
                
                TextField("Enter you distance", value: $distancia, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                
                    .padding()
                
                Text("Digite o tempo : (H)")
                
                TextField("Enter your time", value: $tempo, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                    .padding()
                
                Button("Calcular") {
                    mostrar_imagem = true
                    calcular_media(distancia: distancia , tempo: tempo)
                    
                }
                .buttonStyle(.borderedProminent)
                
                Text("Média  \(media)")
                if mostrar_imagem
                {
                    
                    Image("caramelo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                    
                }
                
                
                Spacer()
                
            }
        }
        
        
        
    }
    func calcular_media(distancia: Double, tempo: Double) -> Double {
        media = Double(distancia) / Double(tempo)
        return media
    }
}

#Preview {
    ContentView()
}
