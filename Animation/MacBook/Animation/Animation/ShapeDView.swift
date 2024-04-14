//
//
//  ShapeDView.swift
//  Animation
//
//  Created by [Redacted]
//


import SwiftUI

struct ShapeDView: View {
    var body: some View {
        VStack {
            Circle()
                .stroke(.orange, lineWidth: 2)
            Circle()
                .fill(.orange)
            Circle()
                .fill(LinearGradient(colors: [.blue, .yellow, .red], startPoint: .top, endPoint: .bottom))
            Circle()
                .fill(.blue)
                .overlay(
                    Circle()
                        .stroke(.green, lineWidth: 10)
                )
        }
    }
}

#Preview {
    ShapeDView()
}
