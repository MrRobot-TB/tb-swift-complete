//
//  CtoF.swift
//  TempConverter_Complete
//
//  Created by [Redacted]
//

import SwiftUI

struct CtoF: View {
    @State private var celsius = ""
    @State private var fahrenheit = 0
    @State private var showAlert = false
    var body: some View {
        VStack {
            Text("Please enter Celsius")
                .font(.largeTitle)
            TextField("Enter the temp", text: $celsius)
                .multilineTextAlignment(.center)
            Button("Submit") {
                if let c = Int(celsius) {
                    fahrenheit = (c * 9 / 5) + 32
                }
                else {
                    showAlert = true
                }
            }
            Text("Fahrenheit: \(fahrenheit)")
        }
        .navigationTitle("C to F")
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
    CtoF()
}
