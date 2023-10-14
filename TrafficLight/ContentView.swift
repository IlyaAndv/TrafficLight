//
//  ContentView.swift
//  TrafficLight
//
//  Created by Илья on 14.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State var buttonText = "Start"
    
    @State var colorScreenRed: Color = .red.opacity(0.2)
    @State var colorScreenYellow: Color = .yellow.opacity(0.2)
    @State var colorScreenGreen: Color = .green.opacity(0.2)
    
    var body: some View {
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                TrafficLightScreenView(color: colorScreenRed)
                TrafficLightScreenView(color: colorScreenYellow)
                TrafficLightScreenView(color: colorScreenGreen)
                
                Spacer()
                
                Button(action: buttonAction) {
                    Text(buttonText)
                        .font(.custom("Marker Felt", fixedSize: 61))
                        .foregroundStyle(.white)
                        .shadow(color: .black, radius: 1, x: 4, y: 6)
                }
            }
            .padding()
        }
    }
    
    private func buttonAction() {
        buttonText = "Next"
        
        if colorScreenRed == .red {
            colorScreenYellow = .yellow
            colorScreenRed = .red.opacity(0.2)
        } else if colorScreenYellow == .yellow {
            colorScreenGreen = .green
            colorScreenYellow = .yellow.opacity(0.2)
        } else {
            colorScreenRed = .red
            colorScreenGreen = .green.opacity(0.2)
        }
    }
}

#Preview {
    ContentView()
}
