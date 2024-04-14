//
//
//  ShapeCView.swift
//  Animation
//
//  Created by [Redacted]
//


import SwiftUI

struct ShapeCView: View {
    var body: some View {
        VStack {
            Circle()
                .stroke(
                    style: .init(lineWidth: 10, dash: [25, 5])
                )
        }
    }
}

#Preview {
    ShapeCView()
}
