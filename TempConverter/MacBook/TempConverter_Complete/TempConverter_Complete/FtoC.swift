//
//  FtoC.swift
//  TempConverter_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct FtoC: View {
    @State private var fahrenheit = ""
    @State private var celsius = 0
    @State private var showAlert = false
    var body: some View {
        VStack {
            Text("Please enter Fahrenheit")
                .font(.largeTitle)
            TextField("Enter the temp", text: $fahrenheit)
                .multilineTextAlignment(.center)
            Button("Submit") {
                if let f = Int(fahrenheit) {
                    celsius = (f - 32) * 5 / 9
                }
                else {
                    showAlert = true
                }
            }
            Text("Celsius: \(celsius)")
        }
        .navigationTitle("F to C")
        .alert(isPresented: $showAlert){
            Alert(
                title: Text("Invalid Input"),
                message: Text("Please enter Integer!"),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}

#Preview {
    FtoC()
}
