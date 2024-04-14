//
//
//  PathBView.swift
//  Animation
//
//  Created by [Redacted]
//


import SwiftUI

struct PathBView: View {
    private let rect = CGRect(x: 100, y: 20, width: 200, height: 150)
    var body: some View {
        VStack {
            Path {
                path in
                path.addRect(rect)
                path.addEllipse(in: rect)
            }
            .stroke(lineWidth: 10)
        }
        .padding()
    }
}

#Preview {
    PathBView()
}
