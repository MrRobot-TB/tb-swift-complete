//
//  ThirdView.swift
//  Layout_Complete
//
//  Created by [Redacted]
//

import SwiftUI

// -------------------------------
// Task 1
// Set offset x = 50, y = -50

// 任務 1
// 設 offset x = 50, y = -50

// -------------------------------
// Task 2
// Set position x = 100, y = 150

// 任務 2
// 設 position x = 100, y = 150

struct ThirdView: View {
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "globe")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("Hello")
                    .font(.largeTitle)
            }
            .position(x: 100, y: 150)
            .border(.black)
        }
        .frame(width: 400, height: 600)
        .border(.blue)
    }
}

#Preview {
    ThirdView()
}
