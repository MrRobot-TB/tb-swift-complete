//
//  PathCView.swift
//  Animation_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct PathCView: View {
    var body: some View {
        VStack {
            Path {
                path in
                path.move(to: CGPoint(x: 150, y: 200))
                path.addArc(center: CGPoint(x: 150, y: 200), radius: 100, startAngle: .degrees(0), endAngle: .degrees(300), clockwise: false)
                path.closeSubpath()
            }
            .stroke(lineWidth: 10)
        }
    }
}

#Preview {
    PathCView()
}
