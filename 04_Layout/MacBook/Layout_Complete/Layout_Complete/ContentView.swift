//
//  ContentView.swift
//  Layout_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            // -------------------------------
            // Task 1
            // Add spacing parameter to HStack
            // Set spacing to 30

            // 任務 1
            // 在 HStack 加入 spacing 的參數
            // 設定 spacing 為 30

            HStack(spacing: 30) {
                Text("Add")
                Text("Spacing")
                Text("Here")
            }
            .padding(.bottom, 60)
            
            // -------------------------------
            // Task 2
            // Add Spacer()
            // Adjust Spacer() using frame() with width 30

            // 任務 2
            // 加入 Spacer()
            // 用 frame() 來設定 Spacer() 的 width 為 30
            
            HStack {
                Text("Add")
                Spacer()
                Text("Spacing")
                Spacer().frame(width: 30)
                Text("Here")
            }
            .padding(.bottom, 60)
            
            // -------------------------------
            // Task 3
            // Add alignment parameter to VStack
            // Set alignment to trailing

            // 任務 3
            // 在 VStack 加入 alignment 的參數
            // 設定 alignment 為 trailing

            VStack(alignment: .leading) {
                HStack {
                    Text("AA")
                    Text("BB")
                }
                HStack {
                    Text("CC")
                }
            }
            .padding(.bottom, 60)
            
            // -------------------------------
            // Task 4
            // Add overlay properties
            // to stack components on top of each other

            // 任務 4
            // 加入 overlay 特性來重疊元件
            Image(systemName: "globe")
                .resizable()
                .frame(width: 100, height: 100)
                .opacity(0.2)
                .overlay(
                    HStack {
                        Text("AA")
                        Text("BB")
                    }
                )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
