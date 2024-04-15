//
//  ShapeCView.swift
//  Animation_Complete
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
        .padding()
    }
}

#Preview {
    ShapeCView()
}

