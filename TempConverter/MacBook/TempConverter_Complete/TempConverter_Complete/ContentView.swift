//
//  ContentView.swift
//  TempConverter_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Temp Converter")
                    .font(.largeTitle)
                    .padding()
                Image(systemName: "thermometer.medium")
                    .imageScale(.large)
                    .padding()
                HStack {
                    NavigationLink("F to C") {
                        FtoC()
                    }
                    NavigationLink("C to F") {
                        CtoF()
                    }
                }
            }
            .navigationTitle("Main")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
