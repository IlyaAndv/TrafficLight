//
//  TrafficLightScreenView.swift
//  TrafficLight
//
//  Created by Илья on 14.10.2023.
//

import SwiftUI

struct TrafficLightScreenView: View {
    let color: Color
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundStyle(color)
            .overlay(Circle().stroke(Color.black, lineWidth: 5))
    }
}

#Preview {
    TrafficLightScreenView(color: .accentColor)
}
