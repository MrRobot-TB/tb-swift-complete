//
//  SecondView.swift
//  Layout_Complete
//
//  Created by [Redacted]
//

import SwiftUI

// -------------------------------
// Task 1
// Adjust Text size
// Set width = 200
// Set height = 100
// Set alignment = bottomTrailing

// 任務 1
// 調整 Text 大小
// 設 width = 200
// 設 height = 100
// 設 alignment = bottomTrailing

// -------------------------------
// Task 2
// Set Text padding = 40

// 任務 2
// 設 Text padding = 40

// -------------------------------
// Task 3
// Adjust Image size
// Set width = 200
// Set height = 200

// 任務 3
// 調整 Image 大小
// 設 width = 200
// 設 height = 200

struct SecondView: View {
    var body: some View {
        VStack {
            Text("Hello")
                .font(.largeTitle)
                .frame(width: 200, height: 100, alignment: .bottomTrailing)
                .padding(40)
                .border(.black)
            Image(systemName: "globe")
                .resizable()
                .frame(width: 200, height: 200)
                .border(.black)
        }
    }
}

#Preview {
    SecondView()
}

