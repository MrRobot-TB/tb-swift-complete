//
//  ContentView.swift
//  HelloWorld_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Image("world")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Image Earth")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
