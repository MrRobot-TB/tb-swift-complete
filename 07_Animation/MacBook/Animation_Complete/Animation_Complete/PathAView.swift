//
//  PathAView.swift
//  Animation_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct PathAView: View {
    var body: some View {
        VStack {
            Path {
                path in
                path.move(to: CGPoint(x: 20, y: 30))
                path.addLine(to: CGPoint(x: 200, y: 300))
                path.addLine(to: CGPoint(x: 100, y: 400))
                path.addLine(to: CGPoint(x: 400, y: 600))
                path.closeSubpath()
            }
            .stroke(lineWidth: 10)
        }
    }
}

#Preview {
    PathAView()
}
