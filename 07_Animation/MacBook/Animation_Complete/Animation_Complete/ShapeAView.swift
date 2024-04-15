//
//  ShapeView.swift
//  Animation
//
//  Created by [Redacted]
//

import SwiftUI

struct ShapeAView: View {
    var body: some View {
        VStack {
            Circle()
                .stroke()
            Rectangle()
                .stroke()
            RoundedRectangle(cornerRadius: 20)
                .stroke()
            Ellipse()
                .stroke()
            Capsule()
                .stroke()
        }
        .padding()
    }
}

#Preview {
    ShapeAView()
}
