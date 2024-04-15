//
//  ContentView.swift
//  HKGuide_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating = false
    @State private var bounceball: Bool = true
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to Hong Kong")
//                    .font(.largeTitle)
                    .padding()
                    .scaleEffect(isAnimating ? 1.2 : 1.0)
                    .animation(Animation.easeInOut(duration: 1.0), value: UUID())
                NavigationLink("Enter Map"){
                    MapView()
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
            }
            .onAppear {
                isAnimating = true
            }
        }
    }
}

#Preview {
    ContentView()
}
