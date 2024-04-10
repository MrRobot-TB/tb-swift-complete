//
//  ContentView.swift
//  HelloWorld_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
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
            Label("Hi", systemImage: "gear")
            Button("Hello") {
                toggleAlert()
            }
        }
        .padding()
        .alert(isPresented: $showAlert){
            Alert(
                title: Text("title"),
                message: Text("message"),
                dismissButton: .default(Text("OK"))
            )
        }
    }
    func toggleAlert() {
        self.showAlert = true
    }
}

#Preview {
    ContentView()
}
