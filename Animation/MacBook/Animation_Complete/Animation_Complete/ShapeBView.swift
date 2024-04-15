//
//  ShapeBView.swift
//  Animation_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct ShapeBView: View {
    var body: some View {
        VStack {
            Ellipse()
                .stroke()
                .frame(width: 200, height: 300)
                .border(.gray)
        }
        .padding()
    }
}

#Preview {
    ShapeBView()
}

