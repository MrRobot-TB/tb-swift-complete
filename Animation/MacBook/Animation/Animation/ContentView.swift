//
//
//  ContentView.swift
//  Animation
//
//  Created by [Redacted]
//


import SwiftUI

struct ContentView: View {
    @State private var offset: CGSize = .zero
    var body: some View {
        VStack {
            Image(systemName: "globe").offset(offset)
                .animation(.default, value: offset)
            Button("Move") {
                offset = CGSize(width: 100, height: -100)
            }
        }
    }
}

#Preview {
    ContentView()
}
