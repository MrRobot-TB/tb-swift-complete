//
//  PathDView.swift
//  Animation_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct PathDView: View {
    @State private var value = 0.0
    var body: some View {
        VStack {
            Path {
                path in
                path.move(to: .init(x: 50, y: 50))
                path.addLine(to: .init(x: 200, y: 50))
                path.addLine(to: .init(x: 200, y: 300))
                path.addLine(to: .init(x: 50, y: 300))
                path.closeSubpath()
            }
            .trim(to: 0.75)
            .stroke(lineWidth: 10)
            .animation(.easeOut, value: value)
            .onAppear {
                value = 1.0
            }
        }
    }
}

#Preview {
    PathDView()
}
